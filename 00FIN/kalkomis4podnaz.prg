MBRKAL=BRKAL
PUSH KEY CLEAR
SELECT KAL
SET ORDER TO 1
*REPORT FORM KALKOMIS4podnaz  PREVIEW FOR BRKAL=MBRKAL
      mfile='KALKOMIS4PODNAZ'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov

SELECT kal
LOCATE FOR BRKAL=MBRKAL
SET ORDER TO 

POP KEY