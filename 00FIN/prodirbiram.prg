PUSH KEY CLEAR

   SELECT PRODIR
   MDIRSIF=DIRSIF

   MCENA=CENA
   SELECT PRONORMA
   IF PSIF=SPACE(5).AND.MSIF=SPACE(5).AND.PMSIF=SPACE(5).AND.ASIF=SPACE(5).AND.LDSIF=SPACE(5).AND.DIRSIF=SPACE(5).AND.OPSSIF=SPACE(5)
      REPLACE DIRSIF WITH MDIRSIF
      REPLACE CENA WITH MCENA
   ENDIF
PRODIR.VISIBLE=.F.
IF MNOR=1
   PRONORMA.REFRESH
ELSE
   PRONORMAL.REFRESH
ENDIF
PRODIR.VISIBLE=.T. 
   
SELECT PRODIR
PRODIR.GRD0.COLUMN2.SETFOCUS
POP KEY
PRODIR.REFRESH