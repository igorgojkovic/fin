PUSH KEY CLEAR
MDAT0=TVKARTN.TXTDAT0.VALUE
MDAT1=TVKARTN.TXTDAT1.VALUE
MFVRSTA=STR(VAL(ALLTRIM(TVKARTN.TXTFVRSTA.VALUE)),3,0)
IF MFVRSTA='  0'
   MFVRSTA='   '
ENDIF
MSIFRA=STR(VAL(ALLTRIM(TVKARTN.TXTSIFRA.VALUE)),5,0)
IF MSIFRA='    0'
   MSIFRA='     '
ENDIF
MPRENOS=TVKARTN.TXTPRENOS.VALUE
Minterna=TVKARTN.TXTINTERNA.VALUE
SELECT DATUMI
MPAR3=PAR3
REPLACE DAT0 WITH MDAT0
REPLACE DAT1 WITH MDAT1
SELECT ROB
TVKARTN.RELEASE
   DO ROBAKARTICAN WITH MRSIF,MDAT0,MDAT1,MFVRSTA,MSIFRA,MINTERNA,MPRENOS
POP KEY