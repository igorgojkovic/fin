PARAMETERS TSVE
MTSVE=TSVE
PUSH KEY CLEAR
MDAT0=TVKART.TXTDAT0.VALUE
MDAT1=TVKART.TXTDAT1.VALUE
MFVRSTA=STR(VAL(ALLTRIM(TVKART.TXTFVRSTA.VALUE)),3,0)
IF MFVRSTA='  0'
   MFVRSTA='   '
ENDIF
MSIFRA=STR(VAL(ALLTRIM(TVKART.TXTSIFRA.VALUE)),5,0)
IF MSIFRA='    0'
   MSIFRA='     '
ENDIF
MPRENOS=TVKART.TXTPRENOS.VALUE
Minterna=TVKART.TXTINTERNA.VALUE
MTNIVELAC=TVKART.TXTNIVELAC.VALUE
MOTPAD=TVKART.TXTOTPAD.VALUE
SELECT DATUMI
MPAR3=PAR3
REPLACE DAT0 WITH MDAT0
REPLACE DAT1 WITH MDAT1
SELECT ROB
TVKART.RELEASE
   DO ROBAKARTICA WITH MRSIF,MDAT0,MDAT1,MFVRSTA,MSIFRA,MINTERNA,MPRENOS,MTSVE,MTNIVELAC,MOTPAD
POP KEY