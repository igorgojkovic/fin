   MDUG=0
   MPOT=0
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mbroj=broj
   MMGRUPA=GRUPA
   msifra=sifra
   mpopsoc=popsoc
   *SELECT an00
   *SEEK msifra 
   *if found()
   *   mmaticni0=maticni0
   *   mmesto0=mesto0
   *   MPOSTA0=posta0            
   *   mULICA0=ULICA0            
   *   MULBROJ0=ULBROJ0       
   *ELSE
      mmaticni0='nema'   
      mmesto0='nema'
      MPOSTA0='nema'
      mULICA0='nema'
      MULBROJ0='nema'
   *endif
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
   *IF MSALDO<>0 
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
      replace maticni0 WITH mmaticni0
      *REPLACE POSTA0 WITH MPOSTA0            
      *REPLACE MESTO0 WITH MMESTO0                        
      *REPLACE ULICA0 WITH MULICA0            
      *REPLACE ULBROJ0 WITH MULBROJ0       
      *replace popsoc WITH mpopsoc
   *ENDIF
   SELECT VP
