* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_7_13-3\Xmsn XOR.tdb
* Cell:  Cell0	Version 1.14
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/13/2019 - 14:03
.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_7_13-3\Generic_025.lib" TT

.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v3 B Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v4 Vdd Gnd 5
.print tran v(A,Gnd) v(B,Gnd) v(Y,Gnd)

* NODE NAME ALIASES
*       1 = Y (98.71 , -6.19)
*       4 = GND (-7.7 , -2.35)
*       5 = Vdd (-7.3 , 10.4)
*       18 = A (11.12 , -4.28)
*       19 = B (-3.24 , -4.28)


M1 Y 3 17 10 PMOS L=1.02u W=3u AD=9.3p PD=12.2u AS=7.98p PS=11.32u    $ (89.1 5.05 90.12 8.05)
M2 Y 2 17 11 PMOS L=1.02u W=3u AD=9.3p PD=12.2u AS=7.98p PS=11.32u    $ (74.18 5.21 75.2 8.21)
M3 2 3 Vdd 12 PMOS L=1u W=3u AD=8.91p PD=11.94u AS=7.59p PS=11.06u    $ (57.17 5.33 58.17 8.33)
M4 3 8 A 13 PMOS L=1.02u W=3u AD=9.3p PD=12.2u AS=7.98p PS=11.32u    $ (43.98 5.49 45 8.49)
M5 7 A Vdd 14 PMOS L=1u W=3u AD=8.55p PD=11.7u AS=7.95p PS=11.3u    $ (11.01 5.05 12.01 8.05)
M6 6 7 B 15 PMOS L=1.02u W=3u AD=9.3p PD=12.2u AS=7.98p PS=11.32u    $ (28.46 5.61 29.48 8.61)
M7 8 B Vdd 16 PMOS L=1u W=3u AD=8.55p PD=11.7u AS=7.95p PS=11.3u    $ (-3.35 5.05 -2.35 8.05)
M8 Y 2 17 9 NMOS L=1u W=1.5u AD=4.29p PD=8.72u AS=3.96p PS=8.28u    $ (88.98 -0.12 89.98 1.38)
M9 Y 3 17 9 NMOS L=1u W=1.5u AD=4.29p PD=8.72u AS=3.96p PS=8.28u    $ (74.06 0.04 75.06 1.54)
M10 2 3 GND 9 NMOS L=1u W=1.5u AD=3.825p PD=8.1u AS=3.795p PS=8.06u    $ (57.17 0.68 58.17 2.18)
M11 3 B A 9 NMOS L=1.1u W=1.5u AD=4.14p PD=8.52u AS=3.96p PS=8.28u    $ (43.86 0.32 44.96 1.82)
M12 7 A GND 9 NMOS L=1u W=1.5u AD=3.645p PD=7.86u AS=3.975p PS=8.3u    $ (11.01 0.4 12.01 1.9)
M13 6 A B 9 NMOS L=1u W=1.5u AD=4.29p PD=8.72u AS=3.96p PS=8.28u    $ (28.34 0.44 29.34 1.94)
M14 8 B GND 9 NMOS L=1u W=1.5u AD=4.125p PD=8.5u AS=4.125p PS=8.5u    $ (-3.35 0.4 -2.35 1.9)

* Total Nodes: 19
* Total Elements: 14
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.001 sec
* Total Extract Elapsed Time: 0.822 sec
.op
.END
