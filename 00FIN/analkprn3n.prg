SELECT ANALK
PUSH KEY CLEAR

   *REPORT FORM ANALK03 preview FOR ZATVAR=' '
   mfile='ANALK03'
   uslov="ZATVAR=' '"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
POP KEY 
