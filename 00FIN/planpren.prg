PARAMETERS mesec,MKONTO,MDUGPOT,MESN
PUSH KEY CLEAR
   MMESN=MESN
   SELECT NAL
   SEEK MKONTO
   MDUG=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF KONTO<>MKONTO
            EXIT
         ENDIF
         IF MONTH(DATDOK)=MESEC
            IF BRNAL<>'999991'.AND.BRNAL<>'999992'
               IF MDUGPOT='D'
                  MDUG=MDUG+DUG-POT
               ELSE
                  MDUG=MDUG+POT-DUG
               ENDIF   
            ENDIF   
         ENDIF
         SKIP
      ENDDO   
   ENDIF
   SELECT PLANME 
   REPLACE &MMESN WITH ROUND(MDUG,0)
POP KEY