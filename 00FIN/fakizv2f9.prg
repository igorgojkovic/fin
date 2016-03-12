PUSH KEY CLEAR
   SET ORDER TO 4

   *REPORT FORM FAKIZV3 PREVIEW

   mfile='FAKIZV3'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov

   
POP KEY