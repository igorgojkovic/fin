KANAL='ANAL'+TANREDNI+'.DBF'
USE &KANAL  ALIAS ANALP IN 0 SHARED 

DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX1)
SELECT ANALP
SET ORDER TO 3 
COPY TO &KKOCKA FOR DUG<>0
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
INDEX ON SIFRA+BRRAC TAG SIFRAC
SET ORDER TO 1
TOTAL ON SIFRA+BRRAC TO &KKOCKA1 FIELDS DUG
ZAP
APPEND FROM &KKOCKA1
GO TOP
DO WHILE.NOT.EOF()
   MSIFRA=SIFRA
   MBRRAC=BRRAC
   MVALUTA=VALUTA
   MSIFRAC=SIFRA+BRRAC
   MDATDOK=DATDOK
   SELECT ANALP
   SEEK MSIFRAC
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SIFRA+BRRAC<>MSIFRAC
            EXIT
         ENDIF
         IF ZATVAR=' '
            REPLACE DANAZAK WITH DATE()-MVALUTA
         ENDIF   
         IF POT<>0
            IF DATDOK>MVALUTA
               REPLACE VANVAL WITH 1
            ENDIF
*            IF DATDOK<MDATDOK
*               REPLACE VANVAL WITH 2
*            ENDIF       
             REPLACE DANAZAK WITH DATDOK-MVALUTA
         ENDIF   
         SKIP
      ENDDO     
   ENDIF
   SELECT KOCKA
   SKIP
ENDDO   
SELECT KOCKA
USE
SELECT ANALP
USE
