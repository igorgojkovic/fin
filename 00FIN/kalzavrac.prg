PUSH KEY CLEAR
KAL.GRD0.COLUMN4.SETFOCUS
SELECT KAL
IF RECCOUNT()>0
PUSH KEY CLEAR
   MBRKAL=BRKAL
   DO FORM KALZAVRAC
POP KEY
ENDIF
POP KEY
KALZAVIS0.RELEASE
