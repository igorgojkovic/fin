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
         MNABCENA=NABCENA
         MNABVRED=NABVRED
         MZADNAB=CENA
         MVELCENA=VELCENA
         MMALCENA=MALCENA
         MKOL=KOL
         SELECT ROB
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
               
               IF TKORIGUJMC='D'
                  REPLACE MALCENA WITH ROUND(VELCENA*(100+PROCPOR)/100,0)
                  REPLACE DMCENA WITH ROUND(MALCENA/MKURS,4)
               ENDIF
               IF TMCMARZA='D'
                  REPLACE MALCENA WITH ROUND(VELCENA*(100+MAKSMARMP)*(100+PROCPOR)/100/100,0)
                  REPLACE DMCENA WITH ROUND(MALCENA/MKURS,4)
               ENDIF
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
ENDIF
POP KEY
