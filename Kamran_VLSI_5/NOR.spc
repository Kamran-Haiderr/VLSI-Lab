* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_5\L5_NOR.tdb
* Cell:  Cell0	Version 1.20
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/01/2019 - 15:58
* Extract Date and Time:  03/01/2019 - 08:51
.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_5\Generic_025_2.lib" TT


* NODE NAME ALIASES
*       1 = Gnd (11.1 , -0.28)
*       2 = Vnor (20.15 , 4.7)
*       3 = Vdd (11.95 , 10.1)
*       8 = C (17.1 , 2.05)
*       9 = B (15.79 , 2.12)
*       10 = A (14.39 , 2.29)


M1 Vnor A Gnd 4 NMOS L=400n W=1u AD=510f PD=2.02u AS=1.17p PS=4.34u    $ (14.22 3.45 14.62 4.45)
M2 Gnd B Vnor 4 NMOS L=400n W=1u AD=465f PD=1.93u AS=510f PS=2.02u    $ (15.64 3.45 16.04 4.45)
M3 Vnor C Gnd 4 NMOS L=400n W=1u AD=1.18p PD=4.36u AS=465f PS=1.93u    $ (16.97 3.45 17.37 4.45)
M4 7 A Vdd 5 PMOS L=400n W=2u AD=1.02p PD=3.02u AS=2.56p PS=6.56u    $ (14.22 6.75 14.62 8.75)
M5 6 B 7 5 PMOS L=400n W=2u AD=930f PD=2.93u AS=1.02p PS=3.02u    $ (15.64 6.75 16.04 8.75)
M6 Vnor C 6 5 PMOS L=400n W=2u AD=2.46p PD=6.46u AS=930f PS=2.93u    $ (16.97 6.75 17.37 8.75)
.tran 10n 100n
v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v2 B Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v3 Vdd Gnd 5
.print tran v(Vnand,Gnd) v(A,Gnd) v(B,Gnd)



* Total Nodes: 10
* Total Elements: 6
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.027 sec
.op
.END
