PUSH KEY CLEAR
MNALU=NALU
MNALI=NALI
IF MNALU<>0
PUSH KEY CLEAR

   *REPORT FORM BLNALUDEV FOR NALU=MNALU PREVIEW

   mfile='BLNALUDEV'
   uslov="NALU=MNALU"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
   POP KEY
ELSE
PUSH KEY CLEAR

   *REPORT FORM BLNALIDEV FOR NALI=MNALI PREVIEW

   mfile='BLNALIDEV'
   uslov="NALI=MNALI"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
   POP KEY
ENDIF
POP KEY
