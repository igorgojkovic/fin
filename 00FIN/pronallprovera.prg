PUSH KEY CLEAR
MRNAL=RNAL
SELECT PRONORMA
DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX2)
DO IDEL WITH (KKOCKAX3)

COPY STRUCTURE TO &KKOCKA
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT kocka
INDEX on psif+msif+pmsif tag psif
SET ORDER TO 
SELECT PRONAL
SET ORDER TO 1
SEEK MRNAL
IF FOUND()
   DO WHILE.NOT.EOF()
     IF RNAL<>MRNAL
        EXIT
     ENDIF      
     MNORMATIV=NORMATIV
     MKOL=KOL
     SELECT PRONORMA
     SET ORDER TO 3
     SEEK MNORMATIV
     IF FOUND()
        DO WHILE.NOT.EOF()
           IF NORMATIV<>MNORMATIV
              EXIT
           ENDIF
           IF psif<>SPACE(5).or.msif<>SPACE(5).or.pmsif<>SPACE(5).or.asif<>SPACE(5)
              SCATTER NAME POLJA
              SELECT KOCKA
              APPEND BLANK
              GATHER NAME POLJA 
              REPLACE KOL WITH KOL*MKOL
              REPLACE IZNOS WITH KOL*CENA  
              REPLACE rnal WITH mrnal
              SELECT PRONORMA
           endif
           SKIP
        ENDDO   
     ENDIF
     SELECT PRONAL
     SKIP
   ENDDO   
ENDIF   
SELECT KOCKA
SET ORDER TO 1
TOTAL ON psif+msif+pmsif TO &kkocka2 FIELDS KOL
ZAP
APPEND FROM &kkocka2
GO TOP

USE PROPAR IN 0 
SELECT PROPAR

MMAGGOT=MAGGOT
MFPGOT=FPGOT

MMAGPOLU=MAGPOLU
MFPPOLU=FPPOLU

MMAGMAT=MAGMAT
MFPMAT=FPMAT

MMAGPMAT=MAGPMAT
MFPPMAT=FPPMAT

MMAGAMB=MAGAMB
MFPAMB=FPAMB

USE
USE AATV IN 0
SELECT AATV
SELECT AATV
LOCATE FOR ALLTRIM(SIFPROD)=ALLTRIM(mMAGMAT)
IF FOUND()
   IF SIFARNIK<>'  '
      PROMAT='ROB'+ALLTRIM(SIFARNIK)
   ELSE
      PROMAT='ROB'
   ENDIF    
   IF TFPOSSIF='D'
      PROMAT='ROBV'+ALLTRIM(SIFPROD)
   ENDIF   
   
ELSE
   CLOSE ALL
   THISFORM.Release 
ENDIF

SELECT AATV
LOCATE FOR ALLTRIM(SIFPROD)=ALLTRIM(mMAGPOLU)
IF FOUND()
   IF SIFARNIK<>'  '
      PROPOLU='ROB'+ALLTRIM(SIFARNIK)
   ELSE
      PROPOLU='ROB'
   ENDIF    
   IF TFPOSSIF='D'
      PROPOLU='ROBV'+ALLTRIM(SIFPROD)
   ENDIF   
ELSE
   CLOSE ALL
   THISFORM.Release 
ENDIF

SELECT AATV
LOCATE FOR ALLTRIM(SIFPROD)=ALLTRIM(mMAGPMAT)
IF FOUND()
   IF SIFARNIK<>'  '
      PROPMAT='ROB'+ALLTRIM(SIFARNIK)
   ELSE
      PROPMAT='ROB'
   ENDIF    
   IF TFPOSSIF='D'
      PROPMAT='ROBV'+ALLTRIM(SIFPROD)
   ENDIF   

ELSE
   CLOSE ALL
   THISFORM.Release 
ENDIF

SELECT AATV
LOCATE FOR ALLTRIM(SIFPROD)=ALLTRIM(mMAGAMB)
IF FOUND()
   IF SIFARNIK<>'  '
      PROAMB='ROB'+ALLTRIM(SIFARNIK)
   ELSE
      PROAMB='ROB'
   ENDIF    
   IF TFPOSSIF='D'
      PROAMB='ROBV'+ALLTRIM(SIFPROD)
   ENDIF
   
ELSE
   CLOSE ALL
   THISFORM.Release 
ENDIF
SELECT AATV
USE
SELECT kocka
USE &propolu IN 0 ORDER 1 ALIAS propolu
USE &promat IN 0 ORDER 1 ALIAS promat
USE &propmat IN 0 ORDER 1 ALIAS propmat
USE &proamb IN 0 ORDER 1 ALIAS proamb
SELECT kocka
GO top
DO while.not.eof()

   IF psif<>SPACE(5)
      mrsif=psif
      SELECT propolu
      SEEK mrsif
      IF FOUND()
         mnastanju=kol
      ELSE
         mnastanju=0
      ENDIF
      SELECT kocka      
      replace nastanju WITH mnastanju
   ENDIF

   IF msif<>SPACE(5)
      mrsif=msif
      SELECT promat 
      SEEK mrsif
      IF FOUND()
         mnastanju=kol
      ELSE
         mnastanju=0
      ENDIF
      SELECT kocka      
      replace nastanju WITH mnastanju
   ENDIF

   IF Pmsif<>SPACE(5)
      mrsif=PMsif
      SELECT proPmat 
      SEEK mrsif
      IF FOUND()
         mnastanju=kol
      ELSE
         mnastanju=0
      ENDIF
      SELECT kocka      
      replace nastanju WITH mnastanju
   ENDIF

   IF asif<>SPACE(5)
      mrsif=Asif
      SELECT proamb 
      SEEK mrsif
      IF FOUND()
         mnastanju=kol
      ELSE
         mnastanju=0
      ENDIF
      SELECT kocka      
      replace nastanju WITH mnastanju
   ENDIF
   SKIP
enddo   
SELECT propolu
USE
SELECT promat
USE
SELECT propmat
USE
SELECT proamb
use
SELECT kocka
REPLACE ALL POTREBNO WITH KOL
REPLACE ALL RAZLIKA WITH NASTANJU-KOL
COPY TO &kkocka3 FIELDS  psif,msif,pmsif,ASIF,SSIF2,msifnaz,POTREBNO,nastanju,RAZLIKA
USE
USE &kkocka3 IN 0 ALIAS kocka3
SELECT kocka3
DO FORM pronalprprovera
SELECT kocka3
use
SELECT PRONAL
SET ORDER TO 
IF MPNAL=1
   PRONAL.GRD0.SETFOCUS
   PRONAL.REFRESH
ELSE
   PRONALL.GRD0.SETFOCUS
   PRONALL.REFRESH
ENDIF
POP KEY
