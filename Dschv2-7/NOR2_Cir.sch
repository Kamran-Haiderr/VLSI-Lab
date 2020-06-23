DSCH 2.6c
VERSION 1/6/2003 10:33:09 AM
BB(11,-10,114,70)
SYM  #nmos
BB(20,40,40,60)
TITLE 35 55  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                       
REC(21,45,19,15,r)
VIS 2
PIN(40,60,0.000,0.000)s
PIN(20,50,0.000,0.000)g
PIN(40,40,0.030,0.210)d
LIG(30,50,20,50)
LIG(30,56,30,44)
LIG(32,56,32,44)
LIG(40,44,32,44)
LIG(40,40,40,44)
LIG(40,56,32,56)
LIG(40,60,40,56)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(65,40,85,60)
TITLE 80 55  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                       
REC(66,45,19,15,r)
VIS 2
PIN(85,60,0.000,0.000)s
PIN(65,50,0.000,0.000)g
PIN(85,40,0.030,0.210)d
LIG(75,50,65,50)
LIG(75,56,75,44)
LIG(77,56,77,44)
LIG(85,44,77,44)
LIG(85,40,85,44)
LIG(85,56,77,56)
LIG(85,60,85,56)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(65,20,85,40)
TITLE 80 35  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                                                                                       
REC(66,25,19,15,r)
VIS 2
PIN(85,20,0.000,0.000)s
PIN(65,30,0.000,0.000)g
PIN(85,40,0.030,0.210)d
LIG(65,30,71,30)
LIG(73,30,73,30)
LIG(75,36,75,24)
LIG(77,36,77,24)
LIG(85,24,77,24)
LIG(85,20,85,24)
LIG(85,36,77,36)
LIG(85,40,85,36)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(65,0,85,20)
TITLE 80 15  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                                                                                       
REC(66,5,19,15,r)
VIS 2
PIN(85,0,0.000,0.000)s
PIN(65,10,0.000,0.000)g
PIN(85,20,0.030,0.070)d
LIG(65,10,71,10)
LIG(73,10,73,10)
LIG(75,16,75,4)
LIG(77,16,77,4)
LIG(85,4,77,4)
LIG(85,0,85,4)
LIG(85,16,77,16)
LIG(85,20,85,16)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(80,-10,90,0)
TITLE 83 -4  #vdd
MODEL 1
PROP                                                                                                                                                                                                           
REC(0,0,0,0,)
VIS 0
PIN(85,0,0.000,0.000)vdd
LIG(85,0,85,-5)
LIG(85,-5,80,-5)
LIG(80,-5,85,-10)
LIG(85,-10,90,-5)
LIG(90,-5,85,-5)
FSYM
SYM  #vss
BB(80,62,90,70)
TITLE 84 67  #vss
MODEL 0
PROP                                                                                                                                                                                                            
REC(80,60,0,0,b)
VIS 0
PIN(85,60,0.000,0.000)vss
LIG(85,60,85,65)
LIG(80,65,90,65)
LIG(80,68,82,65)
LIG(82,68,84,65)
LIG(84,68,86,65)
LIG(86,68,88,65)
FSYM
SYM  #vss
BB(35,62,45,70)
TITLE 39 67  #vss
MODEL 0
PROP                                                                                                                                                                                                            
REC(35,60,0,0,b)
VIS 0
PIN(40,60,0.000,0.000)vss
LIG(40,60,40,65)
LIG(35,65,45,65)
LIG(35,68,37,65)
LIG(37,68,39,65)
LIG(39,68,41,65)
LIG(41,68,43,65)
FSYM
SYM  #button1
BB(56,46,65,54)
TITLE 60 50  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(57,47,6,6,r)
VIS 1
PIN(65,50,0.000,0.000)in1
LIG(64,50,65,50)
LIG(56,54,56,46)
LIG(64,54,56,54)
LIG(64,46,64,54)
LIG(56,46,64,46)
LIG(57,53,57,47)
LIG(63,53,57,53)
LIG(63,47,63,53)
LIG(57,47,63,47)
FSYM
SYM  #button2
BB(11,46,20,54)
TITLE 15 50  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(12,47,6,6,r)
VIS 1
PIN(20,50,0.000,0.000)in2
LIG(19,50,20,50)
LIG(11,54,11,46)
LIG(19,54,11,54)
LIG(19,46,19,54)
LIG(11,46,19,46)
LIG(12,53,12,47)
LIG(18,53,12,53)
LIG(18,47,18,53)
LIG(12,47,18,47)
FSYM
SYM  #light1
BB(108,25,114,39)
TITLE 110 39  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(109,26,4,4,r)
VIS 1
PIN(110,40,0.000,0.000)out1
LIG(113,31,113,26)
LIG(113,26,112,25)
LIG(109,26,109,31)
LIG(112,36,112,33)
LIG(111,36,114,36)
LIG(111,38,113,36)
LIG(112,38,114,36)
LIG(108,33,114,33)
LIG(110,33,110,40)
LIG(108,31,108,33)
LIG(114,31,108,31)
LIG(114,33,114,31)
LIG(110,25,109,26)
LIG(112,25,110,25)
FSYM
LIG(40,40,110,40)
LIG(65,30,65,50)
LIG(65,10,20,10)
LIG(20,10,20,50)
FFIG C:\Documents and Settings\Bear\Desktop\BOOK Ex\Dsch\NAND2_Cir.sch
