PUSH KEY CLEAR
KAL.CMDKALRAB1.SETFOCUS
IF KALG.ARHIVA=' '
MBRKAL=BRKAL
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL

IF FOUND()
   DO WHILE.NOT.EOF()
      IF BRKAL<>MBRKAL
         EXIT
      ENDIF   
      REPLACE RABPROC WITH ROB.RAB1
      REPLACE RABAT WITH ROUND(IZNOS*RABPROC/100,2)
      DO KALRAC
      SELECT KAL
      SKIP
   ENDDO   
ENDIF
LOCATE FOR BRKAL=MBRKAL
SET ORDER TO 
ENDIF
KAL.GRD0.COLUMN6.SetFocus
POP KEY
KAL.REFRESH
