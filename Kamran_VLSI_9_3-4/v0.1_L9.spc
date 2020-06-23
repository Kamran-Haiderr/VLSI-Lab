* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\Kamran_VLSI_lab9.tdb
* Cell:  Cell0	Version 1.03
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/03/2019 - 10:11

.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\Generic_025.lib" TT
.tran 10n 100n

v1 A0 Gnd PULSE (0 5 1n 1n 1n 20n 40n)
v2 B0 Gnd PULSE (0 5 3n 1n 1n 20n 40n)
v3 FnNand Gnd PULSE (0 5 1n 1n 1n 90n 100n)
v4 Vdd Gnd 5
.print tran v(A0,Gnd) v(B0,Gnd) v(FnNand,Gnd) v(Z,Gnd)

* NODE NAME ALIASES
*       3 = Gnd (-7.2 , -11.6)
*       4 = Vdd (-8.3 , 19.1)
*       7 = A0 (-0.8 , -17.9)
*       8 = B0 (7.6 , -18)
*       9 = Z (-8 , 22.1)
*       11 = FnNand (-10.5 , 13.6)


M1 Z 2 5 10 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (30.9 14.4 32.9 17.1)
M2 2 FnNand Vdd 10 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.2 10 26.2 12.7)
M3 5 6 Vdd 10 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15 14 17 16.7)
M4 Vdd B0 6 10 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.3 14 9.3 16.7)
M5 6 A0 Vdd 10 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.6 14 0.4 16.7)
M6 2 FnNand Gnd 1 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.2 -5.7 26.2 -3)
M7 Z FnNand 13 1 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.2 -9.5 26.2 -7.3)
M8 13 6 Gnd 1 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15 -9.5 17 -7.3)
M9 Gnd B0 12 1 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.3 -9.5 9.3 -7.3)
M10 12 A0 6 1 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.6 -9.5 0.4 -7.3)

* Total Nodes: 13
* Total Elements: 10
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.015 sec
* Total Extract Elapsed Time: 0.419 sec
.op
.END
