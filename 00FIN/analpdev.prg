PUSH KEY CLEAR
IF PPASAN=1
   IF SIFRA<>SPACE(5).AND.BRNAL<>SPACE(6).AND.DATDOK<>CTOD('')
      DO FORM ANALPDEV
   ENDIF
ELSE
   PUBLIC PPORUKA
   PPORUKA=' NEMATE PRAVO KNJIZENJA DEVIZA U ANALITICI '
   DO PORUKA 
ENDIF
POP KEY