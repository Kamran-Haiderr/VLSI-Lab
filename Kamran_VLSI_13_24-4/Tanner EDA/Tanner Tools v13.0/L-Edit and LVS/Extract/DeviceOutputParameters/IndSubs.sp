
.SUBCKT IND_Thin In Out L=1 W=1 Turns=1 Radius=1
.PARAM MUo = 1.2E-6
.PARAM M5_Conduct = 0.04
L1 In 2 L='MUo*Turns^2*Radius'
Rs 2 Out R='L/(W*M5_Conduct)'
.ENDS

.SUBCKT IND_Thick In Out L=1 W=1 Turns=1 Radius=1
.PARAM MUo = 1.2E-6
.PARAM M5_Conduct = 0.04
L1 In 2 L='MUo*Turns^2*Radius'
Rs 2 Out R='L/(W*M5_Conduct)'
.PARAM Eox = '3.9*8.85E-12'
.PARAM Tox = 6.5E-6
.PARAM Cox = 'L*W*Eox/Tox'
Cox1 In 0 'Cox/2'
Cox2 Out 0 'Cox/2'
.ENDS
