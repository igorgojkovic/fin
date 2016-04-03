PARAMETERS MMPRENOS
PUSH KEY CLEAR
SET ORDER TO 1
   IF MMPRENOS=1
      *REPORT FORM FAKIZV1 PREVIEW FOR PRENOS=' '

   mfile='FAKIZV1'
   uslov="PRENOS=' '"
   DO printer_bullzip WITH mdata02,mfile,uslov

   ELSE
      *REPORT FORM FAKIZV1 PREVIEW FOR PRENOS<>' '
   mfile='FAKIZV1'
   uslov="PRENOS=' '"
   DO printer_bullzip WITH mdata02,mfile,uslov

   endif
   
POP KEY