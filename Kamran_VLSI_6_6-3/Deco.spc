
* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_6_6-3\L6_NAND.tdb
* Cell:  Cell0_1	Version 1.26
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/06/2019 - 11:26

.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_6_6-3\Generic_025.lib" TT
.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v3 S Gnd PULSE (0 5 5n 1n 1n 10n 20n)
v4 Vdd Gnd 5
.print tran v(A,Gnd) v(S,Gnd) v(Z1,Gnd) v(Z2,Gnd)
* NODE NAME ALIASES
*       7 = S (3.034 , 14.505)
*       9 = Gnd (-2.907 , -0.293)
*       10 = Vdd (-3.044 , 10.23)
*       11 = A (15.777 , -4.498)
*       12 = Z2 (48.976 , -1.621)
*       14 = Z1 (29.05 , -1.65)


M1 Z2 13 Vdd 1 PMOS L=600n W=2.4u AD=5.64p PD=9.5u AS=6.36p PS=10.1u    $ (43.876 6.429 44.476 8.829)
M2 Z1 6 Vdd 2 PMOS L=600n W=2.4u AD=5.9952p PD=9.796u AS=6.0048p PS=9.804u    $ (23.802 6.4 24.402 8.8)
M3 8 S Vdd 3 PMOS L=600n W=2.4u AD=5.6352p PD=9.496u AS=6.3648p PS=10.104u    $ (3.758 6.437 4.358 8.837)
M4 Vdd S 13 4 PMOS L=600n W=2.4u AD=1.4736p PD=3.628u AS=4.08p PS=8.2u    $ (33.476 6.429 34.076 8.829)
M5 13 A Vdd 4 PMOS L=600n W=2.4u AD=3.5328p PD=7.744u AS=1.4736p PS=3.628u    $ (35.304 6.429 35.904 8.829)
M6 Vdd 8 6 5 PMOS L=600n W=2.4u AD=1.4436p PD=3.603u AS=4.08p PS=8.2u    $ (13.55 6.4 14.15 8.8)
M7 6 A Vdd 5 PMOS L=600n W=2.4u AD=3.5928p PD=7.794u AS=1.4436p PS=3.603u    $ (15.353 6.4 15.953 8.8)
M8 Z2 13 Gnd 15 NMOS L=600n W=1.2u AD=3.252p PD=7.82u AS=3.06p PS=7.5u    $ (43.876 1.679 44.476 2.879)
M9 Z1 6 Gnd 15 NMOS L=600n W=1.2u AD=3.4296p PD=8.116u AS=2.8824p PS=7.204u    $ (23.802 1.65 24.402 2.85)
M10 8 S Gnd 15 NMOS L=600n W=1.2u AD=3.2496p PD=7.816u AS=3.0624p PS=7.504u    $ (3.758 1.687 4.358 2.887)
M11 17 S Gnd 15 NMOS L=600n W=1.2u AD=736.8f PD=2.428u AS=2.1252p PS=5.942u    $ (33.476 1.464 34.076 2.664)
M12 13 A 17 15 NMOS L=600n W=1.2u AD=1.6932p PD=5.222u AS=736.8f PS=2.428u    $ (35.304 1.464 35.904 2.664)
M13 16 8 Gnd 15 NMOS L=600n W=1.2u AD=721.8f PD=2.403u AS=2.4p PS=6.4u    $ (13.55 1.45 14.15 2.65)
M14 6 A 16 15 NMOS L=600n W=1.2u AD=1.4484p PD=4.814u AS=721.8f PS=2.403u    $ (15.353 1.45 15.953 2.65)

* Total Nodes: 17
* Total Elements: 14
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.001 sec
* Total Extract Elapsed Time: 1.374 sec
.op
.END
