   MDUG=0
   MPOT=0
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mbroj=broj
   MMGRUPA=GRUPA
   SELECT vpupl
   SEEK MPIB
   IF FOUND()
      MDUG=0
      MPOT=0 
      DO WHILE.NOT.EOF()
         IF PIB<>MPIB
            EXIT
         ENDIF
         IF DATUM>=MDAT0.AND.DATUM<=MDAT1
            MDUG=MDUG+DUG
            MPOT=MPOT+POT
         ENDIF   
         SKIP
      ENDDO   
      MSALDO=MDUG-MPOT
      IF MSALDO>MDIN0.AND.MSALDO<=MDIN1
      ELSE
         MSALDO=0
      ENDIF   
   ELSE
      MSALDO=0   
   ENDIF
   IF MSALDO<>0 
      SELECT VPRACD
      append blank
      replace ime_prez with mime_prez
      replace PIB with mPIB
      replace ulica with mulica
      replace ULbroj with mULbroj
      replace broj WITH mbroj
      REPLACE GRUPA WITH MMGRUPA
      REPLACE ODUG WITH MDUG
      REPLACE OPOT WITH MPOT
      REPLACE OSALDO WITH MSALDO
   ENDIF
   SELECT VP
