PARAMETERS AA
SELECT IZBOR
IF EOF()
   GO BOTTOM
ENDIF
GOTO AA
TPNAZIV=ALLTRIM(PNAZIV)
TKONTO=ALLTRIM(KONTO)
TSIFARNIK=SIFARNIK
TKNJNAL=knjnal
PUBLIC TANREDNI,TANDEVIZNO
TANREDNI=ALLTRIM(SIFPROD)
TDP=ALLTRIM(DP)
TANDEVIZNO=DEVIZNO
CLOSE ALL TABLES
kanal='anal'+tanredni
DO FORM AAANI
AAIZBORAN.release
KEYBOARD '{ENTER}'
