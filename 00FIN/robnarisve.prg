PUSH KEY CLEAR
SELECT RONARI
SET ORDER TO 1
DO IDEL WITH (KKOCKAX)
TOTAL ON GRUPA TO &KKOCKA
USE &KKOCKA IN 0 ALIAS KOCKA
SELECT KOCKA
GO TOP
MVREDUL=0  
MVREDIZ=0  
MVREDULP=0 
MVREDIZP=0 
DO WHILE.NOT.EOF()
   MVREDUL=MVREDUL+VREDUL
   MVREDIZ=MVREDIZ+VREDIZ  
   MVREDULP=MVREDULP+VREDULP 
   MVREDIZP=MVREDIZP+VREDIZP
   SKIP
ENDDO
GO TOP
DO WHILE.NOT.EOF()
   IF MVREDUL<>0
      REPLACE PROCUL WITH ROUND(VREDUL*100/MVREDUL,2)
   ENDIF
   IF MVREDIZ<>0   
      REPLACE PROCIZ WITH ROUND(VREDIZ*100/MVREDIZ,2)
   ENDIF
   IF MVREDUL-MVREDIZ<>0   
      REPLACE PROCSAL WITH ROUND((VREDUL-VREDIZ)*100/(MVREDUL-MVREDIZ),2)
   ENDIF    
   IF MVREDULP<>0
      REPLACE PROCULP WITH ROUND(VREDULP*100/MVREDULP,2)
   ENDIF
   IF MVREDIZP<>0   
      REPLACE PROCIZP WITH ROUND(VREDIZP*100/MVREDIZP,2)
   ENDIF
   IF MVREDULP-MVREDIZP<>0   
      REPLACE PROCSALP WITH ROUND((VREDULP-VREDIZP)*100/(MVREDULP-MVREDIZP),2)
   ENDIF    
   SKIP
ENDDO   
GO TOP
*REPORT FORM RONARI02SVE  PREVIEW 
   mfile='RONARI02SVE'   
   USLOV=""
   DO printer_bullzip WITH mdata02,mfiLE,USLOV

SELECT KOCKA
USE
SELECT RONARI
POP KEY
