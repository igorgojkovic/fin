PUSH KEY CLEAR
IF UKNAB=0
   SELECT PDV
   DO FORM PDVUUNOSDEV
   PDVUK.TXTKONTO.SETFOCUS
   PDVUK.REFRESH
ENDIF
POP KEY