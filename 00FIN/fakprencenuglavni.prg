PUSH KEY CLEAR
if tfpossif='D'.AND.TNEZAJEDNO<>'D'
IF FAKG.ARHIVA=' '
   USE ROB IN 0 ALIAS ROB0 ORDER 1
   mbrkal=brkal
   SELECT FAK
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL

   IF FOUND()
      MDATNAB=DATDOK
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF   
         MRSIF=RSIF
         MVELCENA=VELCENA
         MMALCENA=MALCENA
         MKOL=KOLI
         SELECT ROB0
         SEEK MRSIF
         IF FOUND()
            IF TOBJEKAT='V'
               REPLACE VELCENA WITH MVELCENA
               IF KURS<>0
                  MKURS=KURS
               ELSE
                  MKURS=1
               ENDIF      
               REPLACE DCENA WITH ROUND(VELCENA/MKURS,4)
            else 
               REPLACE MALCENA WITH MMALCENA
               IF KURS<>0
                  MKURS=KURS
               ELSE
                  MKURS=1
               ENDIF      
               REPLACE DMCENA WITH ROUND(MALCENA/MKURS,4)
            ENDIF
         ENDIF          
         SELECT FAK
         SKIP
      ENDDO   
   endif   
   SELECT ROB0
   USE
   SELECT FAK
ENDIF
ENDIF
POP KEY
