IF CIRILICA=1
mname=ALLTRIM(thisform.Name)
*DO KONTROLE WITH MNAME
SET DEFAULT TO &mbazni
USE kscx IN 0
SELECT kscx
*SET STEP ON 
mname=ALLTRIM(thisform.Name)
LOCATE FOR imetab=mname
IF FOUND()
  DO while.not.eof()
      IF ALLTRIM(imetab)<>mname
         EXIT
      endif   
      *DO kontrole WITH imetab,imekontr,spodatak
      mstring=imekontr+'.'+spodatak
      THISFORM.&MSTRING
      SKIP
   enddo   
endif
use
SET DEFAULT TO &mdata02
endif
