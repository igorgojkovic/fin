PUSH KEY CLEAR
SELECT PRORAD
APPEND BLANK
REPLACE LDsif WITH STR(RECNO(),5,0)
PRORAD.GRD0.REFRESH
DO FORM PRORADK
PRORAD.GRD0.SETFOCUS
POP KEY
PRORAD.REFRESH
