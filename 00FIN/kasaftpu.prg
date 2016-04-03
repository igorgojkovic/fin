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
      mimef='kasarf'+ttvredni+'.dbf'
      mimefx='kasarf'+ttvredni+'.cdx'      
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
   ON ERROR
   SELECT kal
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
         SELECT kal
         SEEK mbrkal
         if.not.found()
            SELECT kalg
            APPEND BLANK
            GATHER NAME ppolja
            replace fvrsta WITH '  4'
            replace sifra WITH '    1'
            replace valuta WITH datdok
            replace vpdv WITH UPPER('UBP')
            rePLACE OPDV WITH '*'
            SELECT robaf
            SEEK mbrkal
            IF FOUND()
               DO while.not.eof()
                  IF brkal<>mbrkal
                     EXIT
                  ENDIF
                  SCATTER NAME polja
                  SELECT kal
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
   SELECT KAL
   SET ORDER TO 
   DO PORUKAU WITH ' PRIJEM USPEŠNO IZVRŠEN'    
ENDIF
SELECT kal


