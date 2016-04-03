IMASAJT=0
   IF TOBJEKAT='V'
      USE AATV IN 0 ALIAS AATM
      SELECT AATM
   ELSE
      USE AATM IN 0 
      SELECT AATM
   ENDIF
   LOCATE FOR ALLTRIM(SIFPROD)=TTVREDNI
   IF FOUND()
      IF sajtime<>SPACE(60)
         msajtime=ALLTRIM(sajtime)
         msajtput=ALLTRIM(sajtzaj)
         msajtkor=ALLTRIM(sajtkor)                              
         msajtloz=ALLTRIM(sajtloz)
         mgdeide=ALLTRIM(gdeide)
         mlokalput=ALLTRIM(MDATA02)   
         mimef='roblager.dbf'
         mimefajla=LOWER(mimef)
         IMASAJT=1
      ENDIF      
   endif
   USE
   IF IMASAJT=1
      SET PROCEDURE TO ftpprocedure0
         DO FTPDEF
         DO FTPSALJI 
      SET PROCEDURE TO    
      DO PORUKAU WITH ' PRENOS JE ZAVRŠEN'    
   ELSE
      DO PORUKAU WITH ' PRENOS NIJE IZVRŠEN'          
   ENDIF   
   SELECT KAL
   SET ORDER TO 
