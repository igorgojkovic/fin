PUSH KEY CLEAR
   MBRNAL=BRNAL
   SELECT BLP
   IF EOF()
      GO BOTTOM
   ENDIF   
   MBRNAL=BRNAL
   SET ORDER TO 2
   PUBLIC DA_NE
   DA_NE='N'
   DO PORUKADANE WITH ' KNJIŽENJE NALOGA '+MBRNAL
   IF DA_NE='D'   
      GO TOP
      USE NAL IN 0 ALIAS NAL ORDER 2
      SELECT NAL
      SEEK MBRNAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRNAL<>MBRNAL
               EXIT
            ENDIF
            REPLACE DUG WITH 0 
            REPLACE POT WITH 0
            SKIP
         ENDDO       
      ENDIF
      DO IDEL WITH (Kkockax)
      DO IDEL WITH (Kkockax2)
      DO IDEL WITH (Kkockax3)
      SELECT NAL
      COPY STRUCTURE TO &KKOCKA
      USE
      USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
      USE NALAP IN 0 ALIAS NAL ORDER 2
      SELECT NAL
      SEEK MBRNAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRNAL<>MBRNAL
               EXIT
            ENDIF
            REPLACE DUG WITH 0
            REPLACE POT WITH 0
            SKIP
         ENDDO       
      ENDIF
      SELECT BLP
      SEEK MBRNAL
      MMDUG=0
      MMPOT=0
      MOPIS=''
      MDATDOK=DATDOK
*      MKONTO='2430000000'
      MKONTO=TBLKONTO
      MDNEV=STR(DNEV,4,0)
      DO WHILE.NOT.EOF()
         IF BRNAL<>MBRNAL
            EXIT
         ENDIF
         IF DUG<>0.OR.POT<>0
            SCAttER name POLJA
            SELECT KOCKA
            APPEND BLANK
            GATHER NAME POLJA   
            MDUG=DUG
            MPOT=POT
            REPLACE OPIS WITH 'BLAGAJNA '+MDNEV
            REPLACE DUG WITH MPOT
            REPLACE POT WITH MDUG 
            MMDUG=MMDUG+DUG
            MMPOT=MMPOT+POT
            SELECT BLP
         ENDIF
         SKIP
      ENDDO
      SELECT KOCKA
      INDEX ON KONTO+MP+DOK TAG KONTO
      SET ORDER TO 1
      TOTAL ON KONTO+MP+DOK TO &KKOCKA2 FIELDS DUG,POT FOR DUG<>0
      TOTAL ON KONTO+MP+DOK TO &KKOCKA3 FIELDS DUG,POT FOR POT<>0
      DELETE ALL
      PACK
      APPEND FROM &KKOCKA2
      APPEND FROM &KKOCKA3
      IF MMPOT<>0
         APPEND BLANK
         REPLACE DUG WITH MMPOT
         REPLACE DATDOK WITH MDATDOK
         REPLACE OPIS WITH 'BLAGAJNA '+MDNEV
         REPLACE KONTO WITH MKONTO
         REPLACE BRNAL WITH MBRNAL
      ENDIF
      IF MMDUG<>0
         APPEND BLANK
         REPLACE POT WITH MMDUG
         REPLACE DATDOK WITH MDATDOK
         REPLACE OPIS WITH 'BLAGAJNA '+MDNEV
         REPLACE KONTO WITH MKONTO
         REPLACE BRNAL WITH MBRNAL
      ENDIF
      USE      
      SELECT NAL
      APPEND FROM &KKOCKA
      SELECT NALBROJ
      SEEK MBRNAL
      IF FOUND()
         REPLACE DATKNJI WITH DATE()
      ENDIF   
      KBL='BL'+TBLREDNI
      USE &KBL IN 0 ALIAS BL
      SELECT BLP
      GO TOP
      DO WHILE.NOT.EOF()
         IF (DUG<>0.OR.POT<>0).AND.(BRNAL=MBRNAL)
            SCAttER name POLJA
            SELECT BL
            APPEND BLANK
            GATHER NAME POLJA   
            SELECT BLP
         ENDIF
         SKIP
      ENDDO
      SELECT BL
      USE
      SELECT BLP
      USE
      SELECT NALBROJ
      SEEK MBRNAL
      IF FOUND()
         REPLACE DATKNJI WITH DATE()
      ENDIF   
*--------------OVDE SE KNJIZI ANALITIKA----09.04.2007.-----------------------
      USE AAAN IN 0
      USE &KBLP EXCLU IN 0 ALIAS BLP
      SELECT BLP
      SET ORDER TO 2
      SEEK MBRNAL
      IF FOUND()
      DO WHILE.NOT.EOF()
         IF BRNAL<>MBRNAL
            EXIT
         ENDIF   
         MKONTO=KONTO
         MSIFRA=SIFRA
         MDUG=DUG
         MPOT=POT
         MBRNAL=BRNAL
         MDATDOK=DATDOK
         MVALUTA=DATDOK
         MBRRAC=LTRIM(SIFRA)+BRNAL
         mdevdug=devdug
         mdevpot=devpot
         mdevkurs=devkurs
         mdev=dev
         IF VAL(SIFRA)>0
            SELECT AAAN
            LOCATE FOR KONTO=MKONTO
            IF FOUND()
               MTREDNI=ALLTRIM(STR(RECNO(),2,0))
               KANAL='ANAL'+MTREDNI
                  USE &KANAL IN 0 ALIAS ANAL ORDER 1              
                  SELECT ANAL
                  APPEND BLANK
                  REPLACE SIFRA WITH MSIFRA
                  REPLACE DATDOK WITH MDATDOK
                  REPLACE VALUTA WITH MVALUTA
                  REPLACE BRRAC WITH MBRRAC
                  REPLACE DUG WITH MPOT
                  REPLACE POT WITH MDUG
                  REPLACE devDUG WITH MdevPOT
                  REPLACE devPOT WITH MdevDUG
                  REPLACE devkurs WITH Mdevkurs
                  REPLACE dev WITH Mdev
                  REPLACE BRNAL WITH MBRNAL
                  USE
            ENDIF
         ENDIF
         SELECT BLP
         SKIP
      ENDDO
      SELECT AAAN
      USE
      ENDIF
*----------------KRAJ KNJIZENJA ANALITIKE------------------------------
      SELECT BLP       
         DELETE ALL FOR BRNAL=MBRNAL
         PACK
      SELECT BLP   
      USE
      BLP.RELEASE 
   ENDIF
POP KEY