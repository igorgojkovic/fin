PUSH KEY CLEAR
SELECT unior
SET RELATION TO
USE an0 IN 0 ORDER 1
DO FORM FAN0
SELECT an0
msifra=sifra
MNAZIV=NAZIV
MPIB=PIB
MPOVEZANOL=POVEZANOL
use
SELECT unior
IF sifra=space(5)
   replace sifra WITH msifra
   REPLACE NAZIV WITH MNAZIV
   REPLACE PIB WITH MPIB
   REPLACE POVEZANOL WITH MPOVEZANOL
ELSE
LOCATE FOR sifra=msifra   
nalunior.grd0.setfocus
endif   
