PUSH KEY CLEAR
SELECT CAREV
mbrkal=brkal

*REPORT FORM  CAREV4PREGLED PREVIEW FOR brkal=mbrkal

   mfile='CAREV4PREGLED'
   uslov="brkal=mbrkal"
   DO printer_bullzip WITH mdata02,mfile,uslov


POP KEY