SELECT VP
*SET STEP ON 
SET ORDER TO 
MPIB=PIB
*MGRUPA=GRUPA
MIME_PREZ=IME_PREZ
*MPREZ=AN00.PREZ
*MIME=AN00.IME
msifcen=sifcen
msifvodom=sifvodom
MSIFVERT=SIFVERT
MSIFVRSTEV=SIFVRSTEV
mvrsta=ALLTRIM(vrsta)
   IF SUBSTR(ime_prez,1,6)='NE KOR'.OR.SUBSTR(ime_prez,1,6)='PASIVA'
      REPLACE CLANOVA WITH 0
   ENDIF
   replace brstan WITH clanova
*-----------TABELA OBRACUNA------------
select VPOBRAC
MBROBRAC=BROBRAC
*------TABELA CENA
select VPCENE
LOCATE FOR sifcen=msifcen
IF FOUND()
mnazivcen=naziv
mPstanje=Pstanje
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
mckan=ckan
mcsis=csis
mcvoda2=cvoda2
mckan2=ckan2
mcsis2=csis2
mcvoda3=cvoda3
mckan3=ckan3
mcsis3=csis3
mvodaod=vodaod
mvodado=vodado
mvodaod2=vodaod2
mvodado2=vodado2
mvodaod3=vodaod3
mvodado3=vodado3
MPROCPOR=PROCPOR
mprocakont=procakont
*SET STEP ON 
SELECT vp
IF MBROBRAC<10
*  mbrnal='0'+STR(mBROBRAC,1,0)+SUBSTR(DTOC(DATdo),1,2)+SUBSTR(DTOC(DATDO),4,2)
   mbrnal='0'+STR(mBROBRAC,1,0)+grupa
ELSE
*  mbrnal=STR(mBROBRAC,2,0)+SUBSTR(DTOC(DATDO),1,2)+SUBSTR(DTOC(DATDO),4,2)
   mbrnal=STR(mBROBRAC,2,0)+grupa
endif   
MPRDUG=0
SELECT VP
mmrec=RECNO()
IF msifVRSTEV='0'.or.msifvrsteV='2'.or.msifvrsteV='4'
   mpot=&akraj-&apoc
   replace pot WITH mpot
   REPLACE POC WITH &APOC
   REPLACE KRAJ WITH &AKRAJ
endif
IF nazivcen=SPACE(30)
   replace nazivcen WITH mnazivcen
endif   
*--------------obracun na vertikali----------------------
IF msifvrsteV='3'
*   if sifvodom='02582'
*      SET STEP on
*   endif
*   MREC=RECNO()
   SET ORDER TO 9
   SEEK MSIFVERT
   IF FOUND()
      MLICNAPOT=0
      MUKSTAN=0
      mpoc=&apoc
      mkraj=&akraj
      
      DO WHILE.NOT.EOF()
         IF SIFVERT<>MSIFVERT
            EXIT
         ENDIF 
         IF sifvrsteV='4'
            MLICNAPOT=MLICNAPOT+&AKRAJ-&APOC  
         ENDIF
         IF sifvrsteV='3'
            MUKSTAN=MUKSTAN+BRSTAN  
         ENDIF
         SKIP
      ENDDO   
   ENDIF
   LOCATE FOR sifvodom=msifvodom.and.substr(pib,1,3)='881'
   IF FOUND()
      mpot=&akraj-&apoc
      replace pot WITH mpot
   ELSE
      mpot=0
   ENDIF
   replace poc WITH mpoc
   replace kraj WITH mkraj
   mnetopot=mpot-mlicnapot
   GOTO MMREC
   replace ukstan WITH mukstan
   REPLACE POT WITH 0
   IF mnetopot>0
      IF ukstan<>0
         replace pot WITH ROUND(mnetopot*brstan/ukstan,0)
      ENDIF
   endif      
endif
SET ORDER TO 
GOTO mmrec

*--------------obracun na zajednickom vodomeru---------------------
IF msifvrsteV='1'
*   if sifvodom='02272'
*      SET STEP on
*   endif
*   MREC=RECNO()
   SET ORDER TO 9
   SEEK MSIFVERT
   IF FOUND()
      MLICNAPOT=0
      MUKSTAN=0
      mpoc=&apoc
      mkraj=&akraj      
      DO WHILE.NOT.EOF()
         IF SIFVERT<>MSIFVERT
            EXIT
         ENDIF 
         IF sifvrsteV='2'
            IF &akraj>=&apoc
               MLICNAPOT=MLICNAPOT+&AKRAJ-&APOC  
            endif
         ENDIF
         IF sifvrsteV='1'
            MUKSTAN=MUKSTAN+BRSTAN  
         ENDIF
         SKIP
      ENDDO   
   ENDIF
   LOCATE FOR sifvodom=msifvodom.and.substr(pib,1,3)='880'
   IF FOUND()
      mpot=&akraj-&apoc
      replace pot WITH mpot
   ELSE
      mpot=0
   ENDIF
   mnetopot=mpot-mlicnapot
   GOTO MMREC
   replace poc WITH mpoc
   replace kraj WITH mkraj   
   replace ukstan WITH mukstan
   REPLACE POT WITH 0
   IF mnetopot>0
      IF ukstan<>0
         replace pot WITH ROUND(mnetopot*brstan/ukstan,0)
      ENDIF
   endif      
endif
SET ORDER TO 
GOTO mmrec
REPLACE POC WITH &APOC
REPLACE KRAJ WITH &AKRAJ
MKAMATA=0
*----------kraj obracuna na glavnom vodomeru
SELECT VP
IF SUBSTR(PIB,1,2)<>'88'
IF mvrsta<>'F'
*-----------OBRACUN KAMATE---------------
   select VPUPL
   set order to 
   SELECT VP
   USE VPKAM IN 0 EXCLU
   SELECT VPKAM
   ZAP
   DO VPKAM WITH MPIB,MDATOD,MDATDO
   SELECT VPKAM
*--------PRENOS KAMATE------------------
   SET ORDER TO 1
   MKAMATA=0
   SELECT VPKAM
   SET ORDER TO 1
   SEEK MPIB
   IF FOUND()
      MKAMATA=0
      DO WHILE.NOT.EOF()
         IF PIB<>MPIB
            EXIT
         ENDIF
         IF DATPOC>=MDATOD.AND.DATPOC<=MDATDO
            mKAMATA=mKAMATA+KAMATA
         ENDIF   
         SKIP
      ENDDO
   ENDIF
   *DO VPPRENKAM WITH MPIB,MDATOD,MDATDO
   SELECT VPKAM
   USE
ENDIF   
   SELECT VP  
   REPLACE DATUM WITH MEDATUM
   REPLACE VALUTA WITH MEVALUTA
   REPLACE MES WITH MMES
   IF MKAMATA>0
      REPLACE KAMATA WITH MKAMATA
   ELSE
      REPLACE KAMATA WITH 0
   ENDIF

*--------OBRACUN PAUSAL------------------
   IF PAUSAL<>' '
      REPLACE POT WITH MMES*MESPAUSAL
      MPOT=POT
   ENDIF
   IF POT<0
      REPLACE POT WITH 0
      MPOT=POT
   ENDIF   
   REPLACE VODA WITH 0
   POPPROC=0
*------------OBRACUN ZA VODU------------------   
*SET STEP ON 
   mvoda1=0
   mvoda2=0
   mvoda3=0
   mpot1=0
   mpot2=0
   mpot3=0   
   IF POT>0
         IF pOT<=mvodado
            mVODA1=POT*MCVODA*(100-POPPROC)/100
            mpot1=pot
         ENDIF
         IF pOT>mvodado.and.pot<=mvodaDO2.And.mvodado2>mvodado
            mVODA1=mvodado*MCVODA*(100-POPPROC)/100
            MVODA2=(POT-mvodado)*MCVODA2*(100-POPPROC)/100
            mpot1=mvodado
            mpot2=pot-mvodado
         ENDIF
         IF pOT>mvodado2.and.pot<=mvodaDO3.And.mvodado3>mvodado2
            MVODA1=mvodado*MCVODA*(100-POPPROC)/100
            MVODA2=(mvodado2-mvodado)*MCVODA2*(100-POPPROC)/100
            MVODA3=(POT-mvodado2)*MCVODA3*(100-POPPROC)/100
            mpot1=mvodado
            mpot2=mvodado2-mvodado
            mpot3=pot-mvodado2
         ENDIF
   ENDIF
   REPLACE VODA1 WITH MVODA1
   REPLACE VODA2 WITH MVODA2
   REPLACE VODA3 WITH MVODA3


   
   REPLACE VODA WITH MVODA1+MVODA2+MVODA3
   replace pot1 WITH mpot1
   replace pot2 WITH mpot2
   replace pot3 WITH mpot3
   
*------------OBRACUN ZA KANALIZACIJU------------------   
   mKAN1=0
   mKAN2=0
   mKAN3=0
   IF kan_tip='D'
   IF POT>0
         IF pOT<=mvodado
            mKAN1=POT*MCKAN*(100-POPPROC)/100
         ENDIF
         IF pOT>mvodado.and.pot<=mvodaDO2.and.mvodado2>mvodado
            mKAN1=mvodado*MCKAN*(100-POPPROC)/100
            MKAN2=(POT-mvodado)*MCKAN2*(100-POPPROC)/100
         ENDIF
         IF pOT>mvodado2.and.pot<=mvodaDO3.and.mvodado3>mvodado2
            MKAN1=mvodado*MCKAN*(100-POPPROC)/100
            MKAN2=(mvodado2-mvodado)*MCKAN2*(100-POPPROC)/100
            MKAN3=(POT-mvodado2)*MCKAN3*(100-POPPROC)/100
         ENDIF
      ENDIF
   ENDIF   
   replace kan1 WITH mkan1
   replace kan2 WITH mkan2
   replace kan3 WITH mkan3
   REPLACE KAN WITH MKAN1+MKAN2+MKAN3

*------------OBRACUN ZA SISTEM------------------   
   mSISTEM1=0
   mSISTEM2=0
   mSISTEM3=0
   IF SIS_TIP='D'
   IF POT>0
         IF pOT<=mvodado
            mSISTEM1=POT*MCSIS*(100-POPPROC)/100
         ENDIF
         IF pOT>mvodado.and.pot<=mvodaDO2.and.mvodado2>mvodado
            mSISTEM1=mvodado*MCSIS*(100-POPPROC)/100
            MSIStem2=(POT-mvodado)*MCSIS2*(100-POPPROC)/100
         ENDIF
         IF pOT>mvodado2.and.pot<=mvodaDO3.and.mvodado3>mvodado2
            MSISTEM1=mvodado*MCSIS*(100-POPPROC)/100
            MSISTEM2=(mvodado2-mvodado)*MCSIS2*(100-POPPROC)/100
            MSISTEM3=(POT-mvodado2)*MCSIS3*(100-POPPROC)/100
         ENDIF
      ENDIF
   ENDIF   
   replace sistem1 WITH msistem1
   replace sistem2 WITH msistem2
   replace sistem3 WITH msistem3
   REPLACE SISTEM WITH MSISTEM1+MSISTEM2+MSISTEM3

   MPOREZvoda1=ROUND((mvoda1)*mPROCPOR/100,2)
   MPOREZkan1=ROUND((mkan1)*mPROCPOR/100,2)
   MPOREZsis1=ROUND((msistem1)*mPROCPOR/100,2)         
   MPOREZvoda2=ROUND((mvoda2)*mPROCPOR/100,2)
   MPOREZkan2=ROUND((mkan2)*mPROCPOR/100,2)
   MPOREZsis2=ROUND((msistem2)*mPROCPOR/100,2)         
   MPOREZvoda3=ROUND((mvoda3)*mPROCPOR/100,2)
   MPOREZkan3=ROUND((mkan3)*mPROCPOR/100,2)
   MPOREZsis3=ROUND((msistem3)*mPROCPOR/100,2)         


   REPLACE porezvoda1 WITH Mporezvoda1
   REPLACE porezkan1 WITH Mporezkan1
   REPLACE porezsis1 WITH Mporezsis1
   REPLACE porezvoda2 WITH Mporezvoda2
   REPLACE porezkan2 WITH Mporezkan2
   REPLACE porezsis2 WITH Mporezsis2
   REPLACE porezvoda3 WITH Mporezvoda3
   REPLACE porezkan3 WITH Mporezkan3
   REPLACE porezsis3 WITH Mporezsis3
*-------UKUPNI PODACI------------------   
   SELECT vp
   REPLACE MESECI WITH MMES      
   REPLACE PROCPOR WITH MPROCPOR
   replace porezvoda WITH mporezvoda1+mporezvoda2+mporezvoda3
   replace porezkan WITH mporezkan1+mporezkan2+mporezkan3
   replace porezsis WITH mporezsis1+mporezsis2+mporezsis3
   MPOREZ=porezvODa+porezkan+porezsis 
   REPLACE POREZ WITH MPOREZ
   replace ukupnovoda WITH voda+porezvoda
   replace ukupnokan WITH kan+porezkan
   replace ukupnosis WITH sistem+porezsis
   replace ukupno WITH VODA+KAN+SIStem
   REPLACE SVEGA WITH UKUPNO+POREZ
   MOSNOV=UKUPNO+POREZ
   IF MOSNOV>0.AND.MMES>0   
      REPLACE AKONT WITH ROUND( (100+MPROCAKONT)*MOSNOV/MMES/100,0)
   ELSE
      REPLACE AKONT WITH 0
   ENDIF   
   REPLACE BRNAL WITH MBRNAL
   MPR2DUG=0
   mpr2dugkam=0
   muplackam=0
   MUPLAC=0
   mispr=0
   MSPORAZUM=0
   MOSTALO=0

   SELECT VPUPL
   SET ORDER TO 1
   SEEK MPIB
*----------PRETRAZIVANJE UPLATA ZA OSTALIM PODACIMA--------  
   if found()
      do while.not.eof()
         if PIB<>mPIB
            exit
         endif
         if DTOS(datum)<DTOS(mdatod)
            IF SUBSTR(brrac,1,2)<>'K-'
               mpr2dug=mpr2dug+dug-pot
            ELSE
               mpr2dugkam=mpr2dugkam+dug-pot
            endif
         endif    
         if DTOS(datum)>=DTOS(mdatod).and.DTOS(datum)<=DTOS(mdatdo)
            IF GRUPA='SPO'.OR.GRUPA='STA'.OR.GRUPA='STO'.OR.GRUPA='SPP'
               MSPORAZUM=MSPORAZUM+DUG
            ENDIF      
            IF GRUPA='ISP'.OR.GRUPA='KOD'
               MOSTALO=MOSTALO+DUG
            ENDIF      
         ENDIF
         if DTOS(datum)>=DTOS(mdatod).and.DTOS(datum)<=DTOS(mdatdo)
            IF SUBSTR(brrac,1,2)<>'K-'
                mUPLAC=MUPLAC+POT
            ELSE
               mUPLACkam=MUPLACkam+POT
            endif
            mdATUM=datum 
        endif
        skip
     enddo      
  endif


*----------POPUNJAVANJE GLAVNE TABELE----------
   SELECT VP
   REPLACE DUG WITH MPR2DUG
   REPLACE DUGkamata WITH MPR2DUGkam
   REPLACE UPLAC WITH MUPLAC
   REPLACE UPLACKAM WITH MUPLACKAM
   REPLACE OSTALO WITH MOSTALO+msporazum
   SET CENTURY OFF
   MGODINA=SUBSTR(DTOC(medatum),7,2)
   mbrrac=ALLTRIM(grupa)+SUBSTR(brnal,1,2)+SUBSTR(ALLTRIM(pib),5,5)
   REPLACE BRRAC WITH MBRRAC
   M1=VAL(mbrrac)
   M2=(M1*100/97)-INT(M1*100/97)
   M3=ROUND(97*M2,0)
   M4=98-M3
   IF M4<=9
      M4='0'+STR(M4,1,0)
   ELSE
      M4=STR(M4,2,0)
   ENDIF      
   REPLACE model WITH +M4+'-'+ALLTRIM(mbrrac)
   M1=VAL(ALLTRIM(pib))
   M2=(M1*100/97)-INT(M1*100/97)
   M3=ROUND(97*M2,0)
   M4=98-M3
   IF M4<=9
      M4='0'+STR(M4,1,0)
   ELSE
      M4=STR(M4,2,0)
   ENDIF      
   REPLACE idbroj WITH +'97-'+M4+'036'+ALLTRIM(pib)
   SET CENTURY on
   SELECT VPUPLD
   SET ORDER TO 1
   SET EXACT OFF
   GO TOP
   DO WHILE.T.
      LOCATE FOR pib=mpib.and.brnal=mbrnal
      IF FOUND()
         SET ORDER TO 
         REPLACE PIB WITH SPACE(13)
         REPLACE BRNAL WITH SPACE(6)
         REPLACE BRRAC WITH ''
         REPLACE GRUPA WITH ''
         REPLACE PSTanje WITH 0
         REPLACE ZSTANJE WITH 0
         REPLACE MESEC WITH 0
         REPLACE DATUM WITH CTOD('')
         REPLACE VALUTA WITH CTOD('')
         REPLACE DATOD WITH CTOD('')
         REPLACE DATDO WITH CTOD('')
         REPLACE CVODA WITH 0
         REPLACE CKAN WITH 0
         REPLACE Csis WITH 0
         REPLACE PROCPOR WITH 0
         REPLACE VODA1 WITH 0
         REPLACE KAN1 WITH 0
         REPLACE sistem1 WITH 0
         REPLACE VODA2 WITH 0
         REPLACE KAN2 WITH 0
         REPLACE sistem2 WITH 0
         REPLACE VODA3 WITH 0
         REPLACE KAN3 WITH 0
         REPLACE sistem3 WITH 0
         REPLACE VODA WITH 0
         REPLACE KAN WITH 0
         REPLACE sistem WITH 0
         REPLACE UKUPNO WITH 0
         REPLACE PROCPOR WITH 0
         REPLACE OSTALO WITH 0
         REPLACE SPORAZUM WITH 0
         REPLACE KAMATA WITH 0
         REPLACE OSNOV WITH 0
         REPLACE POREZvoda WITH 0
         REPLACE POREZkan WITH 0
         REPLACE POREZsis WITH 0
         REPLACE POREZ WITH 0
         REPLACE POC WITH 0
         REPLACE KRAJ WITH 0
         REPLACE POT WITH 0
         REPLACE DUG WITH 0
         REPLACE SALDO WITH 0
         REPLACE SVEGA WITH 0
         LOOP 
      ELSE
         EXIT
      ENDIF
   ENDDO   
   SET ORDER TO 
   SELECT VP
   MGRUPA=GRUPA
   MDATUM=DATUM
   MVALUTA=VALUTA
   MPAUSAL=PAUSAL
   MMESPAUSAL=MESPAUSAL
   MVODA=VODA
   MKAN=KAN
   msistem=sistem
   MVODA1=VODA1
   MKAN1=KAN1
   msistem1=sistem1
   MVODA2=VODA2
   MKAN2=KAN2
   msistem2=sistem2
   MVODA3=VODA3
   MKAN3=KAN3
   msistem3=sistem3
   mporezvoda=porezvoda
   mporezkan=porezkan
   mporezsis=porezsis
   MSIFCEN=SIFCEN
   MUKUPNO=UKUPNO
   MOSTALO=OSTALO
   mdug=dug
   MSVEGA=SVEGA
   MUPLAC=UPLAC
   MPOREZ=POREZ
   MKAMATA=KAMATA
   MBRRAC=BRRAC
   MMODEL=MODEL
   MPROCPOR=PROCPOR
   MPOC=POC
   MKRAJ=KRAJ
   MPOT=POT
   MBRSTAN=BRSTAN
   MUKSTAN=UKSTAN
   MDOMAC=DOMAC
   MVRSTA=VRSTA
   MSIFUL=SIFUL
   MULICA=ULICA
   MULBROJ=ULBROJ
   MBROJ=BROJ
   MIME_PREZ=IME_PREZ
   mdatcit=datcit
   MSIFVODOM=SIFVODOM
   mdugkamata=dugkamata
   muplackam=uplackam
   MSALDO=mSVEGA+mDUG+mdugkamata-mUPLAC-muplackam+mKAMATA+mostalo
   IF MSALDO<>0.or.msvega<>0.or.mdug<>0.or.mdugkamata<>0.or.muplac<>0.or.muplackam<>0.or.mkamata<>0.or.mostalo<>0
   SELECT VPUPLD
   APPEND BLANK
   REPLACE PIB WITH MPIB
   REPLACE GRUPA WITH MGRUPA
   REPLACE SIFCEN WITH MSIFCEN
   REPLACE PSTanje WITH MPSTANJE
   REPLACE ZSTANJE WITH MZSTANJE
   REPLACE MESEC WITH MMES
   REPLACE DATUM WITH  MDATUM
   REPLACE VALUTA WITH MVALUTA
   REPLACE DATOD WITH MDATOD
   REPLACE DATDO WITH MDATDO
   REPLACE CVODA WITH MCVODA
   REPLACE CKAN WITH MCKAN
   REPLACE Csis WITH MCsis
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE VODA WITH MVODA
   REPLACE KAN WITH MKAN
   REPLACE sistem WITH Msistem
   REPLACE VODA1 WITH MVODA1
   REPLACE KAN1 WITH MKAN1
   REPLACE sistem1 WITH Msistem1
   REPLACE VODA2 WITH MVODA2
   REPLACE KAN2 WITH MKAN2
   REPLACE sistem2 WITH Msistem2
   REPLACE VODA3 WITH MVODA3
   REPLACE KAN3 WITH MKAN3
   REPLACE sistem3 WITH Msistem3
   REPLACE UKUPNO WITH MUKUPNO
   REPLACE PROCPOR WITH MPROCPOR
   REPLACE OSTALO WITH MOSTALO
   REPLACE DUG WITH MDUG
   REPLACE DUGkamata WITH MDUGkamatA
   REPLACE UPLAC WITH MUPLAC
   REPLACE UPLACkam WITH MUPLACkam
   REPLACE POREZvoda WITH MPOREZvoda
   REPLACE POREZkan WITH MPOREZkan
   REPLACE POREZsis WITH MPOREZsis
   REPLACE POREZvoda1 WITH MPOREZvoda1
   REPLACE POREZkan1 WITH MPOREZkan1
   REPLACE POREZsis1 WITH MPOREZsis1
   REPLACE POREZvoda2 WITH MPOREZvoda2
   REPLACE POREZkan2 WITH MPOREZkan2
   REPLACE POREZsis2 WITH MPOREZsis2
   REPLACE POREZvoda3 WITH MPOREZvoda3
   REPLACE POREZkan3 WITH MPOREZkan3
   REPLACE POREZsis3 WITH MPOREZsis3
   REPLACE POREZ WITH MPOREZ
   REPLACE KAMATA WITH MKAMATA
   REPLACE SVEGA WITH MSVEGA
   REPLACE SALDO WITH SVEGA+DUG+dugkamata-UPLAC-uplackam+KAMATA+ostalo
   REPLACE BRRAC WITH MBRRAC
   REPLACE MODEL WITH MMODEL
   REPLACE BRNAL WITH MBRNAL
   REPLACE OSNOV WITH MOSNOV
   REPLACE POC WITH MPOC
   REPLACE KRAJ WITH MKRAJ
   REPLACE POT WITH MPOT
   replace pot1 WITH mpot1
   replace pot2 WITH mpot2
   replace pot3 WITH mpot3
   REPLACE UKPOT WITH MPOT
   REPLACE BRSTAN WITH MBRSTAN
   REPLACE UKSTAN WITH MUKSTAN
   REPLACE DOMAC WITH MDOMAC
   REPLACE VRSTA WITH MVRSTA
   REPLACE SIFUL WITH MSIFUL
   REPLACE ULICA WITH MULICA
   REPLACE ULBROJ WITH MULBROJ
   REPLACE BROJ WITH MBROJ
   REPLACE IME_PREZ WITH MIME_PREZ
   replace datcit WITH mdatcit
   REPLACE vodaod WITH Mvodaod
   REPLACE vodadO WITH MvodaDO
   REPLACE vodaod2 WITH Mvodaod2
   REPLACE vodadO2 WITH MvodaDO2
   REPLACE vodaod3 WITH Mvodaod3
   REPLACE vodadO3 WITH MvodaDO3
   REPLACE CVODA2 WITH MCVODA2
   REPLACE CKAN2 WITH MCKAN2
   REPLACE Csis2 WITH MCsis2
   REPLACE CVODA3 WITH MCVODA3
   REPLACE CKAN3 WITH MCKAN3
   REPLACE Csis3 WITH MCsis3
   REPLACE SIFVODOM WITH MSIFVODOM
   MDDUG=VODA+DOPV+KAN+DOPK+POREZ+sistem
   MDKAMATA=KAMATA
   SELECT VPUPL
   SET ORDER TO 1
   SEEK Mpib
   IF FOUND()
       DO WHILE.NOT.EOF()
          IF pib<>Mpib
             EXIT
          ENDIF
          IF brnal=mbrnal
          IF DUG<>0
             REPLACE DUG WITH 0
             REPLACE BRRAC WITH ''
          ENDIf    
          endif
          SKIP
       ENDDO
   ENDIF    
   IF mddug<>0
   APPEND BLANK
   REPLACE PIB WITH MPIB
   REPLACE GRUPA WITH MGRUPA
   REPLACE DUG WITH MDDUG
   REPLACE DATUM WITH MDATUM
   REPLACE VALUTA WITH MVALUTA
   REPLACE BRRAC WITH 'R-'+MBRRAC
   REPLACE BRNAL WITH MBRNAL
   ENDIF
   IF mdkamata<>0
   APPEND BLANK
   REPLACE PIB WITH MPIB
   REPLACE GRUPA WITH MGRUPA
   REPLACE DUG WITH MDkamata
   REPLACE DATUM WITH MDATUM
   REPLACE VALUTA WITH MVALUTA
   REPLACE BRRAC WITH 'K-'+MBRRAC
   REPLACE BRNAL WITH MBRNAL
   endif
   SET ORDER TO 
   endif
endif
endif
SELECT VP
