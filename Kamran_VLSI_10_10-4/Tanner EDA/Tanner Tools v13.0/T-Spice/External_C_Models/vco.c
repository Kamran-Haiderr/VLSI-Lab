
#ifndef MAKE_DLL 
module VCO{
#endif

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

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
 * Voltage controlled oscillator (VCO)
 *
 * 4 terminal device, first two terminals act as a voltage source,
 * second two terminals supply the control voltage, vco
 *
 * The output voltage is a sine wave with frequency
 * f = f0 + k0 * (vco - vc) 
 * where f0, k0, and vc are device/model parameters
 * The amplitude and voltage offset of the output sine wave are
 * given by the device/model parameters amp and offset, respectively
 *
 *
 * If the parameter digital is positive, then the sine wave is
 * transformed into a digital square wave (with finite rise/fall time)
 *
 * All model parameters serve as defaults for device parameters of the
 * same name
 */
	
typedef struct VcoModel 
{
	/* TODO: insert fields for parsed and precompute model parameters */
	double offset;
	double amp;
	double k0;
	double f0;
	double vc;
	double digital; /* between 0 and amp; nonpositive value means analog */
} VcoModel;

typedef struct VcoDevice
{
	/* TODO: insert fields for parsed and precompute device parameters */
	double offset;
	double amp;
	double k0;
	double f0;
	double vc;
	double digital; /* between 0 and amp; nonpositive value means analog */
	ParasiticDeviceId vsid;
	ParasiticDeviceId theta_state;
	ParasiticDeviceId theta_ic;	
} VcoDevice;

#define PI 3.141592654

void ParseModelParameters(ExternalModel *model);
void ModelMatchesDevice(ExternalModel *model, ExternalModelDevice *device);
void PrecomputeModelParameters(ExternalModel *model);
void PrecomputeDeviceParameters(ExternalModelDevice *device);
void TableMatchesDevice(ExternalModel *model, ExternalModelDevice *device);
void TableSetup(ExternalModel *model, ExternalModelDevice *device);
void ParasiticSetup(ExternalModelDevice *device);
void EvaluateDevice(ExternalModelDevice *device);
void EvaluateDerivatives(ExternalModelDevice *device);
void NoiseSetup(ExternalModelDevice *device);
void NoiseEvaluate(ExternalModelDevice *device);
void CleanupDevice(ExternalModelDevice *device);
void CleanupModel(ExternalModel *model);
void PrintModelParams(ExternalModel *model);
void PrintSmallSignalParams(ExternalModelDevice *device);


#ifdef MAKE_DLL  
void ExternalModelMain(void)
#else
void VcoMod(void )
#endif
{
	ExternalModel *m;
	ExternalModelDevice *d;
	int action;

	GetModelInfo(&m,&d,&action);

	switch (action)
	{
		 case PARSE_MODEL_PARAMETERS:
			 ParseModelParameters(m);
			 break;
		 case MODEL_MATCHES_DEVICE:
			 ModelMatchesDevice(m, d);
			 break;
		 case PRECOMPUTE_MODEL_PARAMETERS:
			 PrecomputeModelParameters(m);
			 break;
		 case PRECOMPUTE_DEVICE_PARAMETERS:
			 PrecomputeDeviceParameters(d);
			 break;
		 case TABLE_MATCHES_DEVICE:
			 TableMatchesDevice(m, d);
			 break;
		 case TABLE_SETUP:
			 TableSetup(m, d);
			 break;
		 case EVALUATE_DEVICE:
			 EvaluateDevice(d);
			 break;
		 case EVALUATE_DERIVATIVES:
			 EvaluateDerivatives(d);
			 break;
		 case PARASITIC_SETUP:
			 ParasiticSetup(d);
			 break;
		 case NOISE_SETUP:
			 NoiseSetup(d);
			 break;
		 case NOISE_EVALUATE:
			 NoiseEvaluate(d);
			 break;
		 case CLEANUP_DEVICE:
			 CleanupDevice(d);
			 break;
		 case CLEANUP_MODEL:
			 CleanupModel(m);
			 break;
		 case PRINT_SMALL_SIGNAL_PARAMS:
			 PrintSmallSignalParams(d);
			 break;
	}
}

void ParseModelParameters(ExternalModel *model)
{
	/* TODO: allocate model->info field to store model parameter values
	 *       parse model parameters using LookupParameter functions
    */
	VcoModel *vcvsmodel;
	TspBoolean pf;

	model->info = (void *)malloc(sizeof(VcoModel));
	if (model->info == NULL)
	{
		model->error = 1;
		return;
	}
	vcvsmodel = (VcoModel *)model->info;
	vcvsmodel->offset = LookupParameterDouble(model->parameter_list,
					"offset" , "0.0", &pf);
	vcvsmodel->amp = LookupParameterDouble(model->parameter_list,
					"amp" , "1.0", &pf);
	vcvsmodel->k0 = LookupParameterDouble(model->parameter_list,
					"k0" , "0.0", &pf);
	vcvsmodel->f0 = LookupParameterDouble(model->parameter_list,
					"f0" , "1.0", &pf);
	vcvsmodel->vc = LookupParameterDouble(model->parameter_list,
					"vc" , "1.0", &pf);
	vcvsmodel->digital = LookupParameterDouble(model->parameter_list,
					"digital" , "0.0", &pf);
}

void PrecomputeModelParameters(ExternalModel *model)
{
	/* TODO: Print warning for unused parameters
	 *       Perform any one-time model parameter setup computations
	 */
	PrintUnusedParameterMessage(model->parameter_list,
										 model->s_name, NULL);
}

void PrecomputeDeviceParameters(ExternalModelDevice *device)
{
	/* TODO: Allocate device->info field
	 *       Check device's number of terminals
	 *       Parse and precompute device parameters
	 *       Set device->table_mode to "True" if this device should use table mode
	 */
	VcoDevice *d;
	VcoModel *m;
	TspBoolean pf;

	if (device->n_numnodes != 4)
	{
		PrintMessage("Incorrect number of terminals for device %s\n",
			device->s_name);
		device->error = 1;
		return;
	}
	device->info = (void *)malloc(sizeof(VcoDevice));
	if (device->info == NULL)
	{
		device->error = 1;
		return;
	}
	
	d = (VcoDevice *)device->info;
	m = (VcoModel *)device->model->info;

	d->offset = LookupParameterDouble(device->parameter_list,
										  "offset", "0.0", &pf);
	if (!pf)
		d->offset = m->offset;
	d->amp = LookupParameterDouble(device->parameter_list,
										  "amp", "1.0", &pf);
	if (!pf)
		d->amp = m->amp;
	d->k0 = LookupParameterDouble(device->parameter_list,
										  "k0", "1.0", &pf);
	if (!pf)
		d->k0 = m->k0;
	d->f0 = LookupParameterDouble(device->parameter_list,
										  "f0", "1.0", &pf);
	if (!pf)
		d->f0 = m->f0;
	d->vc = LookupParameterDouble(device->parameter_list,
										  "vc", "1.0", &pf);
	if (!pf)
		d->vc = m->vc;
	d->digital = LookupParameterDouble(device->parameter_list,
										  "digital", "1.0", &pf);
	if (!pf)
		d->digital = m->digital;
	PrintUnusedParameterMessage(device->parameter_list,
										 device->s_name, NULL);
}

void ModelMatchesDevice(ExternalModel *model, ExternalModelDevice *device)
{
	/* TODO: set model->model_matches_device to "False" if the model cannot be
	 *       used with the device.  (For automatic model selection.)
	 */
}

void TableMatchesDevice(ExternalModel *model, ExternalModelDevice *device)
{
	/* TODO: set model->table_matches_device to "False" if device and
	 *       model->table->device cannot share a table.
	 */
}

void ParasiticSetup(ExternalModelDevice *device)
{
	/* TODO: Create any parasitic devices and internal nodes using the
	 *       AddParasiticDiode, AddSeriesResistor, and AddInternalNode functions
	 */
	VcoDevice *d;
	d = (VcoDevice *)device->info;
	d->vsid = VoltageSource(device,0,1);
	d->theta_state = AddInternalNode(device, "theta_state");
	d->theta_ic = AddInternalNode(device, "theta_ic");
}


void TableSetup(ExternalModel *model, ExternalModelDevice *device)
{
	/* TODO: If table mode is used, set up the table grid
	 */
}


void EvaluateDevice(ExternalModelDevice *device)
{
	/* TODO: Given terminal voltages in the device->voltage array,
	 *       compute the terminal currents and charges in the arrays
	 *       device->current and device->charge
	 */
	VcoDevice *d;
	double vcontrol;
	double value;
	double theta, theta2, t;
	
	d = (VcoDevice *)device->info;
	vcontrol = device->voltage[2] - device->voltage[3];
	
	t = device->model->sim_data[SIM_TIME];
	theta = device->voltage[d->theta_state];
	
	device->charge[d->theta_state] = theta;
	device->current[d->theta_state] = -(vcontrol - d->vc);

	theta2 = 2.0*PI*(d->f0*t + d->k0*theta);
		
	if (d->digital==0.0)
		value = d->offset + d->amp * sin(theta2);
	else
	{
		value = d->amp * sin(theta2);
		if (value > d->digital)
			value = d->amp;
		else if (value < -d->digital)
			value = -d->amp;
		else
			value = value * d->amp / d->digital;

		value += d->offset;
	}
	
	SetVoltageSourceValue(device,d->vsid,value);

	if (t<=0)
	{
		/* initial conditions */
		device->current[d->theta_ic] = theta - 0;
		device->current[d->theta_state] += device->voltage[d->theta_ic];
	}
}


void EvaluateDerivatives(ExternalModelDevice *device)
{
	/* TODO: Given terminal voltages, currents, and charges in the arrays
	 *       device->voltage, device->current, and device->charge, compute the
	 *       partial derivatives of the terminal currents and charges
	 *       with respect to the terminal voltages.  Store the result in
	 *       the device->current_deriv and device->charge_deriv fields.
	 *
	 *       To have T-Spice compute these derivatives automatically, simply use:
	 *       ComputeNumericalDerivatives(device);
	 */
	VcoDevice *d;
	double vcontrol;
	double theta, theta2, t;
	double value, dvalue;

	d = (VcoDevice *)device->info;
	vcontrol = device->voltage[2] - device->voltage[3];
	theta = device->voltage[d->theta_state];
	device->charge_deriv[d->theta_state][d->theta_state] = 1.0;
	device->current_deriv[d->theta_state][2] = 1.0;
	device->current_deriv[d->theta_state][3] = -1.0;
	t = device->model->sim_data[SIM_TIME];
	theta2 = 2.0*PI*(d->f0*t + d->k0*theta);
	if (d->digital==0.0)
		dvalue = d->amp * 2.0 * PI *d->k0 * cos(theta2);
	else
	{
		value = d->amp * sin(theta2);
		if (value > d->digital || value < -d->digital)
			dvalue = 0.0;
		else
			dvalue = 2.0* PI * d->k0 * cos(theta2) * d->amp * d->amp / d->digital;
	}
	SetVoltageSourceDerivative(device,d->vsid,d->theta_state,dvalue);
	if (t<=0)
	{
		device->current_deriv[d->theta_ic][d->theta_state] = 1.0;
		device->current_deriv[d->theta_state][d->theta_ic] = 1.0;
	}
}


void NoiseSetup(ExternalModelDevice *device)
{
	/* TODO: Use AddNoiseSource function to define noise sources for this device */
}


void NoiseEvaluate(ExternalModelDevice *device)
{
	/* TODO: Use SetNoiseSourceValue function to set frequency-dependent values
	 *       for noise sources defined in NoiseSetup
	 */
}


void CleanupDevice(ExternalModelDevice *device)
{
	/* TODO: free any memory allocated for device (such as device->info) */
	if (device->info!=NULL)
		free(device->info);
}

void CleanupModel(ExternalModel *model)
{
	/* TODO: free any memory allocated for model (such as model->info) */
	if (model->info!=NULL)
		free(model->info);
}


void PrintSmallSignalParams(ExternalModelDevice *device)
{
	/* TODO: Use SmallSignalParameter functions to define small-signal parameters
	 *       to be printed using .acmodel
	 */
}

#ifndef MAKE_DLL 
void VcoMain() {

	Macro_Register("VcoMod");
}

}
VcoMain();
#endif

