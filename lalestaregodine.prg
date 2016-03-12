CLOSE ALL tables
USE ot0s IN 0 
SELECT ot0s
COPY STRUCTURE TO kocka
USE kocka IN 0 ALIAS kocka exclu
USE a15 IN 0
SELECT a15
GO top
DO while.not.eof()
   msasija=sasija
   mdat5=dat5
   mddat=ddat
   SCATTER NAME polja
   SELECT ot0s
   LOCATE FOR sasija=msasija
   if FOUND()
      replace dat5 WITH mdat5
      replace ddat WITH mddat
   ELSE
      SELECT kocka
      APPEND BLANK
      GATHER NAME polja      
   endif
   SELECT a15
   SKIP
enddo   
SELECT ot0s
USE
SELECT a15
USE
SELECT kocka
use
