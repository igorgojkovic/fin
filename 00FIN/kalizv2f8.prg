PUSH KEY CLEAR
SET ORDER TO 1
*REPORT FORM KALIZV20  PREVIEW 
      mfile='KALIZV20'
      uslov=""
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
