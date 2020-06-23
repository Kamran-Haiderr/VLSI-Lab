
#ifndef MAKE_DLL
module RESISTOR {
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
 * RESISTOR
 * 
 * This is a simple linear resistor model.  It has no
 * model parameters and only one device parameter, "r" 
 * (alias "res"), which is the device's resistance.
 * 
 * To use this model, declare the external model using
 * the .model command.  For example:
 * 
 * .model resmodel external winfile="resist.dll"
 *
 * To instance a resistor, use the x key letter, as in:
 * 
 * x1 terminal1 terminal2 resmodel r=1k
 */   

void PrecomputeDeviceParameters(ExternalModelDevice *device);

#ifdef MAKE_DLL
void ExternalModelMain()
#else
void ResistorMain()
#endif
{
	ExternalModel *m;
	ExternalModelDevice *device;
	int action;
	double g;
	GetModelInfo(&m ,&device, &action);

	switch (action)
	{
		case PRECOMPUTE_DEVICE_PARAMETERS:
			PrecomputeDeviceParameters(device);
			break;
		case EVALUATE_DEVICE:
			device->current[0] = (device->voltage[0] - device->voltage[1])
				/ *((double *)device->info);
			device->current[1] = -device->current[0];
			device->charge[0] = device->charge[1] = 0.0;
			break;
		case EVALUATE_DERIVATIVES:
			g = 1.0 / *((double *)device->info);
			device->current_deriv[0][0] = device->current_deriv[1][1] = g; 
			device->current_deriv[0][1] = device->current_deriv[1][0] = -g; 
			device->charge_deriv[0][0] = device->charge_deriv[1][1] = 0.0; 
			device->charge_deriv[0][1] = device->charge_deriv[1][0] = 0.0; 
			break;
		case CLEANUP_DEVICE:
			free(device->info);
			break;
	}
}

void PrecomputeDeviceParameters(ExternalModelDevice *device)
{
	bool pf;
	double *pResistance;
	if (device->n_numnodes != 2)
	{
		PrintMessage("Incorrect number of terminals for device %s\n",
			device->s_name);
		device->error = 1;
		return;
	}
	device->info = (void *)malloc(sizeof(double));
	if (device->info == NULL)
	{
		device->error = 1;
		return;
	}
	pResistance = (double *)device->info;
	*pResistance = LookupParameterDouble(device->parameter_list,
					"r|res" , "0.0", &pf);
	if (*pResistance <= 0.0)
	{
		PrintMessage("Illegal resistance %g for device %s\n",
			*pResistance, device->s_name);
		device->error = 1;
	}
}

#ifndef MAKE_DLL
void mymain() {
	Macro_Register("ResistorMain");
}
} /* end of module */
mymain();
#endif /* MAKE_DLL */
