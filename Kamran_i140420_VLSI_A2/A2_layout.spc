* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_i140420_VLSI_A2\Kamran_i140420_VLSI_A2_12-3.tdb
* Cell:  Cell0_1	Version 1.59
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/11/2019 - 22:02

.INCLUDE SpecialDevices.md
.lib "D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_i140420_VLSI_A2\Generic_025.lib" TT
.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v2 B Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v3 C Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v4 D Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v5 E Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v6 F Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v7 G Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v8 H Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v9 I Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v10 J Gnd PULSE (0 5 5n 1n 1n 10n 20n)

v11 Vdd Gnd 5
.print tran v(A,Gnd) v(B,Gnd) v(C,Gnd) v(D,Gnd) v(E,Gnd) v(F,Gnd) v(G,Gnd) v(H,Gnd) v(I,Gnd) v(J,Gnd) v(Fout,Gnd)


* NODE NAME ALIASES
*       5 = Vdd (-12.379 , -0.913)
*       6 = Gnd (-12.346 , -19.483)
*       9 = Fout (45.404 , -20.739)
*       19 = B (-4.651 , -20.348)
*       20 = A (-9.003 , -20.306)
*       21 = C (-0.013 , -20.43)
*       22 = E (15.122 , -20.435)
*       23 = F (19.636 , -20.27)
*       24 = G (24.054 , -20.177)
*       25 = H (28.472 , -20.228)
*       27 = J (32.89 , -20.516)
*       28 = D (10.608 , -20.6)
*       29 = I (37.309 , -20.654)


M1 7 Vdd 33 10 PMOS L=600n W=3.6u AD=8.7984p PD=12.088u AS=5.1408p PS=6.456u    $ (78.364 -6.98 78.964 -3.38)
M2 33 Vdd 32 10 PMOS L=600n W=3.6u AD=5.1408p PD=6.456u AS=5.4432p PS=6.624u    $ (74.908 -6.98 75.508 -3.38)
M3 32 Fout Vdd 10 PMOS L=600n W=3.6u AD=5.4432p PD=6.624u AS=6.6672p PS=10.904u    $ (71.284 -6.98 71.884 -3.38)
M4 8 Vdd 31 11 PMOS L=600n W=3.6u AD=8.7984p PD=12.088u AS=5.1408p PS=6.456u    $ (58.9 -6.98 59.5 -3.38)
M5 31 Vdd 30 11 PMOS L=600n W=3.6u AD=5.1408p PD=6.456u AS=5.4432p PS=6.624u    $ (55.444 -6.98 56.044 -3.38)
M6 30 Fout Vdd 11 PMOS L=600n W=3.6u AD=5.4432p PD=6.624u AS=6.6672p PS=10.904u    $ (51.82 -6.98 52.42 -3.38)
M7 4 I Fout 12 PMOS L=600n W=3.6u AD=10.2672p PD=12.904u AS=6.8832p PS=7.424u    $ (37.127 -7.84 37.727 -4.24)
M8 2 D Vdd 12 PMOS L=600n W=3.6u AD=6.975p PD=7.475u AS=8.532p PS=11.94u    $ (10.328 -7.84 10.928 -4.24)
M9 Fout J 4 12 PMOS L=600n W=3.6u AD=6.8832p PD=7.424u AS=6.975p PS=7.475u    $ (32.703 -7.84 33.303 -4.24)
M10 4 H 26 12 PMOS L=600n W=3.6u AD=6.975p PD=7.475u AS=6.975p PS=7.475u    $ (28.228 -7.84 28.828 -4.24)
M11 26 G 2 12 PMOS L=600n W=3.6u AD=6.975p PD=7.475u AS=6.975p PS=7.475u    $ (23.753 -7.84 24.353 -4.24)
M12 2 F Vdd 12 PMOS L=600n W=3.6u AD=6.975p PD=7.475u AS=6.975p PS=7.475u    $ (19.278 -7.84 19.878 -4.24)
M13 Vdd E 2 12 PMOS L=600n W=3.6u AD=6.975p PD=7.475u AS=6.975p PS=7.475u    $ (14.803 -7.84 15.403 -4.24)
M14 Fout C 3 13 PMOS L=600n W=3.6u AD=8.6652p PD=12.014u AS=7.4178p PS=7.721u    $ (-0.254 -8.084 0.346 -4.484)
M15 Vdd A 3 13 PMOS L=600n W=3.6u AD=6.5304p PD=7.228u AS=7.7364p PS=11.498u    $ (-9.203 -8.084 -8.603 -4.484)
M16 3 B Vdd 13 PMOS L=600n W=3.6u AD=7.4178p PD=7.721u AS=6.5304p PS=7.228u    $ (-4.975 -8.084 -4.375 -4.484)
M17 7 Vdd Gnd 14 NMOS L=600n W=1.2u AD=2.6736p PD=6.856u AS=1.7136p PS=4.056u    $ (78.364 -13.408 78.964 -12.208)
M18 Gnd Vdd 7 14 NMOS L=600n W=1.2u AD=1.7136p PD=4.056u AS=1.8144p PS=4.224u    $ (74.908 -13.408 75.508 -12.208)
M19 7 Fout Gnd 14 NMOS L=600n W=1.2u AD=1.8144p PD=4.224u AS=3.9576p PS=8.996u    $ (71.284 -13.408 71.884 -12.208)
M20 8 Vdd Gnd 14 NMOS L=600n W=1.2u AD=2.6736p PD=6.856u AS=1.7136p PS=4.056u    $ (58.9 -13.408 59.5 -12.208)
M21 Gnd Vdd 8 14 NMOS L=600n W=1.2u AD=1.7136p PD=4.056u AS=1.8144p PS=4.224u    $ (55.444 -13.408 56.044 -12.208)
M22 8 Fout Gnd 14 NMOS L=600n W=1.2u AD=1.8144p PD=4.224u AS=3.9576p PS=8.996u    $ (51.82 -13.408 52.42 -12.208)
M23 1 I 18 14 NMOS L=600n W=1.2u AD=4.4664p PD=9.844u AS=2.2944p PS=5.024u    $ (37.127 -16.304 37.727 -15.104)
M24 17 D 1 14 NMOS L=600n W=1.2u AD=2.325p PD=5.075u AS=3.642p PS=8.47u    $ (10.328 -16.304 10.928 -15.104)
M25 18 J Gnd 14 NMOS L=600n W=1.2u AD=2.2944p PD=5.024u AS=2.325p PS=5.075u    $ (32.703 -16.304 33.303 -15.104)
M26 Gnd H 1 14 NMOS L=600n W=1.2u AD=2.325p PD=5.075u AS=2.325p PS=5.075u    $ (28.228 -16.304 28.828 -15.104)
M27 1 G Gnd 14 NMOS L=600n W=1.2u AD=2.325p PD=5.075u AS=2.325p PS=5.075u    $ (23.753 -16.304 24.353 -15.104)
M28 Gnd F 16 14 NMOS L=600n W=1.2u AD=2.325p PD=5.075u AS=2.325p PS=5.075u    $ (19.278 -16.304 19.878 -15.104)
M29 16 E 17 14 NMOS L=600n W=1.2u AD=2.325p PD=5.075u AS=2.325p PS=5.075u    $ (14.803 -16.304 15.403 -15.104)
M30 Fout C 1 14 NMOS L=600n W=1.2u AD=2.436p PD=6.46u AS=2.4726p PS=5.321u    $ (-0.254 -16.024 0.346 -14.824)
M31 15 A Fout 14 NMOS L=600n W=1.2u AD=2.1768p PD=4.828u AS=3.3348p PS=7.958u    $ (-9.203 -16.024 -8.603 -14.824)
M32 1 B 15 14 NMOS L=600n W=1.2u AD=2.4726p PD=5.321u AS=2.1768p PS=4.828u    $ (-4.975 -16.024 -4.375 -14.824)

* Total Nodes: 33
* Total Elements: 32
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.497 sec
.op
.END
