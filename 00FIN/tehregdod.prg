   SELECT OTG
   TEHREG.CMDREGDOD.SETFOCUS
   SET ORDER TO 
   GO BOTTOM
   MASIFRA=SIFRA
   MDATUM=DATUM
   MVAL=VAL(MASIFRA)+1
   MKONTROLA=KONTROLA
   APPEND BLANK
   REPLACE SIFRA WITH STR(MVAL,6,0)
   REPLACE DATUM WITH MDATUM
   REPLACE KONTROLA WITH MKONTROLA
   GO BOTTOM
   DO TEHREGKART
   tehreg.GRD0.SETFOCUS
   tehreg.REFRESH
