PUSH KEY CLEAR
IF MPNAL=1
PRONAL.COMMAND10.SETFOCUS
ELSE
PRONALL.COMMAND10.SETFOCUS
ENDIF
MRNAL=RNAL
SELECT PRONORMA
DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX2)

COPY STRUCTURE TO &KKOCKA
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT PRONAL
SET ORDER TO 1
SEEK MRNAL
IF FOUND()
   DO WHILE.NOT.EOF()
     IF RNAL<>MRNAL
        EXIT
     ENDIF      
     MNORMATIV=NORMATIV
     MKOL=KOL
     SELECT PRONORMA
     SET ORDER TO 3
     SEEK MNORMATIV
     IF FOUND()
        DO WHILE.NOT.EOF()
           IF NORMATIV<>MNORMATIV
              EXIT
           ENDIF
           SCATTER NAME POLJA
           SELECT KOCKA
           APPEND BLANK
           GATHER NAME POLJA 
           REPLACE KOL WITH KOL*MKOL
           REPLACE IZNOS WITH KOL*CENA  
           REPLACE rnal WITH mrnal
           SELECT PRONORMA
           SKIP
        ENDDO   
     ENDIF
     SELECT PRONAL
     SKIP
   ENDDO   
ENDIF   
SELECT KOCKA

INDEX ON OPIS TAG OPIS
INDEX ON GRUPA TAG GRUPA
SET ORDER TO 1
COPY TO &KKOCKA2
*TOTAL ON OPIS FIELDS KOL,IZNOS TO &KKOCKA2
DELETE ALL
PACK

SELECT PRONAL
SEEK MRNAL
IF FOUND()
   DO WHILE.NOT.EOF()
      IF RNAL<>MRNAL
         EXIT
      ENDIF      
      MRSIF=RSIF
      MKOL=KOL
      MDAT0=DAT0
      MDAT1=DAT1
      MRCENA=RCENA
      MPODNAZIV=ROB.PODNAZIV
      SELECT KOCKA
      APPEND BLANK
      replace rnal WITH mrnal
      REPLACE RSIF WITH MRSIF
      REPLACE SSIF2 WITH MPODNAZIV
      REPLACE KOL WITH MKOL
      REPLACE DAT0 WITH MDAT0
      REPLACE DAT1 WITH MDAT1
      REPLACE OPIS WITH '            '
      REPLACE CENA WITH MRCENA
      REPLACE MSIFNAZ2 WITH ROB.NAZ2
      REPLACE IZNOS WITH KOL*CENA
      SELECT PRONAL
      SKIP
   ENDDO   
ENDIF
SELECT KOCKA
APPEND FROM &KKOCKA2
GO TOP
PUBLIC AIZNPRO,AIZNMAT
AIZNPRO=0
AIZNMAT=0
DO WHILE.NOT.EOF()
   IF OPIS=SPACE(20)
      AIZNPRO=AIZNPRO+(KOL*CENA)
   ELSE
      AIZNMAT=AIZNMAT+(KOL*CENA)
   ENDIF      
   SKIP
ENDDO   
SET ORDER TO 2
GO TOP
*REPORT FORM PRONAL0DN PREVIEW
   mfile='PRONAL0DN' 
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov

USE
SELECT PRONAL
SET ORDER TO 
IF MPNAL=1
   PRONAL.GRD0.SETFOCUS
   PRONAL.REFRESH
ELSE
   PRONALL.GRD0.SETFOCUS
   PRONALL.REFRESH
ENDIF
POP KEY
