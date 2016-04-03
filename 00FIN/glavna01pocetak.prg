PUSH KEY CLEAR
PUBLIC MFDIR,MFREC,TTEST,TSLIKE,TBAZNI,MFFAKPRN,MFKALPRN,MFKSEMA,MFKONPLAN,MFFAKPODN,MFNALVRSTA,MFMESTA,MSSNIMAK,msprijem,mffakpodn2
PUBLIC Mtdbdata02,Mtdbdata03,Mtdbvp,MDATA02K,takt1,tpdfprint
TTEST=0
TAPUTANJA=RECNO()
CD\
CD &MBAZNI
SET DEFAULT TO &MBAZNI
*MUZIKA=MWAV+'S002.WAV'
*SET BELL TO MUZIKA
*??CHR(7)
*SET BELL TO
IF RECCOUNT()<1
   APPEND BLANK
ENDIF
*SET STEP ON 
MFREC=ALLTRIM(STR(RECNO(),3,0))
MFSREC=REPLICATE('0',3-LEN(ALLTRIM(STR(RECNO(),3,0))))+ALLTRIM(STR(RECNO(),3,0))
MF='\F'+MFREC
*MSS='SF'+MFREC
MDATA02=MBAZNI+MF
*MSS='SF'+MFREC
MDATA02=MBAZNI+MF
MFK='\KOMUNAL'
MDATA02K=MDATA02+MFK
*MDATA0SF=MSS
   SELECT LOZINKE
   TSLIKE=SLIKE
   tpdfprint=pdfprint
   USE
   SELECT PUTANJE 
   REPLACE PUTANJA WITH MDATA02
   MFIR=FIRMA
   SELECT PUTANJE
   MFFAKPRN=FFAKPRN
   MFKALPRN=FKALPRN
   MFKSEMA=FKSEMA
   MFKONPLAN=FKONPLAN
   MFFAKPODN=FFAKPODN
   MFFAKPODN2=FFAKPODN2
   MFNALVRSTA=FNALVRSTA
   MFMESTA=FMESTA
   takt1=akt1
   USE
MSSNIMAK='SNIM'+MFSREC
msprijem='pri'+MFSREC

SET PATH TO &MSNIMAK 
SET DEFAULT TO &MSNIMAK

IF !DIRECTORY(MSSNIMAK)
   MD &MSSNIMAK
ENDIF   

IF !DIRECTORY(msprijem)
   MD &msprijem
ENDIF   

SET PATH TO &MBAZNI
SET DEFAULT TO &MBAZNI
IF FILE('foxypreviewer.app')
   imafoxy=1
ELSE
   imafoxy=0
endif      

IF DIRECTORY(MDATA02)
   CD\
   CD &MDATA02
   SET PATH TO &MDATA02 
   SET DEFAULT TO &MDATA02
   PRAZNO=1
   IF.NOT.FILE('PROVERAI.DBF')
      PRAZNO=3
   ENDIF
   IF imafoxy=1
      modakle=mbazni+'\'+'foxypreviewer.app'
      mgdeide=mdata02+'\'+'foxypreviewer.app'
      IF.not.file(mgdeide)
         COPY FILE &modakle TO &mgdeide
      endif
   endif

ELSE   
   PRAZNO=2
ENDIF

IF PRAZNO=2   
   CD\
   CD &MBAZNI
   MD &MDATA02
   CD &MDATA02
   SET PATH TO &MDATA02
   SET DEFAULT TO &MDATA02
ENDIF
*--------------------

IF DIRECTORY(MDATA02K)
ELSE   
   PRAZNO=22
ENDIF

IF PRAZNO=22   
   CD\
   CD &MDATA02
   MD &MDATA02K
   CD &MDATA02
   SET PATH TO &MDATA02
   SET DEFAULT TO &MDATA02
ENDIF







IF.NOT.FILE('NAL.CDX')
   PRAZNO=3
ENDIF


IF PRAZNO=2.OR.PRAZNO=3   
   DO dbdata02
   DO dbdata03
   DO dbdata04
   SET PATH TO &MDATA02 
   SET DEFAULT TO &MDATA02
   
   CLOSE ALL TABLES
   USE proverai IN 0
   SELECT proverai
   replace tdbdata02 WITH '1'
   USE   

   
   DO nalppunidefk
   
ENDIF
*SET STEP ON 
SET PATH TO &MSNIMAK 
SET DEFAULT TO &MSNIMAK

*IF !DIRECTORY(MDATA0SF)
*   CD\
*   CD &MSNIMAK
*   MD &MDATA0SF
*ENDIF


*SET PATH TO &MBAZNI
*SET DEFAULT TO &MBAZNI

SET PATH TO &MDATA02
SET DEFAULT TO &MDATA02


*IF !DIRECTORY('SNIMAK')
*   MD SNIMAK
*ENDIF   

CLOSE ALL TABLES
SET PATH TO &MDATA02
SET DEFAULT TO &MDATA02

   GLAVNA2.DEACTIVATE
   GLAVNA2.VISIBLE=.F.
   GLAVNA2.RELEASE
CLOSE ALL

*-------uvodjenje parametara
PUBLIC TFPRODC,TFZATVAR,TFZATVPER,tfpossif,TFSN
USE FIRMA IN 0
SELECT FIRMA
TFPRODC=FPRODC
TFZATVGOD=FZATVGOD
TFZATVPER=FZATVPER
TFSN=FSN
USE

SET DEFAULT TO &MDATA02

      CLOSE ALL TABLES
      GLMENI=1
    
      public kkalprn,kfakprn,kfakpodn,kfakpodn2,kkonto,kkon1,kkon2,kkon3,kkon4,kkon5,kkon6,knalvrsta,kmesta,;
             mkplan,ttvunkol,tfime,tdat0,tdat1,mtslika,tobveznik,tfpdv,ktarifa,tdatobr

         if mfkalprn<>'1'        
            kkalprn=mdata00+'\'+'kalprn'
         else
            kkalprn='kalprn'
         endif
         if mffakprn<>'1'        
            kfakprn=mdata00+'\'+'fakprn'
         else
            kfakprn='fakprn'
         endif
         if mffakpodn<>'1'        
            kfakpodn=mdata00+'\'+'fakpodn'
            kfakpodn2=mdata00+'\'+'fakpodn2'
         else
            kfakpodn='fakpodn'
            kfakpodn2='fakpodn2'
         endif
         
         if mfksema<>'1'        
            kksema=mdata00+'\'+'ksema'
            ktarifa=mdata00+'\'+'tarifa'            
         else
            ktarifa='tarifa'
            kksema='ksema'            
         endif
                  
         if mfkonplan<>'1'        
            kkonto=mdata00+'\'+'konto'
            kkon1=mdata00+'\'+'kon1' 
            kkon2=mdata00+'\'+'kon2' 
            kkon3=mdata00+'\'+'kon3' 
            kkon4=mdata00+'\'+'kon4' 
            kkon5=mdata00+'\'+'kon5' 
            kkon6=mdata00+'\'+'kon6' 
         else
            kkonto='konto'
            kkon1='kon1' 
            kkon2='kon2' 
            kkon3='kon3' 
            kkon4='kon4' 
            kkon5='kon5' 
            kkon6='kon6' 
         endif
         if mfnalvrsta<>'1'        
            knalvrsta=mdata00+'\'+'nalvrsta'
         ELSE
            knalvrsta='nalvrsta'
         ENDIF
         IF MFMESTA<>'1'        
            kmesta=mdata00+'\'+'mesta'
         ELSE
            kmesta='mesta'
         ENDIF
      
      



      SET DEFAULT TO &MDATA02

      IF FILE('GENPAR.DBF')
         USE GENPAR IN 0 
         SELECT GENPAR
         MKPLAN=KPLAN
         TTVUNKOL=TVUNKOL
         USE
      ENDIF
   
      
MHELP='GLAVNA3'
*push key clear
PUBLIC tsiffizli
USE FIRMA IN 0
SELECT FIRMA
TFIME=FIME
TDAT0=FDAT0
TDAT1=FDAT1
tdatobr=Fdatobr
TOBVEZNIK=FPDV
TFPDV=FPDV
tsiffizli=ALLTRIM(siffizli)
*MTSLIKA=MSLIKE+'G'+TSLIKE+'01.JPG'
USE
TZSIFARNIK='N'
TgSIFARNIK='N'

*SET DEFAULT TO &MDATA02

USE proverai IN 0
   SELECT proverai
   MTDBDATA02=TDBDATA02
USE
IF mtdbDATA02<>'1'
   DO  dbdata02
   DO  dbdata03
   DO  dbdata04   
   DO nalppunidefK 
ENDIF   


USE PROVERAI IN 0 
SELECT PROVERAI
   mtdbvp=tdbvp
   replace tdbdata02 WITH '1'
   mtdbdata02=Tdbdata02   
   use 
   SET DEFAULT TO &MDATA02
   USE PROVERAI IN 0 
   SELECT PROVERAI
   replace tdbdata02 WITH '1'
   mtdbdata02=Tdbdata02
   mtdbvp=tdbvp
   use 
   CLOSE ALL TABLES
      
      USE AATV IN 0
      SELECT AATV
      REPLACE ALL FVRSTA WITH 'V'
      MRECV=RECCOUNT()
      USE
      USE AATM IN 0
      select aatm
      REPLACE ALL FVRSTA WITH 'M'      
      MRECM=RECCOUNT()
      USE
      use trgpar in 0 
      SELECT trgpar
      LOCATE FOR DOK=SPACE(3)
      IF FOUND()
         USE
         USE TRGPAR IN 0 EXCLU
         SELECT TRGPAR
         ZAP
         USE
      ELSE
         use   
      ENDIF
*      SET STEP ON 
      use trgpar in 0 

      select trgpar
      if reccount()<>(mrecv+mrecm)
         select trgpar
         use
         use trgpar in 0 exclu
         select trgpar
         zap
         use aatv in 0 alias aatv
         select aatv
         select aatv
         use
         use aatm in 0 alias aatm
         select aatm
         use
         select trgpar      
         append from aatv
   *      replace all fvrsta with 'v'
         append from aatm
   *      replace all fvrsta with 'v' for fvrsta=' '         
         go top
         DO WHILE.NOT.EOF()
            REPLACE PKGK WITH 'D'
            REPLACE PKAN WITH 'D'
            REPLACE PKTM WITH 'D'
            REPLACE PKKP WITH 'D'
            REPLACE PKPDV WITH 'D'
            REPLACE PNGK WITH 'D'
            REPLACE PNTM WITH 'D'
            REPLACE PNKP WITH 'D'
            REPLACE PFGK WITH 'D'
            REPLACE PFAN WITH 'D'
            REPLACE PFTM WITH 'D'
            REPLACE PFKP WITH 'D'
            REPLACE PFPDV WITH 'D'
            REPLACE PFKPO WITH 'D'         
            SKIP
         ENDDO   
         USE
      ELSE
         USE   
      ENDIF   
PUBLIC TOSTOPA,TNSTOPA,TPSTOPA,TVAZIOD,TSOSTOPA,TSNSTOPA,TSPSTOPA
SET CENTURY ON
USE STOPAPOR IN 0
SELECT STOPAPOR
IF RECCOUNT()>0
   TOSTOPA=ALLTRIM(ostopa)
   TNSTOPA=ALLTRIM(nStopa)
   TpSTOPA=pStopa
   TSOSTOPA=ALLTRIM(Sostopa)
   IF LEN(tsostopa)=0
      tsostopa='18'
   endif   
   TSNSTOPA=ALLTRIM(SnStopa)
   IF LEN(tsnstopa)=0
      tsnstopa='8'
   endif   
   TSpSTOPA=SpStopa
   IF tspstopa=0
      tspstopa=8
   endif   
   Tvaziod=DTOS(VAZIOD)
ELSE
   TOSTOPA='20'
   TNSTOPA='10'
   TpSTOPA=8   
   Tvaziod=DTOS(CTOD('01-01-2014'))
   TSOSTOPA='20'
   TSNSTOPA='8'
   TSpSTOPA=8   
ENDIF
SET CENTURY OFF
USE
   
SET REPORTBEHAVIOR 80   
*IF Pfoxy='1'
*   IF FILE('..\foxypreviewer.app')
*      DO ..\foxypreviewer.app
*   ENDIF   
*ELSE
*   SET STEP ON 
*   SET REPORTBEHAVIOR 80   
*ENDIF   

   
   
IF MSTARTSQL=1.OR.MSTARTSQL=2
   USE FIRMA IN 0
   SELECT FIRMA
   USE
   USE FIRMA3 IN 0
   SELECT FIRMA3
   USE
   DO FORM GLAVNA01
ENDIF
*SET STEP ON 


POP KEY
