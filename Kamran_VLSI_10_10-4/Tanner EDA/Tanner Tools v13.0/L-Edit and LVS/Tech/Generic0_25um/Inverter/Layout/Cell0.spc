* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i150524\Desktop\lab10\Layout1.tdb
* Cell:  Cell0	Version 1.03
* Extract Definition File:  ..\..\Documents\Tanner EDA\Tanner Tools v13.0\L-Edit and LVS\Tech\Generic0_25um\Generic_025.ext
* Extract Date and Time:  04/10/2019 - 09:58

.INCLUDE SpecialDevices.md

* NODE NAME ALIASES
*       1 = F (-4.92 , 3.96)
*       2 = VDD (-10.26 , 8.52)
*       3 = GND (-10.26 , -1.8)
*       6 = B (-8.34 , 3.48)


M1 F B VDD 5 PMOS L=600n W=1.2u AD=1.08p PD=4.2u AS=1.08p PS=4.2u    $ (-8.58 6.18 -7.98 7.38)
M2 F B GND 4 NMOS L=600n W=1.2u AD=1.08p PD=4.2u AS=1.08p PS=4.2u    $ (-8.58 -0.42 -7.98 0.78)

* Total Nodes: 6
* Total Elements: 2
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.191 sec
.tran 10n 100n
.lib "C:\Users\i150524\Documents\Tanner EDA\Tanner Tools v13.0\Libraries\Models\Generic_025.lib" TT
v1 B GND PULSE (0 5 0 1n 1n 10n 20n)
v2 VDD GND 5
.print tran v(F,GND)v(B,GND)
.op
.END
