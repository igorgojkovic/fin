PUSH KEY CLEAR
KAL.CMDKALZAG.SETFOCUS
*KAL.GRD0.COLUMN1.SETFOCUS
   MBRKAL=BRKAL
   IF KALG->ARHIVA=' '
      SELECT KAL
      SET RELATION TO
      SELECT KALG
      LOCATE FOR BRKAL=MBRKAL

      IF.NOT.FOUND()
         APPEND BLANK
         REPLACE BRKAL WITH MBRKAL
      ENDIF      
      
      DO FORM KALZAG

      MDATDOK=DATDOK
      SELECT KAL
      SET RELATION TO BRKAL INTO KALG ADDITIVE
      SET RELATION TO RSIF INTO ROB ADDITIVE
      SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL

      IF FOUND()
          DO WHILE.NOT.EOF()
             IF BRKAL<>MBRKAL
                EXIT
             ENDIF   
             REPLACE DATDOK WITH KALG.DATDOK    
             DO KALRAC
             SKIP
          ENDDO   
      ENDIF
LOCATE FOR BRKAL=MBRKAL

      SET ORDER TO   
   ENDIF
KAL.GRD0.COLUMN4.SETFOCUS
POP KEY