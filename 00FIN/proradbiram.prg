PUSH KEY CLEAR

   SELECT PRORAD
   MLDSIF=LDSIF
   MCENA=CENA
   SELECT PRONORMA
   IF PSIF=SPACE(5).AND.MSIF=SPACE(5).AND.PMSIF=SPACE(5).AND.ASIF=SPACE(5).AND.LDSIF=SPACE(5).AND.DIRSIF=SPACE(5).AND.OPSSIF=SPACE(5)
      REPLACE LDSIF WITH MLDSIF
      REPLACE CENA WITH MCENA
   ENDIF
PRORAD.VISIBLE=.F.
IF MNOR=1
   PRONORMA.REFRESH
ELSE
   PRONORMAL.REFRESH
ENDIF
PRORAD.VISIBLE=.T. 
   
SELECT PRORAD
PRORAD.GRD0.COLUMN2.SETFOCUS
POP KEY
PRORAD.REFRESH