* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_7_13-3\New Xmsn XOR.tdb
* Cell:  Cell0	Version 1.26
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/14/2019 - 23:08

.INCLUDE SpecialDevices.md
.lib "D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_7_13-3\Generic_025.lib" TT

.tran 10n 100n

v1 A GND PULSE (0 5 0 1n 1n 10n 20n)
v3 B GND PULSE (0 5 5n 1n 1n 10n 20n)
v4 Vdd GND 5
.print tran v(A,GND) v(B,GND) v(Y,GND)


* NODE NAME ALIASES
*       3 = Y (77.26 , -6.19)
*       4 = GND (-7.7 , -2.35)
*       5 = Vdd (-7.3 , 10.4)
*       6 = Y2 (50.68 , -6.95)
*       8 = A (11.12 , -4.28)
*       17 = B (-3.24 , -4.28)


M1 Y 2 Vdd 9 PMOS L=1u W=3u AD=8.91p PD=11.94u AS=7.59p PS=11.06u    $ (70.42 5.23 71.42 8.23)
M2 2 Y2 Vdd 10 PMOS L=1u W=3u AD=8.91p PD=11.94u AS=7.59p PS=11.06u    $ (57.17 5.33 58.17 8.33)
M3 Y2 1 16 11 PMOS L=1.02u W=3u AD=9.3p PD=12.2u AS=7.98p PS=11.32u    $ (43.98 5.49 45 8.49)
M4 7 A Vdd 12 PMOS L=1u W=3u AD=8.55p PD=11.7u AS=7.95p PS=11.3u    $ (11.01 5.05 12.01 8.05)
M5 Y2 A B 13 PMOS L=1.02u W=3u AD=9.3p PD=12.2u AS=7.98p PS=11.32u    $ (28.46 5.61 29.48 8.61)
M6 16 B Vdd 14 PMOS L=1u W=3u AD=8.55p PD=11.7u AS=7.95p PS=11.3u    $ (-3.35 5.05 -2.35 8.05)
M7 Y 2 GND 15 NMOS L=1u W=1.5u AD=3.825p PD=8.1u AS=3.795p PS=8.06u    $ (70.42 0.58 71.42 2.08)
M8 2 Y2 GND 15 NMOS L=1u W=1.5u AD=3.825p PD=8.1u AS=3.795p PS=8.06u    $ (57.17 0.68 58.17 2.18)
M9 Y2 A 16 15 NMOS L=1.1u W=1.5u AD=4.065p PD=8.42u AS=4.035p PS=8.38u    $ (43.91 0.32 45.01 1.82)
M10 7 A GND 15 NMOS L=1u W=1.5u AD=3.645p PD=7.86u AS=3.975p PS=8.3u    $ (11.01 0.4 12.01 1.9)
M11 Y2 7 B 15 NMOS L=1u W=1.5u AD=4.29p PD=8.72u AS=3.96p PS=8.28u    $ (28.34 0.44 29.34 1.94)
M12 16 B GND 15 NMOS L=1u W=1.5u AD=4.125p PD=8.5u AS=4.125p PS=8.5u    $ (-3.35 0.4 -2.35 1.9)

* Total Nodes: 17
* Total Elements: 12
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 0.705 sec
.END
