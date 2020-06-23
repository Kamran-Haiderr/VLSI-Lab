* SPICE netlist written by S-Edit Win32 7.00
* Written on Nov 20, 2001 at 08:40:00

* No Ports in cell: PageID_Tanner
* End of module with no ports: PageID_Tanner

.SUBCKT DFFC ClB Clk Data Q QB Gnd Vdd
M8 5 Data Gnd Gnd NMOS W='15*l' L='2*l' AS='15*l*l' AD='109.444*l*l' PS='17*l' PD='45.5556*l' M=1
M7 4 CB 5 Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M12 7 10 8 Gnd NMOS W='15*l' L='2*l' AS='15*l*l' AD='45*l*l' PS='17*l' PD='21*l' M=1
M11 4 C 7 Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='45*l*l' PS='21*l' PD='21*l' M=1
M21 13 10 Gnd Gnd NMOS W='15*l' L='2*l' AS='15*l*l' AD='123*l*l' PS='17*l' PD='50*l' M=1
M20 12 C 13 Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M26 QB ClB 14 Gnd NMOS W='22*l' L='2*l' AS='22*l*l' AD='87.4054*l*l' PS='24*l' PD='34.4865*l' M=1
M24 12 CB QB Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='59.5946*l*l' PS='21*l' PD='23.5135*l' M=1
M29 Q 12 Gnd Gnd NMOS W='22*l' L='2*l' AS='185*l*l' AD='66*l*l' PS='64*l' PD='28*l' M=1
M27 14 Q Gnd Gnd NMOS W='22*l' L='2*l' AS='66*l*l' AD='22*l*l' PS='28*l' PD='24*l' M=1
M2 CB Clk Gnd Gnd NMOS W='6*l' L='2*l' AS='43.7778*l*l' AD='42*l*l' PS='18.2222*l' PD='26*l' M=1
M4 C CB Gnd Gnd NMOS W='6*l' L='2*l' AS='43.7778*l*l' AD='36*l*l' PS='18.2222*l' PD='24*l' M=1
M13 8 ClB Gnd Gnd NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M17 10 4 Gnd Gnd NMOS W='15*l' L='2*l' AS='72*l*l' AD='45*l*l' PS='42*l' PD='21*l' M=1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Jul 23, 1998  18:51:02
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module DFFC / page Page0 
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

.SUBCKT INV A Out Gnd Vdd
MN_4_1 Out A Gnd Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Jul 23, 1998  18:51:34
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module INV / page Page0 
MP_4_1 Out A Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
.ENDS

.SUBCKT Mux2 A B Out Sel Gnd Vdd
M2 G Sel Gnd Gnd NMOS W='21*l' L='2*l' AS='63*l*l' AD='106*l*l' PS='27*l' PD='54*l' M=1
M7 3 A 4 Gnd NMOS W='21*l' L='2*l' AS='63*l*l' AD='21*l*l' PS='27*l' PD='23*l' M=1
M8 4 Sel Gnd Gnd NMOS W='21*l' L='2*l' AS='63*l*l' AD='21*l*l' PS='27*l' PD='23*l' M=1
M9 3 B 6 Gnd NMOS W='21*l' L='2*l' AS='21*l*l' AD='63*l*l' PS='23*l' PD='27*l' M=1
M10 6 G Gnd Gnd NMOS W='21*l' L='2*l' AS='21*l*l' AD='94.7143*l*l' PS='23*l' PD='37.7143*l' M=1
M12 Out 3 Gnd Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='126.286*l*l' PS='68*l' PD='50.2857*l' M=1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Jul 23, 1998  18:51:58
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module Mux2 / page Page0 
M1 G Sel Vdd Vdd PMOS W='21*l' L='2*l' AS='63*l*l' AD='114*l*l' PS='27*l' PD='54*l' M=1
M3 2 G Vdd Vdd PMOS W='21*l' L='2*l' AS='21*l*l' AD='63*l*l' PS='23*l' PD='27*l' M=1
M4 3 A 2 Vdd PMOS W='21*l' L='2*l' AS='63*l*l' AD='21*l*l' PS='27*l' PD='23*l' M=1
M5 5 Sel Vdd Vdd PMOS W='21*l' L='2*l' AS='102.857*l*l' AD='21*l*l' PS='37.7143*l' PD='23*l' M=1
M6 3 B 5 Vdd PMOS W='21*l' L='2*l' AS='21*l*l' AD='63*l*l' PS='23*l' PD='27*l' M=1
M11 Out 3 Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='137.143*l*l' PS='68*l' PD='50.2857*l' M=1
.ENDS

.SUBCKT NAND2C A B Out1 Out2 Gnd Vdd
M3 Out1 A 1 Gnd NMOS W='28*l' L='2*l' AS='28*l*l' AD='148*l*l' PS='30*l' PD='68*l' M=1
M4 1 B Gnd Gnd NMOS W='28*l' L='2*l' AS='122*l*l' AD='28*l*l' PS='47*l' PD='30*l' M=1
M6 Out2 Out1 Gnd Gnd NMOS W='28*l' L='2*l' AS='148*l*l' AD='122*l*l' PS='68*l' PD='47*l' M=1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Jul 23, 1998  18:52:18
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module NAND2C / page Page0 
M1 Out1 A Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
M2 Out1 B Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='84*l*l' PS='34*l' PD='34*l' M=1
M5 Out2 Out1 Vdd Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
.ENDS

.SUBCKT BG4 CLK CLR LD0 LDR Q0 Q3 RL S0 S1 SFT SIL SIR Y Gnd Vdd
XDFFC_1 CLR CLK N104 N109 N11 Gnd Vdd DFFC
XDFFC_2 CLR CLK N95 N93 N9 Gnd Vdd DFFC
XDFFC_3 CLR CLK N86 N113 N8 Gnd Vdd DFFC
XDFFC_4 CLR CLK N77 N75 N7 Gnd Vdd DFFC
XDFFC_5 CLR CLK N68 Q0 N5 Gnd Vdd DFFC
XDFFC_6 CLR CLK N63 Q1 N4 Gnd Vdd DFFC
XDFFC_7 CLR CLK N43 Q2 N3 Gnd Vdd DFFC
XDFFC_8 CLR CLK N53 Q3 N1 Gnd Vdd DFFC
XINV_1 LD0 N49 Gnd Vdd INV
XMux2_1 N118 N108 Y S1 Gnd Vdd Mux2
XMux2_2 N75 N113 N118 S0 Gnd Vdd Mux2
XMux2_3 N93 N109 N108 S0 Gnd Vdd Mux2
XMux2_4 Q0 N109 N104 LDR Gnd Vdd Mux2
XMux2_5 Q1 N93 N95 LDR Gnd Vdd Mux2
XMux2_6 Q2 N113 N86 LDR Gnd Vdd Mux2
XMux2_7 Q3 N75 N77 LDR Gnd Vdd Mux2
XMux2_8 N2 Q3 N30 SFT Gnd Vdd Mux2
XMux2_9 N6 Q2 N26 SFT Gnd Vdd Mux2
XMux2_10 N10 Q1 N42 SFT Gnd Vdd Mux2
XMux2_11 N14 Q0 N38 SFT Gnd Vdd Mux2
XMux2_12 Q1 SIL N14 RL Gnd Vdd Mux2
XMux2_13 Q2 Q0 N10 RL Gnd Vdd Mux2
XMux2_14 Q3 Q1 N6 RL Gnd Vdd Mux2
XMux2_15 SIR Q2 N2 RL Gnd Vdd Mux2
XNAND2C_1 N30 N49 N16 N53 Gnd Vdd NAND2C
XNAND2C_2 N26 N49 N15 N43 Gnd Vdd NAND2C
XNAND2C_3 N42 N49 N13 N63 Gnd Vdd NAND2C
XNAND2C_4 N38 N49 N12 N68 Gnd Vdd NAND2C
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 5, 1997  16:25:55
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module BG4 / page Page0
* Page Size: A
.ENDS

.SUBCKT Buf1 A Out Gnd Vdd
M2 1 A Gnd Gnd NMOS W='18*l' L='2*l' AS='108*l*l' AD='55.5652*l*l' PS='48*l' PD='26.6087*l' M=1
M4 Out 1 Gnd Gnd NMOS W='28*l' L='2*l' AS='86.4348*l*l' AD='148*l*l' PS='41.3913*l' PD='68*l' M=1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Jul 23, 1998  18:50:39
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module Buf1 / page Page0 
M1 1 A Vdd Vdd PMOS W='18*l' L='2*l' AS='108*l*l' AD='55.5652*l*l' PS='48*l' PD='26.6087*l' M=1
M3 Out 1 Vdd Vdd PMOS W='28*l' L='2*l' AS='86.4348*l*l' AD='148*l*l' PS='41.3913*l' PD='68*l' M=1
.ENDS

.SUBCKT Buf2 A Out Gnd Vdd
XBuf1_1 A N1 Gnd Vdd Buf1
XBuf1_2 N1 Out Gnd Vdd Buf1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 7, 1997  15:53:02
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module Buf2 / page Page0 
.ENDS

.SUBCKT NOR2 A B Out Gnd Vdd
M4 Out B Gnd Gnd NMOS W='28*l' L='2*l' AS='144*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M3 Out A Gnd Gnd NMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Jul 23, 1998  18:52:40
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module NOR2 / page Page0 
M2 Out B 1 Vdd PMOS W='28*l' L='2*l' AS='148*l*l' AD='84*l*l' PS='68*l' PD='34*l' M=1
M1 1 A Vdd Vdd PMOS W='28*l' L='2*l' AS='84*l*l' AD='144*l*l' PS='34*l' PD='68*l' M=1
.ENDS

.SUBCKT BG64 CLK CLR LDREG LDZERO ROL SC0 SC1 SHIFT SIN Y0 Y1 Y2 Y3 Y4 Y5 Y6 Y7
+ Y8 Y9 Y10 Y11 Y12 Y13 Y14 Y15 Gnd Vdd
XBG4_1 CLK CLR LD01 LDR1 N255 N234 RL1 S01 S11 SFT1 N55 N238 Y0 Gnd Vdd BG4
XBG4_2 CLK CLR LD01 LDR1 N238 N237 RL1 S01 S11 SFT1 N234 N233 Y1 Gnd Vdd BG4
XBG4_3 CLK CLR LD01 LDR1 N233 N224 RL1 S01 S11 SFT1 N237 N220 Y2 Gnd Vdd BG4
XBG4_4 CLK CLR LD01 LDR1 N220 N211 RL1 S01 S11 SFT1 N224 N207 Y3 Gnd Vdd BG4
XBG4_5 CLK CLR LD02 LDR2 N207 N198 RL2 S02 S12 SFT2 N211 N194 Y4 Gnd Vdd BG4
XBG4_6 CLK CLR LD02 LDR2 N194 N185 RL2 S02 S12 SFT2 N198 N181 Y5 Gnd Vdd BG4
XBG4_7 CLK CLR LD02 LDR2 N181 N156 RL2 S02 S12 SFT2 N185 N168 Y6 Gnd Vdd BG4
XBG4_9 CLK CLR LD02 LDR2 N168 N159 RL2 S02 S12 SFT2 N156 N155 Y7 Gnd Vdd BG4
XBG4_10 CLK CLR LD03 LDR3 N155 N146 RL3 S03 S13 SFT3 N159 N142 Y8 Gnd Vdd BG4
XBG4_11 CLK CLR LD03 LDR3 N142 N117 RL3 S03 S13 SFT3 N146 N121 Y9 Gnd Vdd BG4
XBG4_12 CLK CLR LD03 LDR3 N121 N120 RL3 S03 S13 SFT3 N117 N116 Y10 Gnd Vdd BG4
XBG4_13 CLK CLR LD03 LDR3 N116 N107 RL3 S03 S13 SFT3 N120 N103 Y11 Gnd Vdd BG4
XBG4_14 CLK CLR LD04 LDR4 N103 N78 RL4 S04 S14 SFT4 N107 N90 Y12 Gnd Vdd BG4
XBG4_15 CLK CLR LD04 LDR4 N90 N65 RL4 S04 S14 SFT4 N78 N77 Y13 Gnd Vdd BG4
XBG4_16 CLK CLR LD04 LDR4 N77 N52 RL4 S04 S14 SFT4 N65 N64 Y14 Gnd Vdd BG4
XBG4_17 CLK CLR LD04 LDR4 N64 N55 RL4 S04 S14 SFT4 N52 SIN Y15 Gnd Vdd BG4
XBuf1_1 ROL RL1 Gnd Vdd Buf2
XBuf1_2 ROL RL2 Gnd Vdd Buf2
XBuf1_3 ROL RL3 Gnd Vdd Buf2
XBuf1_4 ROL RL4 Gnd Vdd Buf2
XBuf1_5 LDZERO LD01 Gnd Vdd Buf2
XBuf1_6 LDZERO LD02 Gnd Vdd Buf2
XBuf1_7 LDZERO LD03 Gnd Vdd Buf2
XBuf1_8 LDZERO LD04 Gnd Vdd Buf2
XBuf1_9 LDREG LDR1 Gnd Vdd Buf2
XBuf1_10 LDREG LDR2 Gnd Vdd Buf2
XBuf1_11 LDREG LDR3 Gnd Vdd Buf2
XBuf1_12 LDREG LDR4 Gnd Vdd Buf2
XBuf1_13 SC0 S01 Gnd Vdd Buf2
XBuf1_14 SC0 S02 Gnd Vdd Buf2
XBuf1_15 SC0 S03 Gnd Vdd Buf2
XBuf1_16 SC0 S04 Gnd Vdd Buf2
XBuf1_17 SC1 S11 Gnd Vdd Buf2
XBuf1_18 SC1 S12 Gnd Vdd Buf2
XBuf1_19 SC1 S13 Gnd Vdd Buf2
XBuf1_20 SC1 S14 Gnd Vdd Buf2
XBuf2_1 SIN SIN Gnd Vdd Buf2
XINV_1 N9 SFT1 Gnd Vdd INV
XINV_2 N9 SFT2 Gnd Vdd INV
XINV_3 N9 SFT3 Gnd Vdd INV
XINV_4 N9 SFT4 Gnd Vdd INV
XNOR2_1 SHIFT LDZERO N9 Gnd Vdd NOR2
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 7, 1997  16:06:38
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module BG64 / page Page0
* Page Size: A
.ENDS

.SUBCKT BARGRAPH CLK CLR GREEN L0 L1 L2 L3 L4 L5 L6 L7 L8 L9 L10 L11 L12 L13
+ L14 L15 L16 L17 L18 L19 L20 L21 L22 L23 L24 L25 L26 L27 L28 L29 L30 L31 LDREG
+ LDZERO RED ROL SC0 SC1 SHIFT Gnd Vdd
XBG64_1 CLK CLR LDREG LDZERO ROL SC0 SC1 SHIFT GREEN L1 L3 L5 L7 L9 L11 L13 L15
+ L17 L19 L21 L23 L25 L27 L29 L31 Gnd Vdd BG64
XBG64_2 CLK CLR LDREG LDZERO ROL SC0 SC1 SHIFT RED L0 L2 L4 L6 L8 L10 L12 L14
+ L16 L18 L20 L22 L24 L26 L28 L30 Gnd Vdd BG64
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Aug 3, 1998  15:51:19
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module BARGRAPH / page Page0
* Page Size: A
.ENDS

.SUBCKT PadGnd PAD Gnd
C1 Gnd Gnd 10pF
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 1998  15:25:48
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadGnd / page Page0 
.ENDS

.SUBCKT Pad_Bond SIGNAL Gnd
C1 SIGNAL Gnd 0.25pF
.ENDS

.SUBCKT PadBidirHE_2.0u DI DIB DIUB DO OE PAD Gnd Vdd
M13 DI DIB Gnd Gnd NMOS W=13u L=2u AS=66p AD=66p PS=24u PD=24u M=4
M11 DIB DIUB Gnd Gnd NMOS W=11u L=2u AS=66p AD=66p PS=24u PD=24u M=2
M9 PAD N2 Gnd Gnd NMOS W=14.8u L=2u AS=66p AD=66p PS=24u PD=24u M=10
M7 N2 OEB Gnd Gnd NMOS W=12u L=2u AS=66p AD=66p PS=24u PD=24u M=1
M6 N1 OE N2 Gnd NMOS W=12u L=2u AS=66p AD=66p PS=24u PD=24u M=1
M4 N2 DO Gnd Gnd NMOS W=12u L=2u AS=66p AD=66p PS=24u PD=24u M=1
M1 OEB OE Gnd Gnd NMOS W=12u L=2u AS=66p AD=66p PS=24u PD=24u M=1
XPad_Bond_1 PAD Gnd Pad_Bond
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 2001  23:56:27
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadBidirHE_2.0u / page Page0 
M12 DI DIB Vdd Vdd PMOS W=13.75u L=2u AS=66p AD=66p PS=24u PD=24u M=4
M10 DIB DIUB Vdd Vdd PMOS W=13u L=2u AS=66p AD=66p PS=24u PD=24u M=2
M8 PAD N1 Vdd Vdd PMOS W=16u L=2u AS=66p AD=66p PS=24u PD=24u M=10
M5 N1 OE Vdd Vdd PMOS W=13u L=2u AS=66p AD=66p PS=24u PD=24u M=1
M3 N2 OEB N1 Vdd PMOS W=13u L=2u AS=66p AD=66p PS=24u PD=24u M=2
M2 N1 DO Vdd Vdd PMOS W=13u L=2u AS=66p AD=66p PS=24u PD=24u M=2
M0 OEB OE Vdd Vdd PMOS W=13u L=2u AS=66p AD=66p PS=24u PD=24u M=1
R1 PAD DIUB 85 TC1=0.0 TC2=0.0
.ENDS

.SUBCKT PadInC DataIn DataInB DataInUnBuf PAD Gnd Vdd
XPadBidirHE_N20_1 DataIn DataInB DataInUnBuf Gnd Gnd PAD Gnd Vdd
+ PadBidirHE_2.0u
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 1998  15:25:07
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadInC / page Page0 
.ENDS

.SUBCKT PadInC_global_left DataIn DataInB DataInUnBuf PAD Gnd Vdd
XPadBidirHE_N20_1 DataIn DataInB DataInUnBuf Gnd Gnd PAD Gnd Vdd
+ PadBidirHE_2.0u
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 1998  15:25:22
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadInC_global_left / page Page0 
.ENDS

.SUBCKT PadInC_global_right DataIn DataInB DataInUnBuf PAD Gnd Vdd
XPadBidirHE_N20_1 DataIn DataInB DataInUnBuf Gnd Gnd PAD Gnd Vdd
+ PadBidirHE_2.0u
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 1998  15:25:35
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadInC_global_right / page Page0 
.ENDS

.SUBCKT PadOut DataOut PAD Gnd Vdd
XPadBidirHE_N20_1 N4 N6 N5 DataOut Vdd PAD Gnd Vdd PadBidirHE_2.0u
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 1998  15:26:16
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadOut / page Page0 
.ENDS

.SUBCKT PadVdd PAD Gnd Vdd
C1 Vdd Gnd 0.25pF
* Page Size:  5x7
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 2001  23:51:58
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module PadVdd / page Page0 
.ENDS

* Main circuit: bargraph_top
.include ext_devc.md
.param l=1u
XBARGRAPH_1 N15 N17 N7 N14 N13 N39 N12 N11 N9 N40 N10 N41 N42 N38 N37 N36 N35
+ N34 N33 N32 N31 N30 N29 N28 N27 N26 N25 N24 N23 N22 N21 N20 N19 N18 N16 N2 N1 N6
+ N8 N3 N4 N5 Gnd Vdd BARGRAPH
XPadGnd_1 PAD_R8 Gnd PadGnd
XPadInC_1 N8 N62 N61 PAD_L1 Gnd Vdd PadInC
XPadInC_2 N7 N60 N59 PAD_L2 Gnd Vdd PadInC
XPadInC_3 N6 N58 N57 PAD_L3 Gnd Vdd PadInC
XPadInC_4 N5 N56 N55 PAD_L4 Gnd Vdd PadInC
XPadInC_5 N1 N54 N53 PAD_L5 Gnd Vdd PadInC
XPadInC_6 N2 N52 N51 PAD_L7 Gnd Vdd PadInC
XPadInC_7 N4 N50 N49 PAD_L10 Gnd Vdd PadInC
XPadInC_8 N3 N48 N47 PAD_L9 Gnd Vdd PadInC
XPadInC_global_left_1 N15 N46 N45 PAD_L8 Gnd Vdd PadInC_global_left
XPadInC_global_right_1 N17 N44 N43 PAD_R4 Gnd Vdd PadInC_global_right
XPadOut_1 N13 PAD_T10 Gnd Vdd PadOut
XPadOut_2 N14 PAD_T11 Gnd Vdd PadOut
XPadOut_3 N39 PAD_T9 Gnd Vdd PadOut
XPadOut_4 N12 PAD_T8 Gnd Vdd PadOut
XPadOut_5 N11 PAD_T7 Gnd Vdd PadOut
XPadOut_6 N9 PAD_T6 Gnd Vdd PadOut
XPadOut_7 N40 PAD_T5 Gnd Vdd PadOut
XPadOut_8 N10 PAD_T4 Gnd Vdd PadOut
XPadOut_9 N41 PAD_T3 Gnd Vdd PadOut
XPadOut_10 N42 PAD_T2 Gnd Vdd PadOut
XPadOut_11 N38 PAD_T1 Gnd Vdd PadOut
XPadOut_12 N37 PAD_R12 Gnd Vdd PadOut
XPadOut_13 N36 PAD_R11 Gnd Vdd PadOut
XPadOut_14 N35 PAD_R10 Gnd Vdd PadOut
XPadOut_15 N34 PAD_R9 Gnd Vdd PadOut
XPadOut_16 N33 PAD_R7 Gnd Vdd PadOut
XPadOut_17 N32 PAD_R6 Gnd Vdd PadOut
XPadOut_18 N31 PAD_R5 Gnd Vdd PadOut
XPadOut_19 N30 PAD_R1 Gnd Vdd PadOut
XPadOut_20 N29 PAD_R2 Gnd Vdd PadOut
XPadOut_21 N28 PAD_R3 Gnd Vdd PadOut
XPadOut_22 N16 PAD_B1 Gnd Vdd PadOut
XPadOut_23 N18 PAD_B2 Gnd Vdd PadOut
XPadOut_24 N19 PAD_B3 Gnd Vdd PadOut
XPadOut_25 N20 PAD_B4 Gnd Vdd PadOut
XPadOut_26 N21 PAD_B5 Gnd Vdd PadOut
XPadOut_27 N22 PAD_B6 Gnd Vdd PadOut
XPadOut_28 N23 PAD_B7 Gnd Vdd PadOut
XPadOut_29 N24 PAD_B8 Gnd Vdd PadOut
XPadOut_30 N25 PAD_B9 Gnd Vdd PadOut
XPadOut_31 N26 PAD_B10 Gnd Vdd PadOut
XPadOut_32 N27 PAD_B11 Gnd Vdd PadOut
XPadVdd_1 PAD_L6 Gnd Vdd PadVdd
* S-Edit  Bargraph Shift Register Example
* Designed by: Consulting & Engineering Services  Nov 20, 2001  22:59:43
* Schematic generated by S-Edit
* from file C:\Tanner\LEdit84\Samples\SPR\example2\bargraph_tpr / module bargraph_top / page Page0
* Page Size: A
* End of main circuit: bargraph_top
.END