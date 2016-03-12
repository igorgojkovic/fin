PARAMETERS MVRSTAPLAC
PUSH KEY CLEAR
SET ORDER TO 1
   IF MVRSTAPLAC=0
      *REPORT FORM FAKIZV20SKR PREVIEW

   mfile='FAKIZV20SKR'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov
      
      
   ELSE
      *REPORT FORM FAKIZV20SKR PREVIEW FOR CEK<>0

   mfile='FAKIZV20SKR'
   uslov="CEK<>0"
   DO printer_bullzip WITH mdata02,mfile,uslov
      
   ENDIF
POP KEY
