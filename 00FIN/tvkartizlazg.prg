PUSH KEY CLEAR
MDAT0=TVKARTG.TXTDAT0.VALUE
MDAT1=TVKARTG.TXTDAT1.VALUE
MFVRSTA=STR(VAL(ALLTRIM(TVKARTG.TXTFVRSTA.VALUE)),3,0)
IF MFVRSTA='  0'
   MFVRSTA='   '
ENDIF
MSIFRA=STR(VAL(ALLTRIM(TVKARTG.TXTSIFRA.VALUE)),5,0)
IF MSIFRA='    0'
   MSIFRA='     '
ENDIF
MPRENOS=TVKARTG.TXTPRENOS.VALUE
Minterna=TVKARTG.TXTINTERNA.VALUE
SELECT DATUMI
MPAR3=PAR3
REPLACE DAT0 WITH MDAT0
REPLACE DAT1 WITH MDAT1
SELECT ROB
TVKARTG.RELEASE

DO ROBAKARTICAG WITH MPODROB,MDAT0,MDAT1,MFVRSTA,MSIFRA,MINTERNA,MPRENOS
POP KEY