* SPICE export by:  SEDIT 13.00
* Export time:      Fri Apr 12 10:13:44 2019
* Design:           Inverter_schm
* Cell:             Cell0
* View:             view0
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude .model:   no
* Exclude .end:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\Schematic\Inverter_schm
* Exclude global pins:   no
* Control property name: SPICE

********* Simulation Settings - General section *********
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\Tanner EDA\Tanner Tools v13.0\Libraries\Models\Generic_025.lib" TT

********* Simulation Settings - Parameters and SPICE Options *********

*-------- Devices: SPICE.ORDER > 0 --------
MM2 Out In Gnd N_3 NMOS W=1u L=600n AS=900f PS=3.8u AD=900f PD=3.8u  
MM1 Out In N_2 N_1 PMOS W=2u L=600n AS=1.8p PS=5.8u AD=1.8p PD=5.8u  
VVoltageSource_1 N_2 Gnd  DC 5 
VVoltageSource_2 In Gnd  PULSE(0 5 0 1n 1n 10n 20n)  
.PRINT TRAN V(In)
.PRINT TRAN V(Out)

********* Simulation Settings - Analysis section *********
.tran 10ns 100ns

********* Simulation Settings - Additional SPICE commands *********
.op
.end

