SELECT ANALK
PUSH KEY CLEAR
   *REPORT FORM ANALK02 preview FOR ZATVAR=' '
   mfile='ANALK02'
   uslov="ZATVAR=' '"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
POP KEY 
