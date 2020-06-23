
External model interface files:
===============================

The files found in this directory are for use with T-Spice's external
model interface.  This interface allows the user to write device models
in C, and link them to T-Spice at runtime.  The models may be 
interpreted at runtime by T-Spice, or used in compiled form.  The 
Microsoft Visual C/C++ 6.0 & 7.0 compilers 
are supported for compiling C model files into dynamically linked 
libraries (DLL's) directly usable with T-Spice.

Files found in this directory:

tspmodel.h     header file to be included in external model C files
tspmodel.lib   Visual C++ library file to be linked with external model 
               code when compiled into DLL form
makemodl.bat   batch file for comnpiling models from a DOS command line
model.mak      Visual C++ Makefile used by makemodl.bat script

template.c     template external model C source file, intended as a
               starting point for developing new external models

include        subdirectory containing header files for use with 
               T-Spice's built-in C interpreter

resist.c       example external model C source file - implements a 
               linear resistor; this is the simplest example device 
               model provided
resist.sp      example T-Spice input file for use with resist model
resist.dll     DLL external model compiled using Visual C++ from resist.c

diode.c        example external model C source file - implements standard
               SPICE diode model, including area-based model selection,
               T-Spice table support, small-signal parameter printing,
               and parasitic resistance
diode.sp       example T-Spice input file for use with diode external model
diode.dll      DLL external model compiled using Visual C++ from diode.c

mos1.c         example external model C source file - implements standard
               SPICE level=1 MOSFET model, including parasitics, noise models,
               T-Spice table support, small-signal parameter printing, and
               size-based model selection
mos1.sp        example T-Spice input file for use with mos1 external model
mos1.dll       DLL external model compiled using Visual C++ from mos1.c

switch.c       example external model C source file - implements a voltage
               controlled switch, as found in Spice3.
switch.sp      example T-Spice input file for use with switch model
switch.dll     DLL external model compiled using Visual C++ from switch.c

vco.c          example external model C source file - implements a voltage
               controlled oscillator
vco.sp         example T-Spice input file for use with vco model
vco.dll        DLL external model compiled using Visual C++ from vco.c


To compile any of the five external model examples included here using
Visual C++ 6.0 or 7.0 do the following:

1. open a DOS window;

2. set your PATH, LIB, and INCLUDE environment variables according to 
   your compiler.  The compilers include a vcvars32.bat script for performing
   this initialization.

3. Change directory to your example directory.  In this directory, there should
   be the example C file (e.g., "resist.c"), the example .sp file (e.g., 
   "resist.sp"), and the files "tspmodel.h", "tspmodel.lib", "makemodl.bat", 
   and "model.mak".

4. Type "makemodl " followed by the base name of your example C file.  
   For example:

   makemodl resist

   compiles the resist.c file and creates the DLL "resist.dll".

5. To test the DLL, open the example .sp file (e.g., "resist.sp") in T-Spice 
   and simulate it by choosing the "Simulate/Start Simulation" menu item.  
   Click the "Start Simulation" button to start the simulation.  

Alternatively, the examples can be compiled within Microsoft Developer Studio.
Please follow the directions in the T-Spice manual.

For more information, please refer to the T-Spice User Guide.

