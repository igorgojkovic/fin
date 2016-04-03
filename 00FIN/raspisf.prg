   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mbroj=broj
   MMGRUPA=GRUPA
   mpot=pot
   MPOPVODA=POPproc
   MPOPKAN=POPKAN
   MPOPSOC=POPSOC
   MMESECI=MESECI
   mpopsoc=popsoc
   IF POT>0
   MPOT=POT
   ELSE
   MPOT=0
   ENDIF
   MPOC=POC
   MKRAJ=KRAJ
   SELECT VPOBRAC
      MCENOVNIK=CENOVNIK
   *------NALAZIMO CENOVNIK----------------
   select VPcene
   goto MCENOVNIK
   mpstanje=pstanje
   mzstanje=zstanje
   mdatum=datum
   mvaluta=valuta
   mcvoda=cvoda
   mckanal=ckanal
   mcdvoda=cdvoda
   mcdkanal=cdkanal
   MCsme1=Csme1
   MCsme2=Csme2
   mdatod=datod
   mdatdo=datdo
   MPROCPOR=PROCPOR
   *-------TRAZIMO POTROSNJU SA VODOMERA--------------------
   MSTP='ST'+ALLTRIM(STR(MPSTANJE,2,0))
   MSTZ='ST'+ALLTRIM(STR(MZSTANJE,2,0))
   *------NALAZIMO POTROSNJU ZA POCETNO I ZADNJE STANJE------
   SELECT VP
   MST0=&MSTP
   MST1=&MSTZ
   MVODA=VODA
   MKAN=KAN
   MDOPV=DOPV
   Msmece1=smece1
   MSMECE2=SMECE2
   MPOREZ=POREZ
   MUKUPNO=UKUPNO
   MSVEGA=SVEGA
   MPIB2=PIB2
   MANAZIV=AN0.NAZIV
   MBRRAC=BRRAC
   IF MVODA<>0.OR.MKAN<>0.OR.MSMECE1<>0.OR.MSMECE2<>0
   SELECT VPRACD
   append blank
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace ulica with mulica
   replace ULbroj with mULbroj
   replace broj WITH mbroj
   REPLACE GRUPA WITH MMGRUPA
   replace voda with mvodA
   replace kan with mkan
   replace dopv with mdoPV
   REPLACE SMECE1 WITH MSMECE1
   REPLACE SMECE2 WITH MSMECE2
   replace pot with mpot
   REPLACE POREZ WITH MPOREZ
   REPLACE UKUPNO WITH MUKUPNO
   REPLACE SVEGA WITH MSVEGA
   replace pstanje with mST0
   replace zstanje with mST1
   replace datum with mdatum
   replace valuta with mvaluta
   replace cvoda with mcvoda
   replace ckanal with mckanal
   replace cdvoda with mcdvoda
   replace cdkanal with mcdkanal
   REPLACE POT WITH MPOT
   REPLACE POC WITH MPOC
   REPLACE KRAJ WITH MKRAJ
   replace cenovnik WITH mcenovnik
   REPLACE PIB2 WITH MPIB2
   REPLACE ANAZIV WITH MANAZIV
   REPLACE BRRAC WITH MBRRAC
    
   replace datod with mdatod
   replace datdo with mdatdo
   REPLACE POPproc WITH MPOPVODa
   REPLACE POPkan WITH MPOPkan
   ENDIF
   SELECT VP
