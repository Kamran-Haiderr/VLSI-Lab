XOR Example:

This file helps the user see an example where the layout matches the schematic, 
the layout has a short in it, the layout has an open in it, and the layout has
a short and open in it.

xor2.vdb - layout matches the schematic.



xor2_Open.vdb - the layout has an open in it.

Report of nodes:
****************

Fragmented class of nodes
XOR2_Open.spc A                     connected to     2 M_NMOS_G       2 M_PMOS_G   
xor2.sp       A                     connected to     2 M_NMOS_G       2 M_PMOS_G   
xor2.sp       B                     connected to     2 M_NMOS_G       2 M_PMOS_G   
---------------------------------------------------

Fragmented class of nodes
XOR2_Open.spc 10                    connected to     1 M_NMOS_G       1 M_PMOS_G   
XOR2_Open.spc B                     connected to     1 M_NMOS_G       1 M_PMOS_G   
---------------------------------------------------

We can guess that XOR2_Open.spc(A) is equal to xor2.sp(A).  Also we can guess that
if we combine XOR2_Open.spc(10) and XOR2_Open.spc(B) it will have the same fanout
as xor2.sp(B).  This means that there is probably a open between XOR2_Open.spc(10)
and XOR2_Open.spc(B) and that they should be shorted together in the layout.



xor2_Short.vdb - the layout has a short in it

Report of nodes:
****************

Fragmented class of nodes
xor2.sp       Out                   connected to     2 M_NMOS_D/S       2 M_PMOS_D/S   
---------------------------------------------------

Fragmented class of nodes
XOR2_Short.spc B                     connected to     2 M_NMOS_G       2 M_PMOS_G   
xor2.sp       A                     connected to     2 M_NMOS_G       2 M_PMOS_G   
xor2.sp       B                     connected to     2 M_NMOS_G       2 M_PMOS_G   
---------------------------------------------------

Fragmented class of nodes
XOR2_Short.spc A                     connected to     2 M_NMOS_D/S       2 M_NMOS_G       2 M_PMOS_D/S       2 M_PMOS_G   
---------------------------------------------------

We can guess that XOR2_Short.spc(B) is equal to xor2.sp(B).  Also we can guess that
if we break XOR2_Short.spc(A) into two nodes, one with a fanout of 
2 M_NMOS_G  2 M_PMOS_G and one with a fanout of 2 M_NMOS_D/S  2 M_PMOS_D/S, then 
these two nodes would be equal to xor2.sp(B) and xor2.sp(Out).  This mean there is 
probably a short in XOR2_Short.spc(A) between A and Out in the layout.




xor2_Short_Open.vdb - the layout has a short and open in it

Report of nodes:
****************

Fragmented class of nodes
xor2.sp       Out                   connected to     2 M_NMOS_D/S       2 M_PMOS_D/S   
---------------------------------------------------

Fragmented class of nodes
xor2.sp       A                     connected to     2 M_NMOS_G       2 M_PMOS_G   
xor2.sp       B                     connected to     2 M_NMOS_G       2 M_PMOS_G   
---------------------------------------------------

Fragmented class of nodes
XOR2_Short_Open.spc A                     connected to     2 M_NMOS_D/S       2 M_NMOS_G       2 M_PMOS_D/S       2 M_PMOS_G   
---------------------------------------------------

Fragmented class of nodes
XOR2_Short_Open.spc 10                    connected to     1 M_NMOS_G       1 M_PMOS_G   
XOR2_Short_Open.spc B                     connected to     1 M_NMOS_G       1 M_PMOS_G   
---------------------------------------------------

We can guess that if combine xor2.sp(Out) and xor2.sp(A) it would equal 
XOR2_Short_Open.spc(A).  This means that there is either an open in the schematic or 
a short in the layout.  We will assume that the problem is in the layout, and that A 
is shorted to Out in the layout.  We can also guess that if we combine 
XOR2_Short_Open.spc(10) and XOR2_Short_Open.spc(B), it would be equal to xor2.sp(B).
This mean there is probably a open in XOR2_Short_Open.spc(B) in the layout causing 
the extra node.



Copyright © 2000-2005 Tanner EDA, A Division of Tanner Research, Inc.
All Rights Reserved.

Tanner Research, Inc.
2650 East Foothill Boulevard
Pasadena, CA  91107, USA

Telephone: 1-877-304-5544 (Toll Free)
           1-626-792-3000
Fax:       1-626-792-0300
e-mail:    support@tanner.com