DSCH 2.6c
VERSION 1/6/2003 4:31:22 PM
BB(-47,-19,79,110)
SYM  #and2
BB(-5,40,30,60)
TITLE 18 49  #&
MODEL 402
PROP                                                                                                                                                                                                           
REC(30,70,0,0,)
VIS 0
PIN(30,45,0.000,0.000)b
PIN(30,55,0.000,0.000)a
PIN(-5,50,0.090,0.070)s
LIG(30,45,22,45)
LIG(22,60,22,40)
LIG(2,50,-5,50)
LIG(3,48,6,44)
LIG(2,50,3,48)
LIG(3,52,2,50)
LIG(6,56,3,52)
LIG(11,59,6,56)
LIG(6,44,11,41)
LIG(11,41,22,40)
LIG(22,60,11,59)
LIG(30,55,22,55)
VLG  and and2(out,a,b);
FSYM
SYM  #xor2
BB(40,10,60,45)
TITLE 50 27  #^
MODEL 602
PROP                                                                                                                                                                                                           
REC(75,-25,0,0,)
VIS 0
PIN(55,10,0.000,0.000)a
PIN(45,10,0.000,0.000)b
PIN(50,45,0.090,0.140)out
LIG(43,18,40,14)
LIG(43,22,40,18)
LIG(50,38,50,45)
LIG(48,37,44,34)
LIG(50,38,48,37)
LIG(52,37,50,38)
LIG(56,34,52,37)
LIG(59,29,56,34)
LIG(44,34,41,29)
LIG(41,29,40,18)
LIG(60,18,59,29)
LIG(47,24,43,22)
LIG(60,18,57,22)
LIG(57,22,53,24)
LIG(53,24,50,25)
LIG(50,25,47,24)
LIG(60,14,57,18)
LIG(57,18,53,20)
LIG(53,20,50,21)
LIG(50,21,47,20)
LIG(47,20,43,18)
LIG(55,10,55,19)
LIG(45,10,45,19)
VLG  xor xor2(out,a,b);
FSYM
SYM  #xor2
BB(45,65,65,100)
TITLE 55 82  #^
MODEL 602
PROP                                                                                                                                                                                                           
REC(80,30,0,0,)
VIS 0
PIN(60,65,0.000,0.000)a
PIN(50,65,0.000,0.000)b
PIN(55,100,0.090,0.070)out
LIG(48,73,45,69)
LIG(48,77,45,73)
LIG(55,93,55,100)
LIG(53,92,49,89)
LIG(55,93,53,92)
LIG(57,92,55,93)
LIG(61,89,57,92)
LIG(64,84,61,89)
LIG(49,89,46,84)
LIG(46,84,45,73)
LIG(65,73,64,84)
LIG(52,79,48,77)
LIG(65,73,62,77)
LIG(62,77,58,79)
LIG(58,79,55,80)
LIG(55,80,52,79)
LIG(65,69,62,73)
LIG(62,73,58,75)
LIG(58,75,55,76)
LIG(55,76,52,75)
LIG(52,75,48,73)
LIG(60,65,60,74)
LIG(50,65,50,74)
VLG  xor xor2(out,a,b);
FSYM
SYM  #light2
BB(63,95,69,109)
TITLE 65 109  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(64,96,4,4,r)
VIS 1
PIN(65,110,0.000,0.000)sum
LIG(68,101,68,96)
LIG(68,96,67,95)
LIG(64,96,64,101)
LIG(67,106,67,103)
LIG(66,106,69,106)
LIG(66,108,68,106)
LIG(67,108,69,106)
LIG(63,103,69,103)
LIG(65,103,65,110)
LIG(63,101,63,103)
LIG(69,101,63,101)
LIG(69,103,69,101)
LIG(65,95,64,96)
LIG(67,95,65,95)
FSYM
SYM  #button2
BB(41,-19,49,-10)
TITLE 45 -15  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(42,-18,6,6,r)
VIS 1
PIN(45,-10,0.000,0.000)a
LIG(45,-11,45,-10)
LIG(41,-19,49,-19)
LIG(41,-11,41,-19)
LIG(49,-11,41,-11)
LIG(49,-19,49,-11)
LIG(42,-18,48,-18)
LIG(42,-12,42,-18)
LIG(48,-12,42,-12)
LIG(48,-18,48,-12)
FSYM
SYM  #button3
BB(70,51,79,59)
TITLE 75 55  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(72,52,6,6,r)
VIS 1
PIN(70,55,0.000,0.000)c_in
LIG(71,55,70,55)
LIG(79,51,79,59)
LIG(71,51,79,51)
LIG(71,59,71,51)
LIG(79,59,71,59)
LIG(78,52,78,58)
LIG(72,52,78,52)
LIG(72,58,72,52)
LIG(78,58,72,58)
FSYM
SYM  #and2
BB(-5,-5,30,15)
TITLE 18 4  #&
MODEL 402
PROP                                                                                                                                                                                                           
REC(30,25,0,0,)
VIS 0
PIN(30,0,0.000,0.000)b
PIN(30,10,0.000,0.000)a
PIN(-5,5,0.090,0.070)s
LIG(30,0,22,0)
LIG(22,15,22,-5)
LIG(2,5,-5,5)
LIG(3,3,6,-1)
LIG(2,5,3,3)
LIG(3,7,2,5)
LIG(6,11,3,7)
LIG(11,14,6,11)
LIG(6,-1,11,-4)
LIG(11,-4,22,-5)
LIG(22,15,11,14)
LIG(30,10,22,10)
VLG  and and2(out,a,b);
FSYM
SYM  #button1
BB(51,-19,59,-10)
TITLE 55 -15  #button
MODEL 59
PROP                                                                                                                                                                                                           
REC(52,-18,6,6,r)
VIS 1
PIN(55,-10,0.000,0.000)b
LIG(55,-11,55,-10)
LIG(51,-19,59,-19)
LIG(51,-11,51,-19)
LIG(59,-11,51,-11)
LIG(59,-19,59,-11)
LIG(52,-18,58,-18)
LIG(52,-12,52,-18)
LIG(58,-12,52,-12)
LIG(58,-18,58,-12)
FSYM
SYM  #or2
BB(-40,15,-5,35)
TITLE -25 25  #|
MODEL 502
PROP                                                                                                                                                                                                           
REC(-25,50,0,0,)
VIS 0
PIN(-5,30,0.000,0.000)a
PIN(-5,20,0.000,0.000)b
PIN(-40,25,0.090,0.070)s
LIG(-5,20,-18,20)
LIG(-17,18,-13,15)
LIG(-33,25,-40,25)
LIG(-32,23,-29,19)
LIG(-33,25,-32,23)
LIG(-32,27,-33,25)
LIG(-29,31,-32,27)
LIG(-24,34,-29,31)
LIG(-29,19,-24,16)
LIG(-24,16,-13,15)
LIG(-13,35,-24,34)
LIG(-19,22,-17,18)
LIG(-13,35,-17,32)
LIG(-17,32,-19,28)
LIG(-19,28,-20,25)
LIG(-20,25,-19,22)
LIG(-5,30,-18,30)
VLG  or or2(s,a,b);
FSYM
SYM  #light1
BB(-47,0,-41,14)
TITLE -45 14  #light
MODEL 49
PROP                                                                                                                                                                                                           
REC(-46,1,4,4,r)
VIS 1
PIN(-45,15,0.000,0.000)c_out
LIG(-42,6,-42,1)
LIG(-42,1,-43,0)
LIG(-46,1,-46,6)
LIG(-43,11,-43,8)
LIG(-44,11,-41,11)
LIG(-44,13,-42,11)
LIG(-43,13,-41,11)
LIG(-47,8,-41,8)
LIG(-45,8,-45,15)
LIG(-47,6,-47,8)
LIG(-41,6,-47,6)
LIG(-41,8,-41,6)
LIG(-45,0,-46,1)
LIG(-43,0,-45,0)
FSYM
CNC(60 55)
CNC(55 0)
LIG(50,45,50,65)
LIG(30,45,50,45)
LIG(70,55,60,55)
LIG(60,65,60,55)
LIG(60,55,30,55)
LIG(45,-10,45,10)
LIG(45,10,30,10)
LIG(55,-10,55,0)
LIG(30,0,55,0)
LIG(55,0,55,10)
LIG(-5,5,-5,20)
LIG(-5,30,-5,50)
LIG(-40,25,-40,15)
LIG(-40,15,-45,15)
LIG(55,110,65,110)
LIG(55,100,55,110)
FFIG C:\Documents and Settings\Bear\Desktop\BOOK Ex\Dsch\Logic FA.sch