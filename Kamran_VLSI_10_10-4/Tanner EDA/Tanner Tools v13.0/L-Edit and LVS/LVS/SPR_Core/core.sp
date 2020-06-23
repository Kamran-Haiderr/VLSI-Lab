* SPICE netlist written by S-Edit

* No Ports in cell: up_front
.param l=0.35um
* End of module with no ports: up_front

* No Ports in cell: Page5x7(R)
* End of module with no ports: Page5x7(R)

* No Ports in cell: PageID_Tanner
* End of module with no ports: PageID_Tanner

.SUBCKT Buf1 A Out Gnd Vdd
M2 1 A Gnd Gnd NMOS W='18*l' L='2*l' AS='108*l*l' AD='55.5652*l*l' PS='48*l' PD='26.6087*l' M=1
M4 Out 1 Gnd Gnd NMOS W='28*l' L='2*l' AS='86.4348*l*l' AD='148*l*l' PS='41.3913*l' PD='68*l' M=1
* S-Edit  Buffer (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module Buf1 / page Page0 
M1 1 A Vdd Vdd PMOS W='18*l' L='2*l' AS='108*l*l' AD='55.5652*l*l' PS='48*l' PD='26.6087*l' M=1
M3 Out 1 Vdd Vdd PMOS W='28*l' L='2*l' AS='86.4348*l*l' AD='148*l*l' PS='41.3913*l' PD='68*l' M=1
.ENDS

.SUBCKT DFFC ClB Clk Data Q QB Gnd Vdd
M8 5 Data Gnd Gnd NMOS W='15*l' L='2*l' AS='15*l*l' AD='109.444*l*l' PS='17*l' PD='45.5556*l' M=1
M7 4 CB 5 Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M12 7 10 8 Gnd NMOS W='15*l' L='2*l' AS='15*l*l' AD='45*l*l' PS='17*l' PD='21*l' M=1
M11 4 C 7 Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='45*l*l' PS='21*l' PD='21*l' M=1
M21 13 10 Gnd Gnd NMOS W='15*l' L='2*l' AS='15*l*l' AD='123*l*l' PS='17*l' PD='50*l' M=1
M20 12 C 13 Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M26 QB ClB 14 Gnd NMOS W='22*l' L='2*l' AS='22*l*l' AD='87.4054*l*l' PS='24*l' PD='34.4865*l' M=1
M24 12 CB QB Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='59.5946*l*l' PS='21*l' PD='23.5135*l' M=1
M29 Q 12 Gnd Gnd NMOS W='22*l' L='2*l' AS='185*l*l' AD='36*l*l' PS='64*l' PD='28*l' M=1
M27 14 Q Gnd Gnd NMOS W='22*l' L='2*l' AS='36*l*l' AD='22*l*l' PS='28*l' PD='24*l' M=1
M2 CB Clk Gnd Gnd NMOS W='6*l' L='2*l' AS='43.7778*l*l' AD='42*l*l' PS='18.2222*l' PD='26*l' M=1
M4 C CB Gnd Gnd NMOS W='6*l' L='2*l' AS='43.7778*l*l' AD='36*l*l' PS='18.2222*l' PD='24*l' M=1
M13 8 ClB Gnd Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M17 10 4 Gnd Gnd NMOS W='15*l' L='2*l' AS='72*l*l' AD='45*l*l' PS='42*l' PD='21*l' M=1
* S-Edit  D Flip-Flop with Clear (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module DFFC / page Page0 
M6 4 C 3 Vdd PMOS W='17*l' L='2*l' AS='73.6667*l*l' AD='17*l*l' PS='29.1429*l' PD='19*l' M=1
M5 3 Data Vdd Vdd PMOS W='17*l' L='2*l' AS='17*l*l' AD='124.276*l*l' PS='19*l' PD='48.069*l' M=1
M10 4 CB 6 Vdd PMOS W='14*l' L='2*l' AS='14*l*l' AD='60.6667*l*l' PS='16*l' PD='24*l' M=1
M9 6 10 Vdd Vdd PMOS W='14*l' L='2*l' AS='84*l*l' AD='14*l*l' PS='40*l' PD='16*l' M=1
M19 12 CB 11 Vdd PMOS W='16*l' L='2*l' AS='48*l*l' AD='16*l*l' PS='22*l' PD='18*l' M=1
M18 11 10 Vdd Vdd PMOS W='16*l' L='2*l' AS='16*l*l' AD='96*l*l' PS='18*l' PD='44*l' M=1
M23 12 C QB Vdd PMOS W='16*l' L='2*l' AS='54.4*l*l' AD='48*l*l' PS='24*l' PD='22*l' M=1
M22 QB ClB Vdd Vdd PMOS W='24*l' L='2*l' AS='72*l*l' AD='81.6*l*l' PS='30*l' PD='36*l' M=1
M14 9 ClB Vdd Vdd PMOS W='9*l' L='2*l' AS='51.75*l*l' AD='27.45*l*l' PS='23.25*l' PD='15.3*l' M=1
M28 Q 12 Vdd Vdd PMOS W='27*l' L='2*l' AS='143*l*l' AD='111*l*l' PS='66*l' PD='66*l' M=1
M1 CB Clk Vdd Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='43.8621*l*l' PS='24*l' PD='16.9655*l' M=1
M3 C CB Vdd Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='43.8621*l*l' PS='24*l' PD='16.9655*l' M=1
M15 4 CB 9 Vdd PMOS W='11*l' L='2*l' AS='33.55*l*l' AD='47.6667*l*l' PS='18.7*l' PD='18.8571*l' M=1
M16 10 4 Vdd Vdd PMOS W='15*l' L='2*l' AS='90*l*l' AD='86.25*l*l' PS='42*l' PD='38.75*l' M=1
M25 QB Q Vdd Vdd PMOS W='24*l' L='2*l' AS='114*l*l' AD='72*l*l' PS='60*l' PD='30*l' M=1
.ENDS

.SUBCKT Mux2 A B Out Sel Gnd Vdd
M2 G Sel Gnd Gnd NMOS W='21*l' L='2*l' AS='63*l*l' AD='106*l*l' PS='27*l' PD='54*l' M=1
M7 3 A 4 Gnd NMOS W='21*l' L='2*l' AS='63*l*l' AD='21*l*l' PS='27*l' PD='23*l' M=1
M8 4 Sel Gnd Gnd NMOS W='21*l' L='2*l' AS='63*l*l' AD='21*l*l' PS='27*l' PD='23*l' M=1
M9 3 B 6 Gnd NMOS W='21*l' L='2*l' AS='21*l*l' AD='63*l*l' PS='23*l' PD='27*l' M=1
M10 6 G Gnd Gnd NMOS W='21*l' L='2*l' AS='21*l*l' AD='94.7143*l*l' PS='23*l' PD='37.7143*l' M=1
M12 Out 3 Gnd Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='126.286*l*l' PS='68*l' PD='50.2857*l' M=1
* S-Edit  2-to-1 Multiplexer (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module Mux2 / page Page0 
M1 G Sel Vdd Vdd PMOS W='21*l' L='2*l' AS='63*l*l' AD='114*l*l' PS='27*l' PD='54*l' M=1
M3 2 G Vdd Vdd PMOS W='21*l' L='2*l' AS='21*l*l' AD='63*l*l' PS='23*l' PD='27*l' M=1
M4 3 A 2 Vdd PMOS W='21*l' L='2*l' AS='63*l*l' AD='21*l*l' PS='27*l' PD='23*l' M=1
M5 5 Sel Vdd Vdd PMOS W='21*l' L='2*l' AS='102.857*l*l' AD='21*l*l' PS='37.7143*l' PD='23*l' M=1
M6 3 B 5 Vdd PMOS W='21*l' L='2*l' AS='21*l*l' AD='63*l*l' PS='23*l' PD='27*l' M=1
M11 Out 3 Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='137.143*l*l' PS='68*l' PD='50.2857*l' M=1
.ENDS

.SUBCKT dffec clk clr d e q qb Gnd Vdd
XDFFC_1 clr clk N3 q qb Gnd Vdd DFFC
XMux2_1 d q N3 e Gnd Vdd Mux2
* S-Edit  
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module dffec / page Page0 
.ENDS

.SUBCKT NAND2 A B Out Gnd Vdd
M3 Out B 1 Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M4 1 A Gnd Gnd NMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
* S-Edit  2-Input NAND Gate (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module NAND2 / page Page0 
M2 Out B Vdd Vdd PMOS W='28*l' L='2*l' AS='144*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M1 Out A Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
.ENDS

.SUBCKT Inv A Out Gnd Vdd
M2 Out A Gnd Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
* S-Edit  Inverter (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module Inv / page Page0 
M1 Out A Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
.ENDS

.SUBCKT regLH clk In Out Gnd Vdd
XInv_1 N3 Out Gnd Vdd Inv
XInv_2 N5 N3 Gnd Vdd Inv
M301 Out clk N5 Gnd NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M302 In clk N5 Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
.ENDS

.SUBCKT dffep clk d e pr q qb Gnd Vdd
XDFFC_1 pr clk N6 qb q Gnd Vdd DFFC
XInv_1 N7 N6 Gnd Vdd Inv
XMux2_1 d q N7 e Gnd Vdd Mux2
* S-Edit  
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module dffep / page Page0 
.ENDS

.SUBCKT NAND3 A B C Out Gnd Vdd
M4 Out C 1 Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M5 1 B 2 Gnd NMOS W='28*l' L='2*l' AS='84*l*l' AD='84*l*l' PS='34*l' PD='34*l' M=1
M6 2 A Gnd Gnd NMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
* S-Edit  3-Input NAND Gate (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module NAND3 / page Page0 
M1 Out A Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
M2 Out B Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='84*l*l' PS='34*l' PD='34*l' M=1
M3 Out C Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
.ENDS

.SUBCKT NOR2 A B Out Gnd Vdd
M4 Out B Gnd Gnd NMOS W='28*l' L='2*l' AS='144*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M3 Out A Gnd Gnd NMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
* S-Edit  2-Input NOR Gate (TIB)
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module NOR2 / page Page0 
M2 Out B 1 Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M1 1 A Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
.ENDS

.SUBCKT shift10 clk clr datamark loadreg q0 q1 q2 q3 q4 q5 q6 q7 q8 q9 qb0 qb1
+ qb2 qb3 qb4 qb5 qb6 qb7 qb8 qb9 start Gnd Vdd
XBuf1_1 clr N12 Gnd Vdd Buf1
XDFFC_1 N12 clk N5 N25 N4 Gnd Vdd DFFC
XDFFC_2 N12 clk start N20 N9 Gnd Vdd DFFC
XDFFC_3 N12 clk q8 N101 N14 Gnd Vdd DFFC
XDFFC_4 N12 clk N20 N98 N19 Gnd Vdd DFFC
Xdffec_1 clk N12 q9 N25 q0 qb0 Gnd Vdd dffec
Xdffec_2 clk N12 q0 N25 q1 qb1 Gnd Vdd dffec
Xdffec_3 clk N12 q1 N25 q2 qb2 Gnd Vdd dffec
Xdffec_4 clk N12 q2 N25 q3 qb3 Gnd Vdd dffec
Xdffec_5 clk N12 q3 N25 q4 qb4 Gnd Vdd dffec
Xdffec_6 clk N12 q4 N25 q5 qb5 Gnd Vdd dffec
Xdffec_7 clk N12 q5 N25 q6 qb6 Gnd Vdd dffec
Xdffec_8 clk N12 q6 N25 q7 qb7 Gnd Vdd dffec
Xdffec_9 clk N12 q7 N25 q8 qb8 Gnd Vdd dffec
Xdffep_1 clk q8 N25 N12 q9 qb9 Gnd Vdd dffep
XNAND2_1 N25 qb7 N94 Gnd Vdd NAND2
XNAND2_2 qb7 datamark N86 Gnd Vdd NAND2
XNAND2_3 N25 datamark N95 Gnd Vdd NAND2
XNAND3_1 N95 N94 N86 N5 Gnd Vdd NAND3
XNOR2_1 N98 N9 datamark Gnd Vdd NOR2
XNOR2_2 N101 qb8 loadreg Gnd Vdd NOR2
* S-Edit  
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module shift10 / page Page0 
.ENDS

.SUBCKT adcctrl b0 b1 b2 b3 b4 b5 b6 b7 clk clr compare datamark loadreg start
+ Gnd Vdd
XBuf1_1 compare N50 Gnd Vdd Buf1
XBuf1_2 clr cl Gnd Vdd Buf1
Xdffec_1 clk cl N50 ee0 N6 N54 Gnd Vdd dffec
Xdffec_2 clk cl N50 ee1 N12 N57 Gnd Vdd dffec
Xdffec_3 clk cl N50 ee2 N18 N60 Gnd Vdd dffec
Xdffec_4 clk cl N50 ee3 N24 N63 Gnd Vdd dffec
Xdffec_5 clk cl N50 ee4 N30 N66 Gnd Vdd dffec
Xdffec_6 clk cl N50 ee5 N36 N69 Gnd Vdd dffec
Xdffec_7 clk cl N50 ee6 N42 N72 Gnd Vdd dffec
Xdffec_8 clk cl N50 ee7 N48 N75 Gnd Vdd dffec
XNAND2_1 s0 N54 b7 Gnd Vdd NAND2
XNAND2_2 s1 N57 b6 Gnd Vdd NAND2
XNAND2_3 s2 N60 b5 Gnd Vdd NAND2
XNAND2_4 s3 N63 b4 Gnd Vdd NAND2
XNAND2_5 s4 N66 b3 Gnd Vdd NAND2
XNAND2_6 s5 N69 b2 Gnd Vdd NAND2
XNAND2_7 s6 N72 b1 Gnd Vdd NAND2
XNAND2_8 s7 N75 b0 Gnd Vdd NAND2
* S-Edit  
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module adcctrl / page Page0 
XregLH_1 clk e0 ee0 Gnd Vdd regLH
XregLH_2 clk e1 ee1 Gnd Vdd regLH
XregLH_3 clk e2 ee2 Gnd Vdd regLH
XregLH_4 clk e3 ee3 Gnd Vdd regLH
XregLH_5 clk e4 ee4 Gnd Vdd regLH
XregLH_6 clk e5 ee5 Gnd Vdd regLH
XregLH_7 clk e6 ee6 Gnd Vdd regLH
XregLH_8 clk e7 ee7 Gnd Vdd regLH
Xshift9_1 clk clr datamark loadreg e0 e1 e2 e3 e4 e5 e6 e7 e8 N105 s0 s1 s2 s3
+ s4 s5 s6 s7 s8 N95 start Gnd Vdd shift10
.ENDS

.SUBCKT comparator CLOCK OUT OUTB VM VP Gnd Vdd
M2 N62 CLOCK Gnd Gnd NMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M6 PP1 N50 VP Gnd NMOS W='25*l' L='2*l' AS='125*l*l' AD='125*l*l' PS='35*l' PD='35*l' M=1
M8 fm N50 VM Gnd NMOS W='25*l' L='2*l' AS='125*l*l' AD='125*l*l' PS='35*l' PD='35*l' M=1
M10 N21 PP1 fm Gnd NMOS W='5*l' L='2*l' AS='25*l*l' AD='25*l*l' PS='15*l' PD='15*l' M=1
M12 N21 fm PP1 Gnd NMOS W='5*l' L='2*l' AS='25*l*l' AD='25*l*l' PS='15*l' PD='15*l' M=1
M14 Gnd N62 N21 Gnd NMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M18 OUTB PP1 Gnd Gnd NMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M16 OUT fm Gnd Gnd NMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
* S-Edit  Comparator
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module comparator / page Page0 
M1 N62 CLOCK Vdd Vdd PMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M3 N50 N62 Vdd Vdd PMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M9 N49 PP1 fm Vdd PMOS W='5*l' L='2*l' AS='25*l*l' AD='25*l*l' PS='15*l' PD='15*l' M=1
M11 N49 fm PP1 Vdd PMOS W='5*l' L='2*l' AS='25*l*l' AD='25*l*l' PS='15*l' PD='15*l' M=1
M13 Vdd N50 N49 Vdd PMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M17 OUTB PP1 Vdd Vdd PMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M15 OUT fm Vdd Vdd PMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='8775*l*l' PS='26.5*l' PD='26.5*l' M=1
M4 N50 N62 Gnd Gnd NMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
.ENDS

.SUBCKT DAC_BIT BIT_IN VIN VOUT VREFM VREFP Gnd
M2 bb BIT_IN VREFM Gnd NMOS W='13.5*l' L='2*l' AS='87.75*l*l' AD='87.75*l*l' PS='26.5*l' PD='26.5*l' M=1
M4 b bb VREFM Gnd NMOS W='40.5*l' L='2*l' AS='263.25*l*l' AD='263.25*l*l' PS='53.5*l' PD='53.5*l' M=1
* S-Edit  Converter Bit Element
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module DAC_BIT / page Page0 
M1 bb BIT_IN VREFP VREFP PMOS W='40.5*l' L='2*l' AS='263.25*l*l' AD='263.25*l*l' PS='53.5*l' PD='53.5*l' M=1
M3 b bb VREFP VREFP PMOS W='121.5*l' L='2*l' AS='789.75*l*l' AD='789.75*l*l' PS='134.5*l' PD='134.5*l' M=1
R1 VIN VOUT 10K 
R2 b VOUT 19.85K 
.ENDS

.SUBCKT DAC_IN ADJUST_IN VOUT
* S-Edit  Converter Input Cell
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module DAC_IN / page Page0 
R1 ADJUST_IN VOUT 10K 
.ENDS

.SUBCKT R2RDAC8 ADJ B0 B1 B2 B3 B4 B5 B6 B7 VOUT VREFM VREFP Gnd
XDAC_BIT_2 B0 N4 N3 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_3 B1 N3 N2 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_4 B2 N2 N8 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_5 B3 N8 N10 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_6 B4 N10 N12 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_7 B5 N12 N19 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_8 B6 N19 N18 VREFM VREFP Gnd DAC_BIT
XDAC_BIT_9 B7 N18 VOUT VREFM VREFP Gnd DAC_BIT
XDAC_IN_1 ADJ N4 DAC_IN
* S-Edit  Converter Bits
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module R2RDAC8 / page Page0 
.ENDS

* Main circuit: core
.include hp05.md
Xadcctrl8_1 b0 b1 b2 b3 b4 b5 b6 b7 clk clr serial_output datamark loadreg start
+ Gnd Vdd adcctrl
Xcomp2_1 clk s1 N2 da N1 Gnd Vdd comparator
* S-Edit  
* Schematic generated by S-Edit
* from file Samples\LVS\SPR_Core\adc8 / module core / page core 
R1 anainput N1 15K
XR2RDAC8_1 adj b0 b1 b2 b3 b4 b5 b6 b7 da anagnd vref Gnd R2RDAC8
XregLH_1 clk s1 serial_output Gnd Vdd regLH
* End of main circuit: core
.END
