PUSH KEY CLEAR
SELECT KAL
IF RECCOUNT()<1
   KAL.CMDKALNOVA.SETFOCUS
   *KAL.GRD0.COLUMN1.SETFOCUS
   DO FORM KALNOVA
ENDIF
POP KEY