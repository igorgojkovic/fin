DO idel WITH (kkockax)
USE an0 IN 0
SELECT an0
COPY STRUCTURE TO &kkocka
USE &kkocka IN 0 ALIAS kocka exclu
SELECT an0
GO top
DO while.not.eof()
   mrec=RECNO()
   mmaticni=maticni
   SCATTER NAME polja
   IF mmaticni<>SPACE(13)
      DO while.not.eof()
         IF maticni=mmaticni
            IF RECNO()>mrec
               SCATTER NAME polja2
               SELECT kocka
               APPEND blank
               GATHER NAME polja
               APPEND blank
               GATHER NAME polja2            
            ENDIF
         endif   
         SELECT an0
         skip
      ENDDO
   endif  
   SELECT an0
   GOTO MREC
   SKIP
ENDDO
SELECT kocka
*brow
COPY TO duplimat FIELDS sifra,naziv,maticni TYPE xls
use
SELECT an0
use   
