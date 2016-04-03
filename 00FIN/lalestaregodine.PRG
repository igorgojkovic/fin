CLOSE ALL tables
USE ot0s IN 0 
SELECT ot0s
COPY STRUCTURE TO kocka
USE kocka IN 0 ALIAS kocka exclu
USE a14 IN 0
SELECT a14
GO top
DO while.not.eof()
   msasija=sasija
   mdat4=dat4
   mddat=ddat
   SCATTER NAME polja
   SELECT ot0s
   LOCATE FOR sasija=msasija
   if FOUND()
      replace dat4 WITH mdat4
      replace ddat WITH mddat
   ELSE
      SELECT kocka
      APPEND BLANK
      GATHER NAME polja      
   endif
   SELECT a14
   SKIP
enddo   
SELECT ot0s
USE
SELECT a14
USE
SELECT kocka
use
