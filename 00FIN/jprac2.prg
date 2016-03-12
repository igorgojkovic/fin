   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   MPOPSOC=POPSOC
   MMESECI=MESECI
   mpopsoc=popsoc
   MPOV=POV
   MPOVNE=POVNE
   MSIFUL=SIFUL
   MAKONT=AKONT
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
   MSME=0
   MSMN=0
   MSOC=0
   MKAM=0
   MRAB=0
   MEKO=0
   MOSTALO=0
   MPOR=0
   if found()
      do while.not.eof()
         if PIB<>mPIB
            exit
         endif
         if datum<ADAT0
            mprdug=mprdug+dug-pot
         endif    
         if datum>=ADAT0.and.datum<=ADAT1
            DO CASE GRUPA
            CASE GRUPA='SME'
               MSME=MSME+DUG
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
   muplac=din1+din2+din3+din4+din5+din6+din7+din8+din9+din10+din11+din12+din13+din14+DIN15+DIN16+DIN17+DIN18+DIN19+DIN20+DIN21+DIN22+DIN23+DIN24
   replace uplacENO with muplac

   SELECT VPRACD
   replace uplac with muplac
   *------------kraj unosa uplata----------
   select VPRACD
   append blank
   REPLACE SIFUL WITH MSIFUL
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace ulica with mulica
   replace ULbroj with mULbroj
   replace SMECE with mSME
   REPLACE SMECEN WITH MSMN
   replace kamata with mkam
   REPLACE RABAT WITH MRAB
   REPLACE SOC WITH MSOC
   REPLACE EKODINAR WITH MEKO
   REPLACE UKUPNO WITH SMECE+SMECEN
   replace uplac with muplac
   replace dug with mprdug
   REPLACE OSTALO WITH MOSTALO
   REPLACE POREZ WITH MPOR 
   REPLACE SVEGA WITH SMECE+SMECEN+RABAT-UPLAC+OSTALO+DUG+KAMATA+SOC+EKODINAR+POREZ
   replace dug with mprdug
   REPLACE POPSOC WITH MPOPSOC
   REPLACE POV WITH MPOV
   REPLACE POVNE WITH MPOVNE
   REPLACE AKONT WITH MAKONT
SELECT VPRACD

SELECT VPRACU

   

