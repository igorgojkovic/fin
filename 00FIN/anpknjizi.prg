PUSH KEY CLEAR
IF PPASAN=1
   IF TANAL='ANP'
      IF NALB='ANAL'
         IF BRNAL<>SPACE(6)
            ANP.COMMAND7.SETFOCUS
            SET EXACT OFF
            MBRNAL=BRNAL
            SET ORDER TO 4
            SEEK MBRNAL
            SET EXACT ON
            MDUG=0
            MPOT=0
            DO WHILE.NOT.EOF()
               IF BRNAL<>MBRNAL
                  EXIT
               ENDIF
               MDUG=MDUG+DUG
               MPOT=MPOT+POT
               SKIP
            ENDDO
            IF MDUG<>0.OR.MPOT<>0      
               GO TOP
               CLOSE ALL TABLES
               KANAL='ANAL'+TANREDNI
               USE &KANAL IN 0 ALIAS ANAL
               SELECT ANAL
               APPEND FROM &KANALP FOR DUG<>0.OR.POT<>0.AND.BRNAL=MBRNAL
               USE
               USE &KANALP EXCLU IN 0 ALIAS ANALP
               SELECT ANALP 
               DELETE ALL
               PACK
               USE
               ANP.RELEASE
            ELSE
               SEEK BRNAL
               SET ORDER TO
               ANP.REFRESH
            ENDIF
         ENDIF      
      ENDIF
   ENDIF
ENDIF   
POP KEY
