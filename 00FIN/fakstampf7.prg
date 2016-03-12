PUBLIC acslovima
PUSH KEY CLEAR
SELECT fak
MBRKAL=BRKAL
set order to 1
LOCATE FOR BRKAL=MBRKAL


IF TOBJEKAT='V'

   *REPORT FORM FAK01OT FOR BRKAL=MBRKAL PREVIEW 
      mfile='FAK01OT'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov

ELSE

   *REPORT FORM FAK01OT FOR BRKAL=MBRKAL PREVIEW 
      mfile='FAK01OT'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov
   
ENDIF
POP KEY
