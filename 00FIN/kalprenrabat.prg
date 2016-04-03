PUSH KEY CLEAR
IF KALG.ARHIVA=' '
   mbrkal=brkal
   SELECT kal
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL
   IF FOUND()
      MDATNAB=DATDOK
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF   
         MRSIF=RSIF
         MRAB1=RABPROC
         SELECT ROB
         SEEK MRSIF
         IF FOUND()
            REPLACE RAB1 WITH MRAB1
         ENDIF
         SELECT KAL
         SKIP
      ENDDO   
   endif   
ENDIF
POP KEY
