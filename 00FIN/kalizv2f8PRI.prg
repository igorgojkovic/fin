PUSH KEY CLEAR
SET ORDER TO 1
*REPORT FORM KALIZV20PRI  PREVIEW 
      mfile='KALIZV20PRI'
      uslov=""
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
