* SPICE export by:  SEDIT 13.00
* Export time:      Tue Apr 23 16:47:26 2019
* Design:           Xor
* Cell:             Cell0
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\i140420\Desktop\Kamran_VLSI_12_19-4\Xor
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********

.lib "C:\Users\i140420\Desktop\Kamran_VLSI_12_19-4\Tanner EDA\Tanner Tools v13.0\Libraries\Models\Generic_025.lib" TT

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MM2 in6NOR A N_4 N_3 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MM3 N_4 B N_6 N_5 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MM4 N_6 C N_8 N_7 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MM5 N_8 D N_10 N_9 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MM6 N_10 E N_12 N_11 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MM7 N_12 F Gnd N_13 NMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
MM1 in6NOR Gnd N_2 N_1 PMOS W=2.5u L=250n AS=2.25p PS=6.8u AD=2.25p PD=6.8u  
Vpow_src N_2 Gnd  DC 5 
VVoltageSource_1 A Gnd PULSE (0 5 0 1n 1n 30n 60n)
VVoltageSource_2 B Gnd PULSE (0 5 0 1n 1n 20n 40n)  
VVoltageSource_3 C Gnd PULSE (0 5 0 1n 1n 30n 50n)
VVoltageSource_4 D Gnd PULSE (0 5 0 1n 1n 20n 80n)
VVoltageSource_5 E Gnd PULSE (0 5 0 1n 1n 20n 40n)
VVoltageSource_6 F Gnd PULSE (0 5 0 1n 1n 20n 50n)
.PRINT TRAN V(A)
.PRINT TRAN V(B)
.PRINT TRAN V(C)
.PRINT TRAN V(D)
.PRINT TRAN V(E)
.PRINT TRAN V(F)
.PRINT TRAN V(in6NOR)

********* Simulation Settings - Analysis section *********
.tran 1ns 100ns

********* Simulation Settings - Additional SPICE commands *********

.end

