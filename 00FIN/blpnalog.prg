PUSH KEY CLEAR
MNALU=NALU
MNALI=NALI
IF MNALU<>0

   *REPORT FORM BLNALU FOR NALU=MNALU PREVIEW

   mfile='BLNALU'
   uslov="NALU=MNALU"
   DO printer_bullzip WITH mdata02,mfile,uslov


   
ELSE

   *REPORT FORM BLNALI FOR NALI=MNALI PREVIEW

   mfile='BLNALI'
   uslov="NALI=MNALI"
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
ENDIF
POP KEY