PUSH KEY CLEAR
SET ORDER TO 1
   *REPORT FORM FAKIZV20TREB PREVIEW

   mfile='FAKIZV20TREB'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
POP KEY
