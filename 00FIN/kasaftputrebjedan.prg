IF tobjekat='M'
 *  SET STEP ON 
   USE AATM IN 0 
   SELECT AATM
   LOCATE FOR ALLTRIM(SIFPROD)=ALLTRIM(Ttvredni)
   IF FOUND()
  *    SET STEP ON 
      IMASAJT=0
      msifprod=ALLTRIM(sifprod)
      IF sajtime<>SPACE(60)
         msajtime=ALLTRIM(sajtime)
         msajtput=ALLTRIM(sajtput)
         msajtkor=ALLTRIM(sajtkor)                              
         msajtloz=ALLTRIM(sajtloz)
         mlokalput=ALLTRIM(lokalput)      
         set default to &mlokalput
         DELETE FILE PUFAK*.*
         DELETE FILE trebov.zip
         set default to &mbazni
         mimefajla='trebov.zip'
         SET PROCEDURE TO ftpprocedure0
            DO FTPDEF
            DO FTPPRIMI
         SET PROCEDURE TO  
      ENDIF   
      set default to &mbazni
     * copy file unzip.exe to mlokalput
      set default to &mlokalput
      mimezip=mimefajla
      ! ..\unzip.EXE &mimezip
      DELETE FILE trebov.zip
      DELETE FILE PUFAK.DBF
      DELETE FILE PUFAKg.DBF
      SET DEFAULT to &mbazni
      SET DEFAULT to &mDATA02
   ENDIF   
   SELECT AATM
   USE
ENDIF
SELECT KAL
SET ORDER TO 
DO PORUKAU WITH ' PRIJEM TREBOVANJA JE ZAVRŠEN'    
SELECT kal

