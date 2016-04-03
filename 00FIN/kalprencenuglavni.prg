PUSH KEY CLEAR
if tfpossif='D'.AND.TNEZAJEDNO<>'D'
IF KALG.ARHIVA=' '
   USE ROB IN 0 ALIAS ROB0 ORDER 1
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
         MNABCENA=NABCENA
         MNABVRED=NABVRED
         MZADNAB=CENA
         MVELCENA=VELCENA
         MMALCENA=MALCENA
         MKOL=KOL
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
               REPLACE ZADNAB WITH MZADNAB
               REPLACE NABCENA WITH MNABCENA
            else 
               REPLACE MALCENA WITH MMALCENA
               IF KURS<>0
                  MKURS=KURS
               ELSE
                  MKURS=1
               ENDIF      
               REPLACE DMCENA WITH ROUND(MALCENA/MKURS,4)
               REPLACE ZADNABM WITH MZADNAB
               REPLACE NABCENAM WITH MNABCENA
            ENDIF
            REPLACE DATNAB WITH MDATNAB
         ENDIF          
         SELECT KAL
         SKIP
      ENDDO   
   endif   
   SELECT ROB0
   USE
   SELECT KAL
ENDIF
ENDIF
POP KEY
