PUSH KEY CLEAR
   SELECT ANODOB00
   APPEND BLANK
   REPLACE REDBR WITH STR(RECNO(),2,0)
   REPLACE DAT0 WITH DATE()
   REPLACE DAT1 WITH DATE()
   *--------NAPRAVI PROVERU   
   USE PROVERAI IN 0 
      SELECT PROVERAI
      replACE TDBan WITH '0'   
      mtdban=tdban
   USE
   SELECT ANODOB00
   *---------KRAJ PROVERE   
   ANPUT00.GRD0.COLUMN1.SETFOCUS
   ANPUT00.REFRESH  
POP KEY