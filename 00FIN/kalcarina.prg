PUSH KEY CLEAR
KAL.GRD0.COLUMN4.SETFOCUS
IF KALG.ARHIVA=' '
   SELECT KAL
   IF RECCOUNT()>0
      MBRKAL=BRKAL
      DO FORM KALCARINA
   ENDIF
ENDIF
POP KEY
KALZAVIS0.RELEASE
