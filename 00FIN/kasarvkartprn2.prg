SELECT ANALK
PUSH KEY CLEAR
   *REPORT FORM KASARVKART0 PREVIEW FOR ZATVAR=' '
   mfile='KASARVKART0'
   uslov="ZATVAR=' '"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
POP KEY 
