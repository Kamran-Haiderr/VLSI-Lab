* SPICE export by:  SEDIT 13.00
* Export time:      Wed Dec 12 15:49:42 2007
* Design:           RingVCO
* Cell:             RingVCO_TestBench
* View:             TransientAnalysis
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   yes
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Documents and Settings\klujan\Desktop\S-Edit\Tutorial\RingVCO
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.probe
.option probev
.option probei
.option probenoise
*.lib "C:\Documents and Settings\klujan\Desktop\Libraries\Models\Generic_025.lib" TT

*-------- Devices: SPICE.ORDER < 0 --------
* Design: RingVCO / Cell: RingVCO_TestBench / View: TransientAnalysis / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Testbench for RingVCO
* Date: 12/11/2007 1:54:16 PM
* Revision: 101

*************** Subcircuits *****************
.subckt Control Vb1 Vb2 Vbias Vtune Gnd Vdd  
*-------- Devices: SPICE.ORDER < 0 --------
* Design: RingVCO / Cell: Control / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Control block for the RingVCO
* Date: 12/11/2007 1:59:27 PM
* Revision: 52

*-------- Devices: SPICE.ORDER > 0 --------
MM7n N_3 Vtune Gnd 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MM6n Vb2 N_1 N_3 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MM5n N_1 N_1 Vbias 0 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u 
MM4p Vb2 Vb2 Vb1 Vdd PMOS W=5u L=250n AS=4.5p PS=11.8u AD=4.5p PD=11.8u 
MM3p N_1 Vb2 N_4 Vdd PMOS W=5u L=250n AS=4.5p PS=11.8u AD=4.5p PD=11.8u 
MM2p Vb1 Vb1 Vdd Vdd PMOS W=5u L=250n AS=4.5p PS=11.8u AD=4.5p PD=11.8u 
MM1p N_4 Vb1 Vdd Vdd PMOS W=5u L=250n AS=4.5p PS=11.8u AD=4.5p PD=11.8u 
.ends

.subckt DiffCell Inm Inp Outm Outp VTune Vb1 Vb2 Gnd Vdd W=5.00u 
*-------- Devices: SPICE.ORDER < 0 --------
* Design: RingVCO / Cell: DiffCell / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: Differential amplifier
* Date: 12/11/2007 2:14:03 PM
* Revision: 48

*-------- Devices: SPICE.ORDER > 0 --------
MN1 Outm VTune Gnd Gnd NMOS W=2.5u L=2u AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MN2 Outp VTune Gnd Gnd NMOS W=2.5u L=2u AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MP1 N_1 Vb1 Vdd Vdd PMOS W=5u L=250n AS=4.5p PS=11.8u AD=4.5p PD=11.8u  
MP2 N_2 Vb2 N_1 Vdd PMOS W=5u L=250n AS=4.5p PS=11.8u AD=4.5p PD=11.8u 
MP3 Outm Inp N_2 Vdd PMOS W=W L=250n AS='if(1, (900n*if(1,W/1,W)+floor(1/2)*1.25u*if(1,W/1,W)), (2*900n*if(1,W/1,W)+(floor(1/2)-1)*1.25u*if(1,W/1,W)))' PS='if(1, (2*900n+if(1,W/1,W)+if(1,W/1,W)*1+floor(1/2)*2*(1.25u+if(1,W/1,W)*1)), (2*2*900n+if(1,W/1,W)+if(1,W/1,W)*1+(floor(1/2)-1)*2*(1.25u+if(1,W/1,W)*1)))' AD='if(1, (900n*if(1,W/1,W)+floor(1/2)*1.25u*if(1,W/1,W)), floor(1/2)*1.25u*if(1,W/1,W))' PD='if(1, (2*900n+if(1,W/1,W)+if(1,W/1,W)*1+floor(1/2)*2*(1.25u+if(1,W/1,W)*1)), floor(1/2)*2*(1.25u+if(1,W/1,W)*1))' 
MP4 Outp Inm N_2 Vdd PMOS W=W L=250n AS='if(1, (900n*if(1,W/1,W)+floor(1/2)*1.25u*if(1,W/1,W)), (2*900n*if(1,W/1,W)+(floor(1/2)-1)*1.25u*if(1,W/1,W)))' PS='if(1, (2*900n+if(1,W/1,W)+if(1,W/1,W)*1+floor(1/2)*2*(1.25u+if(1,W/1,W)*1)), (2*2*900n+if(1,W/1,W)+if(1,W/1,W)*1+(floor(1/2)-1)*2*(1.25u+if(1,W/1,W)*1)))' AD='if(1, (900n*if(1,W/1,W)+floor(1/2)*1.25u*if(1,W/1,W)), floor(1/2)*1.25u*if(1,W/1,W))' PD='if(1, (2*900n+if(1,W/1,W)+if(1,W/1,W)*1+floor(1/2)*2*(1.25u+if(1,W/1,W)*1)), floor(1/2)*2*(1.25u+if(1,W/1,W)*1))' 
.ends

.subckt RingVCO Outm Outp Vbias Vtune Gnd Vdd WP=5.00u 
*-------- Devices: SPICE.ORDER < 0 --------
* Design: RingVCO / Cell: RingVCO / View: Main / Page: 
* Designed by: Tanner EDA Library Development Team
* Organization: Tanner EDA - Tanner Research, Inc.
* Info: 9 stage differential ring VCO
* Date: 12/11/2007 1:54:16 PM
* Revision: 61

*-------- Devices: SPICE.ORDER == 0 --------
XXC1 Vb1 Vb2 Vbias Vtune Gnd Vdd Control  
XXa1 Outp Outm N_1 N_2 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa2 N_2 N_1 N_3 N_4 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa3 N_4 N_3 N_5 N_6 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa4 N_6 N_5 N_7 N_8 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa5 N_7 N_8 N_Rename N_10 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa6 N_10 N_Rename N_11 N_12 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa7 N_12 N_11 N_13 N_14 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa8 N_14 N_13 N_15 N_16 Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
XXa9 N_16 N_15 Outm Outp Vtune Vb1 Vb2 Gnd Vdd DiffCell W=WP 
.ends


********* Simulation Settings - Parameters and SPICE Options *********
.param Vpwr = 3.3

*-------- Devices: SPICE.ORDER == 0 --------
XX1 OutN OutP N_2 In Gnd Vdd RingVCO WP=5.00u 
*-------- Devices: SPICE.ORDER > 0 --------
MMN1 N_1 OutP Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MMN2 Out OutN Gnd Gnd NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MMP2 Out N_1 Vdd Vdd PMOS W=2.5u L=250n M=2 AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MMP1 N_1 N_1 Vdd Vdd PMOS W=2.5u L=250n M=2 AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
VVbias N_2 Gnd  DC 600m 
Vvdd Vdd Gnd  DC Vpwr 
VVtune In Gnd  PWL(0ns 0v 1ns 0.9v 20ns 0.9v 40ns 1.4v 60ns 1.4v 80ns 0.9v 100ns 0.9v)  
.PRINT TRAN V(In)
.PRINT TRAN V(Out)
.MEASURE TRAN SlowFreq_Period TRIG V(Out) VAL='Vpwr/2.0' TD='4.5n' RISE='1' TARG V(Out) VAL='Vpwr/2.0' TD='4.5n' RISE='1+1' OFF
.MEASURE TRAN SlowFreq PARAM='1.0/SlowFreq_Period*1' ON
.MEASURE TRAN FastFreq_Period TRIG V(Out) VAL='Vpwr/2.0' TD='45n' RISE='1' TARG V(Out) VAL='Vpwr/2.0' TD='45n' RISE='1+1' OFF
.MEASURE TRAN FastFreq PARAM='1.0/FastFreq_Period*1' ON

********* Simulation Settings - Analysis section *********
.op
.tran/Powerup 100p 100n

********* Simulation Settings - Additional SPICE commands *********
.OPTIONS poweruplen=1ns


.end

