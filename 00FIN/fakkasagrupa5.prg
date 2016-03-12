PUSH KEY CLEAR
DO idel WITH (kkockax)
DO idel WITH (kkockax2)
SELECT fak
COPY STRUCTURE TO &kkocka FIELDS brkal,datdok,velvred,rabat,tarifa,procpor,porez,malvred,grupa
USE &kkocka IN 0 ALIAS kocka EXCLUSIVE
mbrkal=brkal
mdatdok=datdok
SET ORDER TO 1
SEEK mbrkal
IF FOUND()
   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      ENDIF
      SCATTER NAME polja
      mgrupa5=rob.grupa5
      SELECT kocka
      APPEND BLANK
      GATHER NAME polja
      replace grupa WITH mgrupa5
      SELECT fak
      SKIP
   enddo   
ENDIF
SELECT kocka
INDEX on grupa+tarifa TAG grutar
TOTAL ON grupa+tarifa TO &kkocka2 FIELDS velvred,rabat
ZAP
APPEND FROM &kkocka2 
GO TOP
DO WHILE.NOT.EOF()
   mporez=ROUND((velvred-rabat)*procpor/100,2)
   replace porez WITH mporez
   replace malvred WITH velvred-rabat+porez
   SKIP
ENDDO
GO TOP   
*report form fakkasagrupa5 preview
   mfile='fakkasagrupa5'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov

SELECT kocka
USE
SELECT fak
SEEK mbrkal
SET ORDER TO 
POP KEY


