PUSH KEY CLEAR
SELECT VP
SET RELATION TO
SELECT AN0
SET ORDER TO 2
DO FORM FAN0
MSIFRA=SIFRA
SELECT AN0
SET ORDER TO 1
SELECT VP
SET RELATION TO SIFUL INTO VPULICE ADDITIVE
SET RELATION TO GRUPA INTO VPGRUPA ADDITIVE
SET RELATION TO SIFRA INTO AN0 ADDITIVE
SET ORDER TO 2
SEEK MSIFRA
IF.NOT.FOUND()
   GO TOP
ENDIF   
IF VKOJIGRAD='PN'
   VPAF.STRANA.PAGE1.GRD0.SETFOCUS
   VPAF.REFRESH
ELSE
   VCAF.STRANA.PAGE1.GRD0.SETFOCUS
   VCAF.REFRESH
endif
POP KEY