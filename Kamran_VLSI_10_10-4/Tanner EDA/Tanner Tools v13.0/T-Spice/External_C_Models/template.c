
#ifndef MAKE_DLL 
module MYMODEL{
#endif

/* TODO: replace all instances of the string "mymodel" with your model's name */
	
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

typedef struct MymodelModel 
{
	int i;
	/* TODO: insert fields for parsed and precompute model parameters */
} MymodelModel;

typedef struct MymodelDevice
{
	int i;
	/* TODO: insert fields for parsed and precompute device parameters */
} MymodelDevice;


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
void MymodelMod(void )
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
}

void PrecomputeModelParameters(ExternalModel *model)
{
	/* TODO: Print warning for unused parameters
	 *       Perform any one-time model parameter setup computations
	 */
}

void PrecomputeDeviceParameters(ExternalModelDevice *device)
{
	/* TODO: Allocate device->info field
	 *       Check device's number of terminals
	 *       Parse and precompute device parameters
	 *       Set device->table_mode to "true" if this device should use table mode
	 */
}

void ModelMatchesDevice(ExternalModel *model, ExternalModelDevice *device)
{
	/* TODO: set model->model_matches_device to "false" if the model cannot be
	 *       used with the device.  (For automatic model selection.)
	 */
}

void TableMatchesDevice(ExternalModel *model, ExternalModelDevice *device)
{
	/* TODO: set model->table_matches_device to "false" if device and
	 *       model->table->device cannot share a table.
	 */
}

void ParasiticSetup(ExternalModelDevice *device)
{
	/* TODO: Create any parasitic devices and internal nodes using the
	 *       AddParasiticDiode, AddSeriesResistor, and AddInternalNode functions
	 */
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
}

void CleanupModel(ExternalModel *model)
{
	/* TODO: free any memory allocated for model (such as model->info) */
}


void PrintSmallSignalParams(ExternalModelDevice *device)
{
	/* TODO: Use SmallSignalParameter functions to define small-signal parameters
	 *       to be printed using .acmodel
	 */
}

#ifndef MAKE_DLL 
void MymodelMain() {

	Macro_Register("MymodelMod");
}

}
MymodelMain();
#endif

