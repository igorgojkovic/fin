PARAMETERS SVE
MMSVE=SVE
PUSH KEY CLEAR
MBRKAL=BRKAL
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
IF FOUND()
   DO WHILE.NOT.EOF()
      IF BRKAL<>MBRKAL
         EXIT
      ENDIF   
      IF RSIF<>SPACE(5)
         MRSIF=RSIF
         IF TOBJEKAT='V'
            M1CENA=VELCENA
         ELSE
            M1CENA=MALCENA
         ENDIF      
         
         SELECT ROB
         SEEK MRSIF
         IF FOUND()
            IF TOBJEKAT='V'
               MCENA=VELCENA
            ELSE
               MCENA=MALCENA
            ENDIF      
            IF mmsve=1
               IF MCENA<>M1CENA
                  REPLACE VAZI WITH '*'
               ENDIF   
            ELSE
               REPLACE VAZI WITH '*'
            endif   
         ENDIF
         SELECT KAL
      ENDIF      
      SKIP
   ENDDO
ENDIF      
SELECT KAL
LOCATE FOR BRKAL=MBRKAL

SET ORDER TO
POP KEY
