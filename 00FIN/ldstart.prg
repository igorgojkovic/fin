use ldparam IN 0 
SELECT LDPARAM
mvrstaplate=vrstaplate
PUBLIC AMVRSTPL
AMVRSTAPL=MVRSTAPLATE
USE
IF mvrstaplate<>'D'
   DO FORM LD
ELSE
   DO FORM ldA
ENDIF      
