* SPICE export by:  SEDIT 13.00
* Export time:      Wed Apr 17 08:48:38 2019
* Design:           new_Inverter_schm
* Cell:             Cell0
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\Bonus\new_Inverter_schm
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\Tanner EDA\Tanner Tools v13.0\Libraries\Models\Generic_025.lib" TT

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MM2 Out In Gnd N_3 NMOS W=1u L=1u AS=900f PS=3.8u AD=900f PD=3.8u  
MM1 Out In N_2 N_1 PMOS W=3u L=1u AS=2.7p PS=7.8u AD=2.7p PD=7.8u  
VVoltageSource_1 N_2 Gnd  DC 5 
VVoltageSource_2 In Gnd  PULSE(0 5 0 1n 1n 10n 20n)  
.PRINT TRAN V(In)
.PRINT TRAN V(Out)

********* Simulation Settings - Analysis section *********
.tran 10ns 100ns

********* Simulation Settings - Additional SPICE commands *********

.end

