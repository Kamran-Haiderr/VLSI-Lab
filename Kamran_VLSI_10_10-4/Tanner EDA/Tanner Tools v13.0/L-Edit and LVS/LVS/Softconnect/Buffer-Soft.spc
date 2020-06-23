* Circuit Extracted by Tanner Research's L-Edit
* TDB File:  SoftConnect.tdb
* Cell:  BufferWithSoftConnection	Version 1.10
* Extract Definition File:  mhp_n05-soft.ext

.model WELLCONTACT
.model SUBSCONTACT

* WARNING: Node/Element Name Conflicts Found.  The following are the
*              Node/Element names that have been renamed.
* Node Vdd has been modified to Vdd_1

* NODE NAME ALIASES
*       2 = In (-19,25)
*       3 = Out (13,33)
*       4 = Vdd (-6,62)
*       5 = Gnd (-6,4)
*       6 = Vdd_1 (18,62)


M1 1   In Vdd   8 PMOS L=700n W=9.8u AD=18.13p PD=23.8u AS=17.64p PS=23.8u 
M2 Out 1  Vdd_1 8 PMOS L=700n W=9.8u AD=18.13p PD=23.8u AS=17.64p PS=23.8u 
M3 1   In Gnd   7 NMOS L=700n W=9.8u AD=18.13p PD=23.8u AS=17.64p PS=23.8u 
M4 Out 1  Gnd   7 NMOS L=700n W=9.8u AD=18.13p PD=23.8u AS=17.64p PS=23.8u 

R1 7 Gnd   SUBSCONTACT 0
R2 7 Gnd   SUBSCONTACT 0
R3 8 Vdd   WELLCONTACT 0
R4 8 Vdd_1 WELLCONTACT 0

* Total Nodes: 8
* Total Elements: 8
* Total Number of Shorted Elements not written to the SPICE file: 4
* Extract Elapsed Time: 0 seconds
.END
