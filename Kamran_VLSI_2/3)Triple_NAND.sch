DSCH 2.7a
VERSION 2/6/2019 9:42:23 AM
BB(11,-25,164,115)
SYM  #nmos
BB(50,25,70,45)
TITLE 65 30  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(51,30,19,15,r)
VIS 2
PIN(70,45,0.000,0.000)s
PIN(50,35,0.000,0.000)g
PIN(70,25,0.030,0.280)d
LIG(60,35,50,35)
LIG(60,41,60,29)
LIG(62,41,62,29)
LIG(70,29,62,29)
LIG(70,25,70,29)
LIG(70,41,62,41)
LIG(70,45,70,41)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(50,55,70,75)
TITLE 65 60  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(51,60,19,15,r)
VIS 2
PIN(70,75,0.000,0.000)s
PIN(50,65,0.000,0.000)g
PIN(70,55,0.030,0.070)d
LIG(60,65,50,65)
LIG(60,71,60,59)
LIG(62,71,62,59)
LIG(70,59,62,59)
LIG(70,55,70,59)
LIG(70,71,62,71)
LIG(70,75,70,71)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(50,85,70,105)
TITLE 65 90  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(51,90,19,15,r)
VIS 2
PIN(70,105,0.000,0.000)s
PIN(50,95,0.000,0.000)g
PIN(70,85,0.030,0.070)d
LIG(60,95,50,95)
LIG(60,101,60,89)
LIG(62,101,62,89)
LIG(70,89,62,89)
LIG(70,85,70,89)
LIG(70,101,62,101)
LIG(70,105,70,101)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(50,-5,70,15)
TITLE 65 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(51,0,19,15,r)
VIS 2
PIN(70,-5,0.000,0.000)s
PIN(50,5,0.000,0.000)g
PIN(70,15,0.030,0.280)d
LIG(50,5,56,5)
LIG(58,5,58,5)
LIG(60,11,60,-1)
LIG(62,11,62,-1)
LIG(70,-1,62,-1)
LIG(70,-5,70,-1)
LIG(70,11,62,11)
LIG(70,15,70,11)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(85,-5,105,15)
TITLE 100 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(86,0,19,15,r)
VIS 2
PIN(105,-5,0.000,0.000)s
PIN(85,5,0.000,0.000)g
PIN(105,15,0.030,0.280)d
LIG(85,5,91,5)
LIG(93,5,93,5)
LIG(95,11,95,-1)
LIG(97,11,97,-1)
LIG(105,-1,97,-1)
LIG(105,-5,105,-1)
LIG(105,11,97,11)
LIG(105,15,105,11)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(120,-5,140,15)
TITLE 135 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(121,0,19,15,r)
VIS 2
PIN(140,-5,0.000,0.000)s
PIN(120,5,0.000,0.000)g
PIN(140,15,0.030,0.280)d
LIG(120,5,126,5)
LIG(128,5,128,5)
LIG(130,11,130,-1)
LIG(132,11,132,-1)
LIG(140,-1,132,-1)
LIG(140,-5,140,-1)
LIG(140,11,132,11)
LIG(140,15,140,11)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #light1
BB(158,5,164,19)
TITLE 160 19  #light
MODEL 49
PROP                                                                                                                                   
REC(159,6,4,4,g)
VIS 1
PIN(160,20,0.000,0.000)tripleNAND
LIG(163,11,163,6)
LIG(163,6,162,5)
LIG(159,6,159,11)
LIG(162,16,162,13)
LIG(161,16,164,16)
LIG(161,18,163,16)
LIG(162,18,164,16)
LIG(158,13,164,13)
LIG(160,13,160,20)
LIG(158,11,158,13)
LIG(164,11,158,11)
LIG(164,13,164,11)
LIG(160,5,159,6)
LIG(162,5,160,5)
FSYM
SYM  #vdd
BB(65,-25,75,-15)
TITLE 68 -19  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(70,-15,0.000,0.000)vdd
LIG(70,-15,70,-20)
LIG(70,-20,65,-20)
LIG(65,-20,70,-25)
LIG(70,-25,75,-20)
LIG(75,-20,70,-20)
FSYM
SYM  #vss
BB(65,107,75,115)
TITLE 69 112  #vss
MODEL 0
PROP                                                                                                                                    
REC(65,105,0,0,b)
VIS 0
PIN(70,105,0.000,0.000)vss
LIG(70,105,70,110)
LIG(65,110,75,110)
LIG(65,113,67,110)
LIG(67,113,69,110)
LIG(69,113,71,110)
LIG(71,113,73,110)
FSYM
SYM  #button1
BB(11,6,20,14)
TITLE 15 10  #button
MODEL 59
PROP                                                                                                                                   
REC(12,7,6,6,r)
VIS 1
PIN(20,10,0.000,0.000)A
LIG(19,10,20,10)
LIG(11,14,11,6)
LIG(19,14,11,14)
LIG(19,6,19,14)
LIG(11,6,19,6)
LIG(12,13,12,7)
LIG(18,13,12,13)
LIG(18,7,18,13)
LIG(12,7,18,7)
FSYM
SYM  #button2
BB(11,41,20,49)
TITLE 15 45  #button
MODEL 59
PROP                                                                                                                                   
REC(12,42,6,6,r)
VIS 1
PIN(20,45,0.000,0.000)B
LIG(19,45,20,45)
LIG(11,49,11,41)
LIG(19,49,11,49)
LIG(19,41,19,49)
LIG(11,41,19,41)
LIG(12,48,12,42)
LIG(18,48,12,48)
LIG(18,42,18,48)
LIG(12,42,18,42)
FSYM
SYM  #button3
BB(11,66,20,74)
TITLE 15 70  #button
MODEL 59
PROP                                                                                                                                   
REC(12,67,6,6,r)
VIS 1
PIN(20,70,0.000,0.000)C
LIG(19,70,20,70)
LIG(11,74,11,66)
LIG(19,74,11,74)
LIG(19,66,19,74)
LIG(11,66,19,66)
LIG(12,73,12,67)
LIG(18,73,12,73)
LIG(18,67,18,73)
LIG(12,67,18,67)
FSYM
CNC(70 -10)
CNC(105 -10)
CNC(70 20)
CNC(105 20)
CNC(140 20)
CNC(35 80)
CNC(35 50)
LIG(70,-15,70,-10)
LIG(70,-10,105,-10)
LIG(70,-10,70,-5)
LIG(105,-10,105,-5)
LIG(105,-10,140,-10)
LIG(140,-10,140,-5)
LIG(70,15,70,20)
LIG(70,20,105,20)
LIG(70,20,70,25)
LIG(105,20,105,15)
LIG(105,20,140,20)
LIG(140,15,140,20)
LIG(140,20,160,20)
LIG(20,10,35,10)
LIG(35,10,35,5)
LIG(35,5,50,5)
LIG(50,5,50,35)
LIG(120,5,120,80)
LIG(35,70,35,80)
LIG(50,60,50,65)
LIG(35,45,35,50)
LIG(85,5,85,50)
LIG(20,45,35,45)
LIG(50,85,50,95)
LIG(35,60,50,60)
LIG(70,45,70,55)
LIG(70,75,70,85)
LIG(20,70,35,70)
LIG(35,80,35,85)
LIG(35,85,50,85)
LIG(35,50,85,50)
LIG(35,50,35,60)
LIG(35,80,120,80)
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_2\3)Triple_NAND.sch
