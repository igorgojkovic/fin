PUSH KEY CLEAR
TKOJI='PCEVG'
PCEV.GRD0.COLUMN1.SETFOCUS
*KAL.GRD0.COLUMN1.SETFOCUS
   MBRKAL=BRKAL
   IF PCEVG->ARHIVA=' '
      SELECT PCEV
      SET RELATION TO
      SELECT PCEVG
      LOCATE FOR BRKAL=MBRKAL

      IF.NOT.FOUND()
         APPEND BLANK
         REPLACE BRKAL WITH MBRKAL
      ENDIF      
      
      DO FORM PCEVZAG

      MDATDOK=DATDOK
      SELECT PCEV
      SET RELATION TO BRKAL INTO PCEVG ADDITIVE
      SET RELATION TO RSIF INTO ROB ADDITIVE
      SET ORDER TO 1
      LOCATE FOR BRKAL=MBRKAL

      IF FOUND()
          DO WHILE.NOT.EOF()
             IF BRKAL<>MBRKAL
                EXIT
             ENDIF   
             REPLACE DATDOK WITH PCEVG.DATDOK    
             DO PCEVRAC
             SKIP
          ENDDO   
      ENDIF
      LOCATE FOR BRKAL=MBRKAL

      SET ORDER TO   
   ENDIF
PCEV.GRD0.COLUMN4.SETFOCUS
TKOJI='PCEV0'
POP KEY
