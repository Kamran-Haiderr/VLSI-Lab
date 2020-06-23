DSCH 2.7a
VERSION 2/6/2019 11:05:04 AM
BB(-49,-80,174,135)
SYM  #pmos
BB(25,-60,45,-40)
TITLE 40 -55  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(26,-55,19,15,r)
VIS 2
PIN(45,-60,0.000,0.000)s
PIN(25,-50,0.000,0.000)g
PIN(45,-40,0.030,0.070)d
LIG(25,-50,31,-50)
LIG(33,-50,33,-50)
LIG(35,-44,35,-56)
LIG(37,-44,37,-56)
LIG(45,-56,37,-56)
LIG(45,-60,45,-56)
LIG(45,-44,37,-44)
LIG(45,-40,45,-44)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #button2
BB(-49,-54,-40,-46)
TITLE -45 -50  #button
MODEL 59
PROP                                                                                                                                    
REC(-48,-53,6,6,r)
VIS 1
PIN(-40,-50,0.000,0.000)A
LIG(-41,-50,-40,-50)
LIG(-49,-46,-49,-54)
LIG(-41,-46,-49,-46)
LIG(-41,-54,-41,-46)
LIG(-49,-54,-41,-54)
LIG(-48,-47,-48,-53)
LIG(-42,-47,-48,-47)
LIG(-42,-53,-42,-47)
LIG(-48,-53,-42,-53)
FSYM
SYM  #vss
BB(40,127,50,135)
TITLE 44 132  #vss
MODEL 0
PROP                                                                                                                                    
REC(40,125,0,0,b)
VIS 0
PIN(45,125,0.000,0.000)vss
LIG(45,125,45,130)
LIG(40,130,50,130)
LIG(40,133,42,130)
LIG(42,133,44,130)
LIG(44,133,46,130)
LIG(46,133,48,130)
FSYM
SYM  #nmos
BB(70,25,90,45)
TITLE 85 30  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(71,30,19,15,r)
VIS 2
PIN(90,45,0.000,0.000)s
PIN(70,35,0.000,0.000)g
PIN(90,25,0.030,0.420)d
LIG(80,35,70,35)
LIG(80,41,80,29)
LIG(82,41,82,29)
LIG(90,29,82,29)
LIG(90,25,90,29)
LIG(90,41,82,41)
LIG(90,45,90,41)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(135,35,155,55)
TITLE 150 40  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(136,40,19,15,r)
VIS 2
PIN(155,55,0.000,0.000)s
PIN(135,45,0.000,0.000)g
PIN(155,35,0.030,0.420)d
LIG(145,45,135,45)
LIG(145,51,145,39)
LIG(147,51,147,39)
LIG(155,39,147,39)
LIG(155,35,155,39)
LIG(155,51,147,51)
LIG(155,55,155,51)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(25,70,45,90)
TITLE 40 75  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(26,75,19,15,r)
VIS 2
PIN(45,90,0.000,0.000)s
PIN(25,80,0.000,0.000)g
PIN(45,70,0.030,0.280)d
LIG(35,80,25,80)
LIG(35,86,35,74)
LIG(37,86,37,74)
LIG(45,74,37,74)
LIG(45,70,45,74)
LIG(45,86,37,86)
LIG(45,90,45,86)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(100,70,120,90)
TITLE 115 75  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(101,75,19,15,r)
VIS 2
PIN(120,90,0.000,0.000)s
PIN(100,80,0.000,0.000)g
PIN(120,70,0.030,0.280)d
LIG(110,80,100,80)
LIG(110,86,110,74)
LIG(112,86,112,74)
LIG(120,74,112,74)
LIG(120,70,120,74)
LIG(120,86,112,86)
LIG(120,90,120,86)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(25,105,45,125)
TITLE 40 110  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(26,110,19,15,r)
VIS 2
PIN(45,125,0.000,0.000)s
PIN(25,115,0.000,0.000)g
PIN(45,105,0.030,0.140)d
LIG(35,115,25,115)
LIG(35,121,35,109)
LIG(37,121,37,109)
LIG(45,109,37,109)
LIG(45,105,45,109)
LIG(45,121,37,121)
LIG(45,125,45,121)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #light2
BB(168,0,174,14)
TITLE 170 14  #light
MODEL 49
PROP                                                                                                                                    
REC(169,1,4,4,p)
VIS 1
PIN(170,15,0.000,0.000)6)Tri_Dou_ORy_NAND
LIG(173,6,173,1)
LIG(173,1,172,0)
LIG(169,1,169,6)
LIG(172,11,172,8)
LIG(171,11,174,11)
LIG(171,13,173,11)
LIG(172,13,174,11)
LIG(168,8,174,8)
LIG(170,8,170,15)
LIG(168,6,168,8)
LIG(174,6,168,6)
LIG(174,8,174,6)
LIG(170,0,169,1)
LIG(172,0,170,0)
FSYM
SYM  #pmos
BB(25,-40,45,-20)
TITLE 40 -35  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(26,-35,19,15,r)
VIS 2
PIN(45,-40,0.000,0.000)s
PIN(25,-30,0.000,0.000)g
PIN(45,-20,0.030,0.070)d
LIG(25,-30,31,-30)
LIG(33,-30,33,-30)
LIG(35,-24,35,-36)
LIG(37,-24,37,-36)
LIG(45,-36,37,-36)
LIG(45,-40,45,-36)
LIG(45,-24,37,-24)
LIG(45,-20,45,-24)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(25,-20,45,0)
TITLE 40 -15  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(26,-15,19,15,r)
VIS 2
PIN(45,-20,0.000,0.000)s
PIN(25,-10,0.000,0.000)g
PIN(45,0,0.030,0.420)d
LIG(25,-10,31,-10)
LIG(33,-10,33,-10)
LIG(35,-4,35,-16)
LIG(37,-4,37,-16)
LIG(45,-16,37,-16)
LIG(45,-20,45,-16)
LIG(45,-4,37,-4)
LIG(45,0,45,-4)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(65,-55,85,-35)
TITLE 80 -50  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(66,-50,19,15,r)
VIS 2
PIN(85,-55,0.000,0.000)s
PIN(65,-45,0.000,0.000)g
PIN(85,-35,0.030,0.070)d
LIG(65,-45,71,-45)
LIG(73,-45,73,-45)
LIG(75,-39,75,-51)
LIG(77,-39,77,-51)
LIG(85,-51,77,-51)
LIG(85,-55,85,-51)
LIG(85,-39,77,-39)
LIG(85,-35,85,-39)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(100,-30,120,-10)
TITLE 115 -25  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(101,-25,19,15,r)
VIS 2
PIN(120,-30,0.000,0.000)s
PIN(100,-20,0.000,0.000)g
PIN(120,-10,0.030,0.420)d
LIG(100,-20,106,-20)
LIG(108,-20,108,-20)
LIG(110,-14,110,-26)
LIG(112,-14,112,-26)
LIG(120,-26,112,-26)
LIG(120,-30,120,-26)
LIG(120,-14,112,-14)
LIG(120,-10,120,-14)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(135,-40,155,-20)
TITLE 150 -35  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(136,-35,19,15,r)
VIS 2
PIN(155,-40,0.000,0.000)s
PIN(135,-30,0.000,0.000)g
PIN(155,-20,0.030,0.420)d
LIG(135,-30,141,-30)
LIG(143,-30,143,-30)
LIG(145,-24,145,-36)
LIG(147,-24,147,-36)
LIG(155,-36,147,-36)
LIG(155,-40,155,-36)
LIG(155,-24,147,-24)
LIG(155,-20,155,-24)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #button5
BB(-49,-29,-40,-21)
TITLE -45 -25  #button
MODEL 59
PROP                                                                                                                                    
REC(-48,-28,6,6,r)
VIS 1
PIN(-40,-25,0.000,0.000)B
LIG(-41,-25,-40,-25)
LIG(-49,-21,-49,-29)
LIG(-41,-21,-49,-21)
LIG(-41,-29,-41,-21)
LIG(-49,-29,-41,-29)
LIG(-48,-22,-48,-28)
LIG(-42,-22,-48,-22)
LIG(-42,-28,-42,-22)
LIG(-48,-28,-42,-28)
FSYM
SYM  #button6
BB(-49,-9,-40,-1)
TITLE -45 -5  #button
MODEL 59
PROP                                                                                                                                    
REC(-48,-8,6,6,r)
VIS 1
PIN(-40,-5,0.000,0.000)C
LIG(-41,-5,-40,-5)
LIG(-49,-1,-49,-9)
LIG(-41,-1,-49,-1)
LIG(-41,-9,-41,-1)
LIG(-49,-9,-41,-9)
LIG(-48,-2,-48,-8)
LIG(-42,-2,-48,-2)
LIG(-42,-8,-42,-2)
LIG(-48,-8,-42,-8)
FSYM
SYM  #button7
BB(-44,106,-35,114)
TITLE -40 110  #button
MODEL 59
PROP                                                                                                                                    
REC(-43,107,6,6,r)
VIS 1
PIN(-35,110,0.000,0.000)F
LIG(-36,110,-35,110)
LIG(-44,114,-44,106)
LIG(-36,114,-44,114)
LIG(-36,106,-36,114)
LIG(-44,106,-36,106)
LIG(-43,113,-43,107)
LIG(-37,113,-43,113)
LIG(-37,107,-37,113)
LIG(-43,107,-37,107)
FSYM
SYM  #button8
BB(-44,91,-35,99)
TITLE -40 95  #button
MODEL 59
PROP                                                                                                                                    
REC(-43,92,6,6,r)
VIS 1
PIN(-35,95,0.000,0.000)E
LIG(-36,95,-35,95)
LIG(-44,99,-44,91)
LIG(-36,99,-44,99)
LIG(-36,91,-36,99)
LIG(-44,91,-36,91)
LIG(-43,98,-43,92)
LIG(-37,98,-43,98)
LIG(-37,92,-37,98)
LIG(-43,92,-37,92)
FSYM
SYM  #button9
BB(-44,71,-35,79)
TITLE -40 75  #button
MODEL 59
PROP                                                                                                                                    
REC(-43,72,6,6,r)
VIS 1
PIN(-35,75,0.000,0.000)D
LIG(-36,75,-35,75)
LIG(-44,79,-44,71)
LIG(-36,79,-44,79)
LIG(-36,71,-36,79)
LIG(-44,71,-36,71)
LIG(-43,78,-43,72)
LIG(-37,78,-43,78)
LIG(-37,72,-37,78)
LIG(-43,72,-37,72)
FSYM
SYM  #vdd
BB(40,-80,50,-70)
TITLE 43 -74  #vdd
MODEL 1
PROP                                                                                                                                    
REC(5,0,0,0, )
VIS 0
PIN(45,-70,0.000,0.000)vdd
LIG(45,-70,45,-75)
LIG(45,-75,40,-75)
LIG(40,-75,45,-80)
LIG(45,-80,50,-75)
LIG(50,-75,45,-75)
FSYM
SYM  #nmos
BB(25,30,45,50)
TITLE 40 35  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(26,35,19,15,r)
VIS 2
PIN(45,50,0.000,0.000)s
PIN(25,40,0.000,0.000)g
PIN(45,30,0.030,0.420)d
LIG(35,40,25,40)
LIG(35,46,35,34)
LIG(37,46,37,34)
LIG(45,34,37,34)
LIG(45,30,45,34)
LIG(45,46,37,46)
LIG(45,50,45,46)
VLG   nmos nmos(drain,source,gate);
FSYM
CNC(155 20)
CNC(120 10)
CNC(45 20)
CNC(45 20)
CNC(45 10)
CNC(90 20)
CNC(85 -60)
CNC(20 115)
CNC(10 -30)
CNC(20 -50)
CNC(20 80)
CNC(45 55)
CNC(90 55)
CNC(45 60)
CNC(45 100)
LIG(45,-70,45,-60)
LIG(45,20,90,20)
LIG(-30,-10,25,-10)
LIG(45,10,45,20)
LIG(-30,-5,-30,-10)
LIG(90,20,155,20)
LIG(20,80,20,65)
LIG(-30,80,20,80)
LIG(120,60,120,70)
LIG(45,0,45,10)
LIG(20,115,25,115)
LIG(155,20,155,35)
LIG(155,-20,155,10)
LIG(155,-60,155,-40)
LIG(120,-35,120,-30)
LIG(85,-35,120,-35)
LIG(85,-60,155,-60)
LIG(85,-60,85,-55)
LIG(45,-60,85,-60)
LIG(45,60,45,70)
LIG(45,50,45,55)
LIG(120,-10,120,10)
LIG(10,-30,10,15)
LIG(45,60,120,60)
LIG(20,115,20,135)
LIG(120,10,155,10)
LIG(120,10,45,10)
LIG(45,20,45,30)
LIG(170,15,170,20)
LIG(-40,-30,-40,-25)
LIG(-5,115,20,115)
LIG(25,-10,25,5)
LIG(10,-30,25,-30)
LIG(-30,75,-30,80)
LIG(-40,-50,20,-50)
LIG(-40,-5,-30,-5)
LIG(65,-45,65,65)
LIG(-40,-30,10,-30)
LIG(25,5,110,5)
LIG(155,20,170,20)
LIG(20,-50,20,40)
LIG(110,5,110,45)
LIG(-35,110,-5,110)
LIG(20,-50,25,-50)
LIG(20,40,25,40)
LIG(90,20,90,25)
LIG(20,65,65,65)
LIG(-35,75,-30,75)
LIG(20,80,25,80)
LIG(90,55,155,55)
LIG(-5,110,-5,115)
LIG(10,15,70,15)
LIG(130,-30,135,-30)
LIG(70,15,70,35)
LIG(130,135,130,-30)
LIG(-35,95,100,95)
LIG(20,135,130,135)
LIG(100,-20,100,95)
LIG(120,100,120,90)
LIG(45,125,45,125)
LIG(110,45,135,45)
LIG(45,55,90,55)
LIG(45,55,45,60)
LIG(90,45,90,55)
LIG(45,90,45,100)
LIG(45,100,120,100)
LIG(45,100,45,105)
FFIG C:\Users\i140420\Desktop\Kamran_VLSI_2\6)Tri_Dou_ORy_NAND.sch