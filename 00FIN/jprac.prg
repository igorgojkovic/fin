If SVEGA<>0
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   MPOPSOC=POPSOC
   MMESECI=MESECI
   mpopsoc=popsoc
   MPOV=POV
   MPOVNE=POVNE
   MAKONT=AKONT
   MMODEL=MODEL
   mbrrac=brrac
   mclanova=clanova
   MKANTABROJ=KANTABROJ
   MKANTADIN=KANTADIN
   mpsmece=psmece
*---------TABELA OBRACUNA------------
   select VPOBRAC
   MCENOVNIK=CENOVNIK
   MBROBRAC=BROBRAC
   ABRNAL='O'+ALLTRIM(STR(MBROBRAC,2,0))      
   *------TABELA CENA
   select VPCENE
   SET ORDER TO 1
   SEEK MCENOVNIK
   mpstanje=pstanje
   mzstanje=zstanje
   MMES=MZSTANJE-MPSTANJE
   mEdatum=datum
   mEvaluta=valuta
   mdatOD=datod
   mdatDO=datdo
   mdatUOD=datUod
   mdatUDO=datUdo
   mCSMECE=CSMECE
   MCSMECEN=CSMECEN
   MCEKO=CEKO
   MPROCPOR=PROCPOR
   mprocakont=procakont
   MMESEC=MESEC
   MVALUTA=VALUTA
   mpstanje=pstanje
   mzstanje=zstanje
   MMES=MZSTANJE-MPSTANJE
   MCKANTA1=CKANTA1
   MCKANTA2=CKANTA2
   MCKANTA3=CKANTA3
   MCCLAN1=CCLAN1
   MCCLAN2=CCLAN2
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
   muplac=0
   MUPLACPER=0
   RR=1
   mprdug=0
   MSME=0
   MSMN=0
   MSOC=0
   MKAM=0
   MRAB=0
   MEKO=0
   MOSTALO=0
   MPOR=0
   MKNT=0
   MSC1=0
   MSC2=0   
   if found()
      do while.not.eof()
         if PIB<>mPIB
            exit
         endif
         if datum<MDATOD
            mprdug=mprdug+dug-pot
         endif    
         if datum>=MDATOD.and.datum<=MDATDO
            DO CASE GRUPA
            CASE GRUPA='SME'
               MSME=MSME+DUG
            CASE GRUPA='SC1'
               MSC1=MSC1+DUG
            CASE GRUPA='SC2'
               MSC2=MSC2+DUG
            CASE GRUPA='KNT'
               MKNT=MKNT+DUG            
            CASE GRUPA='SMN'
               MSMN=MSMN+DUG
            CASE GRUPA='SOC'
               MSOC=MSOC+DUG
            CASE GRUPA='RAB'
               MRAB=MRAB+DUG
            CASE GRUPA='KAM'
               MKAM=MKAM+DUG
            CASE GRUPA='EKO'
               MEKO=MEKO+DUG
            CASE GRUPA='POR'
               MPOR=MPOR+DUG
            OTHERWISE
               MOSTALO=MOSTALO+DUG
            ENDCASE
            MUPLAC=MUPLAC+POT
         ENDIF   
         if datum>=MDATUOD.and.datum<=MDATUDO
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
         
         endif
         skip
      enddo      
   ENDIF
   select VPRACU
   muplacPER=din1+din2+din3+din4+din5+din6+din7+din8+din9+din10+din11+din12+din13+din14+DIN15+DIN16+DIN17+DIN18+DIN19+DIN20+DIN21+DIN22+DIN23+DIN24
   replace uplacPER with muplACPER
   REPLACE UPLACENO WITH MUPLAC
   SELECT VPRACD
   append blank
   REPLACE MODEL WITH MMODEL
   replace brrac WITH mbrrac
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace ulica with mulica
   replace ULbroj with mULbroj
   replace SMECE with mSME
   REPLACE smecec1 WITH Msc1
   REPLACE smecec2 WITH Msc2
   replace SMECEN with mSMN
   REPLACE KANTADIN WITH MKnt
   REPLACE KANTABROJ WITH MKANTABROJ
   replace psmece WITH mpsmece
   replace kamata with mkam
   REPLACE RABAT WITH MRAB
   REPLACE SOC WITH MSOC
   REPLACE EKODINAR WITH MEKO
   REPLACE POREZ WITH MPOR
   REPLACE UKUPNO WITH SMECE+SMECEN+KANTADIN+smecec1+smecec2
   REPLACE UPLAC WITH MUPLAC
   replace dug with mprdug
   REPLACE OSTALO WITH MOSTALO+meko
   REPLACE SVEGA WITH UKUPNO-RABAT-UPLAC+OSTALO+DUG+KAMATA+SOC+POREZ
   replace datum with mEdatum
   replace valuta with mEvaluta
   replace cSMECE with mcSMECE
   replace cSMECEN with mcSMECEN
   REPLACE CKANTA1 WITH MCKANTA1
   REPLACE CKANTA2 WITH MCKANTA2
   REPLACE CKANTA3 WITH MCKANTA3
   REPLACE CCLAN1 WITH MCCLAN1
   REPLACE CCLAN2 WITH MCCLAN2
   IF kantabroj=0
      replace ckanta1 WITH 0
      replace ckanta2 WITH 0
      replace ckanta3 WITH 0   
   ENDIF
   IF kantabroj=1
      replace ckanta2 WITH 0
      replace ckanta3 WITH 0   
   ENDIF
   IF kantabroj=2
      replace ckanta3 WITH 0   
   ENDIF
   
   REPLACE CEKO WITH MCEKO
   REPLACE PROCPOR WITH MPROCPOR
   replace procakont with mprocakont
   replace datod with mdatod
   replace datdo with mdatdo
   replace dug with mprdug
   REPLACE POPSOC WITH MPOPSOC
   REPLACE POV WITH MPOV
   REPLACE POVNE WITH MPOVNE
   REPLACE MESEC WITH MMES
   REPLACE AKONT WITH MAKONT
   replace clanova WITH mclanova
SELECT VPRACD

SELECT VPRACU

   
ENDIF   
