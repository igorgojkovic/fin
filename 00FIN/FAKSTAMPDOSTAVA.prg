PARAMETERS ASTAMPA
PUBLIC acslovima
PUSH KEY CLEAR
      *REPORT FORM FAKDOSTAVA FOR BRKAL=MBRKAL PREVIEW 
      mfile='FAK2DOSTAVA'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov
      
      
SELECT FAK
POP KEY
