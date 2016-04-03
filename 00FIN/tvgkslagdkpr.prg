PARAMETERS SVE
PUSH KEY CLEAR
SET EXACT ON
MSVE=SVE
IF LEN(TTVREDNI)=1
   MDOK=ALLTRIM(TOBJEKAT+TTVREDNI)+' '
ELSE
   MDOK=ALLTRIM(TOBJEKAT+TTVREDNI)
ENDIF
MGLKONTO=TKONTO
MGLKONTOK=TKONTOK
KKNALIZV=MDATA01+'\NALIZV'+OPERATER+'.DBF'
KKNALIZVX=MDATA01+'\NALIZV'+OPERATER+'.CDX'
KNALIZV=MDATA01+'\NALIZV'+OPERATER
KNALIZVX=MDATA01+'\NALIZV'+OPERATER

DO IDEL WITH (KKNALIZV)
DO IDEL WITH (KKNALIZVX)
DO IBAZE WITH KNALIZV,'NALIZV'
DO IIND WITH KNALIZV,'KONTO+DTOS(DATDOK)','BRNAL','DTOS(DATDOK)',;
             'KONTO+SIFRA+DTOS(DATDOK)','SIFRA+DTOS(DATDOK)','SIFRA+BRRAC+DTOS(DATDOK)'

USE &KNALIZV IN 0 ALIAS NALIZV EXCLUSIVE 
USE firma IN 0

   DO idel WITH (kkockax)   
   DO idel WITH (kkockax2)   
   DO idel WITH (kkockax3)   
   DO idel WITH (kkockax4)   
   DO idel WITH (kkockax5)   

SELECT NALIZV   
COPY STRUCTURE TO &KKOCKA   
COPY STRUCTURE TO &KKOCKA3   
   
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   
IF TOBJEKAT='V'

KKAL='KAL'+TTVREDNI
KKALG='KALG'+TTVREDNI
KTVNIV='TVNIV'+TTVREDNI

IF TSIFARNIK<>'  '
  KROB='ROB'+ALLTRIM(TSIFARNIK)
ELSE
   KROB='ROB'
ENDIF

ELSE



SKKALP='TMKAL'+TTVREDNI

KKAL='TMKAL'+TTVREDNI
KKALG='TMKALG'+TTVREDNI
KTVNIV='TMNIV'+TTVREDNI


IF TSIFARNIK<>'  '
  KROB='MROB'+ALLTRIM(TSIFARNIK)
ELSE
   KROB='ROB'
ENDIF

ENDIF

USE &KKSEMA ALIAS KSEMA IN 0 ORDER 1
USE &KKALPRN ALIAS KALPRN IN 0 ORDER 1
*------------KALKULACIJE---------------
USE &KKALG IN 0 ALIAS KALG 
USE &KKAL IN 0 ALIAS KAL ORDER 1
SELECT KALG
GO TOP
DO WHILE.NOT.EOF()
   MBRKAL=BRKAL
   MFVRSTA=FVRSTA
   mdatdok=datdok
   SELECT KALPRN 
   SEEK MFVRSTA
   IF FOUND()
      MSEMA=SEMA
   ELSE
      MSEMA=SPACE(4) 
   ENDIF
   SELECT KSEMA 
   SEEK MSEMA
   IF FOUND()
      MKONTO=K_MAG
   ELSE
      MKONTO=SPACE(10)      
   ENDIF
   SELECT KALG
   MBRNAL=BRNAL
   MDATDOK=DATDOK
   SELECT KAL
   LOCATE FOR BRKAL=MBRKAL

   IF FOUND()
      MMALVRED=0
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         IF TOBJEKAT='V'
            MMALVRED=MMALVRED+VELVRED
         ELSE
            MMALVRED=MMALVRED+MALVRED
         ENDIF
         SKIP
      ENDDO   
      SELECT KOCKA
      APPEND BLANK
      REPLACE BRNAL WITH MBRNAL
      REPLACE DOK WITH MDOK
      REPLACE DUG WITH MMALVRED
      REPLACE KONTO WITH MKONTO
      REPLACE K3 WITH 'KAL'
      replace datdok WITH mdatdok
   ENDIF     
   SELECT KALG   
   SKIP
ENDDO   
SELECT KAL
USE
SELECT KALG
USE
*--------NIVELACIJE-------------------

USE &KTVNIV IN 0 ALIAS NIV
SELECT NIV
SET ORDER TO 3
TOTAL ON BRNAL TO &KKOCKA2 FIELDS SIZNOS,VELVRED,MALVRED
USE
USE &KKOCKA2 IN 0 ALIAS KOCKA2 EXCLU
SELECT KOCKA2
GO TOP
DO WHILE.NOT.EOF()
   MBRNAL=BRNAL
   mdatdok=datdok
   IF TOBJEKAT='V'
      MMALVRED=VELVRED-SIZNOS
   ELSE
      MMALVRED=MALVRED-SIZNOS
   ENDIF
   MSEMA=SEMA
   SELECT KSEMA 
   SEEK MSEMA
   IF FOUND()
      MKONTO=K_MAG
   ELSE
      MKONTO=SPACE(10)      
   ENDIF
   SELECT KOCKA
   APPEND BLANK
   REPLACE BRNAL WITH MBRNAL
   REPLACE DOK WITH MDOK
   REPLACE DUG WITH MMALVRED
   REPLACE KONTO WITH MKONTO
   REPLACE K3 WITH 'NIV'
   replace datdok WITH mdatdok
   SELECT KOCKA2
   SKIP
ENDDO   
SELECT KOCKA2
USE
*----------------KNJIGA PRIHODA-------------------
USE TMP0 IN 0
SELECT TMP0
COPY TO &KKOCKA4 FOR DOK=MDOK.AND.malvred<>0
USE
USE &KKOCKA4 IN 0 ALIAS KOCKA4 EXCLU
SELECT KOCKA4
INDEX ON BRNAL  TAG BRNAL
SET ORDER TO 1
SELECT KOCKA
GO TOP
DO WHILE.NOT.EOF()
   M2KONTO=KONTO
   MBRNAL=BRNAL
   mdatdok=datdok
   SELECT KOCKA4
   SEEK MBRNAL
   IF FOUND()
      MDUG=0
      MPOT=0
      DO WHILE.NOT.EOF()
         IF BRNAL<>MBRNAL 
            EXIT
         ENDIF   
*         IF KONTO=M2KONTO
            MDUG=MDUG+MALVRED
*         ENDIF
         REPLACE KONTO WITH '9999999999'
         SKIP
      ENDDO      
      SELECT KOCKA
      REPLACE UDUG WITH MDUG
   ENDIF 
   SELECT KOCKA
   SKIP
ENDDO
SELECT KOCKA4
DELETE ALL FOR KONTO='9999999999'
PACK

IF RECCOUNT()>0
   COPY TO &KKOCKA5 
      USE &KKOCKA5 IN 0 ALIAS KOCKA5 EXCLU
      SELECT KOCKA5
      GO TOP
      DO WHILE.NOT.EOF()
         MBRNAL=BRNAL
         MUDUG=MALVRED
         MDATDOK=DATDOK
         SELECT KOCKA
         APPEND BLANK
         REPLACE BRNAL WITH MBRNAL
         REPLACE UDUG WITH MUDUG
         REPLACE DATDOK WITH MDATDOK
         SELECT KOCKA5
         SKIP
      ENDDO   
      SELECT KOCKA5
      USE
ENDIF      
SELECT KOCKA4
USE
SELECT KOCKA
GO TOP
DO WHILE.NOT.EOF()
   REPLACE SALDO WITH DUG
   REPLACE USALDO WITH UDUG
   REPLACE DSALDO WITH SALDO-USALDO
   SKIP
ENDDO   
GO TOP

IF MSVE=1
   *REPORT FORM TVGKSLAG PREVIEW

   mfile='TVGKSLAG'   
   USLOV=""
   DO printer_bullzip WITH mdata02,mfiLE,USLOv   
   
   
   
ELSE
   *REPORT FORM TVGKSLAG PREVIEW FOR ABS(DSALDO)>0.05
   
   mfile='TVGKSLAG'   
   USLOV="ABS(DSALDO)>0.05"
   DO printer_bullzip WITH mdata02,mfiLE,USLOv   
   
   
ENDIF

CLOSE ALL TABLES
SET EXACT OFF
POP KEY