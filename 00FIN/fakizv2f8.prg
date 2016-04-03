PUSH KEY CLEAR
SET ORDER TO 1
   *REPORT FORM FAKIZV20 PREVIEW

   mfile='FAKIZV20'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
POP KEY
