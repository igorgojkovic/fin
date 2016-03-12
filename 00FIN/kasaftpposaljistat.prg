USE kasapar IN 0
SELECT kasapar
msifprod=ALLTRIM(sifprod)
USE
mkasafs='kasafs'+msifprod+'.dbf'
DELETE FILE (mkasafs)
USE kasafs IN 0
SELECT kasafs
COPY TO &mkasafs
USE
USE kasaftp IN 0 
SELECT kasaftp
GO top
   IF sajtime<>SPACE(60)
      msajtime=LOWER(ALLTRIM(sajtime))
      msajtput=LOWER(ALLTRIM(sajtput))
      msajtkor=LOWER(ALLTRIM(sajtkor))                              
      msajtloz=LOWER(ALLTRIM(sajtloz))
 *     mnazprg=ALLTRIM(nazivprg)
   ELSE
      msajtime='agencijakocka.rs'
      msajtput='public_html/prijem/prod1/'
      msajtkor='agencija'                              
      msajtloz='kockajoza'
  *    mimef='kasarf1.DBF'
      mnazprg=mimef
      replace sajtime WITH msajtime
      replace sajtput WITH msajtput
      replace sajtkor WITH msajtkor
      replace sajtloz WITH msajtloz
 *     replace nazivprg WITH mnazprg      
   ENDIF      
USE
mftpkreni='ftpkreni.bat'
FIDAT=FCREATE(mftpkreni)
mM='FTP  -s:ftpstat.txt'
FPUTS(fidat,MM)
FCLOSE(fidat)
mftpstat='ftpstat.txt'
FIDAT=FCREATE(mftpstat)
mm='open '+msajtime
FPUTS(fidat,mm)
mm=msajtkor
FPUTS(fidat,mm)
mm=msajTloz
FPUTS(fidat,mm)
mm='cd '+msajtput
FPUTS(fidat,mm)
mm='binary'
FPUTS(fidat,mm)
mm='put '+mkasafs
FPUTS(fidat,mm)
mm='disconnect'
FPUTS(fidat,mm)
mm='bye'
FPUTS(fidat,mm)
FCLOSE(fidat)
mstartuj='ftpkreni.bat'
! /N &mstartuj
CLOSE ALL tables
INKEY(1)
DELETE FILE ftpkreni.bat
DELETE FILE ftpstat.txt
