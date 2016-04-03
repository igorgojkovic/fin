PUSH KEY CLEAR
IF ARHIVA=' '
   mbrkal=brkal
   SELECT NIV
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
         SELECT NIV
         SKIP
      ENDDO   
   endif   
ENDIF
NIV.GRD0.SETFOCUS
POP KEY
NIV.REFRESH
