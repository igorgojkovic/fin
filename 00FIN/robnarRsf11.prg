PARAMETERS MMAG
PUSH KEY CLEAR
SELECT ROB
SET ORDER TO 1
SELECT ROBNARR
SET ORDER TO 2
GO TOP
VPFAK='FAK'+MMAG+'.DBF'
VPFAKG='FAKG'+MMAG+'.DBF'
USE &VPFAK IN 0 ALIAS VFAK ORDER 1
USE &VPFAKG IN 0 ALIAS VFAKG ORDER 1
SELECT VFAKG
GO BOTTOM
MNKAL=BRKAL
IF RECCOUNT()>0
   GO BOTTOM
   MNOVI=VAL(BRKAL)+1
   MLEN=LEN(ALLTRIM(STR(MNOVI,6,0)))
   MNBRKAL=REPLICATE('0',6-MLEN)+ALLTRIM(STR(MNOVI,6,0))
ELSE
   MNBRKAL='000001'
ENDIF      
SELECT VFAKG
APPEND BLANK
REPLACE BRKAL WITH MNBRKAL
REPLACE DATDOK WITH DATE()
REPLACE PORDAT WITH DATE()
REPLACE OTPDAT WITH DATE()
REPLACE VALUTA WITH DATE()
REPLACE SIFRA WITH '   1'
REPLACE FVRSTA WITH '   '
use
SELECT ROBNARR
DO WHILE.NOT.EOF()
   IF NARUCITI<>0
      MRSIF=RSIF
      MKOLI=NARUCITI
      SELECT ROB
      SEEK MRSIF
      IF FOUND()
         MPROSCENV=PROSCENV
         MVELCENA=VELCENA
      ELSE
         MPROSCENV=1
         MVELCENA=1
      ENDIF      
      SELECT VFAK
      APPEND BLANK
      REPLACE BRKAL WITH MNBRKAL
      REPLACE RSIF WITH MRSIF
      REPLACE KOLI WITH MKOLI
      REPLACE VELCENA WITH MVELCENA
      REPLACE CENA WITH MPROSCENV
   ENDIF
   SELECT ROBNARR
   SKIP
ENDDO   

SELECT VFAK
USE
SELECT ROBNARR
GO TOP
POP KEY
ROBNARR.Release
KEYBOARD '{ENTER}'
