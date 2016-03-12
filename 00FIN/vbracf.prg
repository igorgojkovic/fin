If SVEGA<>0
   mPIB=PIB
   MPIB2=PIB2
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mpot=pot
   MPOPVODA=POPproc
   MPOPKAN=POPKAN
   MPOPSOC=POPSOC
   MMESECI=MESECI
   mpopsoc=popsoc
   mdomac=domac
   mbrcen=CENOVNIK
   MPOV=POV
   MPOVTOP=POVTOP
   *------PRELAZIMO U TABELU OBRACUN-------
   select VPOBRAC
   MCENOVNIK=CENOVNIK
   *------NALAZIMO CENOVNIK----------------
   select VPcene
   goto mcenOVNIK
   mpstanje=pstanje
   mzstanje=zstanje
   mdatum=datum
   mvaluta=valuta
   mcvoda=cvoda
   mckanal=ckanal
   mcdvoda=cdvoda
   mcdkanal=cdkanal
   MCTOPLANA=CTOPLANA
   mprocakont=procakont
   mdatod=datod
   mdatdo=datdo
   MPROCPOR=PROCPOR
   MCSMECE=CSMECE
   MCS1=CS1
   MCS2=CS2
   MCS3=CS3
   MCS4=CS4
   MCS5=CS5
   MCS6=CS6
   MCS7=CS7
   MCS8=CS8
   MCS9=CS9
   MCS10=CS10
   MNCS1=NCS1
   MNCS2=NCS2
   MNCS3=NCS3
   MNCS4=NCS4
   MNCS5=NCS5
   MNCS6=NCS6
   MNCS7=NCS7
   MNCS8=NCS8
   MNCS9=NCS9
   MNCS10=NCS10
   
   *-------TRAZIMO POTROSNJU SA VODOMERA--------------------
   MSTP='ST'+ALLTRIM(STR(MPSTANJE,2,0))
   MSTZ='ST'+ALLTRIM(STR(MZSTANJE,2,0))
   *------NALAZIMO POTROSNJU ZA POCETNO I ZADNJE STANJE------
   MANAZIV=AN0.NAZIV
   MAULICA=ALLTRIM(AN0.ULICA)+' '+AN0.ULBROJ
   MAMESTO=AN0.MESTO

   SELECT VP
   MST0=&MSTP
   MST1=&MSTZ
   MVODA=VODA
   MKAN=KAN
   MDOPK=DOPK
   MDOPV=DOPV
   MTOPLANA=TOPLANA
   MSMECE=SMECE
   MPOREZ=POREZ
   MBRRAC=BRRAC
   MMODEL=MODEL
   MPOV=POV
   SELECT VPRACD
   append blank
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace ulica with mulica
   replace ULbroj with mULbroj
   replace voda with mvodA
   replace kan with mkan
   replace dopv with mdoPv
   replace dopk with mdoPk
   REPLACE SMECE WITH MSMECE
   REPLACE TOPLANA WITH MTOPLANA
   REPLACE POV WITH MPOV
   REPLACE POVTOP WITH MPOVTOP
   REPLACE POT WITH MPOT
   REPLACE POREZ WITH MPOREZ
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE UKUPNO WITH VODA+KAN+DOPV+DOPK+TOPLANA+SMECE 
   REPLACE SVEGA WITH UKUPNO+POREZ 
   replace pstanje with mST0
   replace zstanje with mST1
   replace datum with mdatum
   replace valuta with mvaluta
   replace cvoda with mcvoda
   replace ckanal with mckanal
   replace cdvoda with mcdvoda
   replace cdkanal with mcdkanal
   REPLACE CSMECE WITH MCSMECE
   
   REPLACE CTOPLANA WITH MCTOPLANA
   REPLACE CS1 WITH MCS1
   
   REPLACE CS2 WITH MCS2
   REPLACE CS3 WITH MCS3
   REPLACE CS4 WITH MCS4
   REPLACE CS5 WITH MCS5
   REPLACE CS6 WITH MCS6
   REPLACE CS7 WITH MCS7
   REPLACE CS8 WITH MCS8
   REPLACE CS9 WITH MCS9
   REPLACE CS10 WITH MCS10
   REPLACE NCS1 WITH MNCS1
   REPLACE NCS2 WITH MNCS2
   REPLACE NCS3 WITH MNCS3
   REPLACE NCS4 WITH MNCS4
   REPLACE NCS5 WITH MNCS5
   REPLACE NCS6 WITH MNCS6
   REPLACE NCS7 WITH MNCS7
   REPLACE NCS8 WITH MNCS8
   REPLACE NCS9 WITH MNCS9
   REPLACE NCS10 WITH MNCS10
   
   replace datod with mdatod
   replace datdo with mdatdo
   REPLACE POPproc WITH MPOPVODa
   REPLACE POPkan WITH MPOPkan
   REPLACE PIB2 WITH MPIB2
   REPLACE ANAZIV WITH MANAZIV
   REPLACE AMESTO WITH MAMESTO
   REPLACE AULICA WITH MAULICA
   REPLACE BRRAC WITH MBRRAC
   REPLACE MODEL WITH MMODEL
SELECT VPRACD
   
ENDIF   
