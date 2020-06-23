
#ifndef MAKE_DLL
module SWITCH {
#endif

#include <math.h>
#include <stdio.h>
#include <stdlib.h>

#ifndef  MAKE_DLL
#include "tspmodel.h"
#else
#if defined(WIN) || defined(WIN32)
#include "include\tspmodel.h"
#else
#include "include/tspmodel.h"
#endif
#endif


/*
 * VOLTAGE CONTROLLED SWITCH
 *
 * This is a switch model implemented as a voltage-controlled resistor
 * with a hysteresis loop.  This switch model is an extension of the
 * SPICE3 voltage controlled switch.
 *
 * The switch is a four terminal device.  The first two terminals are
 * the controlled resistor's terminals, and the last two terminals are
 * the control terminals.  The control voltage VC is the volatge between
 * the control terminals.  To use this model in T-Spice, use the "x" device
 * key letter to instance a switch:
 *
 * x<name> <terminal1> <terminal2> <control1> <control2> <modelname>
 *
 * where <terminal1>, <terminal2>, <control1>, and <control2> are node names, and
 * <modelname> is a model name matching a .model statement:
 *
 * .model <modelname> external winfile="switch.dll" solfile="switch_sol.sl" <modelparams>
 *
 * where <modelparams> is a list of model parameter definitions of the form <param>=<value>.
 * This model accepts the following model parameters:
 *
 * Name     Description                    Unit  Default
 * -----------------------------------------------------
 * RON      resistance when switch is on   Ohm   1
 * ROFF     resistance when switch is off  Ohm   1e12
 * VT       threshold voltage              V     0
 * VH       hysteresis loop width          V     0
 * DV       threshold transistion width    V     0.01
 * CSW      threshold capacitance          -     1e-10
 *
 * This model enforces a minimum value of 1e-12 for the model parameters
 * RON, ROFF, and DV.
 * 
 * The switch's resistance is RON when the switch is on, and ROFF when the
 * switch is off.  The device switches when VC=VT when VC is rising, and at
 * VC=VT-VH when VC is falling.  The switch is on when VC is high, and off
 * when VC is low.
 *
 * The model parameter DV defines a small voltage interval around the threshold
 * voltage in which a smooth transition between RON and ROFF is made.
 * The model parameter CSW controls how quickly the threshold voltage
 * switches between VT and VT-VH.  CSW acts like a capacitance on the internal
 * node which represents the threshold voltage.  A larger CSW results in
 * a slower transition of the threshold voltage between VT and VT-VH.
 */
	
typedef struct SwitchModel
{
	double ron;
	double roff;
	double vt;
	double vh;
	double dv;
	double csw;
	double gon;
	double goff;
	double dgdv;
} SwitchModel;

typedef struct SwitchDevice
{
	ParasiticDeviceId internal_node;
} SwitchDevice;

void ParseModelParameters1(ExternalModel *model);
void PrecomputeDeviceParameters1(ExternalModelDevice *device);
void EvaluateDevice1(ExternalModelDevice *device);
void EvaluateDerivatives1(ExternalModelDevice *device);

#ifdef MAKE_DLL
void ExternalModelMain()
#else
void ResistorMain()
#endif
{
	ExternalModel *model;
	ExternalModelDevice *device;
	int action;
	GetModelInfo(&model ,&device, &action);

	switch (action)
	{
		 case PARSE_MODEL_PARAMETERS:
			 ParseModelParameters1(model);
			 break;
		 case PRECOMPUTE_DEVICE_PARAMETERS:
			 PrecomputeDeviceParameters1(device);
			 break;
		 case EVALUATE_DEVICE:
			 EvaluateDevice1(device);	
			 break;
		 case EVALUATE_DERIVATIVES:
			 EvaluateDerivatives1(device);
			 break;
		 case CLEANUP_DEVICE:
			 free(device->info);
			 break;
		 case CLEANUP_MODEL:
			 free(model->info);
			 break;
	}
}

void ParseModelParameters1(ExternalModel *model)
{
	bool pf;
	SwitchModel *sm;

	model->info = (void *)malloc(sizeof(SwitchModel));
	if (model->info == NULL)
	{
		model->error = 1;
		return;
	}
	sm = (SwitchModel *)model->info;
	sm->ron = LookupParameterDouble(model->parameter_list,
											  "ron", "1.0", &pf);
	sm->roff = LookupParameterDouble(model->parameter_list,
												"roff", "1.0e12", &pf);
	sm->vt = LookupParameterDouble(model->parameter_list,
											 "vt", "0.0", &pf);
	sm->vh = LookupParameterDouble(model->parameter_list,
											 "vh", "0.0", &pf);
	sm->dv = LookupParameterDouble(model->parameter_list,
											 "dv", "0.01", &pf);
	sm->csw = LookupParameterDouble(model->parameter_list,
											 "csw", "1.0e-10", &pf);
	if (sm->ron < 1.0e-12)
		sm->ron = 1.0e-12;
	if (sm->roff < 1.0e-12)
		sm->roff = 1.0e-12;
	if (sm->dv < 1.0e-12)
		sm->dv = 1.0e-12;
	
	sm->gon = 1.0 / sm->ron;
	sm->goff = 1.0 / sm->roff;
	sm->dgdv = (sm->gon - sm->goff) / sm->dv;

	if (sm->vh < 0.0)
	{
		sm->vh = -sm->vh;
		sm->vt = sm->vt + sm->vh;
	}
}

void PrecomputeDeviceParameters1(ExternalModelDevice *device)
{
	SwitchDevice *sd;
	SwitchModel *sm;
	if (device->n_numnodes != 4)
	{
		PrintMessage("Incorrect number of terminals for device %s\n",
			device->s_name);
		device->error = 1;
		return;
	}
	device->info = (void *)malloc(sizeof(SwitchModel));
	if (device->info==NULL)
	{
		device->error = 1;
		return;
	}
	sm = (SwitchModel *)device->model->info;
	if (sm->vh!=0)
	{
		sd = (SwitchDevice *)device->info;
		
		sd->internal_node = AddInternalNode(device, "cd");
	}
}

void EvaluateDevice1(ExternalModelDevice *device)
{
	SwitchModel *sm;
	SwitchDevice *sd;
	double vc;
	double vr;
	double g;
	double vt;
	
	sm = (SwitchModel *)device->model->info;
	sd = (SwitchDevice *)device->info;

	vc = device->voltage[2] - device->voltage[3];

	vr = device->voltage[0] - device->voltage[1];

	if (sm->vh!=0)
		vt = device->voltage[sd->internal_node];
	else
		vt = sm->vt;
	
	if (vc < vt - 0.5*sm->dv)
		g = sm->goff;
	else if (vc > vt + 0.5*sm->dv)
		g = sm->gon;
	else
		g = sm->goff + (vc - vt + 0.5*sm->dv)*sm->dgdv;

	device->current[0] = g*vr;
	device->current[1] = -g*vr;
	device->current[2] = device->current[3] = 0.0;
	device->charge[0] = device->charge[1] = device->charge[2] = device->charge[3] = 0.0;

	if (sm->vh!=0)
	{
		device->charge[sd->internal_node] = sm->csw*vt;
		
		if (vc < sm->vt-sm->vh)
			device->current[sd->internal_node] = vt - sm->vt;
		else if (vc > sm->vt)
			device->current[sd->internal_node] = vt - (sm->vt - sm->vh);
		else
			device->current[sd->internal_node] = 0;
	}
}

void EvaluateDerivatives1(ExternalModelDevice *device)
{
	SwitchModel *sm;
	SwitchDevice *sd;
	double vc;
	double vr;
	double g;
	double gvc;
	double vt;
	
	sm = (SwitchModel *)device->model->info;
	sd = (SwitchDevice *)device->info;

	vc = device->voltage[2] - device->voltage[3];

	vr = device->voltage[0] - device->voltage[1];

	if (sm->vh!=0)
		vt = device->voltage[sd->internal_node];
	else
		vt = sm->vt;

	if (vc < vt - 0.5*sm->dv)
	{
		g = sm->goff;
		gvc = 0.0;
	}
	else if (vc > vt + 0.5*sm->dv)
	{
		g = sm->gon;
		gvc = 0;
	}
	else
	{
		g = sm->goff + (vc - vt + 0.5*sm->dv)*sm->dgdv;
		gvc = vr * sm->dv;
	}

	device->current_deriv[0][0] = g;
	device->current_deriv[1][1] = g;
	device->current_deriv[0][1] = -g;
	device->current_deriv[1][0] = -g;

   device->current_deriv[0][2] = gvc;
	device->current_deriv[1][2] = -gvc;
	device->current_deriv[0][3] = -gvc;
	device->current_deriv[1][3] = gvc;

	if (sm->vh != 0)
	{
		device->charge_deriv[sd->internal_node][sd->internal_node] = sm->csw;
		if (vc<sm->vt-sm->vh || vc>sm->vt)
			device->current_deriv[sd->internal_node][sd->internal_node] = 1.0;
	}

}


#ifndef MAKE_DLL
void mymain() {
	Macro_Register("ResistorMain");
}
} /* end of module */
mymain();
#endif /* MAKE_DLL */
