KANAL='ANAL'+TANREDNI
USE &KANAL  ALIAS ANALP IN 0  
DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX1)
SELECT ANALP
SET ORDER TO 3 
COPY TO &KKOCKA FOR POT<>0
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
INDEX ON SIFRA+BRRAC TAG SIFRAC
SET ORDER TO 1
TOTAL ON SIFRA+BRRAC TO &KKOCKA1 FIELDS POT
               DELETE ALL
               PACK
SET DATE ANSI
APPEND FROM &KKOCKA1
GO TOP
DO WHILE.NOT.EOF()
   MSIFRA=SIFRA
   MBRRAC=BRRAC
*   IF MSIFRA='  881'.AND.SUBSTR(brrac,1,6)='832/13'
*      SET STEP ON 
*   endif   
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
         IF DUG<>0
            IF DATDOK>MVALUTA
               REPLACE VANVAL WITH 1
            ENDIF
*            IF DATDOK<MDATDOK
*               REPLACE VANVAL WITH 2
*            ENDIF       
             REPLACE DANAZAK WITH MVALUTA-DATDOK
         ENDIF   
         SKIP
      ENDDO     
   ENDIF
   SELECT KOCKA
   SKIP
ENDDO   
SET DATE ITALIAN
SELECT KOCKA
USE
SELECT ANALP
USE
