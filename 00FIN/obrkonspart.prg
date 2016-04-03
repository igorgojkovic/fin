PUSH KEY CLEAR
PUBLIC TKOJI
TKOJI='KONS'
SELECT ANALP
SET RELATION TO
mrec=RECNO()
DO FORM FAN0
SELECT an0
mpib=pib
msifra=sifra
SET ORDER TO 1
SELECT analp
GOTO mrec
SET RELATION TO sifra INTO an0 additive
*SET STEP ON 
mmsifra=sifra
IF mmsifra=SPACE(5)
replace sifra with msifra
replace pib WITH mpib
endif
SET EXact ON
obrkons.GRD0.SETFOCUS
obrkons.REFRESH
obrkons.GRD0.SETFOCUS
POP KEY
obrkons.REFRESH
SET EXact OFF