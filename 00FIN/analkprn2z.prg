SELECT ANALK
PUSH KEY CLEAR
   *REPORT FORM ANALK02 PREVIEW FOR VANVAL=1
   
   mfile='ANALK02'
   uslov="VANVAL=1"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
POP KEY 
