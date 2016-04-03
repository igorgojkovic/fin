PUSH KEY CLEAR
SET ORDER TO 1
   *REPORT FORM FAKIZV20 PREVIEW FOR PRENOS=' '

   mfile='FAKIZV20'
   uslov="PRENOS=' '"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
POP KEY
