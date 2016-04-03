PUSH KEY CLEAR
      SELECT ANKURSR
      SET ORDER TO 1
      GO TOP
      MBRNAL=BRNAL
      USE AAAN IN 0 
      SELECT AAAN
      LLAST=RECCOUNT()
      GO TOP
      DO WHILE.NOT.EOF()
         KKANAL ='ANAL'+ALLTRIM(SIFPROD)
         KK2ANAL ='ANAL'+ALLTRIM(SIFPROD)+'.DBF'
         MKONTO=KONTO
         MANVRSTA=DP
         IF FILE(KK2ANAL)
            USE &KKANAL IN 0 ALIAS ANAL EXCLU
            SELECT ANAL
            IF MBRNAL<>SPACE(6)
               DELETE ALL FOR BRNAL=MBRNAL
               PACK
            ENDIF
            SET ORDER TO 3
            SELECT ANKURSR
            SEEK MKONTO
            DO WHILE.NOT.EOF()
               IF KONTO<>MKONTO
                  EXIT
               ENDIF
               MDEV=DEV
               MDEVKURS=DEVKURS
               MNDEVKURS=NDEVKURS
               MDEVDUG=DEVDUG
               MDEVPOT=DEVPOT
               MDATDOK=DATDO
               MSIFRA=SIFRA
               SELECT ANAL
               *--------KNJIZENJE STORNA PO SALDU
               APPEND BLANK
               REPLACE SIFRA WITH MSIFRA
               REPLACE DATDOK WITH MDATDOK
               REPLACE VALUTA WITH MDATDOK
               REPLACE DEV WITH MDEV
               REPLACE DEVKURS WITH MDEVKURS
               REPLACE BRRAC WITH MBRNAL+' '+ALLTRIM(SIFRA)+'-'
               IF MANVRSTA='D'
                  REPLACE DEVDUG WITH -(MDEVDUG-MDEVPOT)
                  REPLACE DUG WITH DEVDUG*MDEVKURS
               ELSE
                  REPLACE DEVPOT WITH -(MDEVPOT-MDEVDUG)
                  REPLACE POT WITH DEVPOT*MDEVKURS
               ENDIF
               REPLACE BRNAL WITH MBRNAL
               *---------KNJIZENJE U BELO---------------
               APPEND BLANK
               REPLACE SIFRA WITH MSIFRA
               REPLACE DATDOK WITH MDATDOK
               REPLACE VALUTA WITH MDATDOK
               REPLACE DEV WITH MDEV
               REPLACE DEVKURS WITH MNDEVKURS
               REPLACE BRRAC WITH MBRNAL+' '+ALLTRIM(SIFRA)+'+'
               IF MANVRSTA='D'
                  REPLACE DEVDUG WITH (MDEVDUG-MDEVPOT)
                  REPLACE DUG WITH DEVDUG*MNDEVKURS
               ELSE
                  REPLACE DEVPOT WITH (MDEVPOT-MDEVDUG)
                  REPLACE POT WITH DEVPOT*MNDEVKURS
               ENDIF
               REPLACE BRNAL WITH MBRNAL
               SELECT ANKURSR
               SKIP
            ENDDO
            SELECT ANAL
            USE
         ENDIF
         SELECT AAAN
         SKIP
      ENDDO
      SELECT AAAN
      USE
      SELECT ANKURSR
      SET ORDER TO
POP KEY