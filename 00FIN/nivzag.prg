PUSH KEY CLEAR
IF arhiva=' '
NIV.GRD0.COLUMN1.SETFOCUS
MBRKAL=BRKAL
SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL

DO  FORM NIVZAG

SELECT NIV
SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL


IF FOUND()
   MBRNAL=BRNAL
   MDATDOK=DATDOK
   MSEMA=SEMA
   DO WHILE.NOT.EOF()
      IF BRKAL<>MBRKAL
         EXIT
      ENDIF
      REPLACE SEMA WITH MSEMA
      REPLACE BRNAL WITH MBRNAL
      REPLACE DATDOK WITH MDATDOK   
      SKIP
   ENDDO
ENDIF      
SELECT NIV
   LOCATE FOR BRKAL=MBRKAL

SET ORDER TO

NIV.GRD0.COLUMN2.SETFOCUS
endif
POP KEY
NIV.REFRESH  
