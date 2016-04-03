PUSH KEY CLEAR
if reccount()>0
   mrsif=rsif
   MNORMATIV=NORMATIV
else
   mrsif=space(5)
   MNORMATIV='    1'
endif      
append blank
IF MNOR=1
   PRONORMA.grd0.REFRESH
ELSE
   PRONORMAl.grd0.REFRESH
endif
replace rsif with mrsif
REPLACE NORMATIV WITH MNORMATIV

IF MNOR=1
   PRONORMA.grd0.column1.setfocus
   PRONORMA.REFRESH  
ELSE
   PRONORMAl.grd0.column1.setfocus
   PRONORMAl.REFRESH  
endif
POP KEY
