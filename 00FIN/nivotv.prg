PUSH KEY CLEAR
NIV.GRD0.COLUMN4.SETFOCUS
SET ORDER TO 1
MBRKAL=BRKAL
LOCATE FOR BRKAL=MBRKAL

IF FOUND()
   IF ARHIVA='*'
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         REPLACE ARHIVA WITH ' '   
         SKIP
      ENDDO   
   ELSE
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         REPLACE ARHIVA WITH '*'   
         SKIP
      ENDDO   
   ENDIF
ENDIF
   LOCATE FOR BRKAL=MBRKAL

POP KEY