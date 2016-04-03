  MCENOVNIK=CENOVNIK
  IF MCENOVNIK>0 
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mbroj=broj
   MMSIFUL=SIFUL
   MMGRUPA=GRUPA
   mpot=pot
   MPOPVODA=POPproc
   MPOPKAN=POPKAN
   MPOPSOC=POPSOC
   MMESECI=MESECI
   mpopsoc=popsoc
   mdomac=domac
   IF POT>0
   MPOT=POT
   ELSE
   MPOT=0
   ENDIF
   MPOTS=POTS
   MUKPOT=UKPOT
   MPOC=POC
   MKRAJ=KRAJ
   MBRSTAN=BRSTAN
   MUKSTAN=UKSTAN
   MCENOVNIK=CENOVNIK

   *------NALAZIMO CENOVNIK----------------
   select VPcene
   LOCATE FOR cenovnik=MCENOVNIK
   mpstanje=pstanje
   mzstanje=zstanje
   mdatum=datum
   mvaluta=valuta
   mcvoda=cvoda
   mckanal=ckanal
   mcdvoda=cdvoda
   mcdkanal=cdkanal
   mcdkomdin=cdkomdin
   mprocakont=procakont
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
   MDOPk=DOPk
   mkomdinar=komdinar
 *  MPOT=POT
   MPOREZ=POREZ
   MKAMATA=KAMATA
   MSOC=SOC
   MUKUPNO=UKUPNO
   MDUG=DUG
   MSVEGA=SVEGA
   MOSTALO=OSTALO
   MUPLAC=UPLAC
   MRABAT=RABAT
*   MPIB2=PIB2
   MBRRAC=BRRAC
   SELECT VPRACD
   append blank
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace ulica with mulica
   replace ULbroj with mULbroj
   replace broj WITH mbroj
   REPLACE GRUPA WITH MMGRUPA
   REPLACE SIFUL WITH MMSIFUL
   replace voda with mvodA
   replace kan with mkan
   replace dopv with mdoPV
   replace dopk with mdoPk
   replace komdinar with mkomdinar
   replace pot with mpot
   replace pot with mpot   
   REPLACE POREZ WITH MPOREZ
   replace kamata with mkamATA
   REPLACE RABAT WITH MRABAT
   REPLACE SOC WITH MSOC
   REPLACE UKUPNO WITH MUKUPNO
   replace uplac with muplac
   replace dug with mdug
   REPLACE SVEGA WITH MSVEGA
   replace pstanje with mST0
   replace zstanje with mST1
   replace datum with mdatum
   replace valuta with mvaluta
   replace cvoda with mcvoda
   replace ckanal with mckanal
   replace cdvoda with mcdvoda
   replace cdkanal with mcdkanal
   replace cdkomdin with mcdkomdin
   REPLACE POT WITH MPOT
   REPLACE POTS WITH MPOTS
   REPLACE UKPOT WITH MUKPOT
   REPLACE POC WITH MPOC
   REPLACE KRAJ WITH MKRAJ
   REPLACE BRSTAN WITH MBRSTAN
   REPLACE UKSTAN WITH MUKSTAN
   replace cenovnik WITH mcenovnik
   REPLACE BRRAC WITH MBRRAC
    
   IF MMESECI<>0
      MAKONT=ROUND(UKUPNO/MMESECI,2)
   ELSE
      MAKONT=0
   ENDIF
   replace datod with mdatod
   replace datdo with mdatdo
   replace akont with makont
   REPLACE POPproc WITH MPOPVODa
   REPLACE POPkan WITH MPOPkan
   REPLACE DOMAC WITH MDOMAC
   REPLACE POPSOC WITH MPOPSOC
   SELECT VP
ENDIF
