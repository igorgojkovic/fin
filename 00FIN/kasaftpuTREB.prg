IF tobjekat='V'
   USE AATV IN 0 ALIAS AATM
   SELECT AATM
ELSE
   USE AATM IN 0 
   SELECT AATM
ENDIF
GO TOP
DO WHILE.NOT.EOF()
   IMASAJT=0
   msifprod=ALLTRIM(sifprod)
   IF sajtime<>SPACE(60)
      msajtime=ALLTRIM(sajtime)
      msajtput=ALLTRIM(sajtput)
      msajtkor=ALLTRIM(sajtkor)                              
      msajtloz=ALLTRIM(sajtloz)
      mlokalput=ALLTRIM(lokalput)      
      mimef='pufak.dbf'
      mimef2='pufakg.dbf'
      mimefajla=LOWER(mimef)
      SET PROCEDURE TO ftpprocedure0
         DO FTPDEF
         DO FTPPRIMI
         mimefajla=LOWER(mimef2)         
         DO FTPPRIMI
      SET PROCEDURE TO  
   ENDIF   
   SELECT aatm
   SKIP
enddo
SELECT AATM
USE
SELECT KAL
SET ORDER TO 
DO PORUKAU WITH ' FTP TRASFER ZAVRŠEN'    
SELECT kal
