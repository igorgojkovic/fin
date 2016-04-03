IF tobjekat='V'
   USE AATV IN 0 ALIAS AATM
   SELECT AATM
ELSE
   USE AATM IN 0 
   SELECT AATM
ENDIF
IMASAJT=0
*SET STEP ON 
LOCATE FOR ALLTRIM(SIFPROD)=TTVREDNI
IF FOUND()
   IF sajtime<>SPACE(60)
      msajtime=ALLTRIM(sajtime)
      msajtput=ALLTRIM(sajtput)
      msajtkor=ALLTRIM(sajtkor)                              
      msajtloz=ALLTRIM(sajtloz)
      mlokalput=ALLTRIM(lokalput)      
      mimef='kasafs'+ttvredni+'.dbf'
      mimefajla=LOWER(mimef)
      IMASAJT=1
   ENDIF      
endif
USE
IF IMASAJT=1
   SET PROCEDURE TO ftpprocedure0
      DO FTPDEF
      DO FTPPRIMI
   SET PROCEDURE TO   
*   ON ERROR DO GRESKE WITH ;
      ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )
   SELECT KAL
   SET ORDER TO 
   DO PORUKAU WITH ' FTP TRANSFER ZAVRŠEN'    
   DO FORM kasaftps
ENDIF
SELECT kal
