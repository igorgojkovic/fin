PUSH KEY CLEAR
*KAL.GRD0.COLUMN1.SETFOCUS
KAL.CMDKALSTAMP.SETFOCUS
MREC=RECNO()
SET ORDER TO 1
DO FORM KALSTAMP
SELECT KAL
GOTO MREC
SET ORDER TO
KAL.GRD0.COLUMN6.SETFOCUS
POP KEY