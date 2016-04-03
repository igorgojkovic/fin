PUSH KEY CLEAR
IF TNET=1
   MBRKAL=BRKAL
   MBRNAL=FAKG.BRNAL
   IF MBRNAL<>SPACE(6)
   
   IF FAKG.ARHIVA=' '
      SELECT FAK
      SET RELATION TO
      USE
      USE &KFAK IN 0 ALIAS FAK EXCLU
      SELECT FAK
      DELETE ALL FOR BRKAL=MBRKAL
      PACK
      USE    
      SELECT FAKG
      USE    
      USE &KFAKG IN 0 ALIAS FAKG EXCLU
      SELECT FAKG
      DELETE ALL FOR BRKAL=MBRKAL
      PACK
      USE
      *----------BRISANJE IZ GOTOVIH NALOGA---------
      USE NALAP IN 0 ORDER 2
      SELECT NALAP
      SEEK MBRNAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRNAL<>MBRNAL
               EXIT
            ENDIF
            REPLACE KONTO WITH 'B'
            REPLACE DUG WITH 0
            REPLACE POT WITH 0
            REPLACE DEVDUG WITH 0
            REPLACE DEVPOT WITH 0   
            SKIP
         ENDDO   
      ENDIF  
      SELECT NALAP
      USE
      *----------BRISANJE IZ GLAVNE KNJIGE--------
      USE NAL IN 0 ORDER 2
      SELECT NAL
      SEEK MBRNAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRNAL<>MBRNAL
               EXIT
            ENDIF
            REPLACE KONTO WITH 'B'
            REPLACE DUG WITH 0
            REPLACE POT WITH 0
            REPLACE DEVDUG WITH 0
            REPLACE DEVPOT WITH 0   
            SKIP
         ENDDO   
      ENDIF  
      SELECT NAL
      USE
      
      *----------BRISANJE IZ KEPU I TRGOVACKE---------
      IF TOBJEKAT='V'
         KTM='TVTM'+TTVREDNI+'.DBF'
         USE &KTM IN 0 ORDER 3 ALIAS TM
         SELECT TM
         SEEK MBRNAL
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF BRNAL<>MBRNAL
                  EXIT
               ENDIF
               REPLACE OPIS WITH 'BRISANO'
               REPLACE UKNAB WITH 0
               REPLACE VREDPROD WITH 0
               SKIP
            ENDDO   
         ENDIF  
         SELECT TM
         USE
      ENDIF
      *----------BRISANJE IZ KNJIGE PRIHODA--------
      USE TMP0 IN 0 ORDER 3 ALIAS TMP
      SELECT TMP
      SEEK MBRNAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRNAL<>MBRNAL
               EXIT
            ENDIF
            REPLACE OPIS WITH 'BRISANO'
            REPLACE NABVRED WITH 0
            REPLACE SOPVRED WITH 0
            REPLACE MARZA WITH 0
            REPLACE POREZ WITH 0
            REPLACE PLACPOR WITH 0
            REPLACE MALVRED WITH 0
            REPLACE PROO WITH 0
            REPLACE PRON WITH 0
            REPLACE UKPRIH WITH 0
            REPLACE UKRASH WITH 0
            SKIP
         ENDDO   
      ENDIF  
      SELECT TMP
      USE
      *----------BRISANJE IZ KNJIGE PDV--------
      USE PDVI IN 0 ORDER 5 ALIAS PDVI
      SELECT PDVI
      SEEK MBRNAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRNAL<>MBRNAL
               EXIT
            ENDIF
            REPLACE VPDV WITH ''
            REPLACE BRRAC WITH ' '
            REPLACE UKPROD WITH 0
            REPLACE OSN18 WITH 0
            REPLACE OSN8 WITH 0
            REPLACE PDV18 WITH 0
            REPLACE PDV8 WITH 0
            REPLACE PDV WITH 0
            REPLACE UKUPNO WITH 0
            SKIP
         ENDDO   
      ENDIF  
      SELECT PDVI
      USE

      *----------BRISANJE IZ ANALITIKE-------
      MSEMA=FAKPRN.SEMA
      USE &KKSEMA IN 0 ALIAS KSEMA ORDER 1
      SELECT KSEMA
      SEEK MSEMA
      IF FOUND()
         MKONTO=K_FAK
         USE AAAN IN 0
         SELECT AAAN
         LOCATE FOR KONTO=MKONTO
         IF FOUND()
            MSIFPROD=ALLTRIM(SIFPROD)
            SELECT AAAN
            USE
            MANAL='ANAL'+MSIFPROD
            mMANAL='ANAL'+MSIFPROD+'.DBF'
            IF FILE(mMANAL)
               USE &MANAL IN 0 ALIAS ANAL
               SELECT ANAL
               SET ORDER TO 4
               SEEK MBRNAL
               IF FOUND()
                  DO WHILE.NOT.EOF()
                     IF BRNAL<>MBRNAL
                        EXIT
                     ENDIF
                     REPLACE DUG WITH 0
                     REPLACE POT WITH 0
                     REPLACE DEV WITH ' '
                     REPLACE DEVKURS WITH 0
                     REPLACE DEVDUG WITH 0
                     REPLACE DEVPOT WITH 0   
                     SKIP
                  ENDDO   
               ENDIF
               USE
            ENDIF
         ELSE
            SELECT AAAN
            USE   
         ENDIF
      ENDIF
      SELECT KSEMA
      USE
   ENDIF
   
   ENDIF
ENDIF
FAKSERV.RELEASE
POP KEY