* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\v0.3 Kamran_VLSI_lab9.tdb
* Cell:  Cell0	Version 1.06
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/03/2019 - 10:31


.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\Generic_025.lib" TT
.tran 10n 100n

v1 A0 Gnd PULSE (0 5 1n 1n 1n 20n 40n)
v2 B0 Gnd PULSE (0 5 3n 1n 1n 20n 40n)
v6 A1 Gnd PULSE (0 5 1n 1n 1n 20n 40n)
v5 B1 Gnd PULSE (0 5 3n 1n 1n 20n 40n)
v3 FnNand Gnd PULSE (0 5 1n 1n 1n 90n 100n)
v4 Vdd Gnd 5
.print tran v(A0,Gnd) v(B0,Gnd) v(FnNand,Gnd) v(Z0,Gnd) v(A1,Gnd) v(B1,Gnd) v(Z1,Gnd)


* NODE NAME ALIASES
*       2 = Vdd (-15.98 , 19.22)
*       6 = A1 (-0.68 , 28.9)
*       7 = B1 (7.72 , 28.8)
*       8 = Z1 (-7.88 , 68.9)
*       12 = A0 (-0.8 , -17.9)
*       13 = B0 (7.6 , -18)
*       14 = Z0 (-8 , 22.1)
*       17 = Gnd (-26.04 , -15.32)
*       18 = FnNand (-10.5 , 13.6)


M1 Z1 3 4 15 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (31.02 61.2 33.02 63.9)
M2 3 FnNand Vdd 15 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.32 56.8 26.32 59.5)
M3 4 5 Vdd 15 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15.12 60.8 17.12 63.5)
M4 Vdd B1 5 15 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.42 60.8 9.42 63.5)
M5 5 A1 Vdd 15 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.48 60.8 0.52 63.5)
M6 Z0 9 10 16 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (30.9 14.4 32.9 17.1)
M7 9 FnNand Vdd 16 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.2 10 26.2 12.7)
M8 10 11 Vdd 16 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15 14 17 16.7)
M9 Vdd B0 11 16 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.3 14 9.3 16.7)
M10 11 A0 Vdd 16 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.6 14 0.4 16.7)
M11 3 FnNand Gnd 1 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.32 41.1 26.32 43.8)
M12 Z1 FnNand 22 1 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.32 37.3 26.32 39.5)
M13 22 5 Gnd 1 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15.12 37.3 17.12 39.5)
M14 Gnd B1 21 1 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.42 37.3 9.42 39.5)
M15 21 A1 5 1 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.48 37.3 0.52 39.5)
M16 9 FnNand Gnd 1 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.2 -5.7 26.2 -3)
M17 Z0 FnNand 20 1 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.2 -9.5 26.2 -7.3)
M18 20 11 Gnd 1 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15 -9.5 17 -7.3)
M19 Gnd B0 19 1 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.3 -9.5 9.3 -7.3)
M20 19 A0 11 1 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.6 -9.5 0.4 -7.3)

* Total Nodes: 22
* Total Elements: 20
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.001 sec
* Total Extract Elapsed Time: 1.299 sec
.op
.END
