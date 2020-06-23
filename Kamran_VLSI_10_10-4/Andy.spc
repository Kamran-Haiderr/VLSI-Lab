* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\AND by Transmission.tdb
* Cell:  Cell0	Version 1.08
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  04/10/2019 - 09:23

.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_9_3-4\Generic_025.lib" TT
.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v2 B Gnd PULSE (0 5 5n 1n 1n 10n 30n)
v4 Vdd Gnd 5
.print tran v(A,Gnd) v(B,Gnd) v(Y,Gnd)

* NODE NAME ALIASES
*       1 = Y (39.13 , -11.29)
*       3 = Vdd (-7.13 , 25.89)
*       4 = GND (-7.81 , -8.04)
*       7 = A (-4.31 , -10.17)
*       8 = B (5.16 , 7.12)


M1 Y 2 Vdd 10 PMOS L=1u W=3u AD=9.03p PD=12.02u AS=9.42p PS=12.28u    $ (28.64 16.17 29.64 19.17)
M2 5 6 B 10 PMOS L=1.02u W=3u AD=7.38p PD=10.92u AS=9.06p PS=12.04u    $ (7.77 16.16 8.79 19.16)
M3 2 5 Vdd 10 PMOS L=1u W=3u AD=9.03p PD=12.02u AS=9.42p PS=12.28u    $ (18.29 16.32 19.29 19.32)
M4 6 A Vdd 10 PMOS L=1u W=3u AD=8.01p PD=11.34u AS=10.38p PS=12.92u    $ (-3.35 16.16 -2.35 19.16)
M5 Y 2 GND 9 NMOS L=1u W=1.5u AD=4.605p PD=9.14u AS=3.645p PS=7.86u    $ (28.64 0.41 29.64 1.91)
M6 2 5 GND 9 NMOS L=1u W=1.5u AD=4.605p PD=9.14u AS=3.645p PS=7.86u    $ (18.29 0.56 19.29 2.06)
M7 5 A B 9 NMOS L=1u W=1.5u AD=3.99p PD=8.32u AS=4.26p PS=8.68u    $ (7.54 0.4 8.54 1.9)
M8 6 A GND 9 NMOS L=1u W=1.5u AD=4.125p PD=8.5u AS=4.125p PS=8.5u    $ (-3.35 0.4 -2.35 1.9)

* Total Nodes: 10
* Total Elements: 8
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.015 sec
* Total Extract Elapsed Time: 0.749 sec
.op
.END
