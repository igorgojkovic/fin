PUSH KEY CLEAR
MBRKAL=BRKAL
KAL.CMDKALRABAT.SETFOCUS
*KAL.GRD0.COLUMN1.SETFOCUS
IF KALg.arhiva=' '
   DO FORM KALRABAT
   SELECT KAL
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL

   SET ORDER TO 
ENDIF
KAL.GRD0.COLUMN6.SETFOCUS 
KAL.REFRESH
POP KEY
