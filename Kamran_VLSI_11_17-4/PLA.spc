* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_11_17-4\Kamran_vl_11.tdb
* Cell:  Cell0	Version 1.33
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/19/2019 - 14:15

.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_11_17-4\Generic_025.lib" TT
.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 40n)
v2 B Gnd PULSE (0 5 5n 1n 1n 10n 30n)
v3 C Gnd PULSE (0 5 0 1n 1n 10n 30n)
v4 Vdd Gnd 5
.print tran v(A,Gnd) v(B,Gnd) v(C,Gnd) v(X,Gnd) v(Y,Gnd) v(Z,Gnd)

* NODE NAME ALIASES
*       1 = Z (136.56 , -65.14)
*       2 = Y (122.56 , -65.15)
*       10 = Gnd (38.4 , 27.92)
*       11 = X (108.07 , -64.87)
*       14 = Vdd (24.06 , 25.12)
*       21 = A (53.7 , -64.38)
*       22 = B (68.13 , -65.96)
*       23 = C (83.89 , -65.47)


M1 Gnd 3 Y 5 PMOS L=1u W=3u AD=12.75p PD=14.5u AS=12.96p PS=14.64u    $ (130.82 -51.72 131.82 -48.72)
M2 Gnd 4 Z 5 PMOS L=1u W=3u AD=11.49p PD=13.66u AS=14.22p PS=15.48u    $ (145.32 -51.54 146.32 -48.54)
M3 3 Gnd Vdd 6 PMOS L=1u W=3u AD=32.37p PD=27.58u AS=36.87p PS=30.58u    $ (129.78 32.95 132.78 33.95)
M4 4 Gnd Vdd 6 PMOS L=1u W=3u AD=32.37p PD=27.58u AS=36.96p PS=30.64u    $ (144.3 32.95 147.3 33.95)
M5 Gnd 17 12 9 NMOS L=1u W=3u AD=9.48p PD=12.32u AS=10.83p PS=13.22u    $ (123.46 -33.82 124.46 -30.82)
M6 Gnd 18 12 9 NMOS L=1u W=3u AD=9.48p PD=12.32u AS=10.83p PS=13.22u    $ (123.46 -19.96 124.46 -16.96)
M7 Gnd 18 3 9 NMOS L=1u W=3u AD=9.48p PD=12.32u AS=10.83p PS=13.22u    $ (138.22 -19.96 139.22 -16.96)
M8 Gnd 19 3 9 NMOS L=1u W=3u AD=9.48p PD=12.32u AS=10.83p PS=13.22u    $ (138.22 -5.26 139.22 -2.26)
M9 Gnd 18 4 9 NMOS L=1u W=3u AD=12.45p PD=14.3u AS=13.17p PS=14.78u    $ (153.29 -19.82 154.29 -16.82)
M10 Gnd 19 4 9 NMOS L=1u W=3u AD=12.45p PD=14.3u AS=13.17p PS=14.78u    $ (153.29 -5.18 154.29 -2.18)
M11 Vdd 3 Y 9 NMOS L=1u W=3u AD=12.63p PD=14.42u AS=13.08p PS=14.72u    $ (130.82 -59.71 131.82 -56.71)
M12 Vdd 4 Z 9 NMOS L=1u W=3u AD=11.37p PD=13.58u AS=14.34p PS=15.56u    $ (145.32 -59.53 146.32 -56.53)
M13 Gnd 20 4 9 NMOS L=1u W=3u AD=12.45p PD=14.3u AS=13.17p PS=14.78u    $ (153.29 9.4 154.29 12.4)
M14 Gnd 12 X 5 PMOS L=1u W=3u AD=13.74p PD=15.16u AS=11.97p PS=13.98u    $ (116.07 -51.72 117.07 -48.72)
M15 12 Gnd Vdd 6 PMOS L=1u W=3u AD=32.7p PD=27.8u AS=36.99p PS=30.66u    $ (115.08 32.95 118.08 33.95)
M16 Gnd C 13 7 PMOS L=1u W=3u AD=12.27p PD=14.18u AS=13.44p PS=14.96u    $ (84.13 -51.78 85.13 -48.78)
M17 Gnd B 15 7 PMOS L=1u W=3u AD=12.27p PD=14.18u AS=13.44p PS=14.96u    $ (68.36 -51.96 69.36 -48.96)
M18 Gnd A 16 7 PMOS L=1u W=3u AD=12.54p PD=14.36u AS=13.17p PS=14.78u    $ (53.85 -51.96 54.85 -48.96)
M19 17 Gnd Vdd 8 PMOS L=1u W=3u AD=15.84p PD=16.56u AS=36.99p PS=30.66u    $ (36.47 -30.75 37.47 -27.75)
M20 18 Gnd Vdd 8 PMOS L=1u W=3u AD=15.84p PD=16.56u AS=36.99p PS=30.66u    $ (36.47 -16.9 37.47 -13.9)
M21 19 Gnd Vdd 8 PMOS L=1u W=3u AD=15.96p PD=16.64u AS=36.87p PS=30.58u    $ (36.47 -2.2 37.47 0.8)
M22 20 Gnd Vdd 8 PMOS L=1u W=3u AD=15.87p PD=16.58u AS=36.96p PS=30.64u    $ (36.47 12.32 37.47 15.32)
M23 Vdd 12 X 9 NMOS L=1u W=3u AD=13.35p PD=14.9u AS=12.36p PS=14.24u    $ (116.07 -59.75 117.07 -56.75)
M24 Vdd C 13 9 NMOS L=1u W=3u AD=12.15p PD=14.1u AS=13.56p PS=15.04u    $ (84.13 -59.77 85.13 -56.77)
M25 Gnd C 20 9 NMOS L=1u W=3u AD=12.93p PD=14.62u AS=12.69p PS=14.46u    $ (79.92 9.17 82.92 10.17)
M26 Vdd B 15 9 NMOS L=1u W=3u AD=12.15p PD=14.1u AS=13.56p PS=15.04u    $ (68.36 -59.95 69.36 -56.95)
M27 Gnd B 19 9 NMOS L=1u W=3u AD=11.94p PD=13.96u AS=13.77p PS=15.18u    $ (64.02 -5.71 67.02 -4.71)
M28 Gnd B 18 9 NMOS L=1u W=3u AD=11.94p PD=13.96u AS=13.77p PS=15.18u    $ (63.7 -20.39 66.7 -19.39)
M29 Vdd A 16 9 NMOS L=1u W=3u AD=12.15p PD=14.1u AS=13.56p PS=15.04u    $ (53.85 -59.99 54.85 -56.99)
M30 Gnd A 17 9 NMOS L=1u W=3u AD=11.94p PD=13.96u AS=13.77p PS=15.18u    $ (50.22 -34.25 53.22 -33.25)
M31 Gnd 13 19 9 NMOS L=1u W=3u AD=12.09p PD=14.06u AS=13.53p PS=15.02u    $ (79.92 -5.61 82.92 -4.61)
M32 Gnd 13 17 9 NMOS L=1u W=3u AD=12.09p PD=14.06u AS=13.53p PS=15.02u    $ (79.5 -34.18 82.5 -33.18)
M33 Gnd 16 18 9 NMOS L=1u W=3u AD=12.09p PD=14.06u AS=13.53p PS=15.02u    $ (50.24 -20.35 53.24 -19.35)
M34 Gnd 15 17 9 NMOS L=1u W=3u AD=12.09p PD=14.06u AS=13.53p PS=15.02u    $ (63.69 -34.18 66.69 -33.18)

* Total Nodes: 23
* Total Elements: 34
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.001 sec
* Total Extract Elapsed Time: 1.508 sec
.END
