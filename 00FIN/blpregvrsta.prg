PUSH KEY CLEAR
SELECT BLP
MDNEV=DNEV
SET ORDER TO 1
DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX2)
COPY TO &KKOCKA FOR DUG<>0.AND.DNEV=MDNEV
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
INDEX ON VRSTAPL TAG VRSTAPL
SET ORDER TO 1
TOTAL ON VRSTAPL TO &KKOCKA2 
               DELETE ALL
               PACK

APPEND FROM &KKOCKA2
GO TOP
*REPORT FORM BLPREGVRSTA0 PREVIEW 

   mfile='BLPREGVRSTA0'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov


SELECT KOCKA
USE
SELECT BLP
SET ORDER TO
GO BOTTOM
POP KEY