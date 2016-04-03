DO FORM KASAAF5PIB2
*MRABDEC=0
SELECT rob
SET ORDER TO 1
SELECT KASA
GO top
MMALVRED=0
DO WHILE.NOT.EOF()
   *IF STORNO=' '
      *IF KOLI<>0
      *   IF MALVRED<>0
      *      mrsif=rsif
      *      SELECT rob
      *      SEEK mrsif
      *      IF FOUND()
      *         mnmalcena=dmcena
      *         IF Mnmalcena=0
      *             mnmalcena=malcena
      *         endif
      *      ELSE
      *         mnmalcena=malcena
      *      endif      
      *      SELECT kasa
      *      replace nmalcena WITH mnmalcena
      *      REPLACE NMALVRED WITH ROUND(NMALCENA*KOLI,2)
      *      replace rabat WITH malvred-nmalvred
      *   ENDIF
      *ENDIF
   *ENDIF
   MMALVRED=MMALVRED+MALVRED-RABAT
   SKIP
ENDDO   
GO TOP
KASA.LBLIZNOSR.CAPTION=TRAN(MMALVRED,'9999 999.99')
KASA.LBLIZNOSRDEV.CAPTION=TRAN(MMALVRED/AMKURS,'9999 999.99')
SELECT rob
SET ORDER TO 2 
