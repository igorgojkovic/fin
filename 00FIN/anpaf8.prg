PUSH KEY CLEAR
ANP.GRD0.COLUMN4.SETFOCUS
MBRNAL=BRNAL
MSIFRA=SIFRA
MDATDOK=DATDOK
MVALUTA=VALUTA
MBRRAC=BRRAC
TKOJI='PDV'
MPOT=POT

DO FORM PDVU0 WITH .T.,MBRNAL,MSIFRA,MDATDOK,MVALUTA,MBRRAC,MPOT
ANP.GRD0.SETFOCUS
ANP.GRD0.REFRESH
POP KEY
ANP.REFRESH


