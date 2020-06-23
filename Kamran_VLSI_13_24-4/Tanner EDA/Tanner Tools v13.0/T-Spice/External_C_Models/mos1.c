
#ifndef MAKE_DLL 
module MOS1{
#endif

#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <string.h>
#include <ctype.h>

#ifndef  MAKE_DLL
#include "tspmodel.h"
#else
#if defined(WIN) || defined(WIN32)
#include "include\tspmodel.h"
#else
#include "include/tspmodel.h"
#endif
#endif


/*****************************************************************************
 #                                   mos1.c                                  #
 #                             Level 1 MOSFET model                          #
 #                         Sample T-Spice External Model                     #
 *****************************************************************************/

/*
 *  This is a sample T-Spice external model implementation of the
 *  MOSFET level 1 model.  It features parasitic diodes and resitors,
 *  various noise models, and support for table-based calculation.
 */

/****** Model Constants ******/

enum MosfetTerminals {
    DRAIN,
    GATE,
    SOURCE,
    BULK
};

enum TableAxes {
    VDS,
    VGS,
    VBS
};

#define EPS_0      8.854214871e-12 /* Permittivity of free space */
#define EPS_ox     3.453133e-11    /* Dialectric constant of oxide */
#define EPS_si     1.03594e-10     /* Dialectric constant of SiO2 substrate */
#define BOLTZMAN   1.38062e-23     /* Boltzman's constant */
#define KELVIN     273.15          /* Celsius to Kelvin conversion */
#define TREF       300.15          /* Reference temperature (27 deg. C) */
#define CHARGE_q   1.6021918e-19   /* (MKS) */
#define N_i        1.45e16         /* Intrinsic carrier concentration */


/*** Model Data Structures ***/

struct ExtMos1Model 
{
    enum   { NMOS, PMOS } type;
    double vto;
    double kp;
    double phi;
    double gamma;
    double lambda;
    double nss;
    double tox;
    double nsub;
    double xj;
    double u0;
    double tpg;
    double cgso;
    double cgdo;
    double cgbo;
    double cj;
    double cjsw;
    double bex;
    double ld;
    double wd;
    double pb;
    double mj;
    double fc;

    ParasiticDiodeModel *dmodel;

    double min_length;          /* For automatic model selection */
    double min_width;

    double cox;                 /* Precomputed Parameters */

    bool vto_given;
    bool kp_given;
    bool phi_given;
    bool gamma_given;

    double table_vds_range;     /* Table Parameters */
    double table_vgs_range;
    double table_vbs_range;
    double table_vds_res;
    double table_vgs_res;
    double table_vbs_res;
};

typedef struct ExtMos1Model ExtMos1Model;


struct ExtMos1Device
{
	double l;
    double w;
    double as;
    double ps;
    double ad;
    double pd;

    double cgdo;
    double cgso;
    double cgbo;

    double rs;                  /* Parasitics */
    double rd;

    double noiselevel;          /* Noise Parameters */
    double gdsnoise;
    double af;
    double kf;

    double beta;                /* Precomputed Constants */
    double capgda;
    double capgsa;
    double capgba;
    double capgdo;
    double capgso;
    double capgbo;
    double cgate;
    double cjad;
    double cjas;
    double cjswd;
    double cjsws;

    int    table_mode;

    ParasiticDeviceId dres_id;
    ParasiticDeviceId sres_id;
    ParasiticDeviceId ddiode_id;
    ParasiticDeviceId sdiode_id;
};

typedef struct ExtMos1Device ExtMos1Device;



/**** Local Function Declarations ****/

void ParseModelParameters(ExternalModel *model);
void ModelMatchesDevice(ExternalModel *model, 
                               ExternalModelDevice *device);
void PrecomputeModelParameters(ExternalModel *model);
void PrecomputeDeviceParameters(ExternalModelDevice *device);
void TableMatchesDevice(ExternalModel *model, 
                               ExternalModelDevice *device);
void TableSetup(ExternalModel *model, ExternalModelDevice *device);
void ParasiticSetup(ExternalModelDevice *device);
void EvaluateDevice(ExternalModelDevice *device);
void EvaluateDerivatives(ExternalModelDevice *device);
void NoiseSetup(ExternalModelDevice *device);
void NoiseEvaluate(ExternalModelDevice *device);
void CleanupDevice(ExternalModelDevice *device);
void CleanupModel(ExternalModel *model);
void PrintSmallSignalParams(ExternalModelDevice *device);
void PrintModelParameters(ExtMos1Model *m);
void PrintDeviceParameters(ExtMos1Device *d);

#ifdef __GNUC__
inline
#endif
double Eg(double temp);     /* Calculates Energy gap */

#ifdef DEBUG
#define PrintDebugMessage(s)          PrintMessage(s)
#define PrintDebugModelParameters(s)  PrintModelParameters(s)
#define PrintDebugDeviceParameters(s) PrintDeviceParameters(s)
#else
#define PrintDebugMessage(s)
#define PrintDebugModelParameters(s)
#define PrintDebugDeviceParameters(s)
#endif



/**** External Model Main ****/

#ifdef MAKE_DLL  
void ExternalModelMain(void)
#else
void Mos1Main(void)
#endif
{
	ExternalModel       *m;
	ExternalModelDevice *d;
	int                 action;

	GetModelInfo(&m, &d, &action);

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



/**** Action-handling Function Definitions ****/


/*
 *  Parse Model Parameters
 *
 *  Model-specific parameters are parsed from the supplied parameter
 *  list and are stored in an allocated ExtMos1Model structure.
 *
 */
void ParseModelParameters(ExternalModel *model)
{
    ExtMos1Model *mosmodel;
    char         default_val[15];
    bool   specified;
	 char *types;
    unsigned int i;

    model->info = malloc(sizeof(ExtMos1Model));
    if (model->info == NULL) {
        model->error = 1;
        return;
    }
    mosmodel = (ExtMos1Model*)model->info;

	 types = LookupParameterString(model->parameter_list, "type",
                                        "nmos", &specified);
    if (specified)
    {
        for (i=0; i<strlen(types); i++)
            types[i] = tolower(types[i]);
		  if (!strcmp(types, "nmos"))
            mosmodel->type = NMOS;
        else if (!strcmp(types, "pmos"))
            mosmodel->type = PMOS;
        else {
       		PrintMessage("*  External level 1 MOSFET warning:\n");
        		PrintMessage("*    Invalid type \"%s\" specified for MOSFET model %s.\n", 
                           types, model->s_name);
        		PrintMessage("*    Assuming type NMOS.\n");
        }
    }

    if (!specified) {
        PrintMessage("*  External level 1 MOSFET warning:\n");
        PrintMessage("*    No type specified for MOSFET model %s.\n", 
                           model->s_name);
        PrintMessage("*    Assuming type NMOS.\n");
    }
    mosmodel->tpg    = LookupParameterDouble(model->parameter_list,
                                             "tpg", "", &specified);
    mosmodel->tox    = LookupParameterDouble(model->parameter_list,
                                             "tox", "1000e-10", &specified);
    mosmodel->nsub   = LookupParameterDouble(model->parameter_list,
                                             "nsub", "1.0e15", &specified);
    mosmodel->xj     = LookupParameterDouble(model->parameter_list,
                                             "xj", "0.0", &specified);
    mosmodel->u0     = LookupParameterDouble(model->parameter_list,
                                             "u0", "600", &specified);
    mosmodel->lambda = LookupParameterDouble(model->parameter_list,
                                             "lambda", "0.0", &specified);
    mosmodel->nss    = LookupParameterDouble(model->parameter_list,
                                             "nss", "0.0", &specified);
    mosmodel->cj     = LookupParameterDouble(model->parameter_list,
                                             "cj", "0.0", &specified);
    mosmodel->cjsw   = LookupParameterDouble(model->parameter_list,
                                             "cjsw", "0.0", &specified);
    mosmodel->cgso   = LookupParameterDouble(model->parameter_list,
                                             "cgso", "0.0", &specified);
    mosmodel->cgdo   = LookupParameterDouble(model->parameter_list,
                                             "cgdo", "0.0", &specified);
    mosmodel->cgbo   = LookupParameterDouble(model->parameter_list,
                                             "cgbo", "0.0", &specified);
    mosmodel->bex    = LookupParameterDouble(model->parameter_list,
                                             "bex", "0.0", &specified);
    mosmodel->ld     = LookupParameterDouble(model->parameter_list,
                                             "ld", "0.0", &specified);
    mosmodel->wd     = LookupParameterDouble(model->parameter_list,
                                             "wd", "0.0", &specified);
    mosmodel->pb     = LookupParameterDouble(model->parameter_list,
                                             "pb", "0.8", &specified);
    mosmodel->mj     = LookupParameterDouble(model->parameter_list,
                                             "mj", "0.5", &specified);
    mosmodel->fc     = LookupParameterDouble(model->parameter_list,
                                             "fc", "0.5", &specified);
    mosmodel->vto    = LookupParameterDouble(model->parameter_list,
                                             "vto", "-8.0", &specified);
    if (specified) mosmodel->vto_given = 1;
    else mosmodel->vto_given = 0;

    mosmodel->kp     = LookupParameterDouble(model->parameter_list,
                                             "kp", "2.0e-5", &specified);
    if (specified) mosmodel->kp_given = 1;
    else mosmodel->kp_given = 0;

    mosmodel->phi    = LookupParameterDouble(model->parameter_list,
                                             "phi", "0.0", &specified);
    if (specified) mosmodel->phi_given = 1;
    else mosmodel->phi_given = 0;

    mosmodel->gamma  = LookupParameterDouble(model->parameter_list,
                                             "gamma", "0.5", &specified);
    if (specified) mosmodel->gamma_given = 1;
    else mosmodel->gamma_given = 0;

    /* Parasitic Diode Parameters */

    mosmodel->dmodel = NewParasiticDiodeModel();

    mosmodel->dmodel->js   = LookupParameterDouble(model->parameter_list,
                                                   "js", "0.0", &specified);
    mosmodel->dmodel->jsw  = LookupParameterDouble(model->parameter_list,
                                                   "jsw", "0.0", &specified);
    mosmodel->dmodel->n    = LookupParameterDouble(model->parameter_list,
                                                   "n", "1", &specified);
    mosmodel->dmodel->cj   = mosmodel->cj;
    mosmodel->dmodel->cjsw = mosmodel->cjsw;
    mosmodel->dmodel->fc   = mosmodel->fc;
    mosmodel->dmodel->mj   = mosmodel->mj;
    mosmodel->dmodel->pb   = mosmodel->pb;
    sprintf(default_val, "%g", mosmodel->dmodel->tt);
    mosmodel->dmodel->tt   = LookupParameterDouble(model->parameter_list,
                                                   "tt", default_val,
                                                   &specified);

    /* min_length & min_width */

    mosmodel->min_length = LookupParameterDouble(model->parameter_list,
                                                 "min_length", "0.0",
                                                 &specified);
    mosmodel->min_width  = LookupParameterDouble(model->parameter_list,
                                                 "min_width", "0.0",
                                                 &specified);

    /* Table Parameters */

    mosmodel->table_vds_range = LookupParameterDouble(model->parameter_list,
                                "table_vds_range", "0.0", &specified);
    mosmodel->table_vgs_range = LookupParameterDouble(model->parameter_list,
                                "table_vgs_range", "0.0", &specified);
    mosmodel->table_vbs_range = LookupParameterDouble(model->parameter_list,
                                "table_vbs_range", "0.0", &specified);
    mosmodel->table_vds_res   = LookupParameterDouble(model->parameter_list,
                                "table_vds_res", "0.0", &specified);
    mosmodel->table_vgs_res   = LookupParameterDouble(model->parameter_list,
                                "table_vgs_res", "0.0", &specified);
    mosmodel->table_vbs_res   = LookupParameterDouble(model->parameter_list,
                                "table_vbs_res", "0.0", &specified);
}


/*
 *  Precompute Model Parameters
 *
 *  This function precomputes the quantities that are constant for
 *  each model evaluation, regardless of particular device parameters.
 *  This code is executed only if the model is used by a device in the
 *  circuit to be simulated.
 *
 */
void PrecomputeModelParameters(ExternalModel *model)
{
    ExtMos1Model *mosmodel = (ExtMos1Model*)model->info;
    double       temp      = model->sim_data[SIM_TEMPERATURE] + KELVIN;
    double       vfb, ni;
    int          sign      = (mosmodel->type == PMOS) ? -1 : 1;

    mosmodel->cox = EPS_0 * EPS_ox / mosmodel->tox;
    mosmodel->u0 *= pow(temp / TREF, mosmodel->bex);

    /* 
     *  Calculate (if not given) or temperature-adjust (if given)
     *  KP & phi                                                    
     */

    if (!mosmodel->kp_given)
         mosmodel->kp = mosmodel->u0 * mosmodel->cox;
    else mosmodel->kp *= pow(temp / TREF, mosmodel->bex);

    if (!mosmodel->phi_given)
         ni = N_i * pow(temp / TREF, 1.5) * exp(0.5 * CHARGE_q / BOLTZMAN * 
              (Eg(TREF) / TREF - Eg(temp) / temp));
    else ni = mosmodel->nsub * pow(temp / TREF, 1.5) * exp(0.5 * CHARGE_q / 
              BOLTZMAN * (Eg(TREF) / TREF - Eg(temp) / temp - mosmodel->phi / 
              TREF));
    mosmodel->phi = 2 * BOLTZMAN * temp / CHARGE_q * log(mosmodel->nsub / ni);

    /*
     *  Calculate gamma & vfo if not given
     */

    if (!mosmodel->gamma_given)
        mosmodel->gamma = sqrt(2 * EPS_0 * EPS_si * CHARGE_q * mosmodel->nsub) 
                          / mosmodel->cox;

    if (!mosmodel->vto_given) {
        vfb = (-mosmodel->tpg * Eg(temp) / 2) - mosmodel->phi / 2 - 
              sign * CHARGE_q * mosmodel->nss / mosmodel->cox;
        mosmodel->vto = vfb + mosmodel->gamma * sqrt(mosmodel->phi) +
                        mosmodel->phi;
    }

    PrintDebugMessage("*  At end of PrecomputeModelParameters:\n");
    PrintDebugModelParameters(mosmodel);
}


/*
 *  Precompute Device Parameters
 *
 *  Calculates model values that are constant per device.  Checks
 *  for obvious errors (wrong number of terminals).
 *
 */
void PrecomputeDeviceParameters(ExternalModelDevice *device)
{
    ExtMos1Device  *devparams;
    ExtMos1Model   *mosmodel = (ExtMos1Model*)device->model->info;
    bool     specified;

    if (device->n_numnodes != 4) {
        PrintMessage("Incorrect number of terminals (%d) for the MOSFET level 1 model.\n");
        device->error = 1;
        return;
    }

    devparams    = (ExtMos1Device*)malloc(sizeof(ExtMos1Device));
    device->info = (void*)devparams;

    /* Parse device parameters.
     *
     *  Go with "weff" & "leff" if specified, otherwise check
     *  for "w" and "l", adjusting using "wd" and "ld".
     */

    devparams->l = LookupParameterDouble(device->parameter_list, "leff",
                                          "10.0e-6", &specified);
    if (!specified)
        devparams->l = LookupParameterDouble(device->parameter_list, "l",
                                          "10.0e-6", &specified);

    devparams->w = LookupParameterDouble(device->parameter_list, "weff",
                                          "5.0e-6", &specified);
    if (!specified)
        devparams->w = LookupParameterDouble(device->parameter_list, "w",
                                          "5.0e-6", &specified);

    devparams->ad = LookupParameterDouble(device->parameter_list, "ad",
                                          "0.0", &specified);

    devparams->pd = LookupParameterDouble(device->parameter_list, "pd",
                                          "0.0", &specified);

    devparams->as = LookupParameterDouble(device->parameter_list, "as",
                                          "0.0", &specified);
    
    devparams->ps = LookupParameterDouble(device->parameter_list, "ps",
                                          "0.0", &specified);

    devparams->rs = LookupParameterDouble(device->parameter_list, "rs",
                                          "0.0", &specified);
    devparams->rd = LookupParameterDouble(device->parameter_list, "rd",
                                          "0.0", &specified);

    /* Noise Parameters */
    devparams->noiselevel = LookupParameterInt(device->model->parameter_list,
                                "noiselevel|nlev", "2", &specified);
    devparams->gdsnoise   = LookupParameterDouble(device->model->parameter_list,
                                "gdsnoise|gdsnoi", "1.0", &specified);
    devparams->af         = LookupParameterDouble(device->model->parameter_list,
                                "af", "1.0", &specified);
    devparams->kf         = LookupParameterDouble(device->model->parameter_list,
                                "kf", "0.0", &specified);

    device->table_mode = LookupParameterInt(device->parameter_list,
                                            "tables", "0", &specified);
    if (device->table_mode) {
        /* Verify that table parameters are valid */
        if (mosmodel->table_vds_range <= 0.0 || 
            mosmodel->table_vgs_range <= 0.0 ||
            mosmodel->table_vbs_range <= 0.0 || 
            mosmodel->table_vds_res   <= 0.0 ||
            mosmodel->table_vgs_res   <= 0.0 || 
            mosmodel->table_vbs_res   <= 0.0) {
            PrintMessage("Some table parameters were unspecified or invalid.\n");
            PrintMessage("A table won't be used.\n");
            device->table_mode = 0;
        }
    }

    /* Precompute constants */

    devparams->l     -= 2 * 0.75 * mosmodel->xj;
    devparams->beta   = (devparams->w - 2 * mosmodel->wd) / (devparams->l -
                        2 * mosmodel->ld) * mosmodel->kp;

    /* Total Capacitances */
    devparams->cgate  = devparams->w * devparams->l * mosmodel->cox;
    devparams->capgda = devparams->capgsa = devparams->capgba = 
                        devparams->cgate / 3;
    devparams->capgdo = devparams->w * mosmodel->cgdo;
    devparams->capgso = devparams->w * mosmodel->cgso;
    devparams->capgbo = devparams->w * mosmodel->cgbo;
    devparams->cjad   = devparams->ad * mosmodel->cj;
    devparams->cjas   = devparams->as * mosmodel->cj;
    devparams->cjswd  = devparams->pd * mosmodel->cjsw;
    devparams->cjsws  = devparams->ps * mosmodel->cjsw;

    PrintDebugMessage("* End of PrecomputeDeviceParameters.\n");
    PrintDebugDeviceParameters(devparams);
}


/*
 *  Model Matches Device
 *
 *  This function is called when T-Spice is trying to automatically
 *  assign a model based on the parameters of the device being modeled.
 *
 */
void ModelMatchesDevice(ExternalModel *model, 
                               ExternalModelDevice *device)
{
    ExtMos1Model *mosmodel  = (ExtMos1Model *)model->info;
    bool   spec;
    double       w, l;
    

    l = LookupParameterDouble(device->parameter_list, "leff", "10e-6", &spec);
    if (!spec)
        l = LookupParameterDouble(device->parameter_list, "l", "10e-6", &spec);

    w = LookupParameterDouble(device->parameter_list, "weff", "5e-6", &spec);
    if (!spec)
        w = LookupParameterDouble(device->parameter_list, "w", "10e-6", &spec);

    if (l >= mosmodel->min_length && w >= mosmodel->min_width)
         model->model_matches_device = true;
    else model->model_matches_device = false;
}


/*
 *  Table Matches Device
 *
 *  Decide if the table in use can be used for this device.
 *
 */
void TableMatchesDevice(ExternalModel *model, 
                               ExternalModelDevice *device)
{
    ExtMos1Device *devparams = (ExtMos1Device*)device->info;
    ExtMos1Device *devtable  = (ExtMos1Device*)device->table->device->info;

    if (devparams->w != devtable->w || devparams->l != devparams->l)
        model->table_matches_device = false;
    else model->table_matches_device = true;
}


/*
 *  Parasitic Setup
 *
 *  Add the MOSFET's parasitic elements.  These consist of optional
 *  series resistors on the source and drain nodes (if the supplied
 *  rs & rd values are positive) and diodes across the bulk & source
 *  and bulk & drain.
 *
 */
void ParasiticSetup(ExternalModelDevice *device)
{
    ExtMos1Device       *devparams = (ExtMos1Device *) device->info;
    ExtMos1Model        *mosmodel  = (ExtMos1Model *) device->model->info;
    ParasiticDiodeModel *dmodel    = mosmodel->dmodel;
    int                 anode, cathode;

    if (devparams->rs > 0.0) {
        /* Add source parasitic resistor */
        devparams->sres_id = AddSeriesResistor(device, SOURCE, 
                                               devparams->rs, "RS");
    }
    if (devparams->rd > 0.0) {
        /* Add drain parasitic resistor */
        devparams->dres_id = AddSeriesResistor(device, DRAIN, 
                                               devparams->rd, "RD");
    }

    /* 
     * Add source & drain parasitic diodes 
     *
     *  First fill unset parameters of the diode model
     *  contained within the MOSFET model structure.
     */

    dmodel->tref  = TREF;
    dmodel->tnew  = device->model->sim_data[SIM_TEMPERATURE];
    dmodel->expli = 1.0e15;
    dmodel->eg    = Eg(dmodel->tnew);


    anode   = (mosmodel->type == NMOS) ? BULK   : SOURCE;
    cathode = (mosmodel->type == NMOS) ? SOURCE : BULK;
    devparams->sdiode_id = AddParasiticDiode(device, anode, cathode,
                           devparams->as, devparams->ps, 1.0, dmodel);

    anode   = (mosmodel->type == NMOS) ? BULK   : DRAIN;
    cathode = (mosmodel->type == NMOS) ? DRAIN  : BULK;
    devparams->ddiode_id = AddParasiticDiode(device, anode, cathode,
                           devparams->ad, devparams->pd, 1.0, dmodel);

}


/*
 *  Table Setup
 *
 *  If a non-uniform table grid were to be used, it would be defined
 *  here.  For the time being this is a just a uniform grid.
 *
 */
void TableSetup(ExternalModel *model, ExternalModelDevice *device)
{
    ExtMos1Model *mosmodel = (ExtMos1Model*)model->info;
    TspTable     *table    = device->table;

    table->reference_terminal = SOURCE;

    table->grid_type[VDS]        = GRIDTYPE_UNIFORM;
    table->grid_type[VGS]        = GRIDTYPE_UNIFORM;
    table->grid_type[VBS]        = GRIDTYPE_UNIFORM;
    table->number_of_points[VDS] = (int)(mosmodel->table_vds_range / 
                                   mosmodel->table_vds_res);
    table->number_of_points[VGS] = (int)(mosmodel->table_vgs_range /
                                   mosmodel->table_vgs_res);
    table->number_of_points[VBS] = (int)(mosmodel->table_vbs_range /
                                   mosmodel->table_vbs_res);
    table->max_voltage[VDS]      = mosmodel->table_vds_range;
    table->max_voltage[VGS]      = mosmodel->table_vgs_range;
    table->max_voltage[VBS]      = mosmodel->table_vbs_range;        
    table->output_type[VDS]      = OUTPUT_NORMAL;
    table->output_type[VGS]      = OUTPUT_NORMAL;
    table->output_type[VBS]      = OUTPUT_COMPUTE;
}


/*
 *  Evaluate Device
 *
 *  Calculates the terminals' currents and charges based on the
 *  voltages.
 *
 */
void EvaluateDevice(ExternalModelDevice *device)
{
    ExtMos1Model  *mosmodel  = (ExtMos1Model*)device->model->info;
    ExtMos1Device *devparams = (ExtMos1Device*)device->info;

    double vgs = device->voltage[GATE]  - device->voltage[SOURCE];
    double vds = device->voltage[DRAIN] - device->voltage[SOURCE];
    double vbs = device->voltage[BULK]  - device->voltage[SOURCE];
    double vgd = device->voltage[GATE]  - device->voltage[DRAIN];
    double vgb = device->voltage[GATE]  - device->voltage[BULK];

    double vds_, vth, ids, qgb, qgd, qgs;
    int    sign    = (mosmodel->type == PMOS) ? -1 : 1;
    int    ds_swap = 1;

    /* Adjust signs if PMOS */
    vds_  = sign * vds;
    vbs  *= sign;
    vgs  *= sign;

    /*  Swap source & drain if vds is negative             */
    /*  (-1 saved in ds_swap so they can be swapped back)  */
    if (vds_ < 0.0) {
        ds_swap = -1;
        vgs  = vgs - vds_;
        vbs  = vbs - vds_;
        vds_ = -vds_;
    }
    vgd = vgs - vds_;

    /* Calculate threshold voltage */
    vth = sign * (mosmodel->vto - mosmodel->gamma * sqrt(mosmodel->phi));
    if (vbs <= 0.0 || mosmodel->phi - vbs >= 0.0)
        vth += mosmodel->gamma * sqrt(mosmodel->phi - vbs);

    if (vgs <= vth) {
        /* Subthreshold */
        ids = 0;
    }
    else {

        /* Super-threshold */ 
        ids = devparams->beta / 2 * (1 + mosmodel->lambda * vds_);
        device->charge[GATE] = devparams->cgate;

        if ((vgs - vth) > vds_) {

            /* Linear Region */

            ids *= 2 * vds_ * (vgs - vth - vds_ / 2);
            device->charge[GATE] *= 2/3 * (vgd - vth) * (vgd - vth) * 
                                    (vgd - vth) - (vgs - vth) * (vgs - vth) 
                                    * (vgs - vth);
            device->charge[GATE] /= (vgd - vth) * (vgd - vth) - (vgs - vth)
                                    * (vgs - vth);
        } else {

            /* Saturation Region */

            ids *= (vgs - vth) * (vgs - vth);
            device->charge[GATE] *= 2/3 * (vgs - vth) - mosmodel->gamma
                                    * sqrt(mosmodel->phi - vbs);
        }
    }
    
    device->current[DRAIN]  = ds_swap * sign * ids;
    device->current[GATE]   = 0.0;
    device->current[SOURCE] = ds_swap * -sign * ids;
    device->current[BULK]   = -(device->current[DRAIN] +
                                device->current[SOURCE]);
    
    /* Calculate charges */

    vbs *= mosmodel->tpg;
    vgs *= mosmodel->tpg;
    vds *= mosmodel->tpg;

    qgd = (devparams->capgda + devparams->capgdo) * vgd;
    qgs = (devparams->capgsa + devparams->capgso) * vgs;
    qgb = (devparams->capgba + devparams->capgbo) * vgb;

    device->charge[DRAIN]  = sign * -qgd;
    device->charge[GATE]   = sign * (qgd + qgs + qgb);
    device->charge[SOURCE] = sign * -qgs;
    device->charge[BULK]   = sign * -qgb;

}


/*
 *  Evaluate Derivatives
 *
 *  The derivatives of all currents and charges w.r.t. node voltages
 *  are calculated here.  Here we take advantage of T-Spice's built-in
 *  numerical derivative solver.
 *
 */
void EvaluateDerivatives(ExternalModelDevice *device)
{
    ComputeNumericalDerivatives(device);
}


/*
 *  Noise Setup
 *
 *  This routine is used to add simple noise sources to a model.
 *  (I.e. thermal noise caused by resistors.)
 *
 */
void NoiseSetup(ExternalModelDevice *device)
{
    ExtMos1Model  *mosmodel  = (ExtMos1Model *)device->model->info;
    ExtMos1Device *devparams = (ExtMos1Device *)device->info;
    double        gm         = device->current_deriv[DRAIN][GATE];
    double        gds        = device->current_deriv[DRAIN][DRAIN];
    double        temp       = device->model->sim_data[SIM_TEMPERATURE]+KELVIN;
    int           sign       = (mosmodel->type == PMOS) ? -1 : 1;
    double        vds, vbs, vgs, vth, alpha;

    /*
     *  Add channel & flicker noise sources here;
     *  the values for flicker noise are calculated in 
     *  NoiseEvaluate.  Note noise due to parasitic dioes 
     *  & resistors is taken care of by T-Spice.
     */
    AddNoiseSource(device, "FN", SOURCE, DRAIN, 0);

    /* Channel Noise */
    if (devparams->noiselevel == 3) {

        vgs = sign * (device->voltage[GATE] - device->voltage[SOURCE]);
        vbs = sign * (device->voltage[BULK] - device->voltage[SOURCE]);

        vth = sign * (mosmodel->vto - mosmodel->gamma * sqrt(mosmodel->phi));
        if (vbs <= 0.0 || mosmodel->phi - vbs >= 0.0)
            vth += mosmodel->gamma * sqrt(mosmodel->phi - vbs);

        if (vgs >= vth) {

            /* Super-threshold region */
            vds = fabs(device->voltage[DRAIN] - device->voltage[SOURCE]);
            alpha = ((vgs - vth) > vds) ? 1 - vds / (vgs - vth) : 0;
            AddNoiseSource(device, "ID", SOURCE, DRAIN, 8/3 * BOLTZMAN * 
                           temp * devparams->beta * (vgs - vth) * gds * 
                           (1 + alpha + alpha * alpha) / (1 + alpha));
        }
        else {
            /* Sub-threshold region.  Assume no noise. */
            AddNoiseSource(device, "ID", SOURCE, DRAIN, 0);
        }
    } 
    else AddNoiseSource(device, "ID", SOURCE, DRAIN, 8/3 * BOLTZMAN * 
                        temp * gm);
}


/*
 *  Noise Evaluate
 *
 *  This function is called to calculate more the complicated, frequency-
 *  dependent noise sources in the model.
 *
 */
void NoiseEvaluate(ExternalModelDevice *device)
{
    ExtMos1Model  *mosmodel  = (ExtMos1Model *)device->model->info;
    ExtMos1Device *devparams = (ExtMos1Device *)device->info;
    double        gm         = device->current_deriv[DRAIN][GATE];
    double        freq       = device->model->sim_data[SIM_FREQUENCY];
    double        ids        = 0.5 * fabs(device->current[DRAIN]
                                           - device->current[SOURCE]);

    /* Flicker Noise */
    if (devparams->noiselevel == 0)
        SetNoiseSourceValue(device, "FN", devparams->kf / (mosmodel->cox
                            * devparams->l * devparams->l * freq) *
                            pow(ids, devparams->af));
    else if (devparams->noiselevel == 1)
        SetNoiseSourceValue(device, "FN", devparams->kf / (mosmodel->cox
                            * devparams->l * devparams->w * freq) *
                            pow(ids, devparams->af));
    else 
        SetNoiseSourceValue(device, "FN", devparams->kf / (mosmodel->cox *
                            devparams->l * devparams->w * pow(freq,
                            devparams->af)) * gm * gm);
}


/*
 *  Print Small Signal Params
 *
 *  Generation of linearized small-signal model happens here.
 *
 */
void PrintSmallSignalParams(ExternalModelDevice *device)
{
    ExtMos1Model  *mosmodel  = (ExtMos1Model *)device->model->info;
    ExtMos1Device *devparams = (ExtMos1Device *)device->info;
    double        vgs        = device->voltage[GATE] - device->voltage[SOURCE];
    double        vth        = mosmodel->vto + mosmodel->gamma * 
                               (sqrt(mosmodel->phi - device->voltage[BULK] + 
                               device->voltage[SOURCE]) - sqrt(mosmodel->phi));

    SmallSignalParameterString(device, "TYPE", "MOSFET");
    SmallSignalParameterDouble(device, "ID", device->current[DRAIN]);
    SmallSignalParameterDouble(device, "VGS", device->voltage[GATE] -
                               device->voltage[SOURCE]);
    SmallSignalParameterDouble(device, "VDS", device->voltage[DRAIN] -
                               device->voltage[SOURCE]);
    SmallSignalParameterDouble(device, "VBS", device->voltage[BULK] -
                               device->voltage[SOURCE]);
    SmallSignalParameterDouble(device, "VTH", vth);
    SmallSignalParameterDouble(device, "VDSAT", (vgs > vth) ? vgs - vth :
                               0.0);
    SmallSignalParameterDouble(device, "RS", devparams->rs);
    SmallSignalParameterDouble(device, "RD", devparams->rd);
    SmallSignalParameterDouble(device, "GM", 
                               device->current_deriv[DRAIN][GATE]);
    SmallSignalParameterDouble(device, "GDS", 
                               device->current_deriv[DRAIN][DRAIN]);
    SmallSignalParameterDouble(device, "GMB", 
                               device->current_deriv[DRAIN][BULK]);
    SmallSignalParameterDouble(device, "GBD", 
                               device->current_deriv[BULK][DRAIN]);
    SmallSignalParameterDouble(device, "GBS", 
                               device->current_deriv[BULK][SOURCE]);
    SmallSignalParameterDouble(device, "CGS", 
                               device->charge_deriv[GATE][SOURCE]);
    SmallSignalParameterDouble(device, "CGD", 
                               device->charge_deriv[GATE][DRAIN]);
    SmallSignalParameterDouble(device, "CGB", 
                               device->charge_deriv[GATE][BULK]);
    SmallSignalParameterDouble(device, "CBD",
                               device->charge_deriv[BULK][DRAIN]);
    SmallSignalParameterDouble(device, "CBS",
                               device->charge_deriv[BULK][DRAIN]);
}


/*
 *  Cleanup Device
 *
 *  Frees any memory allocated for the device structure
 *
 */
void CleanupDevice(ExternalModelDevice *device)
{
    free(device->info);
}


/*
 *  Cleanup Model
 *
 *  Frees any memory allocated for the model structure.
 *
 */
void CleanupModel(ExternalModel *model)
{
    free(model->info);
}


/**** Model Utility Functions ****/

/*
 *  Eg(double temp)
 *
 *  Calculates the energy gap between the conduction & valence bands
 *  for polysilicon.  (Defined inline for gcc.)
 *
 */

#ifdef __GNUC__
inline
#endif
double Eg(double temp)
{
    return 1.16 - 7.02e-4 * temp * temp / (1108 + temp);
}


void PrintModelParameters(ExtMos1Model *m)
{
    PrintMessage("*  ExtMos1Model elements:\n");
    PrintMessage("*  ----------------------\n");
    PrintMessage("*  type   = %s\n", (m->type == NMOS) ? "NMOS" : "PMOS");
    PrintMessage("*  vto    = %g\n", m->vto);
    PrintMessage("*  kp     = %g\n", m->kp);
    PrintMessage("*  phi    = %g\n", m->phi);
    PrintMessage("*  gamma  = %g\n", m->gamma);
    PrintMessage("*  lambda = %g\n", m->lambda);
    PrintMessage("*  nss    = %g\n", m->nss);
    PrintMessage("*  tox    = %g\n", m->tox);
    PrintMessage("*  nsub   = %g\n", m->nsub);
    PrintMessage("*  xj     = %g\n", m->xj);
    PrintMessage("*  u0     = %g\n", m->u0);
    PrintMessage("*  tpg    = %g\n", m->tpg);
    PrintMessage("*  cgso   = %g\n", m->cgso);
    PrintMessage("*  cgdo   = %g\n", m->cgdo);
    PrintMessage("*  cgbo   = %g\n", m->cgbo);
    PrintMessage("*  cj     = %g\n", m->cj);
    PrintMessage("*  cjsw   = %g\n", m->cjsw);
    PrintMessage("*  bex    = %g\n", m->bex);
    PrintMessage("*  ld     = %g\n", m->ld);
    PrintMessage("*  wd     = %g\n", m->wd);
    PrintMessage("*  pb     = %g\n", m->pb);
    PrintMessage("*  mj     = %g\n", m->mj);
    PrintMessage("*  fc     = %g\n", m->fc);
    PrintMessage("*   computed parameters:\n");
    PrintMessage("*  cox    = %g\n", m->cox);
    PrintMessage("*  \n");
}


void PrintDeviceParameters(ExtMos1Device *d)
{
    PrintMessage("*  ExtMos1Device parameters:\n");
    PrintMessage("*  -------------------------\n");
    PrintMessage("*  l      = %g\n", d->l);
    PrintMessage("*  w      = %g\n", d->w);
    PrintMessage("*  as     = %g\n", d->as);
    PrintMessage("*  ps     = %g\n", d->ps);
    PrintMessage("*  ad     = %g\n", d->ad);
    PrintMessage("*  pd     = %g\n", d->pd);
    PrintMessage("*  cgdo   = %g\n", d->cgdo);
    PrintMessage("*  cgso   = %g\n", d->cgso);
    PrintMessage("*  cgbo   = %g\n", d->cgbo);
    PrintMessage("*  rs     = %g\n", d->rs);
    PrintMessage("*  rd     = %g\n", d->rd);
    PrintMessage("*  nlev   = %g\n", d->noiselevel);
    PrintMessage("*  gdsnoi = %g\n", d->gdsnoise);
    PrintMessage("*  af     = %g\n", d->af);
    PrintMessage("*  kf     = %g\n", d->kf);
    PrintMessage("*   computed parameters:\n");
    PrintMessage("*  beta   = %g\n", d->beta);
    PrintMessage("*  capgda = %g\n", d->capgda);
    PrintMessage("*  capgsa = %g\n", d->capgsa);
    PrintMessage("*  capgba = %g\n", d->capgba);
    PrintMessage("*  capgdo = %g\n", d->capgdo);
    PrintMessage("*  capgso = %g\n", d->capgso);
    PrintMessage("*  capgbo = %g\n", d->capgbo);
    PrintMessage("*  cgate  = %g\n", d->cgate);
    PrintMessage("*  cjad   = %g\n", d->cjad);
    PrintMessage("*  cjas   = %g\n", d->cjas);
    PrintMessage("*  cjswd  = %g\n", d->cjswd);
    PrintMessage("*  cjsws  = %g\n", d->cjsws);
    PrintMessage("*  table_mode = %d\n", d->table_mode);
}


#ifndef MAKE_DLL 
void mymain() {
	Macro_Register("Mos1Main");
}

}
mymain();
#endif

