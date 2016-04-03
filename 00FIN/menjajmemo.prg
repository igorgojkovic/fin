CLOSE all
USE c:\fin0\ssnimak\data0gf\kscx IN 0 EXCLU
SELECT kscx
ZAP
USE c:\fin0\ssnimak\data0gf\konvcscx IN 0 ALIAS konvertc EXCLU 
SELECT konvertc
LOCATE FOR ALLTRIM(imetab)='aaizdvojeno'
IF FOUND()
   DELETE NEXT 1
   PACK
endif
GO top

DO while.not.eof()
   MREC=RECNO()
   mmimetab=ALLTRIM(imetab)
   mimetab=ALLTRIM(imetab)+'.scx'   
   *?mimetab
   *?mrec
   USE
   CD\
   CD FIN0
   CD 00FIN
   IF FILE(mimetab)   
      USE &mimetab ALIAS imetab
      SELECT IMETAB
      GO TOP
      DO while.not.eof()
         imacaption=0
            mspodatak=''
            mkontrola=''
            mimekontr=''
            STORE MEMLINES(baseclass) TO mkontrola   && Number of lines in memo field
            FOR gnCount = 1 TO mkontrola   && Loop for # of lines in memo field
               mmpodatak=MLINE(baseclass, gnCount)      && Display each line
               IF LEN(ALLTRIM(mmpodatak))>0               
                  mkontrola=mmpodatak
               endif   
            NEXT
            STORE MEMLINES(objname) TO mimekontr   && Number of lines in memo field
            FOR gnCount = 1 TO mimekontr   && Loop for # of lines in memo field
               mmpodatak=MLINE(objname, gnCount)      && Display each line
               IF LEN(ALLTRIM(mmpodatak))>0               
                  mimekontr=mmpodatak
               endif   
            NEXT
            STORE MEMLINES(properties) TO gnNumLines   && Number of lines in memo field
            FOR gnCount = 1 TO gnNumLines   && Loop for # of lines in memo field
               mmline=MLINE(properties, gnCount)      && Display each line
               mspodatak=mmline
               mpodatak=ALLTRIM(mspodatak)
               IF SUBSTR(mpodatak,1,7)='Caption'
               *SET STEP ON 
               IF LEN(ALLTRIM(mpodatak))>12
                  imacaption=1
                  mnaz=SUBSTR(mpodatak,12,60)
                  SET PROCEDURE TO  konverzijaslova
                  MLEN=LEN(ALLTRIM(MNAZ))-1
                  MNNAZ=''
                  FOR I=1 TO MLEN
                     MSSLOVO=SUBSTR(MNAZ,I,1)
                     MASC=ASC(MSSLOVO)
                     mnslovo=konvert_latin_u_cir(masc)
                     mNnaz=mNnaz+mnslovo
                  NEXT
                  mnovistring=SUBSTR(mpodatak,1,9)+'"'+mnnaz+'"'
                  SELECT kscx
                  APPEND blank
                  replace kontrola WITH mkontrola
                  replace imekontr WITH mimekontr
                  replace imetab WITH mmimetab
                  replace spodatak WITH mpodatak
                  replace npodatak WITH mnovistring   
                  SELECT imetab            
                  SET PROCEDURE TO                
               ENDIF
               ENDIF
            next   
         SELECT imetab 
         SKIP
      ENDDO   
      SELECT IMETAB
      USE
   ENDIF
   CD\
   CD FIN0
   CD SSNIMAK
   CD DATA0GF
   USE c:\fin0\ssnimak\data0gf\konvcscx IN 0 ALIAS konvertc EXCLU 
   SELECT KONVERTC
   GOTO MREC
   SKIP
enddo         
SELECT kscx
use
SELECT KONVERTC
SET DEFAULT TO &MDATA0GF
return
