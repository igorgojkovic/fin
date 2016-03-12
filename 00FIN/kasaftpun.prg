   USE AATM IN 0 
   SELECT AATM
   *SET STEP ON 
   LOCATE FOR ALLTRIM(SIFPROD)=TTVREDNI
   IF FOUND()
      IF sajtime<>SPACE(60)
      msajtime=LOWER(ALLTRIM(sajtime))
      msajtput=LOWER(ALLTRIM(sajtput))
      msajtkor=LOWER(ALLTRIM(sajtkor))                              
      msajtloz=LOWER(ALLTRIM(sajtloz))
      mimef='kasarf'+ttvredni+'.dbf'
      mimefajla=LOWER(mimef)
      ELSE
      msajtime='agencijakocka.rs'
      msajtput='public_html/prijem/prod'+ALLTRIM(ttvredni)+'/'
      msajtkor='agencija'                              
      msajtloz='kockajoza'
      mimef='kasarf'+ttvredni+'.dbf'
      mimefajla=LOWER(mimef)
      replace sajtime WITH msajtime
      replace sajtput WITH msajtput
      replace sajtkor WITH msajtkor
      replace sajtloz WITH msajtloz
      ENDIF      
   endif
   USE
mftpkreni='ftpkreni.bat'
FIDAT=FCREATE(mftpkreni)
mM='FTP  -s:ftpsalji.txt'
FPUTS(fidat,MM)
FCLOSE(fidat)
mlokalni='c:\prijem\'+'m'+ttvredni
mimef=mlokalni+'\kasarf'+ttvredni+'.dbf'
mimefx=mlokalni+'\kasarf'+ttvredni+'.cdx'
IF FILE(mimef)
   DELETE FILE &mimef
ENDIF   
mftpsalji='ftpsalji.txt'
FIDAT=FCREATE(mftpsalji)
mm='open '+msajtime
FPUTS(fidat,mm)
mm=msajtkor
FPUTS(fidat,mm)
mm=msajTloz
FPUTS(fidat,mm)
mm='cd '+msajtput
FPUTS(fidat,mm)
mm='lcd '+mlokalni
FPUTS(fidat,mm)
mm='binary'
FPUTS(fidat,mm)
mm='QUOTE PASV'
FPUTS(fidat,mm)
mm='get '+mimefajla
FPUTS(fidat,mm)
mm='disconnect'
FPUTS(fidat,mm)
mm='bye'
FPUTS(fidat,mm)
FCLOSE(fidat)
mstartuj='ftpkreni.bat'
!  &mstartuj
INKEY(1)
ON ERROR
SELECT NIV
SET ORDER TO 1
DO idel WITH (kkockax)
IF FILE(mimef)
   IF FILE(mimefx)
      DO idel WITH (mimefx)
   ENDIF
   USE &mimef IN 0 ALIAS robaf exclu
   SELECT robaf
   INDEX on brkal TAG brkal
   SET ORDER TO 1
   TOTAL ON brkal TO &kkocka
   USE &kkocka IN 0 ALIAS kocka exclu
   SELECT kocka
   GO top
   DO while.not.eof()
      mbrkal=brkal
      SCATTER NAME ppolja
      SELECT NIV
      SEEK mbrkal
      if.not.found()
         SELECT robaf
         SEEK mbrkal
         IF FOUND()
            DO while.not.eof()
               IF brkal<>mbrkal
                  EXIT
               ENDIF
               SCATTER NAME polja
               SELECT NIV
               APPEND BLANK
               GATHER NAME polja
               SELECT robaf
               SKIP
            ENDDO
         endif         
      ENDIF
      SELECT kocka
      SKIP
   ENDDO
   SELECT kocka
   USE
   SELECT ROB
   SET ORDER TO 1
   SELECT robaf
   GO TOP
   DO WHILE.NOT.EOF()
      MRSIF=RSIF
      SCATTER NAME POLJA
      SELECT ROB
      SEEK MRSIF
      IF.NOT.FOUND()
         APPEND BLANK
         GATHER NAME POLJA
      ENDIF
      SELECT robaf
      SKIP
   ENDDO      
   SELECT robaf   
   use
endif         
ON ERROR DO GRESKE WITH ;
   ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )
SELECT NIV
SET ORDER TO 
DO PORUKAU WITH ' PRIJEM USPEŠNO IZVRŠEN'    
SELECT kal


