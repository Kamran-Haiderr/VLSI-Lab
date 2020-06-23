* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 23 15:52:55 2019
* Design:           NAND
* Cell:             Cell0
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\i140420\Desktop\Kamran_VLSI_12_19-4\NAND
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
 
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_12_19-4\Tanner EDA\Tanner Tools v13.0\Libraries\Models\Generic_025.lib" TT

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MNMOS_1 Out A N_4 N_1 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_2 N_4 B N_5 N_3 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_3 N_5 C N_8 N_7 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MNMOS_4 N_8 D Gnd N_9 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MPMOS_1 Out Gnd N_2 N_6 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
VVoltageSource_1 N_2 Gnd  DC 5 
VVoltageSource_2 A Gnd  PULSE(0 5 0 1n 1n 40n 80n)  
VVoltageSource_3 B Gnd  PULSE(0 5 5n 1n 1n 40n 80n)  
VVoltageSource_4 C Gnd  PULSE(0 5 10n 1n 1n 30n 70n)  
VVoltageSource_5 D Gnd  PULSE(0 5 0 1n 1n 20n 30n)  
.PRINT TRAN V(A)
.PRINT TRAN V(B)
.PRINT TRAN V(C)
.PRINT TRAN V(D)
.PRINT TRAN V(Out)

********* Simulation Settings - Analysis section *********
.tran 10n 100n

********* Simulation Settings - Additional SPICE commands *********

.end

