PUSH KEY CLEAR
SELECT BLP
MDNEV=DNEV
*SET ORDER TO 9
*REPORT FORM BLKONTOS PREVIEW FOR DNEV=MDNEV

   mfile='BLKONTOS'
   uslov="DNEV=MDNEV"
   DO printer_bullzip WITH mdata02,mfile,uslov


SET ORDER TO
GO BOTTOM
POP KEY