PUSH KEY CLEAR
CLOSE ALL TABLES
IF NOVAGK=0
IF TGKREDNI='1'
   KNAL='NAL'
   USE NAL IN 0 ALIAS NAL EXCLU
ELSE
   KNAL='NAL'+ALLTRIM(TGKREDNI)
   USE &KNAL IN 0 ALIAS NAL EXCLU
ENDIF
ELSE
   USE NALNOVI IN 0 ALIAS NAL EXCLU
ENDIF   
SELECT NAL 
DELETE ALL FOR DUG=0.AND.POT=0.AND.DEVDUG=0.AND.DEVPOT=0
PACK
USE
POP KEY
NAL.RELEASE
