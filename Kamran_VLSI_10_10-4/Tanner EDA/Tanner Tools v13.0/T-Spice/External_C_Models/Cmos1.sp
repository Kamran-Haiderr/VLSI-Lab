
.options cpath=include

.model nmos external winfile="mos1.c"
+    type="nmos" 
+    Vto=1.0         Kp=3.0E-5       Gamma=0.35      
+    Phi=0.65        Lambda=0.02     Tox=0.1u 
+    Nsub=1.0E+15    Nss=1.0E+10     Ld=0.8u 
+    Tpg=1.00        Uo=700.0        Af=1.2
+    Kf=1.0E-26      Is=1.0E-15      Js=1.0E-8
+    Pb=0.75         Cj=2.0E-4       Mj=0.5
+    Cjsw=1.00E-9    Mjsw=0.33       Fc=0.5
+    Cgbo=2.0E-10    Cgdo=4.00E-11   Cgso=4.00E-11   
+    Rd=10.0         Rs=10.0         Rsh=30.0   

x1 d g s b nmos l=5u w=5u 
vd d 0 5 
vg g 0 5
vs s 0 0
vb b 0 0

.dc vd 0 5 0.1 vg 0 5 0.5
.print dc i1(x1)
.end
