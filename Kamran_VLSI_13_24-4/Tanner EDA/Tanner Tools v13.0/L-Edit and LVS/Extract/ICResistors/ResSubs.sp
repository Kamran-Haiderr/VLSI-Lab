* Title.

.SUBCKT ICResPoly Plus Minus Bulk L=1 W=1
.PARAM Poly_Conduct = 140 
.PARAM Rs='L/(W*Poly_Conduct)'
.PARAM Eox = '3.9*8.85E-12'
.PARAM Tox = 3.750E-7
.PARAM Cs='L*W*Eox/Tox'
R1 Plus  2     R='Rs/2'
R2 2     Minus R='Rs/2'
C1 Plus  Bulk  C='Cs/4'
C2 2     Bulk  C='Cs/2'
C3 Minus Bulk  C='Cs/4'
.ENDS
