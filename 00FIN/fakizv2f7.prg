PUSH KEY CLEAR
SET ORDER TO 1
   *REPORT FORM FAKIZV1 PREVIEW
   mfile='FAKIZV1'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
POP KEY