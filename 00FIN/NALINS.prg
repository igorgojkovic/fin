PUSH KEY CLEAR
IF NAL.GRD0.READONLY=.F.
   SCATTER NAME POLJA
   APPEND BLANK
   NAL.GRD0.REFRESH
   GATHER NAME POLJA
   REPLACE DUG WITH 0
   REPLACE POT WITH 0
   NAL.GRD0.SETFOCUS
ENDIF
POP KEY