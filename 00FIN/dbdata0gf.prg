push key clear
set path to &mdata0gf
set default to &mdata0gf
do ilbaze with 'tabele'
do ilbaze with 'stabele'
do ilbaze with 'mtabele'
do ilbaze with 'mtabsif','mtabele'
do ilbaze with 'tabstru'
do ilbaze with 'tab00'
do ilbaze with 'sqlpar'
do ilbaze with 'sqlpar2'
do ilbaze with 'konvertc'
do ilbaze with 'konvcscx'
do ilbaze with 'kscx'
close all tables

use sqlpar in 0 
select sqlpar
if reccount()<1
   append blank
   replace fpossif with 'N'
   replace fdata01 with 'N'
endif   
use

use sqlpar2 in 0 
select sqlpar2
if reccount()<1
   append blank
   replace fdata01 with 'N'
endif   
use



pop key