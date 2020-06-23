Parameter Matching Example:

This file documents a parameter matching example.  Refer to the LVS manual for a more
thorough description of this example.

Command Line Invocation:
lvs ex1_2.spc ex2_1.spc -o ex2.lvs -nrcl -c12 -dv5.000 -dg5.000 -y2 -vfa -faf 

GUI Settings:
Layout netlist: ex2_1.spc
Schematic netlist: ex2_2.spc
Output file: ex2.lvs
Node and element list: ex2.lst
Display Options - Output File
  * Show fragmented classes
  * Show automorph classes
Device Terminals
  * Consider M bulk terminals and B, J, Q, Z substrate terminals

During iteration:
We see that we have a parametric difference between two sets of transistors.
When something like this happens during the iteration, it means the two pairs 
are topologically perfect, it's merely a parameteric problem.  Since the pairs
are considered topologically perfect, we can continue the comparison. To
correct the parametric problem, we see that M6 in the subckt called as
X34, which in turn was called from the subckt called by XSUBA, all in file
EX2_1.SPC, and M346 in EX2_2.SPC are a topological match, but not a 
parametrical one.  We also realize that the subckt which contains M6 gets
called twice, which is why the error appears twice.

Please move to example 3.


Copyright © 1994-2005 Tanner EDA, A Division of Tanner Research, Inc.
All Rights Reserved.

Tanner Research, Inc.
2650 East Foothill Boulevard
Pasadena, CA  91107, USA

Telephone: 1-877-304-5544 (Toll Free)
           1-626-792-3000
Fax:       1-626-792-0300
e-mail:    support@tanner.com
