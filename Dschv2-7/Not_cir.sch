DSCH 2.6c
VERSION 1/6/2003 10:34:36 AM
BB(1,10,64,70)
SYM  #light1
BB(58,25,64,39)
TITLE 60 39  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(59,26,4,4,r)
VIS 1
PIN(60,40,0.000,0.000)out1
LIG(63,31,63,26)
LIG(63,26,62,25)
LIG(59,26,59,31)
LIG(62,36,62,33)
LIG(61,36,64,36)
LIG(61,38,63,36)
LIG(62,38,64,36)
LIG(58,33,64,33)
LIG(60,33,60,40)
LIG(58,31,58,33)
LIG(64,31,58,31)
LIG(64,33,64,31)
LIG(60,25,59,26)
LIG(62,25,60,25)
FSYM
SYM  #button1
BB(1,46,10,54)
TITLE 5 50  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(2,47,6,6,r)
VIS 1
PIN(10,50,0.000,0.000)in1
LIG(9,50,10,50)
LIG(1,54,1,46)
LIG(9,54,1,54)
LIG(9,46,9,54)
LIG(1,46,9,46)
LIG(2,53,2,47)
LIG(8,53,2,53)
LIG(8,47,8,53)
LIG(2,47,8,47)
FSYM
SYM  #nmos
BB(20,40,40,60)
TITLE 35 55  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                       
REC(21,45,19,15,r)
VIS 2
PIN(40,60,0.000,0.000)s
PIN(20,50,0.000,0.000)g
PIN(40,40,0.030,0.070)d
LIG(30,50,20,50)
LIG(30,56,30,44)
LIG(32,56,32,44)
LIG(40,44,32,44)
LIG(40,40,40,44)
LIG(40,56,32,56)
LIG(40,60,40,56)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(20,20,40,40)
TITLE 35 35  #pmos
MODEL 902
PROP   2.0u 0.12u                                                                                                                                                                                                       
REC(21,25,19,15,r)
VIS 2
PIN(40,20,0.000,0.000)s
PIN(20,30,0.000,0.000)g
PIN(40,40,0.030,0.070)d
LIG(20,30,26,30)
LIG(28,30,28,30)
LIG(30,36,30,24)
LIG(32,36,32,24)
LIG(40,24,32,24)
LIG(40,20,40,24)
LIG(40,36,32,36)
LIG(40,40,40,36)
VLG  pmos pmos(drain,source,gate);
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
SYM  #vdd
BB(35,10,45,20)
TITLE 38 16  #vdd
MODEL 1
PROP                                                                                                                                                                                                           
REC(0,0,0,0,)
VIS 0
PIN(40,20,0.000,0.000)vdd
LIG(40,20,40,15)
LIG(40,15,35,15)
LIG(35,15,40,10)
LIG(40,10,45,15)
LIG(45,15,40,15)
FSYM
LIG(20,30,20,50)
LIG(10,50,20,50)
LIG(40,40,60,40)
FFIG C:\Documents and Settings\Bear\Desktop\BOOK Ex\Dsch\NOT_CIR.sch
