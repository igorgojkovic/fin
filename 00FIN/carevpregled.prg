PUSH KEY CLEAR
SELECT CAREV

*REPORT FORM CAREVPREGLED PREVIEW

   mfile='CAREVPREGLED'
   uslov="brkal=mbrkal"
   DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
