#ifndef _tspmodel_h_
#define _tspmodel_h_

#if defined(WIN) || defined(WIN32) || defined(DOS)
#include <windows.h>
#endif

#ifdef HPUX
#include <dl.h>
#endif

#ifndef __cplusplus
	typedef char bool;
#endif
#ifndef true
	#define true    ((bool) 1)
#endif
#ifndef false
	#define false   ((bool) 0)
#endif

/* For backward compatibility with old T-Spice external C code... */
typedef bool TspBoolean;
#define True true
#define False false

/*************************************************************************
 * Version number to check version compatibility between T-Spice and model
 *************************************************************************/
#define TSPMODEL_VERSION 1300

/*************************************************************************
 *  "action" codes for third argument of ExternalModelMain
 *************************************************************************/
#define PARSE_MODEL_PARAMETERS 1
#define PARSE_DEVICE_PARAMETERS 2
#define PRECOMPUTE_MODEL_PARAMETERS 3
#define PRECOMPUTE_DEVICE_PARAMETERS 4
#define PARASITIC_SETUP 5
#define EVALUATE_DEVICE 6
#define EVALUATE_DERIVATIVES 7
#define CLEANUP_DEVICE 8
#define CLEANUP_MODEL 9
#define NOISE_SETUP 10
#define NOISE_EVALUATE 11
#define PRINT_MODEL_PARAMS 12
#define PRINT_SMALL_SIGNAL_PARAMS 13
#define MODEL_MATCHES_DEVICE 14
#define TABLE_MATCHES_DEVICE 15
#define TABLE_SETUP 16
#define CHECK_PASSWORD 17

/*************************************************************************
 *  Physical constants
 *************************************************************************/
#define KELVIN 273.15
#define BOLTZMANN_CONSTANT 1.3806226e-23
#define ELECTRON_CHG 1.6021918e-19

/*************************************************************************
 *  Types
 *************************************************************************/

typedef enum TspSimData
{
	SIM_TIME=0,
	SIM_FREQUENCY,
	SIM_DELTAT,
	SIM_TEMPERATURE,

	SIM_OPTION_ABSI,
	SIM_OPTION_ABSQ,
	SIM_OPTION_ABSV,
	SIM_OPTION_ABSDV,
	SIM_OPTION_ACCT,
	SIM_OPTION_ACCURATE,
	SIM_OPTION_ACOUT,
	SIM_OPTION_ADAPTIVEGRID,
	SIM_OPTION_CASESENSITIVE,
	SIM_OPTION_CONNECTIVITYCHECK,
	SIM_OPTION_CSDF,
	SIM_OPTION_DCAP,
	SIM_OPTION_DCSTEP,
	SIM_OPTION_DEFAD,
	SIM_OPTION_DEFAS,
	SIM_OPTION_DEFL,
	SIM_OPTION_DEFNRD,
	SIM_OPTION_DEFNRS,
	SIM_OPTION_DEFPD,
	SIM_OPTION_DEFPS,
	SIM_OPTION_DEFTABLES,
	SIM_OPTION_DEFW,
	SIM_OPTION_DERIV,
	SIM_OPTION_DNOUT,
	SIM_OPTION_FAST,
	SIM_OPTION_FT,
	SIM_OPTION_GMINDC,
	SIM_OPTION_GMINALGORITHM,
	SIM_OPTION_GRAMP,
	SIM_OPTION_GSHUNT,
	SIM_OPTION_MAXORD,
	SIM_OPTION_MAXWRITS,
	SIM_OPTION_METHOD,
	SIM_OPTION_MINRESISTANCE,
	SIM_OPTION_MINSRCSTEP,
	SIM_OPTION_MINTIMERATIO,
	SIM_OPTION_MINTIMESTEP,
	SIM_OPTION_MOSCAP,
	SIM_OPTION_MOSPARASITICS,
	SIM_OPTION_NODEFACTORING,
	SIM_OPTION_NUMDGT,
	SIM_OPTION_NUMND,
	SIM_OPTION_NUMNS,
	SIM_OPTION_NUMNT,
	SIM_OPTION_NUMNTREDUCE,
	SIM_OPTION_NUMNX,
	SIM_OPTION_NUMNXRAMP,
	SIM_OPTION_OPTS,
	SIM_OPTION_POWERUPLEN,
	SIM_OPTION_PRTDEL,
	SIM_OPTION_PRTINTERP,
	SIM_OPTION_RELI,
	SIM_OPTION_RELQ,
	SIM_OPTION_RELV,
	SIM_OPTION_RELDV,
	SIM_OPTION_SETTRAPS,
	SIM_OPTION_SPICE,
	SIM_OPTION_STATDELAY,
	SIM_OPTION_TABDELIM,
	SIM_OPTION_TNOM,
	SIM_OPTION_TOLMULT,
	SIM_OPTION_VARORD,
	SIM_OPTION_VERBOSE,
	SIM_OPTION_VNTOL,

	SIM_VRANGE_MOS,
	SIM_VRANGE_MES,
	SIM_VRANGE_JFET,
	SIM_VRANGE_DIODE,
	SIM_GRIDSIZE_MOS_VDS,
	SIM_GRIDSIZE_MOS_VGS,
	SIM_GRIDSIZE_MOS_VBS,
	SIM_GRIDSIZE_MES_VDS,
	SIM_GRIDSIZE_MES_VGS,
	SIM_GRIDSIZE_MES_VBS,
	SIM_GRIDSIZE_JFET_VDS,
	SIM_GRIDSIZE_JFET_VGS,
	SIM_GRIDSIZE_DIODE,

	SIM_OPTION_AUTOSTOP,
	SIM_OPTION_GMINTRAN,
	SIM_OPTION_NUMNDSET,
	
	SIM_DATA_SIZE
} TspSimData;

typedef enum TspFunctionType
{
	CurrentFunction=0,
	ChargeFunction,
	CurrentAndCharge
} TspFunctionType;

typedef enum TspDerivativeType
{
	CenteredDifference=0,
	LeftDifference,
	RightDifference
} TspDerivativeType;

typedef enum TspDataTypeE
{
 	TSP_DATA_INT = 0x2,
 	TSP_DATA_DBL = 0x4,
 	TSP_DATA_STR = 0x20
} TspDataTypeE;

typedef union TspDataU
{
	double dval;
	int ival;
	char *sval;
} TspDataU;

typedef struct TspParamListElem
{
	char *s_name;
	char *valuestr;
	double value;
	TspDataTypeE type;
	bool used;
	struct TspParamListElem *p_next;
} TspParamListElem;

typedef int ParasiticDeviceId;
typedef int VoltageSourceId;

typedef enum ParasiticDeviceType
{
	PARASITIC_RESISTOR,
	PARASITIC_DIODE,
	INTERNAL_NODE
} ParasiticDeviceType;

typedef struct ParasiticDevice
{
	ParasiticDeviceId id;
	ParasiticDeviceType type;
	void *parameters;
	struct ParasiticDevice *p_next;
} ParasiticDevice;

typedef struct ParasiticResistor
{
	double resistance;
	int terminal;
	char *noise_source_name;
	void *circuit_element;
} ParasiticResistor;

typedef struct ParasiticDiodeModel
{
	/* DC parameters */
	double is;    /* default saturation current (when js*area+jsw*perim == 0) default = 1.0e-14 */
	double js;    /* saturation current per unit area (amp/m**2) default=0 */
	double jsw;   /* sidewall saturation current per unit perimeter (amp/m) default=0 */
	double n;     /* emission coefficient, default=1 */
	double nds;   /* reverse bias slope coefficient, default=1 */
	double vnds;  /* reverse diode transition point (Volts) default=-1 */
	double ik;
	double ikr;

	/* Capacitance parameters */
	double cj;    /* zero-bias junction capacitance (F/m**2) default=500.00uF/m**2 */
	double cjsw;  /* sero-bias sidewall junction capacitance (F/m) default=0 */
	double fc;
	double mj;    /* junction grading coefficient (default=0.5) */
	double mjsw;
	double pb;
	double pbsw;
	double tt;

	/* Temperature effect parameters */
	double xti;
	double eg;
	double tref;
	double tnew;

	double expli;

	void *tspice_diode_model;
} ParasiticDiodeModel;

typedef struct ParasiticDiode
{
	int terminal[2];
	char *noise_source_name;
	ParasiticDiodeModel *model;
	double area;
	double perimeter;
	double multiplier;
	double gd;
	double cd;
	void *circuit_element;
} ParasiticDiode;

typedef struct TspNoiseSource
{
	char *s_name;
	int node1;
	int node2;
	double value;
	bool changed;
	struct TspNoiseSource *p_next;
} TspNoiseSource;

typedef struct TspSmallSignalParam
{
	char *s_name;
	TspDataTypeE type;
	TspDataU value;
	int index;
	struct TspSmallSignalParam *p_next;
	struct TspSmallSignalParam *model_next;
} TspSmallSignalParam;

#define MAX_TSPTABLE_DIMENSIONS 3
#define MAX_TSPTABLE_TERMINALS (MAX_TSPTABLE_DIMENSIONS+1)

typedef enum TspTableSymmetryType
{
	SYMMETRY_NONE,
	SYMMETRY_EVEN,  /* f(x) = f(-x) */
	SYMMETRY_ODD    /* f(x) = -f(-x) */
} TspTableSymmetryType;

typedef enum TspTableGridType
{
	GRIDTYPE_UNIFORM,
	GRIDTYPE_NONUNIFORM
} TspTableGridType;

typedef enum TspTableOutputType
{
	OUTPUT_NORMAL,      /* store this output in table */
	OUTPUT_ALWAYS_ZERO, /* output is always zero - don't need to store it */
	OUTPUT_COMPUTE      /* compute this output from other outputs,
								  given that they have to sum to zero */
} TspTableOutputType;

typedef struct TspTable
{
	int number_of_dimensions;
	int reference_terminal;
	TspTableSymmetryType current_symmetry[MAX_TSPTABLE_DIMENSIONS][MAX_TSPTABLE_TERMINALS];
	TspTableSymmetryType charge_symmetry[MAX_TSPTABLE_DIMENSIONS][MAX_TSPTABLE_TERMINALS];
	TspTableGridType grid_type[MAX_TSPTABLE_DIMENSIONS];
	TspTableOutputType output_type[MAX_TSPTABLE_TERMINALS];
	double max_voltage[MAX_TSPTABLE_DIMENSIONS];
	int number_of_points[MAX_TSPTABLE_DIMENSIONS];
	double *grid[MAX_TSPTABLE_DIMENSIONS];
	double dx[MAX_TSPTABLE_DIMENSIONS];
	double grid0[MAX_TSPTABLE_DIMENSIONS];
	double *interpolated_values;
	double dvdx[2*MAX_TSPTABLE_TERMINALS][MAX_TSPTABLE_DIMENSIONS];
	int number_of_outputs;
	void *values;
	struct ExternalModelDevice *device;
	void (*evaluate_function)(struct ExternalModelDevice *);
} TspTable;

typedef struct TspTableListItem
{
	TspTable *table;
	struct TspTableListItem *p_next;
} TspTableListItem;

typedef struct ControllingVsource
{
	int terminal;
	char *s_name;
	void *vsource;
	void *vcvs;
	struct ControllingVsource *p_next;
} ControllingVsource;

typedef struct Vsource
{
	int terminal1;
	int terminal2;
	ParasiticDeviceId internal_node_id;
	VoltageSourceId id;
	int current_terminal;
	double voltage;
	double *voltage_deriv;
	struct Vsource *p_next;
} Vsource;

typedef enum TspTerminalType
{
	TERMINAL_NODE_VOLTAGE,
	TERMINAL_VSOURCE_CURRENT
} TspTerminalType;

typedef enum TspModType { DLL=0, CINTERP } TspModType;

typedef struct ExternalModel
{
	int version; /* so that we can extend the definition later */
	int error;
	double *sim_data;
	char *s_name;
	TspParamListElem *parameter_list;
	bool model_matches_device;
	bool table_matches_device;
	void *info;  /* info defined by model author */
	TspSmallSignalParam *ss_params;
#if defined(WIN) || defined(WIN32) || defined(DOS)
	HMODULE hlib;
#elif defined(UNIX) && defined(HPUX)
	shl_t hlib;
#elif defined(UNIX) && !defined(HPUX)
	void *hlib;
#endif
	void *external_model_main;
	TspModType type;
	TspTableListItem *table_list;
} ExternalModel;


typedef struct ExternalModelDevice
{
	struct ExternalModelDevice *p_next;
	int c_type;
	char *s_name;
	char *s_alias;
	int n_numnodes;
	int version;
	int error;
	ExternalModel *model;
	char *modelname;
	double *voltage;
	double *current;
	double *charge;
	double **current_deriv;
	double **charge_deriv;
	int num_internal_nodes;
	TspParamListElem *parameter_list;
	bool table_mode;
	TspTable *table;
	void *info;  /* info defined by model author */
	int *terminal_nodes;
	TspTerminalType *terminal_type;
	ParasiticDevice *parasitics;
	double **charge_history;
	double *save_current;
	double *save_charge;
	double *derivative_vector;
	bool derivatives_uptodate;
	TspNoiseSource *user_noise_sources;
	void *noise_sources;
	TspSmallSignalParam *small_signal_params;
	ControllingVsource *controlling_src;
	Vsource *voltage_sources;
} ExternalModelDevice;

#if defined(UNIX) || !defined(MAKE_DLL)
	#define TSPICEAPI
#else
	#define TSPICEAPI __cdecl
#endif


#if !defined(MAKE_DLL)

	#define GetHardwareLockNumber TspGetHardwareLockNumber
	#define Macro_Register TspMacro_Register
	#define GetModelInfo TspGetModelInfo
	#define PrintMessage TspPrintMessage
	#define PrintModelParameter TspPrintModelParameter
	#define PrintModelParameterInt TspPrintModelParameterInt
	#define PrintModelParameterDouble TspPrintModelParameterDouble
	#define PrintModelParameterString TspPrintModelParameterString
	#define LookupParameterInt TspLookupParameterInt
	#define LookupParameterDouble TspLookupParameterDouble
	#define LookupParameterString TspLookupParameterString
	#define StringMatches TspStringMatches
	#define PrintUnusedParameterMessage TspPrintUnusedParameterMessage
	#define NewParasiticDiodeModel TspNewParasiticDiodeModel
	#define AddParasiticDiode TspAddParasiticDiode
	#define AddSeriesResistor TspAddSeriesResistor
	#define AddInternalNode TspAddInternalNode
	#define AddNoiseSource TspAddNoiseSource
	#define SetNoiseSourceValue TspSetNoiseSourceValue
	#define ComputeOneDerivative TspComputeOneDerivative
	#define ComputeDerivativeVector TspComputeDerivativeVector
	#define ComputeDerivativeMatrix TspComputeDerivativeMatrix
	#define ComputeNumericalDerivatives TspComputeNumericalDerivatives
	#define SmallSignalParameterDouble TspSmallSignalParameterDouble
	#define SmallSignalParameterInt TspSmallSignalParameterInt
	#define SmallSignalParameterString TspSmallSignalParameterString
	#define ParasiticDiodeConductance TspParasiticDiodeConductance
	#define ParasiticDiodeCapacitance TspParasiticDiodeCapacitance
	#define VoltageSource TspVoltageSource
	#define SetVoltageSourceValue TspSetVoltageSourceValue
	#define GetVoltageSource TspGetVoltageSource
	#define SetVoltageSourceDerivative TspSetVoltageSourceDerivative
	#define Foo TspFoo

	#if defined(UNIX)
		#define ExternalModelMain ExternalModelMain1
	#endif

	void  TSPICEAPI TspMacro_Register(void *function );

#endif /* MAKE_DLL */

int TSPICEAPI GetHardwareLockNumber(void);
void TSPICEAPI GetModelInfo(ExternalModel **m, ExternalModelDevice **d, int *action);
void TSPICEAPI PrintMessage(char *format, ...);
int TSPICEAPI StringMatches(char *a, char *b);
int TSPICEAPI LookupParameterInt(TspParamListElem *paramlist, char *parameter_name,
						const char *default_value, bool *parameter_found);
double TSPICEAPI LookupParameterDouble(TspParamListElem *paramlist, char *parameter_name,
							const char *default_value, bool *parameter_found);
char* TSPICEAPI LookupParameterString(TspParamListElem *paramlist, char *parameter_name,
							const char *default_value, bool *parameter_found);
void TSPICEAPI PrintUnusedParameterMessage(TspParamListElem *paramlist, char *modelname,
								char *devicename);
ParasiticDiodeModel * TSPICEAPI NewParasiticDiodeModel(void);
ParasiticDeviceId TSPICEAPI AddParasiticDiode(ExternalModelDevice *dev, int terminal1,
									int terminal2, double area, double perimeter,
									double mult, ParasiticDiodeModel *dmodel);
ParasiticDeviceId TSPICEAPI AddSeriesResistor(ExternalModelDevice *dev, int terminal,
	double resistance, char *noise_source_name);
int TSPICEAPI AddInternalNode(ExternalModelDevice *dev, char *name);
void TSPICEAPI AddNoiseSource(ExternalModelDevice *d, char *name, int terminal1,
					int terminal2, double value);
void TSPICEAPI SetNoiseSourceValue(ExternalModelDevice *d,char *name, double value);
void TSPICEAPI ComputeOneDerivative(ExternalModelDevice *d, double *di, double *dq,
								int terminal1, int terminal2,
								TspDerivativeType diffType, double delta);
void TSPICEAPI ComputeDerivativeVector(double *result_i, double *result_q,
									ExternalModelDevice *d,
									int vterminal,
									TspDerivativeType diffType, double delta);
void TSPICEAPI ComputeDerivativeMatrix(double **result_i, double **result_q,
									ExternalModelDevice *d,
									TspDerivativeType diffType, double delta);
void TSPICEAPI ComputeNumericalDerivatives(ExternalModelDevice *d);
void TSPICEAPI SmallSignalParameterDouble(ExternalModelDevice *d, char *name, double value);
void TSPICEAPI SmallSignalParameterInt(ExternalModelDevice *d, char *name, int value);
void TSPICEAPI SmallSignalParameterString(ExternalModelDevice *d, char *name, char *value);
double TSPICEAPI ParasiticDiodeConductance(ExternalModelDevice *d, ParasiticDeviceId id);
double TSPICEAPI ParasiticDiodeCapacitance(ExternalModelDevice *d, ParasiticDeviceId id);
VoltageSourceId TSPICEAPI VoltageSource(ExternalModelDevice *d, int term1, int term2);
void TSPICEAPI SetVoltageSourceValue(ExternalModelDevice *d, VoltageSourceId id, double value);
Vsource* TSPICEAPI GetVoltageSource(ExternalModelDevice *d, VoltageSourceId id);
void TSPICEAPI SetVoltageSourceDerivative(ExternalModelDevice *d, VoltageSourceId id, int terminal,
										double deriv_value);
void TSPICEAPI PrintModelParameter(const char *name, TspDataU value, int type, const char * unit);
void TSPICEAPI PrintModelParameterInt(const char *name, int value, const char * unit);
void TSPICEAPI PrintModelParameterDouble(const char *name, double value, const char * unit);
void TSPICEAPI PrintModelParameterString(const char *name, const char * value, const char * unit);
void TSPICEAPI Foo();

#endif /* _tspmodel_h_ */
