* SPICE netlist written by S-Edit Win32 8.10
* Written on Jul 31, 2003 at 17:34:00

.SUBCKT DFFC ClB Clk Data Q QB GROUND Vdd
M8 5 Data GROUND GROUND NMOS W='15*l' L='2*l' AS='15*l*l' AD='109.444*l*l' PS='17*l' PD='45.5556*l' M=1
M7 4 CB 5 GROUND NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M12 7 10 8 GROUND NMOS W='15*l' L='2*l' AS='15*l*l' AD='45*l*l' PS='17*l' PD='21*l' M=1
M11 4 C 7 GROUND NMOS W='15*l' L='2*l' AS='45*l*l' AD='45*l*l' PS='21*l' PD='21*l' M=1
M21 13 10 GROUND GROUND NMOS W='15*l' L='2*l' AS='15*l*l' AD='123*l*l' PS='17*l' PD='50*l' M=1
M20 12 C 13 GROUND NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M26 QB ClB 14 GROUND NMOS W='22*l' L='2*l' AS='22*l*l' AD='87.4054*l*l' PS='24*l' PD='34.4865*l' M=1
M24 12 CB QB GROUND NMOS W='15*l' L='2*l' AS='45*l*l' AD='59.5946*l*l' PS='21*l' PD='23.5135*l' M=1
M29 Q 12 GROUND GROUND NMOS W='22*l' L='2*l' AS='185*l*l' AD='36*l*l' PS='64*l' PD='28*l' M=1
M27 14 Q GROUND GROUND NMOS W='22*l' L='2*l' AS='36*l*l' AD='22*l*l' PS='28*l' PD='24*l' M=1
M2 CB Clk GROUND GROUND NMOS W='6*l' L='2*l' AS='43.7778*l*l' AD='42*l*l' PS='18.2222*l' PD='26*l' M=1
M4 C CB GROUND GROUND NMOS W='6*l' L='2*l' AS='43.7778*l*l' AD='36*l*l' PS='18.2222*l' PD='24*l' M=1
M13 8 ClB GROUND GROUND NMOS W='15*l' L='2*l' AS='45*l*l' AD='15*l*l' PS='21*l' PD='17*l' M=1
M17 10 4 GROUND GROUND NMOS W='15*l' L='2*l' AS='72*l*l' AD='45*l*l' PS='42*l' PD='21*l' M=1
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

.SUBCKT Inv A Out GROUND Vdd
M2 Out A GROUND GROUND NMOS W=10u L=2u AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
M1 Out A Vdd Vdd PMOS W=20u L=2u AS='148*l*l' AD='144*l*l' PS='68*l' PD='68*l' M=1
.ENDS

.SUBCKT XNOR2 A B Out GROUND Vdd
M3 1 A 2 GROUND NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M4 2 B GROUND GROUND NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M10B Out 1 4b GROUND NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M7 4b B GROUND GROUND NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M10 Out 1 4 GROUND NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M8 4 A GROUND GROUND NMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M1 1 A Vdd Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M2 1 B Vdd Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M5 3 B Vdd Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M6 Out A 3 Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M9 Out 1 Vdd Vdd PMOS W='6*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
.ENDS

.SUBCKT XOR A B Out GROUND Vdd
XInv_1 N5 Out GROUND Vdd Inv
XXNOR2_1 A B N5 GROUND Vdd XNOR2
.ENDS

* Main circuit: lfsr_eco
.param l=0.35u
XDFFC_1 Cl Clk N3 N2 N1 GROUND Vdd DFFC
XDFFC_2 Cl Clk N35 N3 N9 GROUND Vdd DFFC
XDFFC_3 Cl Clk N15 N14 N8 GROUND Vdd DFFC
XDFFC_4 Cl Clk N22 N21 N20 GROUND Vdd DFFC
XDFFC_5 Cl Clk N29 N44 N27 GROUND Vdd DFFC
XDFFC_6 Cl Clk N34 N29 N32 GROUND Vdd DFFC
XDFFC_7 Cl Clk N39 N35 N37 GROUND Vdd DFFC
XDFFC_8 Cl Clk N44 N39 N42 GROUND Vdd DFFC
M1 OUT N35 GROUND GROUND NMOS W=10u L=2u AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M2 OUT N35 Vdd Vdd PMOS W=20u L=2u AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
XXOR_1 N35 N2 N15 GROUND Vdd XOR
XXOR_2 N35 N14 N22 GROUND Vdd XOR
XXOR_3 N35 N21 N34 GROUND Vdd XOR
* End of main circuit: lfsr_eco
.END
