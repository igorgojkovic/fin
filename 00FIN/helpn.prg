PARAMETERS HMNAME
PUSH KEY CLEAR
MSEL=ALIAS()

DO FORM HELPN WITH HMNAME
IF MSEL<>''
SELECT &MSEL
ENDIF
POP key