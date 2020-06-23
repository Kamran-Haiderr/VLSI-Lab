* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\v0.8 Kamran_VLSI_lab9.tdb
* Cell:  Cell0	Version 1.19
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/10/2019 - 13:06
.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\Generic_025.lib" TT
.tran 10n 100n

v1 A0 Gnd PULSE (0 5 5n 1n 1n 10n 40n)
v2 B0 Gnd PULSE (0 5 0 1n 1n 10n 30n)
v3 FnXor Gnd PULSE (0 5 1n 1n 1n 90n 100n)
v4 Vdd Gnd 5
.print tran v(A0,Gnd) v(B0,Gnd) v(FnXor,Gnd) v(Z0,Gnd)


* WARNING - Node 3 "Y1" has two names at the same hierarchy that are different.  "Y2" & "Y1"

* NODE NAME ALIASES
*       3 = Y1 (141.17 , -13.485)
*       3 = Y2 (156.325 , -16.685)
*       7 = FnXor (98.705 , 1.42)
*       14 = Vdd (-15.98 , 19.22)
*       15 = Z1 (-7.88 , 68.93)
*       18 = A1 (-0.68 , 28.9)
*       19 = B1 (7.72 , 28.8)
*       23 = A0 (-0.8 , -17.9)
*       24 = B0 (7.6 , -18)
*       25 = Z0 (-8 , 22.1)
*       27 = FnNor (45.06 , 2.44)
*       28 = FnNand (-10.5 , 13.6)
*       29 = Gnd (-26.135 , -15.405)


M1 8 2 Z0 1 PMOS L=2u W=2.7u AD=6.345p PD=7.4u AS=6.48p PS=10.2u    $ (171.95 14.205 173.95 16.905)
M2 2 FnXor Vdd 1 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=8.991p PS=12.06u    $ (165.25 8.245 167.25 10.945)
M3 8 FnXor Y1 1 PMOS L=2u W=2.7u AD=6.345p PD=7.4u AS=16.9425p PS=17.95u    $ (165.25 14.205 167.25 16.905)
M4 4 A0 Vdd 1 PMOS L=1.79u W=2.7u AD=9.3825p PD=12.35u AS=8.7615p PS=11.89u    $ (110.97 9.705 112.76 12.405)
M5 Y1 A0 B0 1 PMOS L=1.35u W=3u AD=8.31p PD=11.54u AS=7.98p PS=11.32u    $ (149.64 4.33 150.99 7.33)
M6 5 B0 Vdd 1 PMOS L=1.745u W=2.7u AD=8.046p PD=11.36u AS=10.098p PS=12.88u    $ (118.56 4.68 120.305 7.38)
M7 Y1 4 5 1 PMOS L=1.675u W=2.7u AD=8.1405p PD=11.43u AS=10.1925p PS=12.95u    $ (134.235 5.815 135.91 8.515)
M8 Z0 6 12 10 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (83.46 14.4 85.46 17.1)
M9 6 FnNor Vdd 10 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (76.76 8.44 78.76 11.14)
M10 Z0 FnXor Y1 26 NMOS L=2u W=2.7u AD=6.7365p PD=10.39u AS=17.0235p PS=18.01u    $ (165.25 -9.9 167.25 -7.2)
M11 2 FnXor Gnd 26 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=7.236p PS=10.76u    $ (165.25 -5.895 167.25 -3.195)
M12 4 A0 Gnd 26 NMOS L=1.79u W=2.7u AD=9.5175p PD=12.45u AS=8.6265p PS=11.79u    $ (110.97 -6.59 112.76 -3.89)
M13 Y1 A0 5 26 NMOS L=1.675u W=2.7u AD=8.4375p PD=11.65u AS=9.8955p PS=12.73u    $ (134.265 -2.755 135.94 -0.055)
M14 Y1 4 B0 26 NMOS L=1.505u W=1.5u AD=3.4575p PD=7.61u AS=4.035p PS=8.38u    $ (149.645 -1.735 151.15 -0.235)
M15 5 B0 Gnd 26 NMOS L=1.745u W=2.7u AD=7.8975p PD=11.25u AS=10.6245p PS=13.27u    $ (118.56 -2.645 120.305 0.055)
M16 6 FnNor Gnd 26 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (76.76 -5.7 78.76 -3)
M17 Z0 FnNor 34 26 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (76.76 -9.5 78.76 -7.3)
M18 35 A0 Vdd 10 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (50.96 14 52.96 16.7)
M19 11 B0 35 10 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (59.86 14 61.86 16.7)
M20 12 11 11 10 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (67.56 14 69.56 16.7)
M21 Z1 13 16 9 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (31.02 61.2 33.02 63.9)
M22 13 FnNand Vdd 9 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.32 56.8 26.32 59.5)
M23 16 17 Vdd 9 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15.12 60.8 17.12 63.5)
M24 Vdd B1 17 9 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.42 60.8 9.42 63.5)
M25 17 A1 Vdd 9 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.48 60.8 0.52 63.5)
M26 Z0 20 21 10 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (30.9 14.4 32.9 17.1)
M27 20 FnNand Vdd 10 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.2 10 26.2 12.7)
M28 21 22 Vdd 10 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15 14 17 16.7)
M29 Vdd B0 22 10 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.3 14 9.3 16.7)
M30 22 A0 Vdd 10 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.6 14 0.4 16.7)
M31 Gnd A0 11 26 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (50.96 -9.5 52.96 -7.3)
M32 11 B0 Gnd 26 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (59.86 -9.5 61.86 -7.3)
M33 34 11 11 26 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (67.56 -9.5 69.56 -7.3)
M34 13 FnNand Gnd 26 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.32 41.1 26.32 43.8)
M35 Z1 FnNand 33 26 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.32 37.3 26.32 39.5)
M36 33 17 Gnd 26 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15.12 37.3 17.12 39.5)
M37 Gnd B1 32 26 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.42 37.3 9.42 39.5)
M38 32 A1 17 26 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.48 37.3 0.52 39.5)
M39 20 FnNand Gnd 26 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.2 -5.7 26.2 -3)
M40 Z0 FnNand 31 26 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.2 -9.5 26.2 -7.3)
M41 31 22 Gnd 26 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15 -9.5 17 -7.3)
M42 Gnd B0 30 26 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.3 -9.5 9.3 -7.3)
M43 30 A0 22 26 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.6 -9.5 0.4 -7.3)

* Total Nodes: 35
* Total Elements: 43
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.002 sec
* Total Extract Elapsed Time: 0.947 sec
.END
