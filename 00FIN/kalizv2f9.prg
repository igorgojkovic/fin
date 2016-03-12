PUSH KEY CLEAR
SET ORDER TO 3
*REPORT FORM KALIZV30  PREVIEW 
      mfile='KALIZV30'
      uslov=""
      DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
