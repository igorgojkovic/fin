push key clear
*set step on  
 
use firma in 0 alias firma

   if tanal=='NALP'
      use &knalpa in 0 alias nalp 
      select nalp
   else
      use nalap in 0 alias nalp 
   endif


select nalp
use nalbroj in 0 alias nalbroj order 1
use &knalvrsta in 0 order 1 alias nalvrsta
use &kkonto alias konto in 0 order 1
use &kmesta alias mesta in 0 order 1
use an0 in 0 order 1 alias an0
select an0

use mtr in 0 order 1 alias mtr
use &kdat alias datumi in 0 

select datumi
replace par1 with '1'

use aaan in 0 order 1 alias aaan
select nalbroj
set relation to vrnal into nalvrsta additive

select nalp
set relation to brnal into nalbroj  additive
set relation to konto into konto additive
set relation to mp into mesta additive
set relation to mtr into mtr additive
go top
pop key
