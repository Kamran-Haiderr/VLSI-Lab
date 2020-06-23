* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\v0.5 Kamran_VLSI_lab9.tdb
* Cell:  Cell0	Version 1.09
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/03/2019 - 11:31

.INCLUDE SpecialDevices.md
.lib "C:\Users\ACG\Desktop\Kamran_VLSI_9_3-4\Generic_025.lib" TT
.tran 10n 100n

v1 A0 Gnd PULSE (0 5 1n 1n 1n 30n 60n)
v2 B0 Gnd PULSE (0 5 3n 1n 1n 40n 70n)
v3 FnNor Gnd PULSE (0 5 1n 1n 1n 90n 100n)
v5 FnNand Gnd PULSE (0 0 1n 1n 1n 90n 100n)
v4 Vdd Gnd 5
.print tran v(A0,Gnd) v(B0,Gnd) v(FnNor,Gnd) v(Z0,Gnd) 
* NODE NAME ALIASES
*       3 = Vdd (-15.98 , 19.22)
*       7 = Z1 (-7.88 , 68.9)
*       10 = A1 (-0.68 , 28.9)
*       11 = B1 (7.72 , 28.8)
*       15 = A0 (-0.8 , -17.9)
*       16 = B0 (7.6 , -18)
*       17 = Z0 (-8 , 22.1)
*       20 = FnNor (45.06 , 2.44)
*       21 = Gnd (-26.04 , -15.32)
*       22 = FnNand (-10.5 , 13.6)


M1 Z0 1 5 19 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (83.46 14.4 85.46 17.1)
M2 1 FnNor Vdd 19 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (76.76 8.44 78.76 11.14)
M3 1 FnNor Gnd 2 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (76.76 -5.7 78.76 -3)
M4 Z0 FnNor 27 2 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (76.76 -9.5 78.76 -7.3)
M5 28 A0 Vdd 19 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (50.96 14 52.96 16.7)
M6 4 B0 28 19 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (59.86 14 61.86 16.7)
M7 5 4 4 19 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (67.56 14 69.56 16.7)
M8 Z1 6 8 18 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (31.02 61.2 33.02 63.9)
M9 6 FnNand Vdd 18 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.32 56.8 26.32 59.5)
M10 8 9 Vdd 18 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15.12 60.8 17.12 63.5)
M11 Vdd B1 9 18 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.42 60.8 9.42 63.5)
M12 9 A1 Vdd 18 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.48 60.8 0.52 63.5)
M13 Z0 12 13 19 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (30.9 14.4 32.9 17.1)
M14 12 FnNand Vdd 19 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.2 10 26.2 12.7)
M15 13 14 Vdd 19 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15 14 17 16.7)
M16 Vdd B0 14 19 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.3 14 9.3 16.7)
M17 14 A0 Vdd 19 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.6 14 0.4 16.7)
M18 Gnd A0 4 2 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (50.96 -9.5 52.96 -7.3)
M19 4 B0 Gnd 2 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (59.86 -9.5 61.86 -7.3)
M20 27 4 4 2 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (67.56 -9.5 69.56 -7.3)
M21 6 FnNand Gnd 2 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.32 41.1 26.32 43.8)
M22 Z1 FnNand 26 2 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.32 37.3 26.32 39.5)
M23 26 9 Gnd 2 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15.12 37.3 17.12 39.5)
M24 Gnd B1 25 2 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.42 37.3 9.42 39.5)
M25 25 A1 9 2 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.48 37.3 0.52 39.5)
M26 12 FnNand Gnd 2 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.2 -5.7 26.2 -3)
M27 Z0 FnNand 24 2 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.2 -9.5 26.2 -7.3)
M28 24 14 Gnd 2 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15 -9.5 17 -7.3)
M29 Gnd B0 23 2 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.3 -9.5 9.3 -7.3)
M30 23 A0 14 2 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.6 -9.5 0.4 -7.3)

* Total Nodes: 28
* Total Elements: 30
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.001 sec
* Total Extract Elapsed Time: 1.396 sec
.END
