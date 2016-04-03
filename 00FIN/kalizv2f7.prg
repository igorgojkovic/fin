PUSH KEY CLEAR
SET ORDER TO 1
*REPORT FORM KALIZV1  PREVIEW 
      mfile='KALIZV1'
      uslov=""
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
