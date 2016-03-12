push key clear
on error
set default to &mdata0gf
use tabstru in 0 exclu
select tabstru
zap
select tabele
mima=0
mmime=alltrim(LOWER(mimetab))
mmimedbf=alltrim(LOWER(mimetab))+'.dbf'
set default to &mdata02
if file(mmimedbf)
   mima=1
   use &mmime in 0 alias ime
   select ime
   brpolja=afields(niz)-1
   for i=1 to brpolja
      mnaziv=alltrim(lower(niz(i,1)))
      mtip=alltrim(lower(niz(i,2)))
      mduzina=niz(i,3)
      mdecimala=niz(i,4)
      select tabstru
      append blank
      replace naziv with mnaziv
      replace tip with mtip
      replace duzina with mduzina
      replace decimala with mdecimala
      replace imetab with lower(mmime)
   endfor
   select ime
   use
endif   
if mima=1
   select tabstru
   do sqltblcreate
endif   
select tabstru
use
   select tabele
set default to &mdata02
*-----------pregled foldera------------------
select tabele
