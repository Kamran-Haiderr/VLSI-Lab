DSCH 2.7a
VERSION 1/1/2000 12:55:41 AM
BB(21,-20,144,65)
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
SYM  #vss
BB(105,57,115,65)
TITLE 109 62  #vss
MODEL 0
PROP                                                                                                                                    
REC(105,55,0,0,b)
VIS 0
PIN(110,55,0.000,0.000)vss
LIG(110,55,110,60)
LIG(105,60,115,60)
LIG(105,63,107,60)
LIG(107,63,109,60)
LIG(109,63,111,60)
LIG(111,63,113,60)
FSYM
SYM  #pmos
BB(90,10,110,30)
TITLE 105 25  #pmos
MODEL 902
PROP   4.0u 0.25u                                                                                                                                
REC(91,15,19,15,r)
VIS 2
PIN(110,10,0.000,0.000)s
PIN(90,20,0.000,0.000)g
PIN(110,30,0.030,0.210)d
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
PROP   4.0u 0.25u                                                                                                                                
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
SYM  #light1
BB(138,10,144,24)
TITLE 140 24  #light
MODEL 49
PROP                                                                                                                                   
REC(139,11,4,4,r)
VIS 1
PIN(140,25,0.000,0.000)out1
LIG(143,16,143,11)
LIG(143,11,142,10)
LIG(139,11,139,16)
LIG(142,21,142,18)
LIG(141,21,144,21)
LIG(141,23,143,21)
LIG(142,23,144,21)
LIG(138,18,144,18)
LIG(140,18,140,25)
LIG(138,16,138,18)
LIG(144,16,138,16)
LIG(144,18,144,16)
LIG(140,10,139,11)
LIG(142,10,140,10)
FSYM
SYM  #nmos
BB(110,35,130,55)
TITLE 125 50  #nmos
MODEL 901
PROP   05u 0.25u                                                                                                                                
REC(111,40,19,15,r)
VIS 2
PIN(130,55,0.000,0.000)s
PIN(110,45,0.000,0.000)g
PIN(130,35,0.030,0.210)d
LIG(120,45,110,45)
LIG(120,51,120,39)
LIG(122,51,122,39)
LIG(130,39,122,39)
LIG(130,35,130,39)
LIG(130,51,122,51)
LIG(130,55,130,51)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(75,35,95,55)
TITLE 90 50  #nmos
MODEL 901
PROP   05u 0.25u                                                                                                                                
REC(76,40,19,15,r)
VIS 2
PIN(95,55,0.000,0.000)s
PIN(75,45,0.000,0.000)g
PIN(95,35,0.030,0.210)d
LIG(85,45,75,45)
LIG(85,51,85,39)
LIG(87,51,87,39)
LIG(95,39,87,39)
LIG(95,35,95,39)
LIG(95,51,87,51)
LIG(95,55,95,51)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #button1
BB(21,-4,30,4)
TITLE 25 0  #button
MODEL 59
PROP                                                                                                                                   
REC(22,-3,6,6,r)
VIS 1
PIN(30,0,0.000,0.000)in1
LIG(29,0,30,0)
LIG(21,4,21,-4)
LIG(29,4,21,4)
LIG(29,-4,29,4)
LIG(21,-4,29,-4)
LIG(22,3,22,-3)
LIG(28,3,22,3)
LIG(28,-3,28,3)
LIG(22,-3,28,-3)
FSYM
SYM  #button2
BB(21,16,30,24)
TITLE 25 20  #button
MODEL 59
PROP                                                                                                                                   
REC(22,17,6,6,r)
VIS 1
PIN(30,20,0.000,0.000)in2
LIG(29,20,30,20)
LIG(21,24,21,16)
LIG(29,24,21,24)
LIG(29,16,29,24)
LIG(21,16,29,16)
LIG(22,23,22,17)
LIG(28,23,22,23)
LIG(28,17,28,23)
LIG(22,17,28,17)
FSYM
CNC(110 35)
CNC(60 20)
CNC(65 0)
LIG(30,0,65,0)
LIG(95,35,110,35)
LIG(95,55,130,55)
LIG(110,30,110,35)
LIG(110,35,140,35)
LIG(75,45,60,45)
LIG(60,20,60,45)
LIG(30,20,60,20)
LIG(140,35,140,25)
LIG(65,0,90,0)
LIG(90,20,60,20)
LIG(110,45,100,45)
LIG(100,45,100,30)
LIG(100,30,65,30)
LIG(65,30,65,0)
FFIG J:\Electronics II\Chip Designing (E II)\Dschv2-7\norgate.sch
