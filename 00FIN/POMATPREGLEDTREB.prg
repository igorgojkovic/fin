PUSH KEY CLEAR
SELECT FAK
MBRKAL=BRKAL
*REPORT FORM POMATPREGLEDTREB PREVIEW FOR BRKAL=MBRKAL
   mfile='POMATPREGLEDTREB' 
   uslov="BRKAL=MBRKAL"
   DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
