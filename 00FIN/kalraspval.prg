PUSH KEY CLEAR
KAL.CMDKALRASPVAL.SETFOCUS
*KAL.GRD0.COLUMN4.SETFOCUS
IF KALg.arhiva=' '
   DO FORM KALRASPVAL
ENDIF
KAL.GRD0.SETFOCUS
POP KEY
KAL.REFRESH