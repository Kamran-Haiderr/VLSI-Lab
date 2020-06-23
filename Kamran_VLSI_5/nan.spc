* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_5\L5_NAND.tdb
* Cell:  Cell0	Version 1.13
* Extract Definition File:  ..\..\Documents\Tanner EDA\Tanner Tools v13.0\L-Edit and LVS\Tech\Generic0_25um\Generic_025.ext
* Extract Date and Time:  03/01/2019 - 08:51
.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Documents\Tanner EDA\Tanner Tools v13.0\Libraries\Models\Generic_025.lib" TT

* NODE NAME ALIASES
*       1 = Vnand (20.27 , 5.54)
*       2 = Gnd (11.1 , -0.28)
*       3 = Vdd (11.95 , 10.1)

M1 Vnand A Vdd 4 PMOS L=400n W=2u AD=1.02p PD=3.02u AS=1.96p PS=5.96u    $ (14.22 6.75 14.62 8.75)
M2 Vdd B Vnand 4 PMOS L=400n W=2u AD=1.68p PD=5.68u AS=1.02p PS=3.02u    $ (15.64 6.75 16.04 8.75)
M3 6 A Gnd 5 NMOS L=400n W=1u AD=510f PD=2.02u AS=1.26p PS=4.52u    $ (14.22 1.56 14.62 2.56)
M4 Vnand B 6 5 NMOS L=400n W=1u AD=1.12p PD=4.24u AS=510f PS=2.02u    $ (15.64 1.56 16.04 2.56)
.tran 10n 100n
v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v2 B Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v3 Vdd Gnd 5
.print tran v(Vnand,Gnd) v(A,Gnd) v(B,Gnd)
* Total Nodes: 8
* Total Elements: 4
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.293 sec

.op
.END
