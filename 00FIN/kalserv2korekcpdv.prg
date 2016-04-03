PUSH KEY CLEAR
CLOSE ALL TABLES
*KAL.RELEASE
IF TOBJEKAT='V'
   KKALG='KALG'+TTVREDNI
ELSE
   KKALG='TMKALG'+TTVREDNI
ENDIF
USE &KKALPRN IN 0 ORDER 1 ALIAS KALPRN 
USE &KKALG IN 0 ORDER 1 ALIAS KALG
USE &KPDVKON IN 0 ORDER 1 ALIAS PDVKON
SELECT KALG
GO TOP
DO WHILE.NOT.EOF()
   MFVRSTA=FVRSTA
   SELECT KALPRN
   SEEK MFVRSTA
   IF FOUND()
      MVPDV=VPDV
   ELSE
      MVPDV='   '   
   ENDIF   
   SELECT PDVKON
   SEEK MVPDV
   IF FOUND()
      MPPDV=PPDV
      MOPDV=OPDV
   ELSE
      MPPDV=' '
      MOPDV=' '   
   ENDIF
   SELECT KALG
   REPLACE VPDV WITH MVPDV
   REPLACE PPDV WITH MPPDV
   REPLACE OPDV WITH MOPDV
   REPLACE ARHIVA WITH ' '
   SKIP
ENDDO   
SELECT KALG
GO BOTTOM
POP KEY
KALSERV.RELEASE 
KEYBOARD '{ESC}'
