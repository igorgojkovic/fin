PUSH KEY CLEAR
IF PPASPRO=0
PUBLIC PPORUKA
PPORUKA=' NEMATE PRAVO PRISTUPA PROIZVODNJI '
DO PORUKA 
ELSE
CLOSE ALL TABLES
*MUZIKA=MWAV+'S006.WAV'
*SET BELL TO MUZIKA
*??CHR(7)
*SET BELL TO
PUSH KEY CLEAR
DO FORM AAPROIZVODNJA
POP KEY
ENDIF
POP KEY