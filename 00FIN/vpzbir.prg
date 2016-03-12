      if DUG<>0
         mPIB2=PIB2
         MSVEGA=SVEGA
         mzbirni=zbirni
         SELECT AN0
         SEEK ALLTRIM(MPIB2)
         IF FOUND()
            MANAZIV=NAZIV
            mAulica=ALLTRIM(ulica)+' '+ALLTRIM(ULBROJ)
            MAMESTO=ALLTRIM(MESTO)
         ELSE
            MANAZIV=''
            MAULICA=''
           MAMESTO=''
         ENDIF      
         SELECT KOCKA 
         *------PRELAZIMO U TABELU OBRACUN-------
         select VPobrac
         mCENOVNIK=CENOVNIK
         *------NALAZIMO CENOVNIK----------------
         select VPcene
         goto MCENOVNIK
         mpstanje=pstanje
         mzstanje=zstanje
         mdatum=datum
         mvaluta=valuta
         mdatod=datod
         mdatdo=datdo
         *-------TRAZIMO POTROSNJU SA VODOMERA--------------------
         MSTP='ST'+ALLTRIM(STR(MPSTANJE,2,0))
         MSTZ='ST'+ALLTRIM(STR(MZSTANJE,2,0))
         *------NALAZIMO POTROSNJU ZA POCETNO I ZADNJE STANJE------
         SELECT KOCKA
         MST0=&MSTP
         MST1=&MSTZ
         MBRRAC=sifra+'-'+ALLTRIM(STR(MzSTANJE,2,0))+'-04'
                   
         select RACUN

         append blank
         
       
         replace SVEGA with MSVEGA
         replace pstanje with mST0
         replace zstanje with mST1
         replace datum with mdatum
         replace valuta with mvaluta
         replace datod with mdatod
         replace datdo with mdatdo
         REPLACE ASIFRA WITH MPIB2
         REPLACE ANAZIV WITH MANAZIV
         REPLACE AMESTO WITH MAMESTO
         REPLACE AULICA WITH MAULICA
         REPLACE BRRAC WITH MBRRAC
         replace DUG with mzbirni
         select KOCKA
      endif   
