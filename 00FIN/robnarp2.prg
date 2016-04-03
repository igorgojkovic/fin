PUSH KEY CLEAR
MPROIZV=proizv
*REPORT FORM ROBNAR01 PREVIEW FOR proizv=mproizv.AND.NARUCITI<>0
   mfile='ROBNAR01'   
   USLOV="proizv=mproizv.AND.NARUCITI<>0"
   DO printer_bullzip WITH mdata02,mfiLE,USLOV

POP KEY
