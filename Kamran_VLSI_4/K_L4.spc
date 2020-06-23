.INCLUDE SpecialDevices.md

* NODE NAME ALIASES
*       1 = Out_Z (387.3 , 14.46)
*       3 = Vdd (379.14 , 18.6)
*       4 = Inp_A (384.66 , 13.68)


M1 Out_Z Inp_A Vdd Vdd PMOS L=250n W=1u AD=1.25p PD=4.5u AS=1p PS=4u    $ (384.6 15 384.85 16)
M2 Out_Z Inp_A Gnd Gnd NMOS L=250n W=1u AD=1.1p PD=4.2u AS=1.15p PS=4.3u    $ (384.6 11.2 384.85 12.2)

* Total Nodes: 2
* Total Elements: 2
* Total Number of Shorted Elements not written to the SPICE file: 0
* Total Number Elements with Missing Pins: 1
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 0.765 sec
.tran 10n 100n
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_4\Generic_025.lib" TT

v1 Inp_A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v3 Vdd Gnd 5
.print tran v(Inp_A,Gnd) v(Out_Z,Gnd)



.END
.op
.END
