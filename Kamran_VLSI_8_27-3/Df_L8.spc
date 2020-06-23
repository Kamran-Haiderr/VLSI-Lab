* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\ACG\Desktop\Kamran_VLSI_8_27-3\Kamran_VLSI_8_27-3.tdb
* Cell:  Cell0	Version 1.12
* Extract Definition File:  Generic_025.ext
* Extract Date and Time:  03/29/2019 - 22:01

.INCLUDE SpecialDevices.md
*.lib "C:\Users\i140420\Desktop\Kamran_VLSI_8_27-3\Generic_025.lib" TT
.lib "C:\Users\ACG\Desktop\Kamran_VLSI_8_27-3\Generic_025.lib" TT
.tran 10n 100n

v1 nRST Gnd PULSE (0 5 0 1n 1n 50n 100n)
v2 Clk Gnd PULSE (0 5 0 1n 1n 10n 20n)
v3 D Gnd PULSE (0 5 5n 1n 1n 10n 20n)


v11 Vdd Gnd 5
.print tran v(nRST,Gnd) v(Clk,Gnd) v(D,Gnd) v(Q,Gnd) v(nQ,Gnd)


* NODE NAME ALIASES
*       1 = Gnd (-2.1 , 0.1)
*       2 = Vdd (-2.4 , 48.3)
*       3 = Q (27.25 , -4.15)
*       4 = nQ (30.8 , -4.35)
*       5 = x4 (23.8 , -3.85)
*       6 = x3 (20.4 , -0.75)
*       7 = x2 (16.9 , -0.75)
*       8 = x1 (13.15 , -0.75)
*       21 = nRST (2.65 , -0.75)
*       22 = Clk (6.15 , -0.75)
*       23 = D (9.65 , -0.75)


M1 Q x4 Vdd 19 PMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (23.4 23.1 24.15 24.35)
M2 Vdd x4 x3 19 PMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (23.4 38.7 24.15 39.95)
M3 Vdd x4 x2 19 PMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (23.4 43.2 24.15 44.45)
M4 x3 x1 Vdd 19 PMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (12.9 38.7 13.65 39.95)
M5 x2 x1 Vdd 19 PMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (12.9 43.2 13.65 44.45)
M6 Vdd x3 nQ 19 PMOS L=750n W=1.25u AD=1.3125p PD=4.6u AS=1.5p PS=4.9u    $ (20.15 27.6 20.9 28.85)
M7 x1 x3 Vdd 19 PMOS L=750n W=1.25u AD=1.3125p PD=4.6u AS=1.5p PS=4.9u    $ (20.15 47.1 20.9 48.35)
M8 nQ Q Vdd 19 PMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (26.9 27.6 27.65 28.85)
M9 Vdd nQ Q 19 PMOS L=750n W=1.25u AD=1.375p PD=4.7u AS=1.4375p PS=4.8u    $ (30.4 23.1 31.15 24.35)
M10 x4 x2 Vdd 19 PMOS L=750n W=1.25u AD=1.3125p PD=4.6u AS=1.5p PS=4.9u    $ (16.65 33.9 17.4 35.15)
M11 Vdd D x1 19 PMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (9.4 47.1 10.15 48.35)
M12 Vdd Clk x4 19 PMOS L=750n W=1.25u AD=1.375p PD=4.7u AS=1.4375p PS=4.8u    $ (5.9 34 6.65 35.25)
M13 x3 Clk Vdd 19 PMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (5.9 38.7 6.65 39.95)
M14 nQ nRST Vdd 19 PMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (2.4 27.6 3.15 28.85)
M15 x4 nRST Vdd 19 PMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (2.4 34 3.15 35.25)
M16 x1 nRST Vdd 19 PMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (2.4 47.1 3.15 48.35)
M17 9 x4 Gnd 20 NMOS L=750n W=1.25u AD=1.625p PD=5.1u AS=1.1875p PS=4.4u    $ (23.4 0.4 24.15 1.65)
M18 15 x4 x3 20 NMOS L=750n W=1.25u AD=1.75p PD=5.3u AS=1.3125p PS=4.6u    $ (23.4 5.5 24.15 6.75)
M19 16 x4 x2 20 NMOS L=750n W=1.25u AD=1.625p PD=5.1u AS=1.4375p PS=4.8u    $ (23.4 3.2 24.15 4.45)
M20 15 x1 14 20 NMOS L=750n W=1.25u AD=1.75p PD=5.3u AS=1.3125p PS=4.6u    $ (12.9 5.5 13.65 6.75)
M21 16 x1 Gnd 20 NMOS L=750n W=1.25u AD=1.625p PD=5.1u AS=1.4375p PS=4.8u    $ (12.9 3.2 13.65 4.45)
M22 10 x3 11 20 NMOS L=750n W=1.25u AD=1.4375p PD=4.8u AS=1.375p PS=4.7u    $ (20.15 10.7 20.9 11.95)
M23 17 x3 x1 20 NMOS L=750n W=1.25u AD=1.1875p PD=4.4u AS=1.875p PS=5.5u    $ (20.15 0.5 20.9 1.75)
M24 nQ Q 10 20 NMOS L=750n W=1.25u AD=1.125p PD=4.3u AS=1.6875p PS=5.2u    $ (26.9 10.7 27.65 11.95)
M25 9 nQ Q 20 NMOS L=750n W=1.25u AD=1.5p PD=4.9u AS=1.3125p PS=4.6u    $ (30.4 0.4 31.15 1.65)
M26 x4 x2 12 20 NMOS L=750n W=1.25u AD=1.5625p PD=5u AS=1.25p PS=4.5u    $ (16.65 8.4 17.4 9.65)
M27 17 D 18 20 NMOS L=750n W=1.25u AD=1.75p PD=5.3u AS=1.3125p PS=4.6u    $ (9.4 0.5 10.15 1.75)
M28 12 Clk 13 20 NMOS L=750n W=1.25u AD=1.375p PD=4.7u AS=1.4375p PS=4.8u    $ (5.9 8.4 6.65 9.65)
M29 14 Clk Gnd 20 NMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (5.9 5.5 6.65 6.75)
M30 11 nRST Gnd 20 NMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (2.4 10.8 3.15 12.05)
M31 13 nRST Gnd 20 NMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (2.4 8.4 3.15 9.65)
M32 18 nRST Gnd 20 NMOS L=750n W=1.25u AD=1.25p PD=4.5u AS=1.5625p PS=5u    $ (2.4 0.5 3.15 1.75)

* Total Nodes: 23
* Total Elements: 32
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.004 sec
* Total Extract Elapsed Time: 1.672 sec
.op
.END
