PUSH KEY CLEAR
ON ERROR
SET DEFAULT TO &MDATA0GF
USE TABSTRU IN 0 exclu
SELECT TABSTRU
ZAP
SELECT TABELE
MIMA=0
MMIME=ALLTRIM(MIMETAB)
MMIMEDBF=ALLTRIM(MIMETAB)+'.DBF'
SET DEFAULT TO &MDATA02
IF FILE(MMIMEDBF)
   MIMA=1
   USE &MMIME IN 0 ALIAS IME
   SELECT IME
   brpolja=afields(niz)-1
   for i=1 to brpolja
      mnaziv=ALLTRIM(LOWER(niz(i,1)))
      mtip=ALLTRIM(LOWER(niz(i,2)))
      mduzina=niz(i,3)
      mdecimala=niz(i,4)
      SELECT tabstru
      APPEND BLANK
      replace naziv WITH mnaziv
      replace tip WITH mtip
      replace duzina WITH mduzina
      replace decimala WITH mdecimala
      replace imetab WITH LOWER(MMIME)
   ENDFOR
   SELECT IME
   USE
ENDIF   
IF MIMA=1
   SELECT TABSTRU
   DO TBLCREATEMYSQL 
ENDIF   
SELECT TABSTRU
USE
   SELECT TABELE
SET DEFAULT TO &MDATA02
*-----------PREGLED FOLDERA------------------
SELECT tabELE
