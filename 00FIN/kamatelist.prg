PUSH KEY CLEAR
MRBR=RBR
*REPORT FORM KAMATE0  PREVIEW  FOR RBR=MRBR 
      mfile='KAMATE0'
      uslov="RBR=MRBR"
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY