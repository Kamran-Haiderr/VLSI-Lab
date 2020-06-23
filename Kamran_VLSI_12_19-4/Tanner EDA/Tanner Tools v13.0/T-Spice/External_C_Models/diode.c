
#ifndef MAKE_DLL 
module DIODE{
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
 * DIODE MODEL
 *
 * This diode model incorporates most of the features
 * of the standard SPICE diode model.  The model parameters
 * are analogous to T-Spice's internal diode model.  Device
 * parameters for this model are "area" (area factor), "m"
 * (multiplicity factor), and "tables" (if 1, internal tables 
 * will be used to speed up model evaluation).
 * 
 * Special features used in this model include:
 *
 * - Automatic table generation
 * - Automatic size based model selection (based on area, and model
 *   parameters areamin and areamax)
 * - Small-signal parameter printing
 * - Use of parasitic resistors and internal nodes: if RS_INTERNAL_NODE is 1,
 *   then the diode's series resistance is implemented with an internal node.
 *   If RS_INTERNAL_NODE is 0, then T-Spice's AddSeriesResistor function is used.
 * - Temperature dependence
 * - Noise model is included
 */

#ifndef ELECTRON_CHARGE
#define ELECTRON_CHARGE 1.6021918e-19
#endif

#define RS_INTERNAL_NODE 0


typedef struct DiodeModel 
{
	/* parsed parameters */
	double is;
	double rs;
	double n;
	double tt;
	double cjo;
	double vj;
	double m;
 	double eg;
	double xti;
	double fc;
	double bv;
	double ibv;
	double af;
	double kf;
	bool eg_specified;
	bool bv_specified;
 	double areamin;
	double areamax;
	bool areamin_specified;
	bool areamax_specified;
	int table_points;
	double table_vrange;
	
	/* precomputed parameters */
	double nktq;

	ParasiticDiodeModel *dmodel;
} DiodeModel;

typedef struct DiodeDevice
{
	/* parsed parameters */
	double area;
	double mult;
	bool table;
	bool table_specified;

	/* precomputed parameters */
	double isat;
	double rs;
	double bv;
	double cj;

	/* local "static" variables */
	double i1; /* saves exponential function call in derivative function */
	ParasiticDeviceId rs_id;
} DiodeDevice;

#define ANODE 0
#define CATHODE 1

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
void DiodeMod(void )
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
	DiodeModel *dmodel;
	bool pf;

	model->info = (void *)malloc(sizeof(DiodeModel));
	if (model->info == NULL)
	{
		model->error = 1;
		return;
	}
	dmodel = (DiodeModel *)model->info;
	dmodel->is  = LookupParameterDouble(model->parameter_list,
					"is|js" , "1.0e-14", &pf);
	dmodel->rs  = LookupParameterDouble(model->parameter_list,
					"rs", "0.0", &pf);
	dmodel->n   = LookupParameterDouble(model->parameter_list,
					"n"  , "1.0", &pf);
	dmodel->tt  = LookupParameterDouble(model->parameter_list,
					"tt" , "0.0", &pf);
	dmodel->cjo = LookupParameterDouble(model->parameter_list,
					"cjo", "0.0", &pf);
	dmodel->vj  = LookupParameterDouble(model->parameter_list,
					"vj",  "1.0", &pf);
	dmodel->m   = LookupParameterDouble(model->parameter_list,
					"m"  , "0.5", &pf);
	dmodel->eg  = LookupParameterDouble(model->parameter_list,
					"eg" , "0.0", &dmodel->eg_specified);
	dmodel->xti = LookupParameterDouble(model->parameter_list,
					"xti", "3.0", &pf);
	dmodel->fc  = LookupParameterDouble(model->parameter_list,
					"fc" , "0.5", &pf);
	dmodel->bv  = LookupParameterDouble(model->parameter_list,
					"bv|vb", "0.0", &dmodel->bv_specified);
	dmodel->ibv = LookupParameterDouble(model->parameter_list,
					"ibv|ib", "1.0e-3",&pf);
	dmodel->af  = LookupParameterDouble(model->parameter_list,
					"af", "1.0",&pf);
	dmodel->kf  = LookupParameterDouble(model->parameter_list,
					"kf", "0.0",&pf);
	dmodel->areamin  = LookupParameterDouble(model->parameter_list,
					"areamin" , "0.0", &dmodel->areamin_specified);
	dmodel->areamax  = LookupParameterDouble(model->parameter_list,
					"areamax" , "0.0", &dmodel->areamax_specified);
	dmodel->table_vrange = LookupParameterDouble(model->parameter_list,
					"vrange" , "1.0", &pf);
	dmodel->table_points = LookupParameterInt(model->parameter_list,
					"gridsize|gsize" , "10", &pf);
	
	PrintUnusedParameterMessage(model->parameter_list,
										 model->s_name, NULL);
}

void PrecomputeModelParameters(ExternalModel *model)
{
	double temp;
	DiodeModel *dmodel;
	
	dmodel = (DiodeModel *)model->info;

	temp = model->sim_data[SIM_TEMPERATURE] + KELVIN;
	if (dmodel->eg_specified == false)
		dmodel->eg = 1.16 - 7.02e-4*temp*temp/(temp+1108.0);
	dmodel->nktq = dmodel->n * BOLTZMANN_CONSTANT * temp / ELECTRON_CHARGE;

	dmodel->dmodel = NewParasiticDiodeModel();
	dmodel->dmodel->js = dmodel->is;
	dmodel->dmodel->cj = dmodel->cjo;
	dmodel->dmodel->n = dmodel->n;
}



void PrecomputeDeviceParameters(ExternalModelDevice *device)
{
	DiodeDevice *d;
	DiodeModel *m;
	double ibreak;
	bool pf;

	d = (DiodeDevice *)device->info;
	m = (DiodeModel *)device->model->info;

	if (device->n_numnodes != 2)
	{
		PrintMessage("Incorrect number of terminals for device %s\n",
			device->s_name);
		device->error = 1;
		return;
	}
	device->info = (void *)malloc(sizeof(DiodeDevice));
	if (device->info == NULL)
	{
		device->error = 1;
		return;
	}
	
	d = (DiodeDevice *)device->info;

	d->area = LookupParameterDouble(device->parameter_list,
					"area" , "1.0", &pf);
	d->mult = LookupParameterDouble(device->parameter_list,
					"m" , "1.0", &pf);
	d->table = LookupParameterInt(device->parameter_list,
					"tables" , "1", &d->table_specified);	

	if (d->table_specified)
		device->table_mode = d->table;
	
	d->isat = m->is * d->area;
	d->cj = m->cjo * d->area;
	if (d->area > 0.0)
		d->rs = m->rs / d->area / d->mult;
	else
		d->rs = 0.0;
	if (m->bv_specified)
	{
		d->bv = m->bv;
		ibreak = -d->isat * (exp(-m->bv/m->nktq) - 1);
		if (ibreak < m->ibv)
			d->bv -= m->nktq*log(m->ibv/ibreak);  
	}
}

void ModelMatchesDevice(ExternalModel *model, ExternalModelDevice *device)
{
	DiodeDevice *d;
	DiodeModel *m;
	bool pf;
	double area;
	
	d = (DiodeDevice *)device->info;
	m = (DiodeModel *)model->info;

	area = LookupParameterDouble(device->parameter_list,
								  "area" , "1.0", &pf);

	model->model_matches_device = true;
	if (m->areamax_specified)
		if (area > m->areamax)
			model->model_matches_device = false;
	if (m->areamin_specified)
		if (area < m->areamin)
			model->model_matches_device = false;
}

void TableMatchesDevice(ExternalModel *model, ExternalModelDevice *device)
{
	DiodeDevice *d;
	DiodeDevice *d_table;
	
	d = (DiodeDevice *)device->info;
	d_table = (DiodeDevice *)device->table->device->info;
	if (d->area != d_table->area)
		model->table_matches_device = false;
}

void ParasiticSetup(ExternalModelDevice *device)
{
	DiodeDevice *d;
	
	d = (DiodeDevice *)device->info;
/*** The following code test internal nodes */
#if RS_INTERNAL_NODE
	if (d->rs > 0.0)
	{
		d->rs_id = AddInternalNode(device, "rs");
	}
#else
/*** The following code tests parasitic resistors */
		if (d->rs > 0.0)
	{
		d->rs_id = AddSeriesResistor(device, ANODE, d->rs, "RS");
	}
#endif
}


void TableSetup(ExternalModel *model, ExternalModelDevice *device)
{
	device->table->max_voltage[0] = ((DiodeModel *)model->info)->table_vrange;
	device->table->number_of_points[0] = ((DiodeModel *)model->info)->table_points;	
}


double testmod_pn_charge(double c, double phi, double m, double fc, double v)
{
	double q_rev = 0;	/* component for v < fc*phi */
	double q_fwd;		/* component for v > fc*phi */
	double q_total; 	/* final charge */
	double onepm;	/* 1 + m */
	double onemm;	/* 1 - m */
	double fcpb;	/* fc * phi */
	double fterm1;	/* 1 - fc(1+m) */
	double fterm2;	/* m/(2*phi)   */
	double fterm3;

	if (c == 0.0 ) return (0.0);
	fcpb  = fc * phi;
	onepm = 1 + m;
	onemm = 1 - m;
	if (v < fcpb) {		/* reverse bias */
		q_rev = c * phi * (1 - exp(onemm * log(1 - v/phi))) / onemm;
		q_fwd = 0;
	} else {
		q_rev = c * phi * (1 - exp(onemm * log(1-fc))) / onemm;		
		fterm1 = 1 - fc*(onepm);
		fterm2 = m /(phi + phi);
		fterm3 = fterm1*(v - fcpb) + fterm2*( v*v - fcpb*fcpb);
		q_fwd = c * fterm3 / exp(onepm*log(1-fc));
	}
	q_total = q_rev + q_fwd;
	return(q_total);
}

double testmod_dpn_charge(double c, double phi, double m, double fc, double v)
{
	double dq_rev = 0;	/* component for v < fc*phi */
	double dq_fwd;		/* component for v > fc*phi */
	double dq_total; 	/* final charge */
	double onepm;	/* 1 + m */
	double onemm;	/* 1 - m */
	double fcpb;	/* fc * phi */
	double fterm1;	/* 1 - fc(1+m) */
	double fterm2;	/* m/(2*phi)   */
	double fterm3;
	double expterm;

	if (c == 0.0 ) return (0.0);
	fcpb  = fc * phi;
	onepm = 1 + m;
	onemm = 1 - m;
	if (v < fcpb) {		/* reverse bias */
		dq_rev = (c/(1-v/phi))*exp(onemm*log(1-v/phi));
		dq_fwd = 0;
	} else {
		dq_rev = 0.0;
		fterm1 = 1 - fc*(onepm);
		fterm2 = m /(phi + phi);
		fterm3 = fterm1*(v - fcpb) + fterm2*( v*v - fcpb*fcpb);
		expterm = exp(onepm*log(1-fc));
		dq_fwd = c*fterm1/expterm + c*m*v/(phi*expterm);
	}
	dq_total = dq_rev + dq_fwd;
	return(dq_total);
}

void EvaluateDevice(ExternalModelDevice *device)

/*void EvalDev()*/
{
	DiodeDevice *d;
	DiodeModel *m;
	double v, i, q;
#if RS_INTERNAL_NODE
	double vrs;
#endif

	d = (DiodeDevice *)device->info;
	m = (DiodeModel *)device->model->info;

#if RS_INTERNAL_NODE
	if (d->rs != 0.0)
	{
		v = device->voltage[ANODE] - device->voltage[d->rs_id];
		vrs = device->voltage[d->rs_id] - device->voltage[CATHODE];
	}
	else
		v = device->voltage[ANODE] - device->voltage[CATHODE];
#else
	v = device->voltage[ANODE] - device->voltage[CATHODE];
#endif
	
	/* current */
	i = d->i1 = d->isat * (exp(v/m->nktq) - 1);
	if (m->bv_specified)
		if (v + d->bv <= 0.0)
			i -= d->isat * (exp(-(v+d->bv) / m->nktq) - 1);
	
	i *= d->mult;
	device->current[ANODE] = i;
#if RS_INTERNAL_NODE
	if (d->rs != 0.0)
	{
		device->current[d->rs_id] = -i + vrs/d->rs;
		device->current[CATHODE] = -vrs/d->rs;
	}
	else
		device->current[CATHODE] = -i;
#else
	device->current[CATHODE] = -i;
#endif
	
	/* charge */
	q = m->tt * d->i1 + testmod_pn_charge(d->cj,m->vj,m->m,m->fc,v);
	q *= d->mult;
	device->charge[ANODE] = q;
#if RS_INTERNAL_NODE
	device->charge[d->rs_id] = -q;
	device->charge[CATHODE] = 0.0;
#else
	device->charge[CATHODE] = -q;
#endif
}


void EvaluateDerivatives(ExternalModelDevice *device)
{
/* To have T-Spice compute derivatives by differencing, just do:	 
* ComputeNumericalDerivatives(device);
*	The code below computes analytic derivatives
*/
	
	double v, didv, dqdv, didv1;
	DiodeDevice *d;
	DiodeModel *m;

	ComputeNumericalDerivatives(device);
	return;
	
	d = (DiodeDevice *)device->info;
	m = (DiodeModel *)device->model->info;

#if RS_INTERNAL_NODE
	if (d->rs != 0.0)
		v = device->voltage[ANODE] - device->voltage[d->rs_id];
	else
		v = device->voltage[ANODE] - device->voltage[CATHODE];
#else
	v = device->voltage[ANODE] - device->voltage[CATHODE];
#endif
	
	didv = didv1 = (d->i1+d->isat) / m->nktq;
	if (m->bv_specified)
		if (v + d->bv <= 0.0)
			didv += d->isat * exp(-(v+d->bv) / m->nktq) / m->nktq;
	didv *= d->mult;
	dqdv = m->tt * didv1 + testmod_dpn_charge(d->cj,m->vj,m->m,m->fc,v);
	dqdv *= d->mult;

#if RS_INTERNAL_NODE
	if (d->rs != 0.0)
	{
		device->current_deriv[0][0] = didv;
		device->current_deriv[0][2] = -didv;
		device->current_deriv[2][0] = -didv;
		device->current_deriv[2][2] = didv;
		device->current_deriv[1][1] = 1.0/d->rs;
		device->current_deriv[2][2] += 1.0/d->rs;
		device->current_deriv[1][2] = -1.0/d->rs;
		device->current_deriv[2][1] = -1.0/d->rs;
		device->charge_deriv[0][0] = dqdv;
		device->charge_deriv[0][2] = -dqdv;
		device->charge_deriv[2][0] = -dqdv;
		device->charge_deriv[2][2] = dqdv;
	}
	else
	{
		device->current_deriv[0][0] = didv;
		device->current_deriv[0][1] = -didv;
		device->current_deriv[1][0] = -didv;
		device->current_deriv[1][1] = didv;
		device->charge_deriv[0][0] = dqdv;
		device->charge_deriv[0][1] = -dqdv;
		device->charge_deriv[1][0] = -dqdv;
		device->charge_deriv[1][1] = dqdv;
	}
#else
	device->current_deriv[0][0] = didv;
	device->current_deriv[0][1] = -didv;
	device->current_deriv[1][0] = -didv;
	device->current_deriv[1][1] = didv;
	device->charge_deriv[0][0] = dqdv;
	device->charge_deriv[0][1] = -dqdv;
	device->charge_deriv[1][0] = -dqdv;
	device->charge_deriv[1][1] = dqdv;
#endif
}


void NoiseSetup(ExternalModelDevice *device)
{
	AddNoiseSource(device, "ID", 0, 1, 2.0*ELECTRON_CHG*fabs(device->current[0]));
	AddNoiseSource(device, "FN", 0, 1, 0.0);
}


void NoiseEvaluate(ExternalModelDevice *device)
{
	DiodeModel *dm;
	dm = (DiodeModel *)device->model->info;
	SetNoiseSourceValue(device, "FN", dm->kf * pow(fabs(device->current[0]), dm->af)
							  / device->model->sim_data[SIM_FREQUENCY]);
}


void CleanupDevice(ExternalModelDevice *device)
{
	if (device->info != NULL)
		free(device->info);
}

void CleanupModel(ExternalModel *model)
{
	if (model->info != NULL)
		free(model->info);
}


void PrintSmallSignalParams(ExternalModelDevice *device)
{
	SmallSignalParameterString(device, "TYPE", "DIODE");
	SmallSignalParameterDouble(device, "ID", device->current[0]);
	SmallSignalParameterDouble(device, "VD", device->voltage[0]-device->voltage[1]);
	if (fabs(device->current_deriv[0][0]) > 1.0e-50)
		SmallSignalParameterDouble(device, "REQ", 1.0/device->current_deriv[0][0]);
	else
		SmallSignalParameterString(device, "REQ", "Inf");		
	SmallSignalParameterDouble(device, "RS", ((DiodeModel *)(device->model->info))->rs);
	SmallSignalParameterDouble(device, "CD", device->charge_deriv[0][0]);
	SmallSignalParameterDouble(device, "GD", device->current_deriv[0][0]);
}

#ifndef MAKE_DLL 
void DiodeMain() {

	Macro_Register("DiodeMod");
}

}
DiodeMain();
#endif
