push key clear
set path to &mdata0gf
set default to &mdata0gf
do ipbaze with 'tabele'
do ipbaze with 'mtabele'
do ipbaze with 'tabstru'
do ipbaze with 'tab00'
do ipbaze with 'sqlpar'
do ipbaze with 'sqlpar2'
do ipbaze with 'mtabsif','mtabele'
close all tables
erase *.cdx
set default to &mbazni
pop key