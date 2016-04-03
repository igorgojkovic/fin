PUSH KEY CLEAR
MRBR=RBR
*REPORT FORM KAMATE0D  PREVIEW  FOR RBR=MRBR 
      mfile='KAMATE0D'
      uslov="RBR=MRBR"
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY