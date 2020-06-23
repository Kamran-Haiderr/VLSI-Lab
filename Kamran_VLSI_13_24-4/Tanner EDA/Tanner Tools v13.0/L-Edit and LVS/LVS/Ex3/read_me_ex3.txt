Automorph Example:

This file documents an automorph example.  Refer to the LVS manual for a more
thorough description of this example.

Invocation:
lvs ex3_1.spc ex3_2.spc -o ex3_1.lvs -nrcl -vfar -fafr 

GUI Settings:
Layout netlist: ex3_1.spc
Schematic netlist: ex3_2.spc
Output file: ex3.lvs
Node and element list: ex3.lst
Display Options - Output File
  * Show fragmented classes
  * Show automorph classes
  * Show detailed processing information and merged devices
Device Terminals
  * Consider M bulk terminals and B, J, Q, Z substrate terminals


Automorphism.  
Here it was enough to do the basic trial matching, which is 
the case most of the time.  If the basic trial matching leads to 
fragmentation, pre-match a pair from the same automorph class as the last 
trial-matched pair in the list of matched nodes/elements in ex3_1.lvs

Example: If you would apply detailed trial matching with pre-matching on this
case, assuming that the matching of M1(XSUBA/X34)_2 and M350 is the last
matched pair during detailed trial matching, pair up M1(XSUBA/X34)_2 with
M350 instead:

in the pre-match file (e.g. ex3_1.pre):

M1(XSUBA/X34)_2	M350

and reinvoke LVS:
lvs ex3_1.spc ex3_2.spc -o ex3_1.lvs -p ex3_1.pre -nrcl -vfar -fafr 


Copyright © 1994-2005 Tanner EDA, A Division of Tanner Research, Inc.
All Rights Reserved.

Tanner Research, Inc.
2650 East Foothill Boulevard
Pasadena, CA  91107, USA

Telephone: 1-877-304-5544 (Toll Free)
           1-626-792-3000
Fax:       1-626-792-0300
e-mail:    support@tanner.com
