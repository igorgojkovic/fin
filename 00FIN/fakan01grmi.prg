PUSH KEY CLEAR
   DO IDEL WITH (Kkockax)
   DO IDEL WITH (Kkockax2)
SELECT KALI
COPY TO &KKOCKA 
USE &KKOCKA IN 0 ALIAS KOCKA EXCLUSIVE
SELECT KOCKA
INDEX ON SIFRA+MISIFRA+RSIF TAG SIFRSIF
INDEX ON SIFRA TAG SIFRA
SET ORDER TO 1
TOTAL ON SIFRA+MISIFRA+RSIF FIELDS KOLI,VELVRED TO &KKOCKA2
DELETE ALL
PACK
APPEND FROM &KKOCKA2
USE AN0MI IN 0 ORDER 1
SELECT KOCKA
SET RELATION TO SIFRA INTO AN0 ADDITIVE
SET RELATION TO RSIF INTO ROB ADDITIVE
SET RELATION TO misifra INTO an0mi ADDITIVE
PUSH KEY CLEAR
*REPORT FORM FAKIZVAN01GRMI  PREVIEW 
   mfile='FAKIZVAN01GRMI'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
SELECT KOCKA
USE
SELECT an0mi
use
SELECT KALI
POP KEY
