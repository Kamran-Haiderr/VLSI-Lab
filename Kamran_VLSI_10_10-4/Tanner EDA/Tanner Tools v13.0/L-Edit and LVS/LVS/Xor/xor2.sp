* SPICE netlist written by S-Edit

* Main circuit: XOR2
.MODEL NMOS
.MODEL PMOS
.param l=0.35u
M1 I1 A Gnd Gnd NMOS W='24*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M2 I1 B Gnd Gnd NMOS W='24*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M3 I1 A I2 Vdd PMOS W='22*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M4 I2 B Vdd Vdd PMOS W='22*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M5 I3 B Gnd Gnd NMOS W='24*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M6 Out A I3 Gnd NMOS W='24*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M7 Out I1 I5 Vdd PMOS W='22*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M8 Out I1 I4 Vdd PMOS W='22*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M9 I5 A Vdd Vdd PMOS W='22*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M10 I4 B Vdd Vdd PMOS W='22*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
M11 Out I1 Gnd Gnd NMOS W='19*l' L='2*l' AS='36*l*l' AD='36*l*l' PS='24*l' PD='24*l' M=1
* End of main circuit: XOR2
.END
