PUSH KEY CLEAR
SELECT izbor
IF RECCOUNT()<25
   APPEND BLANK
   REPLACE SIFPROD WITH str(recno(),2,0)
   REPLACE KONTO WITH '1010000000'
   replace PRIKAZ WITH 'D'
   REPLACE PNAZIV WITH 'FAZA '+SIFPROD  
   SELECT IZBOR
   GO BOTTOM 
   AAIZBORPRTAB.GRD0.REFRESH
   DO FORM AAIZBORPRK
   SELECT izbor
   DO FORM AAIZBORBLK
   CLOSE ALL TABLES
   DO DBdata03
   DO dbdata04
   USE AAPR IN 0 ALIAS IZBOR
   GO TOP
   *---------KRAJ PROVERE
   SELECT IZBOR
ENDIF
POP KEY   
AAIZBORPRTAB.GRD0.SETFOCUS
AAIZBORPRTAB.REFRESH
