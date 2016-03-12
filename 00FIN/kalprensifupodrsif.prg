PUSH KEY CLEAR
IF KALG.ARHIVA=' '
   mbrkal=brkal
   mpodrsif=ALLTRIM(kalg.sifra)
   SELECT kal
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF   
         mrsif=rsif
         SELECT ROB
         SEEK MRSIF
         IF FOUND()
            REPLACE podrsif WITH Mpodrsif
         ENDIF
         SELECT KAL
         SKIP
      ENDDO   
   endif   
ENDIF
POP KEY
