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
               MCENA=VELCENA
            ELSE
               MCENA=MALCENA   
            ENDIF
         ENDIF          
         SELECT FAK
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
   SELECT fak
ENDIF
ENDIF
POP KEY
