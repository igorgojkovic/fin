PUSH KEY CLEAR
SET EXACT OFF
DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX2)
SELECT NALMAT
MREC=RECNO()
COPY STRUCTURE TO &KKOCKA
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT NALMAT
GO TOP
   DO WHILE.NOT.EOF()
      IF ULAZ<>0.OR.IZLAZ<>0
         SCATTER NAME POLJA
         SELECT KOCKA
         APPEND BLANK
         GATHER NAME POLJA
         SELECT NALMAT
      ENDIF   
      SKIP
   ENDDO   
SELECT KOCKA
INDEX ON KONTO TAG KONTO
INDEX ON SUBSTR(KONTO,1,6) TAG KONTO6
SET ORDER TO 1
TOTAL ON KONTO FIELDS UKUPNO_D,UKUPNO_P,ULAZ,IZLAZ TO &KKOCKA2
ZAP
APPEND FROM &KKOCKA2
REPLACE ALL SALDO WITH UKUPNO_D-UKUPNO_P
REPLACE ALL STANJE WITH ULAZ-IZLAZ
SET RELATION TO KONTO INTO KONTO ADDITIVE
SET ORDER TO 2
GO TOP
*REPORT FORM NALPREGMATSM PREVIEW
   mfile='NALPREGMATSM'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov

SELECT KOCKA
SET RELATION TO
USE
SELECT NALMAT
GO TOP
SET ORDER TO 1
NALMAT.GRD0.SETFOCUS
NALMAT.REFRESH
POP KEY
