DSCH 2.7a
VERSION 4/20/2008 1:28:33 AM
BB(-19,2,109,85)
SYM  #nmos
BB(45,55,65,75)
TITLE 50 60  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(50,55,15,19,r)
VIS 2
PIN(65,55,0.000,0.000)s
PIN(55,75,0.000,0.000)g
PIN(45,55,0.030,0.140)d
LIG(55,65,55,75)
LIG(61,65,49,65)
LIG(61,63,49,63)
LIG(49,55,49,63)
LIG(45,55,49,55)
LIG(61,55,61,63)
LIG(65,55,61,55)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(0,5,20,25)
TITLE 15 20  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(0,6,15,19,r)
VIS 2
PIN(0,25,0.000,0.000)s
PIN(10,5,0.000,0.000)g
PIN(20,25,0.030,0.140)d
LIG(10,15,10,5)
LIG(4,15,16,15)
LIG(4,17,16,17)
LIG(16,25,16,17)
LIG(20,25,16,25)
LIG(4,25,4,17)
LIG(0,25,4,25)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #inv
BB(20,15,55,35)
TITLE 35 25  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(20,25,0.000,0.000)in
PIN(55,25,0.030,0.070)out
LIG(20,25,30,25)
LIG(30,15,30,35)
LIG(30,15,45,25)
LIG(30,35,45,25)
LIG(47,25,47,25)
LIG(49,25,55,25)
VLG  not not1(out,in);
FSYM
SYM  #inv
BB(55,15,90,35)
TITLE 70 25  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(55,25,0.000,0.000)in
PIN(90,25,0.030,0.140)out
LIG(55,25,65,25)
LIG(65,15,65,35)
LIG(65,15,80,25)
LIG(65,35,80,25)
LIG(82,25,82,25)
LIG(84,25,90,25)
VLG  not not1(out,in);
FSYM
SYM  #button1
BB(-19,21,-10,29)
TITLE -15 25  #button
MODEL 59
PROP                                                                                                                                   
REC(-18,22,6,6,r)
VIS 1
PIN(-10,25,0.000,0.000)in1
LIG(-11,25,-10,25)
LIG(-19,29,-19,21)
LIG(-11,29,-19,29)
LIG(-11,21,-11,29)
LIG(-19,21,-11,21)
LIG(-18,28,-18,22)
LIG(-12,28,-18,28)
LIG(-12,22,-12,28)
LIG(-18,22,-12,22)
FSYM
SYM  #light1
BB(103,10,109,24)
TITLE 105 24  #light
MODEL 49
PROP                                                                                                                                   
REC(104,11,4,4,r)
VIS 1
PIN(105,25,0.000,0.000)out1
LIG(108,16,108,11)
LIG(108,11,107,10)
LIG(104,11,104,16)
LIG(107,21,107,18)
LIG(106,21,109,21)
LIG(106,23,108,21)
LIG(107,23,109,21)
LIG(103,18,109,18)
LIG(105,18,105,25)
LIG(103,16,103,18)
LIG(109,16,103,16)
LIG(109,18,109,16)
LIG(105,10,104,11)
LIG(107,10,105,10)
FSYM
SYM  #inv
BB(20,65,55,85)
TITLE 35 75  #~
MODEL 101
PROP                                                                                                                                   
REC(-35,20,0,0, )
VIS 0
PIN(20,75,0.000,0.000)in
PIN(55,75,0.030,0.070)out
LIG(20,75,30,75)
LIG(30,65,30,85)
LIG(30,65,45,75)
LIG(30,85,45,75)
LIG(47,75,47,75)
LIG(49,75,55,75)
VLG  not not1(out,in);
FSYM
SYM  #clock1
BB(-5,2,10,8)
TITLE 0 5  #clock
MODEL 69
PROP   10.00 10.00                                                                                                                               
REC(-3,3,6,4,r)
VIS 1
PIN(10,5,1.500,0.070)clk1
LIG(5,5,10,5)
LIG(0,3,-2,3)
LIG(4,3,2,3)
LIG(5,2,5,8)
LIG(-5,8,-5,2)
LIG(0,7,0,3)
LIG(2,3,2,7)
LIG(2,7,0,7)
LIG(-2,7,-4,7)
LIG(-2,3,-2,7)
LIG(5,8,-5,8)
LIG(5,2,-5,2)
FSYM
SYM  #clock1c
BB(5,72,20,78)
TITLE 10 75  #clock
MODEL 69
PROP   10.00 10.00                                                                                                                               
REC(7,73,6,4,r)
VIS 1
PIN(20,75,1.500,0.070)clk1
LIG(15,75,20,75)
LIG(10,73,8,73)
LIG(14,73,12,73)
LIG(15,72,15,78)
LIG(5,78,5,72)
LIG(10,77,10,73)
LIG(12,73,12,77)
LIG(12,77,10,77)
LIG(8,77,6,77)
LIG(8,73,8,77)
LIG(15,78,5,78)
LIG(15,72,5,72)
FSYM
LIG(90,25,105,25)
LIG(-10,25,0,25)
LIG(90,55,65,55)
LIG(90,25,90,55)
LIG(20,55,45,55)
LIG(20,25,20,55)
FFIG H:\Electronics II\Chip Designing (E II)\Dschv2-7\pro.sch
