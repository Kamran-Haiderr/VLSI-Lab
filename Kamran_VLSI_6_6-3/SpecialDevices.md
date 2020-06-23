
.SUBCKT NMOS_DEEP Drain Gate Source Bulk IsoBulk L=240n W=720n AREA_DRAIN=518.4f PERI_DRAIN=2.88u AREA_SOURCE=518.4f PERI_SOURCE=2.88u
M1 Drain Gate Source Bulk NMOS L='L' W='W' AS='AREA_SOURCE' PS='PERI_SOURCE' AD='AREA_DRAIN' PD='PERI_DRAIN'
D1 Bulk IsoBulk ISODIODE
.ENDS