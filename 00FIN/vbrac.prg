If SVEGA<>0
   SET EXACT OFF
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   mposta=posta
   mmesto=mesto
   mpot=pot
   MPOPVODA=POPproc
   MPOPKAN=POPKAN
   MPOPSOC=POPSOC
   MMESECI=MESECI
   mpopsoc=popsoc
   mdomac=domac
   MPOT=POT
   MPOTS=POTS
   MUKPOT=UKPOT
   MPOC=POC
   MKRAJ=KRAJ
   MBRSTAN=BRSTAN
   MUKSTAN=UKSTAN
   mbrcen=CENOVNIK
   mssifra=ssifra
   MPOV=POV
   MPOVTOP=POVTOP
   MRASTURJ=RASTURJ
   MRASTURS=RASTURS
   mbrrac=brrac
   mmodel=model
   *------PRELAZIMO U TABELU OBRACUN-------
   select VPOBRAC
   mbrcen=CENOVNIK
   *------NALAZIMO CENOVNIK----------------
   select VPcene
   LOCATE FOR CENOVNIK=mbrcen
   mpstanje=pstanje
   mzstanje=zstanje
   mdatum=datum
   mvaluta=valuta
   mcvoda=cvoda
   mckanal=ckanal
   mcdvoda=cdvoda
   mcdkanal=cdkanal
   MCTOPLANA=CTOPLANA
   MCGROBLJE=CGROBLJE
   mcsmece=csmece
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
   IF DOMAC=9
     MPOC=MST0
     MKRAJ=MST1
   ENDIF  
   *-------PRAVIMO BAZU UPLATA------------------------------     
   select VPRACU
   append blank
   replace PIB with mPIB         
   *------------unos uplata----------------
   MSPO=0
   MST=0
   select VPUPL
   SET ORDER TO 1
 
   seek mPIB

   mdin1=0
   mdin2=0
   mdin3=0
   mdin4=0
   mdin5=0
   mdin6=0
   mdin7=0
   mdin8=0
   mdin9=0
   mdin10=0
   mdin11=0
   mdin12=0
   mdin13=0
   mdin14=0
   muplaceno=0
   RR=1
   mprdug=0
   MVOD=0
   MV15=0
   MV20=0
   MKAN=0
   MDOV=0
   MDOK=0
   MSME=0
   MSMN=0
   MKNI=0
   MKNN=0
   MTOP=0
   MEKO=0
   MGRO=0
   MSOC=0
   MISP=0
   MKO=0
   MSP=0
   MST=0
   MKAM=0
   MRAB=0
   MDOS=0
   MSPO=0
   MPOR=0
   MTOP=0
   MGRO=0
   MOSTALO=0
   if found()
      do while.not.eof()
         if PIB<>mPIB
            exit
         endif
         if datum<mdatod
            mprdug=mprdug+dug-pot
         endif    
         if datum>=mdatod.and.datum<=mdatdo
            DO CASE GRUPA
            CASE GRUPA='VOD'
               MVOD=MVOD+DUG
            CASE GRUPA='KAN'
               MKAN=MKAN+DUG
            CASE GRUPA='DOV'
               MDOV=MDOV+DUG
            CASE GRUPA='DOK'
               MDOK=MDOK+DUG
            CASE GRUPA='SME'
               MSME=MSME+DUG
            CASE GRUPA='TOP'
               MTOP=MTOP+DUG
            CASE GRUPA='GRO'
               MGRO=MGRO+DUG
            CASE GRUPA='KAM'
               MKAM=MKAM+DUG
            CASE GRUPA='POR'
               MPOR=MPOR+DUG
            OTHERWISE
               MOSTALO=MOSTALO+DUG 
            ENDCASE
            mdin=pot
            mdATUM=datum 
            IF MDIN<>0
               MDDIN='DIN'+ALLTRIM(STR(RR,2,0))                           
               MDDATUM='D'+ALLTRIM(STR(RR,2,0))                           
               select VPRACU
               replace &MDdin with mdin
               replace &MDDATUM with mdATUM
               RR=RR+1                  
               SELECT VPUPL
            ENDIF
         ENDIF
         SELECT VPUPL
         skip
      enddo      
   ENDIF
   select VPRACU
   muplac=din1+din2+din3+din4+din5+din6+din7+din8+din9+din10+din11+din12+din13+din14
   replace uplacENO with muplac

   SELECT VPRACD
   replace uplac with muplac
   *------------kraj unosa uplata----------
   select VPRACD
   append blank
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace posta WITH mposta
   replace mesto WITH mmesto
   replace ulica with mulica
   replace ULbroj with mULbroj
   REPLACE POV WITH MPOV
   REPLACE POVTOP WITH MPOVTOP
   REPLACE RASTURJ WITH MRASTURJ
   REPLACE RASTURS WITH MRASTURS
   replace voda with mvod
   replace kan with mkan
   replace dopv with mdov
   replace dopk with mdok
   REPLACE SMECE WITH MSME
   REPLACE TOPLANA WITH MTOP
   REPLACE GROBLJE WITH MGRO
   replace pot with mpot
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE POREZ WITH MPOR
   replace kamata with mkam
   REPLACE RABAT WITH MRAB
   REPLACE SOC WITH MSOC
   REPLACE UKUPNO WITH VODA+KAN+DOPV+DOPK+TOPLANA+GROBLJE+SMECE  
*   replace uplac with muplac
   replace dug with mprdug
   REPLACE OSTALO WITH MOSTALO
   REPLACE SVEGA WITH UKUPNO+RABAT-UPLAC+OSTALO+DUG+KAMATA+POREZ
   replace pstanje with mST0
   replace zstanje with mST1
   replace datum with mdatum
   replace valuta with mvaluta
   replace cvoda with mcvoda
   replace ckanal with mckanal
   replace cdvoda with mcdvoda
   replace cdkanal with mcdkanal
   replace csmece WITH mcsmece
   replace ctoplana WITH mctoplana
   replace procakont with mprocakont
   REPLACE POT WITH MPOT
   REPLACE POTS WITH MPOTS
   
   REPLACE UKPOT WITH MUKPOT
   REPLACE POC WITH MPOC
   REPLACE KRAJ WITH MKRAJ
   REPLACE BRSTAN WITH MBRSTAN
   REPLACE UKSTAN WITH MUKSTAN
   replace ssifra WITH mssifra
   IF MMESECI<>0
      MAKONT=ROUND(UKUPNO/MMESECI,2)
   ELSE
      MAKONT=0
  ENDIF
   replace datod with mdatod
   replace datdo with mdatdo
   replace dug with mprdug
   replace akont with makont
   REPLACE POPproc WITH MPOPVODa
   REPLACE POPkan WITH MPOPkan
*  REPLACE MESECI WITH MMESECI   
   REPLACE DOMAC WITH MDOMAC
   REPLACE POPSOC WITH MPOPSOC
   replace cgroblje WITH mcgroblje
   replace brrac WITH mbrrac
   replace model WITH mmodel
SELECT VPRACD
SELECT VPRACU
  SET EXACT OFF
ENDIF   
