PUSH KEY CLEAR
if reccount()>0
   mPsif=Psif
   MNORMATIV=NORMATIV
else
   mPsif=space(5)
   MNORMATIV='    1'
endif      
append blank
replace Psif with mPsif
REPLACE NORMATIV WITH MNORMATIV
pronormap.grd0.column1.setfocus
pronormap.REFRESH  
POP KEY