PUSH KEY CLEAR
MBRKAL=BRKAL
SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL
*REPORT FORM ASNAL01SVE FOR BRKAL=MBRKAL preview

   mfile='ASNAL01SVE'
   uslov="BRKAL=MBRKAL"
   DO printer_bullzip WITH mdata02,mfile,uslov


SELECT ASNAL
LOCATE FOR BRKAL=MBRKAL
SET ORDER TO 
POP KEY
