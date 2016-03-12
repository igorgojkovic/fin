SELECT VP
MPIB=PIB
MKSSIFRA=SUBSTR(MPIB,1,9)
MGRUPA=GRUPA
mdatcit=datcit
*SET STEP ON 
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
mdatOD=datod
mdatDO=datdo
mcvoda=cvoda
mcdvoda=cdvoda
mckanal=ckanal
mcdkanal=cdkanal
MRABPROC=RABPROC

mprocakont=procakont
MBRNAL='O'+ALLTRIM(STR(MBROBRAC,2,0))+MGRUPA
MPRDUG=0
   SELECT VP  
   REPLACE DATUM WITH MEDATUM
   REPLACE VALUTA WITH MEVALUTA
   REPLACE MES WITH MMES
   REPLACE BRNAL WITH MBRNAL
*--------OBRACUN PAUSAL------------------
   IF PAUSAL<>'D'
      REPLACE POT WITH &AKRAJ-&APOC
   ELSE
      REPLACE POT WITH MMES*MESPAUSAL
   ENDIF
   IF POT<0
      REPLACE POT WITH 0
   ENDIF   
   MPOT=POT
   REPLACE UKPOT WITH MPOT
   MAPOC=&APOC
   MAKRAJ=&AKRAJ
   MUKPOT=POT
   REPLACE POC WITH MAPOC
   REPLACE KRAJ WITH MAKRAJ
*   REPLACE CENOVNIK WITH MCENOVNIK
   REPLACE DATUM WITH MEDATUM
   REPLACE VALUTA WITH MEVALUTA
   REPLACE DATOD WITH MDATOD
   REPLACE DATDO WITH MDATDO
   SELECT VP
   SET ORDER TO 6
   MUKSTAN=0
   mpots=0
   SEEK MKSSIFRA
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF KSSIFRA<>MKSSIFRA
            EXIT
         ENDIF   
         IF ks='2'
            MUKSTAN=MUKSTAN+BRSTAN
         endif
*         REPLACE CENOVNIK WITH MCENOVNIK
         REPLACE POC WITH &APOC
         REPLACE KRAJ WITH &AKRAJ
         REPLACE DATUM WITH MEDATUM
         REPLACE VALUTA WITH MEVALUTA
         REPLACE DATOD WITH MDATOD
         REPLACE DATDO WITH MDATDO
         REPLACE POT WITH MPOT 
         REPLACE POC WITH MAPOC
         REPLACE KRAJ WITH MAKRAJ
         REPLACE BRNAL WITH MBRNAL
         REPLACE UKPOT WITH MUKPOT
         replace datcit WITH mdatcit
         IF ks='3'
            *SET STEP ON 
            REPLACE POC WITH &APOC
            REPLACE KRAJ WITH &AKRAJ
            IF PAUSAL<>'D'
               REPLACE POT WITH &AKRAJ-&APOC
            ELSE
               REPLACE POT WITH MMES*MESPAUSAL
            ENDIF
            IF POT<0
               REPLACE POT WITH 0
            ENDIF   
            mpots=mpots+pot
         endif   
         SKIP
      ENDDO
   ENDIF   
   SEEK MKSSIFRA
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF KSSIFRA<>MKSSIFRA
            EXIT
         ENDIF   
         IF ks='2'
            IF BRSTAN<>0
               REPLACE UKSTAN WITH MUKSTAN
               REPLACE POT WITH ROUND(BRSTAN*(Mpot-mpots)/UKSTAN,0)
            ENDIF      
            REPLACE UKPOT WITH MUKPOT
            replace poc WITH mapoc
            replace kraj WITH makraj
         ENDIF
         IF ks='3'
            REPLACE UKPOT WITH MUKPOT
            replace poc WITH mapoc
            replace kraj WITH makraj
         endif   
         SKIP
      ENDDO
   ENDIF   
   SEEK MKSSIFRA
   SET ORDER TO 
