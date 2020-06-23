DSCH 2.6c
VERSION 1/6/2003 7:35:38 AM
BB(55,-20,115,60)
SYM  #vss
BB(105,52,115,60)
TITLE 109 57  #vss
MODEL 0
PROP                                                                                                                                                                                                            
REC(105,50,0,0,b)
VIS 0
PIN(110,50,0.000,0.000)vss
LIG(110,50,110,55)
LIG(105,55,115,55)
LIG(105,58,107,55)
LIG(107,58,109,55)
LIG(109,58,111,55)
LIG(111,58,113,55)
FSYM
SYM  #nmos
BB(90,30,110,50)
TITLE 105 45  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                       
REC(91,35,19,15,r)
VIS 2
PIN(110,50,0.000,0.000)s
PIN(90,40,0.000,0.000)g
PIN(110,30,0.030,0.140)d
LIG(100,40,90,40)
LIG(100,46,100,34)
LIG(102,46,102,34)
LIG(110,34,102,34)
LIG(110,30,110,34)
LIG(110,46,102,46)
LIG(110,50,110,46)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(90,10,110,30)
TITLE 105 25  #pmos
MODEL 902
PROP   3.0u 0.12u                                                                                                                                                                                                       
REC(91,15,19,15,r)
VIS 2
PIN(110,10,0.000,0.000)s
PIN(90,20,0.000,0.000)g
PIN(110,30,0.030,0.140)d
LIG(90,20,96,20)
LIG(98,20,98,20)
LIG(100,26,100,14)
LIG(102,26,102,14)
LIG(110,14,102,14)
LIG(110,10,110,14)
LIG(110,26,102,26)
LIG(110,30,110,26)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(90,-10,110,10)
TITLE 105 5  #pmos
MODEL 902
PROP   3.0u 0.12u                                                                                                                                                                                                       
REC(91,-5,19,15,r)
VIS 2
PIN(110,-10,0.000,0.000)s
PIN(90,0,0.000,0.000)g
PIN(110,10,0.030,0.070)d
LIG(90,0,96,0)
LIG(98,0,98,0)
LIG(100,6,100,-6)
LIG(102,6,102,-6)
LIG(110,-6,102,-6)
LIG(110,-10,110,-6)
LIG(110,6,102,6)
LIG(110,10,110,6)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(55,30,75,50)
TITLE 70 45  #nmos
MODEL 901
PROP   1.0u 0.12u                                                                                                                                                                                                       
REC(56,35,19,15,r)
VIS 2
PIN(75,50,0.000,0.000)s
PIN(55,40,0.000,0.000)g
PIN(75,30,0.030,0.140)d
LIG(65,40,55,40)
LIG(65,46,65,34)
LIG(67,46,67,34)
LIG(75,34,67,34)
LIG(75,30,75,34)
LIG(75,46,67,46)
LIG(75,50,75,46)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(105,-20,115,-10)
TITLE 108 -14  #vdd
MODEL 1
PROP                                                                                                                                                                                                           
REC(0,0,0,0,)
VIS 0
PIN(110,-10,0.000,0.000)vdd
LIG(110,-10,110,-15)
LIG(110,-15,105,-15)
LIG(105,-15,110,-20)
LIG(110,-20,115,-15)
LIG(115,-15,110,-15)
FSYM
LIG(90,20,90,40)
LIG(55,0,55,40)
LIG(75,30,110,30)
LIG(75,50,110,50)
LIG(90,0,55,0)
FFIG C:\Documents and Settings\Bear\Desktop\dsch2\example.sch
