PUSH KEY CLEAR
IF RECCOUNT()>0
   AN0REC=RECNO()
ELSE
   AN0REC=0
ENDIF
   DO FORM ANZBIRK

SELECT AN0
IF AN0REC<>0
   GOTO AN0REC
ENDIF
SET ORDER TO 2
MUSLNAZ=SPACE(30)
MUSLBR=SPACE(5)
SET EXACT OFF
AN0.GRD0.RECORDSOURCE='AN0'
AN0.GRD0.SETFOCUS
AN0.GRD0.COLUMN2.SETFOCUS
POP KEY
AN0.REFRESH
