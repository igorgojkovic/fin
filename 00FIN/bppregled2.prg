PUSH KEY CLEAR
MDATDOK=DATDOK
MREDNI=REDNI
SET ORDER TO 3
LOCATE FOR REDNI=MREDNI
*REPORT FORM BPPREGLED PREVIEW FOR REDNI=MREDNI

   mfile='BPPREGLED20'
   uslov="REDNI=MREDNI"
   DO printer_bullzip WITH mdata02,mfile,uslov


SET ORDER TO 
LOCATE FOR REDNI=MREDNI
POP KEY
BP.GRD0.SetFocus 
