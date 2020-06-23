* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\ACG\Desktop\Kamran_VLSI_9_3-4\v0.75 Kamran_VLSI_lab9.tdb
* Cell:  Cell0	Version 1.16
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/05/2019 - 22:51

.INCLUDE SpecialDevices.md

* Illegal Spice Node Name Ignored: Node 
* WARNING - Node 1 "Y1" has two names at the same hierarchy that are different.  "Y2" & "Y1"
* WARNING - Node 20 "A" has two names at the same hierarchy that are different.  "A0" & "A"
* WARNING - Node 21 "B" has two names at the same hierarchy that are different.  "B0" & "B"

* NODE NAME ALIASES
*       1 = Y1 (141.17 , -13.485)
*       1 = Y2 (160.455 , -16.785)
*       11 = Vdd (-15.98 , 19.22)
*       12 = Z1 (-7.88 , 68.93)
*       15 = A1 (-0.68 , 28.9)
*       16 = B1 (7.72 , 28.8)
*       20 = A (111.13 , -18.485)
*       20 = A0 (-0.8 , -17.9)
*       21 = B (118.8 , -13.14)
*       21 = B0 (7.6 , -18)
*       22 = Z0 (-8 , 22.1)
*       23 = Gnd (-26.135 , -15.405)
*       27 = FnNor (45.06 , 2.44)
*       28 = FnNand (-10.5 , 13.6)


M1 Z0 6 Vdd 5 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (177.625 13.525 179.625 16.225)
M2 6 7 Vdd 5 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (170.925 7.565 172.925 10.265)
M3 2 A Vdd 5 PMOS L=1.79u W=2.7u AD=9.3825p PD=12.35u AS=8.7615p PS=11.89u    $ (110.97 9.705 112.76 12.405)
M4 Y1 A B 5 PMOS L=1.35u W=3u AD=8.31p PD=11.54u AS=7.98p PS=11.32u    $ (149.64 4.33 150.99 7.33)
M5 3 B Vdd 5 PMOS L=1.745u W=2.7u AD=8.046p PD=11.36u AS=10.098p PS=12.88u    $ (118.56 4.68 120.305 7.38)
M6 Y1 2 3 5 PMOS L=1.675u W=2.7u AD=8.1405p PD=11.43u AS=10.1925p PS=12.95u    $ (134.235 5.815 135.91 8.515)
M7 Z0 4 9 26 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (83.46 14.4 85.46 17.1)
M8 4 FnNor Vdd 26 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (76.76 8.44 78.76 11.14)
M9 Z0 7 Gnd 24 NMOS L=2u W=2.7u AD=7.101p PD=10.66u AS=8.559p PS=11.74u    $ (170.925 -8.57 172.925 -5.87)
M10 6 7 Gnd 24 NMOS L=2u W=2.7u AD=7.0335p PD=10.61u AS=8.6265p PS=11.79u    $ (170.925 -4.715 172.925 -2.015)
M11 2 A Gnd 24 NMOS L=1.79u W=2.7u AD=9.5175p PD=12.45u AS=8.6265p PS=11.79u    $ (110.97 -6.59 112.76 -3.89)
M12 Y1 A 3 24 NMOS L=1.675u W=2.7u AD=8.4375p PD=11.65u AS=9.8955p PS=12.73u    $ (134.265 -2.755 135.94 -0.055)
M13 Y1 2 B 24 NMOS L=1.505u W=1.5u AD=3.4575p PD=7.61u AS=4.035p PS=8.38u    $ (149.645 -1.735 151.15 -0.235)
M14 3 B Gnd 24 NMOS L=1.745u W=2.7u AD=7.8975p PD=11.25u AS=10.6245p PS=13.27u    $ (118.56 -2.645 120.305 0.055)
M15 4 FnNor Gnd 24 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (76.76 -5.7 78.76 -3)
M16 Z0 FnNor 33 24 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (76.76 -9.5 78.76 -7.3)
M17 34 A Vdd 26 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (50.96 14 52.96 16.7)
M18 8 B 34 26 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (59.86 14 61.86 16.7)
M19 9 8 8 26 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (67.56 14 69.56 16.7)
M20 Z1 10 13 25 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (31.02 61.2 33.02 63.9)
M21 10 FnNand Vdd 25 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.32 56.8 26.32 59.5)
M22 13 14 Vdd 25 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15.12 60.8 17.12 63.5)
M23 Vdd B1 14 25 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.42 60.8 9.42 63.5)
M24 14 A1 Vdd 25 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.48 60.8 0.52 63.5)
M25 Z0 17 18 26 PMOS L=2u W=2.7u AD=6.48p PD=10.2u AS=8.91p PS=12u    $ (30.9 14.4 32.9 17.1)
M26 17 FnNand Vdd 26 PMOS L=2u W=2.7u AD=9.18p PD=12.2u AS=10.8p PS=13.4u    $ (24.2 10 26.2 12.7)
M27 18 19 Vdd 26 PMOS L=2u W=2.7u AD=5.13p PD=9.2u AS=7.695p PS=8.4u    $ (15 14 17 16.7)
M28 Vdd B 19 26 PMOS L=2u W=2.7u AD=7.695p PD=8.4u AS=9.315p PS=9.6u    $ (7.3 14 9.3 16.7)
M29 19 A Vdd 26 PMOS L=2u W=2.7u AD=9.315p PD=9.6u AS=8.1p PS=11.4u    $ (-1.6 14 0.4 16.7)
M30 Gnd A 8 24 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (50.96 -9.5 52.96 -7.3)
M31 8 B Gnd 24 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (59.86 -9.5 61.86 -7.3)
M32 33 8 8 24 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (67.56 -9.5 69.56 -7.3)
M33 10 FnNand Gnd 24 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.32 41.1 26.32 43.8)
M34 Z1 FnNand 32 24 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.32 37.3 26.32 39.5)
M35 32 14 Gnd 24 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15.12 37.3 17.12 39.5)
M36 Gnd B1 31 24 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.42 37.3 9.42 39.5)
M37 31 A1 14 24 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.48 37.3 0.52 39.5)
M38 17 FnNand Gnd 24 NMOS L=2u W=2.7u AD=6.75p PD=10.4u AS=8.91p PS=12u    $ (24.2 -5.7 26.2 -3)
M39 Z0 FnNand 30 24 NMOS L=2u W=2.2u AD=6.16p PD=10u AS=7.92p PS=9.4u    $ (24.2 -9.5 26.2 -7.3)
M40 30 19 Gnd 24 NMOS L=2u W=2.2u AD=7.92p PD=9.4u AS=6.27p PS=7.9u    $ (15 -9.5 17 -7.3)
M41 Gnd B 29 24 NMOS L=2u W=2.2u AD=6.27p PD=7.9u AS=7.59p PS=9.1u    $ (7.3 -9.5 9.3 -7.3)
M42 29 A 19 24 NMOS L=2u W=2.2u AD=7.59p PD=9.1u AS=5.06p PS=9u    $ (-1.6 -9.5 0.4 -7.3)

* Total Nodes: 34
* Total Elements: 42
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 1.954 sec
* Total Extract Elapsed Time: 3.140 sec
.END
