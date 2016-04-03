If SVEGA<>0
   SCATTER NAME POLJA
   mPIB=PIB
   mime_prez=ime_prez
   mulica=ulica
   mULbroj=ULbroj
   MPOPSOC=POPSOC
   MMESEC=MESECi
   mpopsoc=popsoc
   MPOV=POV
   MPOVNE=POVNE
   MSMECE=SMECE
   MSMECEN=SMECEN
   MEKODINAR=EKODINAR
   MPOREZ=POREZ
   MPIB2=PIB2
   MCEN=CENOVNIK
   MPOZIVO=POZIVO
   MBRRAC=BRRAC
   *------PRELAZIMO U TABELU OBRACUN-------
   select VPOBRAC
   mbrcen=cenovnik
    *------NALAZIMO CENOVNIK----------------
   select VPcene
   LOCATE FOR cenovnik=mbrcen
   mpstanje=pstanje
   mzstanje=zstanje
   mdatum=datum
   mvaluta=valuta
   mcSMECE=csmeCE
   MCSMECEN=CSMECEN
   MCEKO=CEKO
   MPROCPOR=PROCPOR
   mprocakont=procakont
   mdatod=datod
   mdatdo=datdo
   IF Mcen<>0
      MCS='CS'+ALLTRIM(STR(MCEN,2,0))
      MMCS=&MCS
      MNCS='NCS'+ALLTRIM(STR(MCEN,2,0))
      MMNCS=&MNCS
   ELSE
      MMCS=0
      MMNCS=' '    
   ENDIF
   IF MCEN>=21.AND.MCEN<=27   
      MCS='CS'+ALLTRIM(STR(MCEN,2,0))
      MMCS=&MCS
      MCSN='CSN'+ALLTRIM(STR(MCEN,2,0))
      MMCSN=&MCSN
      MCSMECE=MMCS
      MCSMECEN=MMCSN
   ENDIF     
   SELECT AN0
   SET ORDER TO 9
   SEEK MPIB2
   IF FOUND()
      MANAZIV=NAZIV
      MAMESTO=MESTO
      MAULICA=ALLTRIM(ULICA)+' '+ULBROJ
   ELSE
      MANAZIV=''
      MAMESTO=''
      MAULICA=''
   ENDIF      
   select VPRACD
   append blank
   GATHER NAME POLJA
   replace ime_prez with mime_prez
   replace PIB with mPIB
   replace ulica with mulica
   replace ULbroj with mULbroj
   replace SMECE with mSMECE
   replace SMECEN with mSMECEN
   REPLACE EKODINAR WITH MEKODINAR
   REPLACE POREZ WITH MPOREZ
   REPLACE SVEGA WITH SMECE+SMECEN+MEKODINAR+MPOREZ
   replace datum with mdatum
   replace valuta with mvaluta
   replace cSMECE with mcSMECE
   replace cSMECEN with mcSMECEN
   REPLACE CEKO WITH MCEKO
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE CS WITH MMCS
   REPLACE NCS WITH MMNCS
   replace datod with mdatod
   replace datdo with mdatdo
   REPLACE POV WITH MPOV
   REPLACE POVNE WITH MPOVNE
   REPLACE ANAZIV WITH MANAZIV
   REPLACE AMESTO WITH MAMESTO
   REPLACE AULICA WITH MAULICA
   REPLACE CENOVNIK WITH MCEN
   replace idbroj WITH mPIB2
   REPLACE BRRAC WITH MBRRAC
   REPLACE POZIVO WITH MPOZIVO
   REPLACE MESEC WITH MMESEC
SELECT VPRACD

 
ENDIF   
