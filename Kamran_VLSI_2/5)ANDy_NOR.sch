DSCH 2.7a
VERSION 2/6/2019 10:13:16 AM
BB(36,-40,164,90)
SYM  #button1
BB(36,21,45,29)
TITLE 40 25  #button
MODEL 59
PROP                                                                                                                                   
REC(37,22,6,6,r)
VIS 1
PIN(45,25,0.000,0.000)A
LIG(44,25,45,25)
LIG(36,29,36,21)
LIG(44,29,36,29)
LIG(44,21,44,29)
LIG(36,21,44,21)
LIG(37,28,37,22)
LIG(43,28,37,28)
LIG(43,22,43,28)
LIG(37,22,43,22)
FSYM
SYM  #button2
BB(36,41,45,49)
TITLE 40 45  #button
MODEL 59
PROP                                                                                                                                   
REC(37,42,6,6,r)
VIS 1
PIN(45,45,0.000,0.000)B
LIG(44,45,45,45)
LIG(36,49,36,41)
LIG(44,49,36,49)
LIG(44,41,44,49)
LIG(36,41,44,41)
LIG(37,48,37,42)
LIG(43,48,37,48)
LIG(43,42,43,48)
LIG(37,42,43,42)
FSYM
SYM  #button3
BB(111,81,120,89)
TITLE 115 85  #button
MODEL 59
PROP                                                                                                                                   
REC(112,82,6,6,r)
VIS 1
PIN(120,85,0.000,0.000)C
LIG(119,85,120,85)
LIG(111,89,111,81)
LIG(119,89,111,89)
LIG(119,81,119,89)
LIG(111,81,119,81)
LIG(112,88,112,82)
LIG(118,88,112,88)
LIG(118,82,118,88)
LIG(112,82,118,82)
FSYM
SYM  #pmos
BB(80,-25,100,-5)
TITLE 95 -20  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(81,-20,19,15,r)
VIS 2
PIN(100,-25,0.000,0.000)s
PIN(80,-15,0.000,0.000)g
PIN(100,-5,0.030,0.070)d
LIG(80,-15,86,-15)
LIG(88,-15,88,-15)
LIG(90,-9,90,-21)
LIG(92,-9,92,-21)
LIG(100,-21,92,-21)
LIG(100,-25,100,-21)
LIG(100,-9,92,-9)
LIG(100,-5,100,-9)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(80,35,100,55)
TITLE 95 40  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(81,40,19,15,r)
VIS 2
PIN(100,55,0.000,0.000)s
PIN(80,45,0.000,0.000)g
PIN(100,35,0.030,0.280)d
LIG(90,45,80,45)
LIG(90,51,90,39)
LIG(92,51,92,39)
LIG(100,39,92,39)
LIG(100,35,100,39)
LIG(100,51,92,51)
LIG(100,55,100,51)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vss
BB(95,82,105,90)
TITLE 99 87  #vss
MODEL 0
PROP                                                                                                                                    
REC(95,80,0,0,b)
VIS 0
PIN(100,80,0.000,0.000)vss
LIG(100,80,100,85)
LIG(95,85,105,85)
LIG(95,88,97,85)
LIG(97,88,99,85)
LIG(99,88,101,85)
LIG(101,88,103,85)
FSYM
SYM  #vdd
BB(95,-40,105,-30)
TITLE 98 -34  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(100,-30,0.000,0.000)vdd
LIG(100,-30,100,-35)
LIG(100,-35,95,-35)
LIG(95,-35,100,-40)
LIG(100,-40,105,-35)
LIG(105,-35,100,-35)
FSYM
SYM  #nmos
BB(80,55,100,75)
TITLE 95 60  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(81,60,19,15,r)
VIS 2
PIN(100,75,0.000,0.000)s
PIN(80,65,0.000,0.000)g
PIN(100,55,0.030,0.070)d
LIG(90,65,80,65)
LIG(90,71,90,59)
LIG(92,71,92,59)
LIG(100,59,92,59)
LIG(100,55,100,59)
LIG(100,71,92,71)
LIG(100,75,100,71)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(120,45,140,65)
TITLE 135 50  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(121,50,19,15,r)
VIS 2
PIN(140,65,0.000,0.000)s
PIN(120,55,0.000,0.000)g
PIN(140,45,0.030,0.280)d
LIG(130,55,120,55)
LIG(130,61,130,49)
LIG(132,61,132,49)
LIG(140,49,132,49)
LIG(140,45,140,49)
LIG(140,61,132,61)
LIG(140,65,140,61)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #light1
BB(158,10,164,24)
TITLE 160 24  #light
MODEL 49
PROP                                                                                                                                   
REC(159,11,4,4,p)
VIS 1
PIN(160,25,0.000,0.000)5)ANDy_NOR
LIG(163,16,163,11)
LIG(163,11,162,10)
LIG(159,11,159,16)
LIG(162,21,162,18)
LIG(161,21,164,21)
LIG(161,23,163,21)
LIG(162,23,164,21)
LIG(158,18,164,18)
LIG(160,18,160,25)
LIG(158,16,158,18)
LIG(164,16,158,16)
LIG(164,18,164,16)
LIG(160,10,159,11)
LIG(162,10,160,10)
FSYM
SYM  #pmos
BB(80,-5,100,15)
TITLE 95 0  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(81,0,19,15,r)
VIS 2
PIN(100,-5,0.000,0.000)s
PIN(80,5,0.000,0.000)g
PIN(100,15,0.030,0.280)d
LIG(80,5,86,5)
LIG(88,5,88,5)
LIG(90,11,90,-1)
LIG(92,11,92,-1)
LIG(100,-1,92,-1)
LIG(100,-5,100,-1)
LIG(100,11,92,11)
LIG(100,15,100,11)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(115,-15,135,5)
TITLE 130 -10  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(116,-10,19,15,r)
VIS 2
PIN(135,-15,0.000,0.000)s
PIN(115,-5,0.000,0.000)g
PIN(135,5,0.030,0.280)d
LIG(115,-5,121,-5)
LIG(123,-5,123,-5)
LIG(125,1,125,-11)
LIG(127,1,127,-11)
LIG(135,-11,127,-11)
LIG(135,-15,135,-11)
LIG(135,1,127,1)
LIG(135,5,135,1)
VLG  pmos pmos(drain,source,gate);
FSYM
CNC(70 -15)
CNC(135 25)
CNC(100 25)
CNC(100 30)
CNC(65 10)
LIG(100,-30,100,-25)
LIG(100,-30,135,-30)
LIG(135,-30,135,-15)
LIG(70,-15,70,45)
LIG(50,45,50,10)
LIG(45,45,50,45)
LIG(135,5,135,25)
LIG(100,25,135,25)
LIG(45,-15,70,-15)
LIG(135,25,160,25)
LIG(100,30,140,30)
LIG(45,25,45,-15)
LIG(140,30,140,45)
LIG(50,10,65,10)
LIG(100,75,140,75)
LIG(70,-15,80,-15)
LIG(100,75,100,80)
LIG(140,65,140,75)
LIG(65,10,65,5)
LIG(65,5,80,5)
LIG(100,30,100,35)
LIG(100,15,100,25)
LIG(100,25,100,30)
LIG(70,45,80,45)
LIG(65,10,65,65)
LIG(65,65,80,65)
LIG(115,10,115,-5)
LIG(120,10,120,85)
LIG(120,10,115,10)
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_2\5)ANDy_NOR.sch
