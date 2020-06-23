* Circuit Extracted by Tanner Research's L-Edit
* TDB File:  xor.tdb
* Cell:  XOR2_Short_Open	Version 1.11
* Extract Definition File:  mhp_ns5.ext

.MODEL NMOS
.MODEL PMOS

* NODE NAME ALIASES
*       1 = A (3,0)
*       1 = Cross (11,37)
*       1 = Out (19,0)
*       2 = B (38,0)
*       3 = Vdd (0,58)
*       4 = Gnd (0,0)
*       5 = I1 (16.5,36)
*       6 = I5 (23,51.5)
*       7 = I4 (35,52)
*       8 = I2 (11,50.5)
*       9 = I3 (35,14.5)


M2 Gnd 10 I1 Gnd NMOS L=700n W=8.4u AD=7.90125p PD=10.5u AS=8.82p PS=10.5u 
M5 Gnd B I3 Gnd NMOS L=700n W=8.4u AD=17.15p PD=23.8u AS=2.94p PS=9.1u 
M6 I3 A A Gnd NMOS L=700n W=8.4u AD=2.94p PD=9.1u AS=7.90125p PS=10.5u 
M1 I1 A Gnd Gnd NMOS L=700n W=8.4u AD=8.82p PD=10.5u AS=17.15p PS=23.8u 
M11 A I1 Gnd Gnd NMOS L=700n W=6.65u AD=7.90125p PD=10.5u AS=7.90125p PS=10.5u 
M4 Vdd 10 I2 Vdd PMOS L=700n W=7.7u AD=8.4525p PD=10.85u AS=2.695p PS=8.4u 
M10 Vdd B I4 Vdd PMOS L=700n W=7.7u AD=13.72147p PD=20.3u AS=2.695p PS=8.4u 
M9 I5 A Vdd Vdd PMOS L=700n W=7.7u AD=2.695p PD=8.4u AS=8.4525p PS=10.85u 
M3 I2 A I1 Vdd PMOS L=700n W=7.7u AD=2.695p PD=8.4u AS=14.7p PS=19.6u 
M8 I4 I1 A Vdd PMOS L=700n W=7.7u AD=2.695p PD=8.4u AS=8.085p PS=9.8u 
M7 A I1 I5 Vdd PMOS L=700n W=7.7u AD=8.085p PD=9.8u AS=2.695p PS=8.4u 

* Total Nodes: 10
* Total Elements: 11
* Total Number of Shorted Elements not written to the SPICE file: 3
* Extract Elapsed Time: 0 seconds
.END
