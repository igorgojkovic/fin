   MDUG=0
   MPOT=0
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mbroj=broj
   MMSIFUL=SIFUL
   MMGRUPA=GRUPA
   MBRNEPLAC=MBRNEPLAC
   DO IDEL WITH (KKOCKAX)
   SELECT VPRACD
   SELECT vpupl
   COPY TO &KKOCKA FOR PIB=MPIB.AND.DUG<>0.AND.ZATVAR<>'*'
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLUSIVE
   SELECT KOCKA
   MREC=RECCOUNT()
   IF MREC>=MBRNEPLAC
      GO TOP
      DO WHILE.NOT.EOF()
         MBRRAC=BRRAC
         MPIB=PIB
         MDUG=0
         MPOT=0 
         MSALDO=0         
         SELECT VPUPL
         SEEK MPIB
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF PIB<>MPIB
                  EXIT
               ENDIF
               IF valuta>=MDAT0.AND.valuta<=MDAT1
                  IF BRRAC=MBRRAC
                     MDUG=MDUG+DUG
                     MPOT=MPOT+POT
                  ENDIF   
               ENDIF   
               SKIP
            ENDDO   
            MSALDO=MDUG-MPOT            
         ENDIF   
         IF MSALDO>0
            SELECT VPRACD
            append blank
            replace ime_prez with mime_prez
            replace PIB with mPIB
            replace ulica with mulica
            replace ULbroj with mULbroj
            replace broj WITH mbroj
            REPLACE GRUPA WITH MMGRUPA
            REPLACE SIFUL WITH MMSIFUL
            REPLACE ODUG WITH MDUG
            REPLACE OPOT WITH MPOT
            REPLACE OSALDO WITH MSALDO
            REPLACE BRRAC WITH MBRRAC
            replace pov WITH 1
         ENDIF
         SELECT KOCKA
         SKIP
      ENDDO      
   ENDIF
   SELECT KOCKA
   USE
   SELECT VP
