SELECT VP
MPIB=PIB
MGRUPA=GRUPA
MIME_PREZ=IME_PREZ
MSIFRA=STR(VAL(SIFRA),5,0)
mmsifra=sifra
MRADIKAM=RADIKAM
*-----------TABELA OBRACUNA------------
select VPOBRAC
MCENOVNIK=CENOVNIK
MBROBRAC=BROBRAC
*------TABELA CENA
select VPCENE
SET ORDER TO 1
SEEK MCENOVNIK
mpstanje=pstanje
mzstanje=zstanje
APOC='ST'+ALLTRIM(STR(MPSTANJE,2,0))
AKRAJ='ST'+ALLTRIM(STR(MZSTANJE,2,0))
MMES=MZSTANJE-MPSTANJE
mEdatum=datum
mEvaluta=valuta
mdatOD2=DTOS(datod)
mdatDO2=DTOS(datdo)
mdatOD=datod
mdatDO=datdo
mcvoda=cvoda
mcdvoda=cdvoda
mckanal=ckanal
mcdkanal=cdkanal
MRABPROC=RABPROC
MPROCPOR=PROCPOR
mprocakont=procakont
MBRNAL='O'+ALLTRIM(STR(MBROBRAC,2,0))+MGRUPA
MPRDUG=0
SELECT VP
*IF POPUST<>' '
*   IMARABAT=1
*ELSE
*   IMARABAT=0
*ENDIF   
SELECT VP
set order to 
IF MraDIKAM<>0
*-----------OBRACUN KAMATE---------------
   USE ANAL1 IN 0 ALIAS VPUPL
   SELECT VP
   USE VPKAM IN 0 EXCLU
   SELECT VPKAM
   ZAP
   DO VPKAMF WITH MMSIFRA,MDATOD,MDATDO
   SELECT VPUPL
   USE
   SELECT VPKAM
   REPLACE ALL SIFRA WITH PIB
*--------PRENOS KAMATE------------------
   SET ORDER TO 1
   MKAMATA=0
   SELECT VPKAM
*   BROW
   SET ORDER TO 1
   LOCATE FOR SIFRA=MMSIFRA
   IF FOUND()
      MKAMATA=0
      DO WHILE.NOT.EOF()
         IF PIB=MMSIFRA
            IF DATPOC>=MDATOD.AND.DATPOC<=MDATDO
               mKAMATA=mKAMATA+KAMATA
            ENDIF   
         ENDIF
         SKIP
      ENDDO
   ENDIF
   *DO VPPRENKAM WITH MPIB,MDATOD,MDATDO
   SELECT VPKAM
   USE
   SELECT vp
   IF MKAMATA>0
      REPLACE KAMATA WITH MKAMATA
   ELSE
      REPLACE KAMATA WITH 0
   ENDIF
ELSE
   replace kamata WITH 0   
endif
   SELECT VP  
   REPLACE DATUM WITH MEDATUM
   REPLACE VALUTA WITH MEVALUTA
   REPLACE MES WITH MMES
*   REPLACE POT WITH 0
*--------OBRACUN PAUSAL------------------
   IF PAUSAL=' '
      REPLACE POT WITH &AKRAJ-&APOC
      MPOT=POT
   ELSE
      REPLACE POT WITH MMES*MESPAUSAL
      MPOT=POT
   ENDIF
 *  IF POT<0
 *     REPLACE POT WITH 0
 *     MPOT=POT
 *  ENDIF   
   REPLACE POC WITH &APOC
   REPLACE KRAJ WITH &AKRAJ
   *REPLACE UKPOT WITH KRAJ-POC
   REPLACE UKPOT WITH MPOT
   REPLACE VODA WITH 0
   REPLACE CENOVNIK WITH MCENOVNIK
   REPLACE DATUM WITH MEDATUM
   REPLACE VALUTA WITH MEVALUTA
   REPLACE DATOD WITH MDATOD
   REPLACE DATDO WITH MDATDO
*------------OBRACUN ZA VODU------------------   
   IF POT>0
      IF PVODA<>' '
         REPLACE VODA WITH POT*MCVODA*(100-POPPROC)/100
         REPLACE DOPV WITH POT*MCDVODA*(100-POPPROC)/100    
      ELSE
         REPLACE VODA WITH 0
         REPLACE DOPV WITH 0
      ENDIF
*------------OBRACUN ZA KANALIZACIJU
      IF PKANAL<>' '
         REPLACE KAN WITH POT*MCKANAL*(100-POPKAN)/100
         REPLACE DOPK WITH POT*MCDKANAL*(100-POPKAN)/100    
      ELSE
         REPLACE KAN WITH 0
         REPLACE DOPK WITH 0   
      ENDIF
   ELSE
      REPLACE VODA WITH 0
      REPLACE DOPV WITH 0
      REPLACE KAN WITH 0
      REPLACE DOPK WITH 0   
   ENDIF
*-------UKUPNI PODACI------------------   
   REPLACE MESECI WITH MMES      
   IMARABAT=0
   IF IMARABAT=1
      MRABOSNOV=VODA+DOPV+KAN+DOPK
   ELSE
      MRABOSNOV=0
   ENDIF      
   IF MRABOSNOV>0
      MRABAT=ROUND(MRABOSNOV*MRABPROC/100,2)
   ELSE
      MRABAT=0
   ENDIF

   REPLACE RABAT WITH MRABAT
   MUKUPNO=VODA+DOPV+KAN+DOPK
   REPLACE UKUPNO WITH MUKUPNO   
   REPLACE PROCPOR WITH MPROCPOR
   IF (UKUPNO-RABAT)>0
      MPOREZ=ROUND((VODA+KAN-RABAT)*PROCPOR/100,2)
   ELSE
      MPOREZ=0
   ENDIF
   
   REPLACE POREZ WITH MPOREZ
   REPLACE SVEGA WITH UKUPNO-RABAT+POREZ+KAMATA
   MOSNOV=MUKUPNO-mrabat+MPOREZ
   IF MOSNOV>0.AND.MMES>0   
      REPLACE AKONT WITH ROUND( (100+MPROCAKONT)*MOSNOV/MMES/100,0)
   ELSE
      REPLACE AKONT WITH 0
   ENDIF   
   REPLACE BRNAL WITH MBRNAL
   MPR2DUG=0
   MUPLAC=0
   mispr=0
   MSPORAZUM=0
   MOSTALO=0

*----------POPUNJAVANJE GLAVNE TABELE----------
   SELECT VP
   mbrrac=grupa+REPLICATE('0',2-LEN(ALLTRIM(STR(MZSTANJE,2,0))))+ALLTRIM(STR(MZSTANJE,2,0))+SUBSTR(STR(YEAR(medatum),4,0),3,2)+SUBSTR(ALLTRIM(pib),1,7)
   mbrrac2=grupa+REPLICATE('0',2-LEN(ALLTRIM(STR(MZSTANJE,2,0))))+ALLTRIM(STR(MZSTANJE,2,0))+SUBSTR(STR(YEAR(medatum),4,0),3,2)+SUBSTR(ALLTRIM(pib),1,7)
   REPLACE BRRAC WITH MBRRAC
   M1=VAL(mbrrac2)
   M2=(M1*100/97)-INT(M1*100/97)
   M3=ROUND(97*M2,0)
   M4=98-M3
   IF M4<=9
      M4='0'+STR(M4,1,0)
   ELSE
      M4=STR(M4,2,0)
   ENDIF      
   REPLACE model WITH +M4+'-'+ALLTRIM(mbrrac2)

   SELECT VPUPLD
   SET ORDER TO 5
   SET EXACT ON
   GO TOP
   DO WHILE.T.
      SEEK MBRRAC
      IF FOUND()
         REPLACE PIB WITH SPACE(13)
         REPLACE BRNAL WITH SPACE(6)
         REPLACE BRRAC WITH ''
         REPLACE GRUPA WITH ''
         REPLACE CENOVNIK WITH 0
         REPLACE PSTanje WITH 0
         REPLACE ZSTANJE WITH 0
         REPLACE MESEC WITH 0
         REPLACE DATUM WITH CTOD('')
         REPLACE VALUTA WITH CTOD('')
         REPLACE DATOD WITH CTOD('')
         REPLACE DATDO WITH CTOD('')
         REPLACE CVODA WITH 0
         REPLACE CDVODA WITH 0
         REPLACE CKANAL WITH 0
         REPLACE CDKANAL WITH 0
         REPLACE PROCPOR WITH 0
         REPLACE VODA WITH 0
         REPLACE DOPV WITH 0
         REPLACE KAN WITH 0
         REPLACE DOPK WITH 0
         REPLACE UKUPNO WITH 0
         REPLACE PROCPOR WITH 0
         REPLACE KAMATA WITH 0
         REPLACE OSNOV WITH 0
         REPLACE POREZ WITH 0
         REPLACE POC WITH 0
         REPLACE KRAJ WITH 0
         REPLACE POT WITH 0
         REPLACE RABAT WITH 0
         REPLACE DUG WITH 0
         REPLACE SALDO WITH 0
         REPLACE SVEGA WITH 0
         LOOP 
      ELSE
         EXIT
      ENDIF
   ENDDO   
  
   SELECT VP
   MGRUPA=GRUPA
   MDATUM=DATUM
   MVALUTA=VALUTA
   MPAUSAL=PAUSAL
   MMESPAUSAL=MESPAUSAL
   MVODA=VODA
   MDOPV=DOPV
   MKAN=KAN
   MDOPK=DOPK
   MUKUPNO=UKUPNO
   MOSTALO=OSTALO
   *msporazum=sPORAzum
   mdug=dug
   MSVEGA=SVEGA
   MUPLAC=UPLAC
   MPOREZ=POREZ
   MKAMATA=KAMATA
   MBRRAC=BRRAC
   MMODEL=MODEL
   MRABAT=RABAT
   MPROCPOR=PROCPOR
   MPOC=POC
   MKRAJ=KRAJ
   MPOT=POT
   MPVODA=PVODA
   MPKANAL=PKANAL
   MPOPPROC=POPPROC
   MPOPKAN=POPKAN
   MVRSTA=VRSTA
   MSIFUL=SIFUL
   MULICA=ULICA
   MULBROJ=ULBROJ
   MBROJ=BROJ
   MIME_PREZ=IME_PREZ
   MAPREZ=AN0.NAZIV
   MAPOSTA0=AN0.POSTA
   MAMESTO0=AN0.MESTO
   MAULICA0=AN0.ULICA
   MAULBROJ0=AN0.ULBROJ
   MAPIB=AN0.PIB
   MRABAT=RABAT   
   mdatcit=datcit
   MDATOD=DATOD
   MDATDO=DATDO
   msifra=sifra
   MIME_PREZC=IME_PREZC
   MULICAC=ULICAC
   MAMESTO0C=AN0.CMESTO
   MAULICA0C=AN0.CULICA
   SELECT VPUPLD
   IF MSVEGA<>0
   APPEND BLANK
   REPLACE PIB WITH MPIB
   REPLACE GRUPA WITH MGRUPA
   REPLACE CENOVNIK WITH MCENOVNIK
   REPLACE PSTanje WITH MPSTANJE
   REPLACE ZSTANJE WITH MZSTANJE
   REPLACE MESEC WITH MMES
   REPLACE DATUM WITH  MDATUM
   REPLACE VALUTA WITH MVALUTA
   REPLACE DATOD WITH MDATOD
   REPLACE DATDO WITH MDATDO
   REPLACE CVODA WITH MCVODA
   REPLACE CDVODA WITH MCDVODA
   REPLACE CKANAL WITH MCKANAL
   REPLACE CDKANAL WITH MCDKANAL
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE VODA WITH MVODA
   REPLACE DOPV WITH MDOPV
   REPLACE KAN WITH MKAN
   REPLACE DOPK WITH MDOPK
   REPLACE UKUPNO WITH MUKUPNO
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE OSTALO WITH MOSTALO
   REPLACE DUG WITH MDUG
   REPLACE UPLAC WITH MUPLAC
   REPLACE POREZ WITH MPOREZ
   REPLACE KAMATA WITH MKAMATA
   REPLACE SVEGA WITH MSVEGA
   REPLACE SALDO WITH SVEGA
   REPLACE BRRAC WITH MBRRAC
   REPLACE MODEL WITH MMODEL
   REPLACE BRNAL WITH MBRNAL
   REPLACE OSNOV WITH MOSNOV
   REPLACE POC WITH MPOC
   REPLACE KRAJ WITH MKRAJ
   REPLACE POT WITH MPOT
   REPLACE UKPOT WITH MPOT
   REPLACE PVODA WITH MPVODA
   REPLACE PKANAL WITH MPKANAL
   REPLACE POPPROC WITH  MPOPPROC
   REPLACE POPKAN WITH  MPOPKAN
   REPLACE VRSTA WITH MVRSTA
   REPLACE SIFUL WITH MSIFUL
   REPLACE ULICA WITH MULICA
   REPLACE ULBROJ WITH MULBROJ
   REPLACE BROJ WITH MBROJ
   REPLACE IME_PREZ WITH MIME_PREZ
   REPLACE APOSTA0 WITH MAPOSTA0
   REPLACE AMESTO0 WITH MAMESTO0
   REPLACE AULICA0 WITH MAULICA0
   REPLACE AULBROJ0 WITH MAULBROJ0
   REPLACE APIB WITH MAPIB
   REPLACE RABAT WITH MRABAT
   replace datcit WITH mdatcit
   REPLACE APREZ WITH MAPREZ
   replace sifra WITH msifra
   REPLACE MESPAUSAL WITH MMESPAUSAL
   REPLACE IME_PREZC WITH MIME_PREZC
   REPLACE ULICAC WITH MULICAC   
   REPLACE AMESTO0C WITH MAMESTO0C
   REPLACE AULICA0C WITH MAULICA0C
   ENDIF
   SELECT VP
