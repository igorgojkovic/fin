PUSH KEY CLEAR
SELECT DELDOK
SET ORDER TO 
GO BOTTOM
APPEND BLANK
GO BOTTOM
DELDOK.GRD0.SetFocus
DELDOK.GRD0.REFRESH
REPLACE DOK WITH STR(RECNO(),3,0)
DO FORM DELDOKKART
DELDOK.GRD0.SetFocus
DELDOK.GRD0.REFRESH
DELDOK.REFRESH  
POP KEY