PUSH KEY CLEAR


   SELECT PROAMB
   MASIF=ASIF
   MCENA=PLCENA
   SELECT PRONORMA
   IF MSIF=SPACE(5).AND.PMSIF=SPACE(5).AND.ASIF=SPACE(5).AND.LDSIF=SPACE(5).AND.DIRSIF=SPACE(5).AND.OPSSIF=SPACE(5)
      REPLACE ASIF WITH MASIF
      REPLACE CENA WITH MCENA
   ENDIF
   
PROAMBP.VISIBLE=.F.
PRONORMAP.REFRESH
PROAMBP.VISIBLE=.T. 
   
SELECT PROAMB
PROAMBP.GRD0.COLUMN2.SETFOCUS
POP KEY
PROAMBP.REFRESH