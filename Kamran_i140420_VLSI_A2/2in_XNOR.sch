DSCH 2.7a
VERSION 3/14/2019 9:18:54 PM
BB(-39,-25,104,35)
SYM  #light1
BB(98,-10,104,4)
TITLE 100 4  #light
MODEL 49
PROP                                                                                                                                    
REC(99,-9,4,4,p)
VIS 1
PIN(100,5,0.000,0.000)2in_XNOR
LIG(103,-4,103,-9)
LIG(103,-9,102,-10)
LIG(99,-9,99,-4)
LIG(102,1,102,-2)
LIG(101,1,104,1)
LIG(101,3,103,1)
LIG(102,3,104,1)
LIG(98,-2,104,-2)
LIG(100,-2,100,5)
LIG(98,-4,98,-2)
LIG(104,-4,98,-4)
LIG(104,-2,104,-4)
LIG(100,-10,99,-9)
LIG(102,-10,100,-10)
FSYM
SYM  #button2
BB(-39,-24,-30,-16)
TITLE -35 -20  #button
MODEL 59
PROP                                                                                                                                    
REC(-38,-23,6,6,r)
VIS 1
PIN(-30,-20,0.000,0.000)B_Kamran
LIG(-31,-20,-30,-20)
LIG(-39,-16,-39,-24)
LIG(-31,-16,-39,-16)
LIG(-31,-24,-31,-16)
LIG(-39,-24,-31,-24)
LIG(-38,-17,-38,-23)
LIG(-32,-17,-38,-17)
LIG(-32,-23,-32,-17)
LIG(-38,-23,-32,-23)
FSYM
SYM  #or2
BB(60,-5,95,15)
TITLE 80 5  #|
MODEL 502
PROP                                                                                                                                    
REC(50,20,0,0, )
VIS 0
PIN(60,0,0.000,0.000)a
PIN(60,10,0.000,0.000)b
PIN(95,5,0.090,0.070)s
LIG(60,10,73,10)
LIG(72,12,68,15)
LIG(88,5,95,5)
LIG(87,7,84,11)
LIG(88,5,87,7)
LIG(87,3,88,5)
LIG(84,-1,87,3)
LIG(79,-4,84,-1)
LIG(84,11,79,14)
LIG(79,14,68,15)
LIG(68,-5,79,-4)
LIG(74,8,72,12)
LIG(68,-5,72,-2)
LIG(72,-2,74,2)
LIG(74,2,75,5)
LIG(75,5,74,8)
LIG(60,0,73,0)
VLG   or or2(s,a,b);
FSYM
SYM  #button1
BB(-39,26,-30,34)
TITLE -35 30  #button
MODEL 59
PROP                                                                                                                                    
REC(-38,27,6,6,r)
VIS 1
PIN(-30,30,0.000,0.000)A_Kamran
LIG(-31,30,-30,30)
LIG(-39,34,-39,26)
LIG(-31,34,-39,34)
LIG(-31,26,-31,34)
LIG(-39,26,-31,26)
LIG(-38,33,-38,27)
LIG(-32,33,-38,33)
LIG(-32,27,-32,33)
LIG(-38,27,-32,27)
FSYM
SYM  #inv
BB(-10,-20,25,0)
TITLE 5 -10  #~
MODEL 101
PROP                                                                                                                                   
REC(5,0,0,0, )
VIS 0
PIN(-10,-10,0.000,0.000)in
PIN(25,-10,0.030,0.070)out
LIG(-10,-10,0,-10)
LIG(0,-20,0,0)
LIG(0,-20,15,-10)
LIG(0,0,15,-10)
LIG(17,-10,17,-10)
LIG(19,-10,25,-10)
VLG  not not1(out,in);
FSYM
SYM  #and2
BB(25,-25,60,-5)
TITLE 37 -14  #&
MODEL 402
PROP                                                                                                                                   
REC(15,0,0,0, )
VIS 0
PIN(25,-10,0.000,0.000)b
PIN(25,-20,0.000,0.000)a
PIN(60,-15,0.090,0.140)s
LIG(25,-10,33,-10)
LIG(33,-25,33,-5)
LIG(53,-15,60,-15)
LIG(52,-13,49,-9)
LIG(53,-15,52,-13)
LIG(52,-17,53,-15)
LIG(49,-21,52,-17)
LIG(44,-24,49,-21)
LIG(49,-9,44,-6)
LIG(44,-6,33,-5)
LIG(33,-25,44,-24)
LIG(25,-20,33,-20)
VLG  and and2(out,a,b);
FSYM
SYM  #and2
BB(25,15,60,35)
TITLE 37 26  #&
MODEL 402
PROP                                                                                                                                   
REC(20,0,0,0, )
VIS 0
PIN(25,30,0.000,0.000)b
PIN(25,20,0.000,0.000)a
PIN(60,25,0.090,0.140)s
LIG(25,30,33,30)
LIG(33,15,33,35)
LIG(53,25,60,25)
LIG(52,27,49,31)
LIG(53,25,52,27)
LIG(52,23,53,25)
LIG(49,19,52,23)
LIG(44,16,49,19)
LIG(49,31,44,34)
LIG(44,34,33,35)
LIG(33,15,44,16)
LIG(25,20,33,20)
VLG  and and2(out,a,b);
FSYM
SYM  #inv
BB(-10,10,25,30)
TITLE 5 20  #~
MODEL 101
PROP                                                                                                                                   
REC(-5,10,0,0, )
VIS 0
PIN(-10,20,0.000,0.000)in
PIN(25,20,0.030,0.070)out
LIG(-10,20,0,20)
LIG(0,10,0,30)
LIG(0,10,15,20)
LIG(0,30,15,20)
LIG(17,20,17,20)
LIG(19,20,25,20)
VLG  not not1(out,in);
FSYM
CNC(-15 -20)
CNC(-25 30)
LIG(95,5,100,5)
LIG(-30,-20,-15,-20)
LIG(-15,20,-10,20)
LIG(-15,-20,25,-20)
LIG(-25,-10,-25,30)
LIG(-30,30,-25,30)
LIG(-25,-10,-10,-10)
LIG(-25,30,25,30)
LIG(60,-15,60,0)
LIG(60,10,60,25)
LIG(-15,-20,-15,20)
FFIG D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_i140420_VLSI_A2\2in_XNOR.sch
