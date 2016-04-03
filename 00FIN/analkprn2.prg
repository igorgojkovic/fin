SELECT ANALK
PUSH KEY CLEAR
*REPORTPOGLED('ANALK02')
   
   *REPORT FORM ANALK02 preview
   
      mfile='ANALK02'
      uslov=""
      DO printer_bullzip WITH mdata02,mfile,uslov
   
POP KEY 
