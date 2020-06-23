* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_7_13-3\Xmsn AND.tdb
* Cell:  Cell0	Version 1.05
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/13/2019 - 11:15
.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_7_13-3\Generic_025.lib" TT

.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v3 B Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v4 Vdd Gnd 5
.print tran v(A,Gnd) v(B,Gnd) v(Y,Gnd)
* NODE NAME ALIASES
*       3 = Y (39.24 , -5.6)
*       4 = GND (-7.7 , -2.35)
*       5 = Vdd (-7.3 , 10.4)
*       6 = A (-4.2 , -4.48)
*       7 = B (5.32 , 2.84)


M1 Y 1 GND 13 NMOS L=1u W=1.5u AD=4.605p PD=9.14u AS=3.645p PS=7.86u    $ (30.45 0.56 31.45 2.06)
M2 1 2 GND 13 NMOS L=1u W=1.5u AD=4.605p PD=9.14u AS=3.645p PS=7.86u    $ (18.29 0.56 19.29 2.06)
M3 2 A B 13 NMOS L=1u W=1.5u AD=3.99p PD=8.32u AS=4.26p PS=8.68u    $ (7.54 0.4 8.54 1.9)
M4 12 A GND 13 NMOS L=1u W=1.5u AD=4.125p PD=8.5u AS=4.125p PS=8.5u    $ (-3.35 0.4 -2.35 1.9)
M5 2 12 B 10 PMOS L=1.02u W=3u AD=7.86p PD=11.24u AS=8.58p PS=11.72u    $ (7.66 5.05 8.68 8.05)
M6 Y 1 Vdd 8 PMOS L=1u W=3u AD=9.51p PD=12.34u AS=6.99p PS=10.66u    $ (30.45 5.21 31.45 8.21)
M7 1 2 Vdd 9 PMOS L=1u W=3u AD=9.51p PD=12.34u AS=6.99p PS=10.66u    $ (18.29 5.21 19.29 8.21)
M8 12 A Vdd 11 PMOS L=1u W=3u AD=8.55p PD=11.7u AS=7.95p PS=11.3u    $ (-3.35 5.05 -2.35 8.05)

* Total Nodes: 13
* Total Elements: 8
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.002 sec
* Total Extract Elapsed Time: 1.167 sec
.op
.END
