PUSH KEY CLEAR
SET PATH TO &MDATA0S
SET DEFAULT TO &MDATA0S
DO IBAZE WITH 'tabele'
DO IBAZE WITH 'mtabele'
DO IBAZE WITH 'mtabsif','mtabele'
DO IBAZE WITH 'tabstru'
DO IBAZE WITH 'Tab00'
DO IBAZE WITH 'sqlpar'
CLOSE ALL TABLES


USE sqlpar IN 0 
SELECT sqlpar
IF RECCOUNT()<1
   APPEND BLANK
   replace fpossif WITH 'N'
   REPLACE fserver WITH 'N'
   REPLACE flokalni WITH 'D'
   REPLACE tserver WITH "agencijakocka.rs"
   replace tbaza WITH "agencija_fin"
   replace tkorisnik WITH "agencija"
   replace tlozinka WITH  "omondo64956"
   replace tdriver WITH "{MySQL ODBC 5.1 Driver}"

   REPLACE lserver WITH "localhost"
   replace lbaza WITH "fin"
   replace lkorisnik WITH "root"
   replace llozinka WITH  ""
   replace ldriver WITH "{MySQL ODBC 5.1 Driver}"
ENDIF   
USE
*mstringkon="Driver="+tdriver+;
             ";Server="+tserver+;
             ";Database="+tbaza+;
             ";Uid="+tkorisnik+;
             ";Pwd="+tlozinka

*mstringkon="Driver="+ldriver+;
             ";Server="+lserver+;
             ";Database="+lbaza+;
             ";Uid="+lkorisnik+;
             ";Pwd="+llozinka
 
*SQLSETPROP(0,"DispLogin",3)
*povezano=SQLSTRINGCONNECT(mstringkon)
*IF povezano=1
*   WAIT WINDOW 'povezani ste na server'
*ELSE
*   WAIT WINDOW 'Konekcioja nije uspela'
*endif
SET PATH TO &MDATA02
SET DEFAULT TO &MDATA02
POP KEY