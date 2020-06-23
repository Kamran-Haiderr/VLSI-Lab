DSCH 2.7a
VERSION 1/31/2019 9:12:15 PM
BB(1,-15,89,35)
SYM  #inv
BB(10,15,45,35)
TITLE 25 25  #~
MODEL 101
PROP                                                                                                                                    
REC(0,5,0,0, )
VIS 0
PIN(10,25,0.000,0.000)in
PIN(45,25,0.030,0.070)out
LIG(10,25,20,25)
LIG(20,15,20,35)
LIG(20,15,35,25)
LIG(20,35,35,25)
LIG(37,25,37,25)
LIG(39,25,45,25)
VLG   not not1(out,in);
FSYM
SYM  #or2
BB(50,0,85,20)
TITLE 70 10  #|
MODEL 502
PROP                                                                                                                                    
REC(-5,-5,0,0, )
VIS 0
PIN(50,5,0.000,0.000)a
PIN(50,15,0.000,0.000)b
PIN(85,10,0.090,0.070)s
LIG(50,15,63,15)
LIG(62,17,58,20)
LIG(78,10,85,10)
LIG(77,12,74,16)
LIG(78,10,77,12)
LIG(77,8,78,10)
LIG(74,4,77,8)
LIG(69,1,74,4)
LIG(74,16,69,19)
LIG(69,19,58,20)
LIG(58,0,69,1)
LIG(64,13,62,17)
LIG(58,0,62,3)
LIG(62,3,64,7)
LIG(64,7,65,10)
LIG(65,10,64,13)
LIG(50,5,63,5)
VLG   or or2(s,a,b);
FSYM
SYM  #button3
BB(1,-9,10,-1)
TITLE 5 -5  #button
MODEL 59
PROP                                                                                                                                    
REC(2,-8,6,6,p)
VIS 1
PIN(10,-5,0.000,0.000)in3
LIG(9,-5,10,-5)
LIG(1,-1,1,-9)
LIG(9,-1,1,-1)
LIG(9,-9,9,-1)
LIG(1,-9,9,-9)
LIG(2,-2,2,-8)
LIG(8,-2,2,-2)
LIG(8,-8,8,-2)
LIG(2,-8,8,-8)
FSYM
SYM  #button4
BB(1,21,10,29)
TITLE 5 25  #button
MODEL 59
PROP                                                                                                                                    
REC(2,22,6,6,g)
VIS 1
PIN(10,25,0.000,0.000)in4
LIG(9,25,10,25)
LIG(1,29,1,21)
LIG(9,29,1,29)
LIG(9,21,9,29)
LIG(1,21,9,21)
LIG(2,28,2,22)
LIG(8,28,2,28)
LIG(8,22,8,28)
LIG(2,22,8,22)
FSYM
SYM  #inv
BB(10,-15,45,5)
TITLE 25 -5  #~
MODEL 101
PROP                                                                                                                                    
REC(0,0,0,0, )
VIS 0
PIN(10,-5,0.000,0.000)in
PIN(45,-5,0.030,0.070)out
LIG(10,-5,20,-5)
LIG(20,-15,20,5)
LIG(20,-15,35,-5)
LIG(20,5,35,-5)
LIG(37,-5,37,-5)
LIG(39,-5,45,-5)
VLG   not not1(out,in);
FSYM
SYM  #light2
BB(83,-5,89,9)
TITLE 85 9  #light
MODEL 49
PROP                                                                                                                                    
REC(84,-4,4,4,y)
VIS 1
PIN(85,10,0.000,0.000)out2
LIG(88,1,88,-4)
LIG(88,-4,87,-5)
LIG(84,-4,84,1)
LIG(87,6,87,3)
LIG(86,6,89,6)
LIG(86,8,88,6)
LIG(87,8,89,6)
LIG(83,3,89,3)
LIG(85,3,85,10)
LIG(83,1,83,3)
LIG(89,1,83,1)
LIG(89,3,89,1)
LIG(85,-5,84,-4)
LIG(87,-5,85,-5)
FSYM
LIG(45,5,50,5)
LIG(45,-5,45,5)
LIG(45,25,50,25)
LIG(50,15,50,25)
FFIG D:\Kamran\Study\FAST NUCES\Mad Max 19\VLSI Lab\Kamran_VLSI_1\DeMorgAc+Bc.sch
