PUSH KEY CLEAR
SELECT tarifa
MREC=RECNO()
USE
USE &Ktarifa ALIAS tarifa EXCLU IN 0
SELECT tarifa
USE
use &ktarifa in 0 exclu ALIAS tarifa
SELECT tarifa
IF RECCOUNT()>0
   GO bottom
   DELETE 
   PACK
ENDIF
tarife.RELEASE
POP KEY
