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
               MCENA=VELCENA
            ELSE
               MCENA=MALCENA   
            ENDIF
         ENDIF          
         SELECT KAL
         IF TOBJEKAT='V'
            REPLACE VALCENA WITH MCENA
         ELSE
            REPLACE MALCENA WITH MCENA            
         ENDIF
         SKIP
      ENDDO   
   endif   
   SELECT ROB0
   USE
   SELECT KAL
ENDIF
ENDIF
POP KEY
