PARAMETERS MNAME
SET DEFAULT TO &mdata0gf
USE kscx IN 0
SELECT kscx
*SET STEP ON 
*mname=ALLTRIM(thisform.Name)
LOCATE FOR ALLTRIM(imetab)=ALLTRIM(mname)
IF FOUND()
   DO while.not.eof()
      IF ALLTRIM(imetab)<>mname
         EXIT
      endif   
      MIMEform=ALLTRIM(imeTAB)
      mmimeform=GETOBJECT(mimeform)
      mstring=imekontr+'.'+spodatak
      mmimeform.&mstring
      SKIP
   enddo   
endif
use
SET DEFAULT TO &mdata02
