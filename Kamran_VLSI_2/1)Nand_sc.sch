DSCH 2.7a
VERSION 2/6/2019 9:16:53 AM
BB(36,-15,144,85)
SYM  #nmos
BB(70,55,90,75)
TITLE 85 60  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(71,60,19,15,r)
VIS 2
PIN(90,75,0.000,0.000)s
PIN(70,65,0.000,0.000)g
PIN(90,55,0.030,0.070)d
LIG(80,65,70,65)
LIG(80,71,80,59)
LIG(82,71,82,59)
LIG(90,59,82,59)
LIG(90,55,90,59)
LIG(90,71,82,71)
LIG(90,75,90,71)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #button1
BB(36,11,45,19)
TITLE 40 15  #button
MODEL 59
PROP                                                                                                                                   
REC(37,12,6,6,y)
VIS 1
PIN(45,15,0.000,0.000)A
LIG(44,15,45,15)
LIG(36,19,36,11)
LIG(44,19,36,19)
LIG(44,11,44,19)
LIG(36,11,44,11)
LIG(37,18,37,12)
LIG(43,18,37,18)
LIG(43,12,43,18)
LIG(37,12,43,12)
FSYM
SYM  #button2
BB(36,36,45,44)
TITLE 40 40  #button
MODEL 59
PROP                                                                                                                                   
REC(37,37,6,6,r)
VIS 1
PIN(45,40,0.000,0.000)B
LIG(44,40,45,40)
LIG(36,44,36,36)
LIG(44,44,36,44)
LIG(44,36,44,44)
LIG(36,36,44,36)
LIG(37,43,37,37)
LIG(43,43,37,43)
LIG(43,37,43,43)
LIG(37,37,43,37)
FSYM
SYM  #light1
BB(138,10,144,24)
TITLE 140 24  #light
MODEL 49
PROP                                                                                                                                   
REC(139,11,4,4,b)
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
SYM  #pmos
BB(70,5,90,25)
TITLE 85 10  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(71,10,19,15,r)
VIS 2
PIN(90,5,0.000,0.000)s
PIN(70,15,0.000,0.000)g
PIN(90,25,0.030,0.140)d
LIG(70,15,76,15)
LIG(78,15,78,15)
LIG(80,21,80,9)
LIG(82,21,82,9)
LIG(90,9,82,9)
LIG(90,5,90,9)
LIG(90,21,82,21)
LIG(90,25,90,21)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(125,-15,135,-5)
TITLE 128 -9  #vdd
MODEL 1
PROP                                                                                                                                   
REC(45,-5,0,0, )
VIS 0
PIN(130,-5,0.000,0.000)vdd
LIG(130,-5,130,-10)
LIG(130,-10,125,-10)
LIG(125,-10,130,-15)
LIG(130,-15,135,-10)
LIG(135,-10,130,-10)
FSYM
SYM  #vss
BB(85,77,95,85)
TITLE 89 82  #vss
MODEL 0
PROP                                                                                                                                    
REC(85,75,0,0,b)
VIS 0
PIN(90,75,0.000,0.000)vss
LIG(90,75,90,80)
LIG(85,80,95,80)
LIG(85,83,87,80)
LIG(87,83,89,80)
LIG(89,83,91,80)
LIG(91,83,93,80)
FSYM
SYM  #nmos
BB(70,35,90,55)
TITLE 85 40  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(71,40,19,15,r)
VIS 2
PIN(90,55,0.000,0.000)s
PIN(70,45,0.000,0.000)g
PIN(90,35,0.030,0.140)d
LIG(80,45,70,45)
LIG(80,51,80,39)
LIG(82,51,82,39)
LIG(90,39,82,39)
LIG(90,35,90,39)
LIG(90,51,82,51)
LIG(90,55,90,51)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(100,5,120,25)
TITLE 115 10  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(101,10,19,15,r)
VIS 2
PIN(120,5,0.000,0.000)s
PIN(100,15,0.000,0.000)g
PIN(120,25,0.030,0.140)d
LIG(100,15,106,15)
LIG(108,15,108,15)
LIG(110,21,110,9)
LIG(112,21,112,9)
LIG(120,9,112,9)
LIG(120,5,120,9)
LIG(120,21,112,21)
LIG(120,25,120,21)
VLG  pmos pmos(drain,source,gate);
FSYM
CNC(55 40)
CNC(90 30)
LIG(90,5,120,5)
LIG(90,25,90,30)
LIG(120,5,120,-5)
LIG(120,-5,130,-5)
LIG(90,25,120,25)
LIG(45,15,70,15)
LIG(70,15,70,45)
LIG(45,40,55,40)
LIG(55,40,55,65)
LIG(55,65,70,65)
LIG(55,40,100,40)
LIG(100,40,100,15)
LIG(90,30,140,30)
LIG(90,30,90,35)
LIG(140,25,140,30)
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_2\1)Nand_sc.sch
