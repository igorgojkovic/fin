   USE AATM IN 0 
   SELECT AATM
   *SET STEP ON 
   LOCATE FOR ALLTRIM(SIFPROD)=TTVREDNI
   IF FOUND()
      IF sajtime<>SPACE(60)
         msajtime=ALLTRIM(sajtime)
         msajtput=ALLTRIM(sajtput)
         msajtkor=ALLTRIM(sajtkor)                              
         msajtloz=ALLTRIM(sajtloz)
         mgdeide=ALLTRIM(gdeide)
*         mimepri=ALLTRIM(imepri)  
*         mimesla=ALLTRIM(imesla)  
         mlokalput=ALLTRIM(MDATA02)   
         mimefajla='kasarf'+ttvredni+'.dbf'
         IMASAJT=1
      ENDIF      
   USE
   mimefajla='plst.txt'
   IMASAJT=1
   IF IMASAJT=1
      SET PROCEDURE TO ftpprocedure0
      DO FTPDEF
      DO FTPSALJI 
      SET PROCEDURE TO    
   ENDIF   
   SELECT KAL  
   SET ORDER TO 
ENDIF
DO PORUKAU WITH ' PRENOS USPEŠNO IZVRŠEN'    
SELECT kal

