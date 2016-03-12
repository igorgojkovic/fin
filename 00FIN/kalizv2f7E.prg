PUSH KEY CLEAR
SET ORDER TO 1
*REPORT FORM KALIZV1  PREVIEW FOR PRENOS=' '.AND.INTERNA=' '
      mfile='KALIZV1'
      uslov="PRENOS=' '.AND.INTERNA=' '"
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
