DSCH 2.6i
VERSION 4/28/2003 10:14:00 AM
BB(-29,-25,184,98)
SYM  #button1
BB(-29,21,-20,29)
TITLE -25 25  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-28,22,6,6,r)
VIS 1
PIN(-20,25,0.000,0.000)T
LIG(-21,25,-20,25)
LIG(-29,29,-29,21)
LIG(-21,29,-29,29)
LIG(-21,21,-21,29)
LIG(-29,21,-21,21)
LIG(-28,28,-28,22)
LIG(-22,28,-28,28)
LIG(-22,22,-22,28)
LIG(-28,22,-22,22)
FSYM
SYM  #button4
BB(-29,36,-20,44)
TITLE -25 40  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-28,37,6,6,r)
VIS 1
PIN(-20,40,0.000,0.000)~SClear
LIG(-21,40,-20,40)
LIG(-29,44,-29,36)
LIG(-21,44,-29,44)
LIG(-21,36,-21,44)
LIG(-29,36,-21,36)
LIG(-28,43,-28,37)
LIG(-22,43,-28,43)
LIG(-22,37,-22,43)
LIG(-28,37,-22,37)
FSYM
SYM  #button3
BB(-29,51,-20,59)
TITLE -25 55  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-28,52,6,6,r)
VIS 1
PIN(-20,55,0.000,0.000)Reset
LIG(-21,55,-20,55)
LIG(-29,59,-29,51)
LIG(-21,59,-29,59)
LIG(-21,51,-21,59)
LIG(-29,51,-21,51)
LIG(-28,58,-28,52)
LIG(-22,58,-28,58)
LIG(-22,52,-22,58)
LIG(-28,52,-22,52)
FSYM
SYM  #button4
BB(-29,71,-20,79)
TITLE -25 75  #button
MODEL 59
PROP                                                                                                                                                                                                            
REC(-28,72,6,6,r)
VIS 1
PIN(-20,75,0.000,0.000)Clock
LIG(-21,75,-20,75)
LIG(-29,79,-29,71)
LIG(-21,79,-29,79)
LIG(-21,71,-21,79)
LIG(-29,71,-21,71)
LIG(-28,78,-28,72)
LIG(-22,78,-28,78)
LIG(-22,72,-22,78)
LIG(-28,72,-22,72)
FSYM
SYM  #xor2
BB(0,10,35,30)
TITLE 17 20  #^
MODEL 602
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(0,15,0.000,0.000)a
PIN(0,25,0.000,0.000)b
PIN(35,20,0.090,0.070)out
LIG(8,27,4,30)
LIG(12,27,8,30)
LIG(28,20,35,20)
LIG(27,22,24,26)
LIG(28,20,27,22)
LIG(27,18,28,20)
LIG(24,14,27,18)
LIG(19,11,24,14)
LIG(24,26,19,29)
LIG(19,29,8,30)
LIG(8,10,19,11)
LIG(14,23,12,27)
LIG(8,10,12,13)
LIG(12,13,14,17)
LIG(14,17,15,20)
LIG(15,20,14,23)
LIG(4,10,8,13)
LIG(8,13,10,17)
LIG(10,17,11,20)
LIG(11,20,10,23)
LIG(10,23,8,27)
LIG(0,15,9,15)
LIG(0,25,9,25)
VLG     xor xor2(out,a,b);
FSYM
SYM  #and2
BB(130,-20,165,0)
TITLE 142 -9  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(0,-65,0,0,)
VIS 0
PIN(130,-5,0.000,0.000)b
PIN(130,-15,0.000,0.000)a
PIN(165,-10,0.090,0.070)s
LIG(130,-5,138,-5)
LIG(138,-20,138,0)
LIG(158,-10,165,-10)
LIG(157,-8,154,-4)
LIG(158,-10,157,-8)
LIG(157,-12,158,-10)
LIG(154,-16,157,-12)
LIG(149,-19,154,-16)
LIG(154,-4,149,-1)
LIG(149,-1,138,0)
LIG(138,-20,149,-19)
LIG(130,-15,138,-15)
VLG     and and2(out,a,b);
FSYM
SYM  #dreg2
BB(80,20,110,45)
TITLE 92 28  #dreg
MODEL 860
PROP                                                                                                                                                                                                            
REC(55,10,0,0,r)
VIS 5
PIN(80,25,0.000,0.000)D
PIN(80,35,0.000,0.000)RST
PIN(95,45,0.000,0.000)H
PIN(110,35,0.120,0.210)Q
PIN(110,25,0.120,0.000)nQ
LIG(80,35,85,35)
LIG(80,25,85,25)
LIG(95,45,95,44)
LIG(95,42,95,42)
LIG(105,35,110,35)
LIG(105,25,110,25)
LIG(105,40,85,40)
LIG(105,20,105,40)
LIG(85,20,105,20)
LIG(85,40,85,20)
LIG(94,40,95,38)
LIG(95,38,96,40)
VLG        module dreg(D,RST,H,Q,nQ);
VLG         input D,RST,H;
VLG         output Q,nQ;
VLG        endmodule
FSYM
SYM  #light1
BB(178,20,184,34)
TITLE 180 34  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(179,21,4,4,r)
VIS 1
PIN(180,35,0.000,0.000)Q
LIG(183,26,183,21)
LIG(183,21,182,20)
LIG(179,21,179,26)
LIG(182,31,182,28)
LIG(181,31,184,31)
LIG(181,33,183,31)
LIG(182,33,184,31)
LIG(178,28,184,28)
LIG(180,28,180,35)
LIG(178,26,178,28)
LIG(184,26,178,26)
LIG(184,28,184,26)
LIG(180,20,179,21)
LIG(182,20,180,20)
FSYM
SYM  #light3
BB(178,-25,184,-11)
TITLE 180 -11  #light
MODEL 49
PROP                                                                                                                                                                                                            
REC(179,-24,4,4,r)
VIS 1
PIN(180,-10,0.000,0.000)ClkOut
LIG(183,-19,183,-24)
LIG(183,-24,182,-25)
LIG(179,-24,179,-19)
LIG(182,-14,182,-17)
LIG(181,-14,184,-14)
LIG(181,-12,183,-14)
LIG(182,-12,184,-14)
LIG(178,-17,184,-17)
LIG(180,-17,180,-10)
LIG(178,-19,178,-17)
LIG(184,-19,178,-19)
LIG(184,-17,184,-19)
LIG(180,-25,179,-24)
LIG(182,-25,180,-25)
FSYM
SYM  #and2
BB(40,15,75,35)
TITLE 52 26  #&
MODEL 402
PROP                                                                                                                                                                                                            
REC(0,0,0,0,)
VIS 0
PIN(40,30,0.000,0.000)b
PIN(40,20,0.000,0.000)a
PIN(75,25,0.090,0.070)s
LIG(40,30,48,30)
LIG(48,15,48,35)
LIG(68,25,75,25)
LIG(67,27,64,31)
LIG(68,25,67,27)
LIG(67,23,68,25)
LIG(64,19,67,23)
LIG(59,16,64,19)
LIG(64,31,59,34)
LIG(59,34,48,35)
LIG(48,15,59,16)
LIG(40,20,48,20)
VLG     and and2(out,a,b);
FSYM
CNC(125 35)
CNC(-15 25)
CNC(125 0)
LIG(-20,25,-15,25)
LIG(125,35,180,35)
LIG(95,75,95,45)
LIG(110,35,125,35)
LIG(125,0,125,35)
LIG(-10,0,125,0)
LIG(-10,0,-10,15)
LIG(-10,15,0,15)
LIG(35,20,40,20)
LIG(75,25,80,25)
LIG(-20,40,30,40)
LIG(30,40,30,30)
LIG(30,30,40,30)
LIG(80,35,75,35)
LIG(75,35,75,55)
LIG(-20,55,75,55)
LIG(-20,75,95,75)
LIG(-15,25,-15,-15)
LIG(-15,25,0,25)
LIG(-15,-15,130,-15)
LIG(125,0,125,-5)
LIG(125,-5,130,-5)
LIG(165,-10,180,-10)
TEXT 44 88  #T-reset flip flop
FFIG C:\Documents and Settings\Administrator\My Documents\Dsch2\Book on CMOS\ClkBascT.sch
