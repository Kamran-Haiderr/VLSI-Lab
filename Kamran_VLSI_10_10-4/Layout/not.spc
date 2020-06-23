* Circuit Extracted by Tanner Research's L-Edit Version 13.00 / Extract Version 13.00 ;
* TDB File:  C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\Layout\Inverter.tdb
* Cell:  Cell0	Version 1.12
* Extract Definition File:  ..\Generic_025.ext
* Extract Date and Time:  04/12/2019 - 10:10


.INCLUDE SpecialDevices.md
.lib "C:\Users\i140420\Desktop\Kamran_VLSI_10_10-4\Generic_025.lib" TT
.tran 10n 100n

v1 A Gnd PULSE (0 5 0 1n 1n 10n 20n)
v4 Vdd Gnd 5
.print tran v(A,Gnd) v(Anot,Gnd) 

* NODE NAME ALIASES
*       3 = Anot (6.26 , 12.6)
*       4 = GND (-7.1 , 12.31)
*       5 = Vdd (-7.01 , 24.44)
*       6 = A (-3.81 , 8)


M1 Anot A GND 1 NMOS L=600n W=1u AD=3.23p PD=8.46u AS=3.56p PS=9.12u    $ (-3.06 14.49 -2.46 15.49)
M2 Anot A Vdd 2 PMOS L=600n W=2u AD=6.3p PD=10.3u AS=6.98p PS=10.98u    $ (-3.06 19.62 -2.46 21.62)

* Total Nodes: 6
* Total Elements: 2
* Total Number of Shorted Elements not written to the SPICE file: 0
* Output Generation Elapsed Time: 0.000 sec
* Total Extract Elapsed Time: 1.547 sec
.END
