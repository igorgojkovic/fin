*parameters pristup
*mpristup=pristup
clear all
close all
clear memory
on error do greske with ;
   error( ), message( ), message(1), program( ), lineno( )
*** the next line should cause an error *
*on error  && restore system error handler
public mbazni,mslike,mdatabaze,mtxt,mdata00v,mdata00csv,mdatacsv,mdatakomcsv,mdata01,mdodaci,mbaza,kgreske,aaoper,mokviri,msnimak,mkasadata,mikone
public glmeni,aserverodgovor,tfpossif,tflokalni,mstartsql,povezano,tfdata01,mmbazni,mdatabazekom,mdataphp
glmeni=1
aserverodgovor=1
mstartsql=1
povezano=0
set status bar on
set exclusive off
set fdow to 7
capslock(.T.)
numlock(.T.)
set optimize on
*set step on 
*msis=val(sys(3050,1))/3
*sys(3050,1,msis)
aaoper='0'
mbazni=sys(5)+sys(2003)
mmbazni=sys(5)
set null off
mslike=mbazni+'\slike\'
mdatabaze=mbazni+'\databaze'
mdatabazekom=mbazni+'\databazekom'
mtxt=mbazni+'\txt\'
mdata01=mbazni+'\data01'
mdodaci=mbazni+'\dodaci\'
mikone=mbazni+'\ikone\'
mokviri=mbazni+'\dodaci\okviri\'
mgreske=mbazni+'\greske\'
msnimak=mbazni+'\ssnimak'
mkasadata='c:\kasadata'
mdata0gf=msnimak+'\data0gf'
mdatacsv=msnimak+'\datacsv'
mdata00csv=msnimak+'\data00csv'
mdatakomcsv=msnimak+'\datakomcsv'
mdata00bo=msnimak+'\data00bo'
mdataphp=msnimak+'\dataphp'
mdisk='c:\'
delovod=mdisk+'delovod'
prijem=mdisk+'prijem'
set path to &mdisk
set default to &mdisk

if !directory('delovod')
   mkdir delovod
endif

if !directory('prijem')
   mkdir prijem
endif

if !directory('gp550')
   mkdir gp550
   mgp='gp550'
   set path to &mgp
   set default to &mgp
   mkdir to_fp
   mkdir from_fp
endif

set path to &mdisk
set default to &mdisk


if !directory('temp')
   mkdir temp
endif


set path to &mbazni
set default to &mbazni

if !directory('ssnimak')
   mkdir ssnimak
endif

if !directory('databaze')
   mkdir databaze
endif

if !directory('databazekom')
   mkdir databazekom
endif

if !directory('greske')
   mkdir greske
endif

if !directory('data01')
   mkdir data01
endif

set path to &msnimak
set default to &msnimak


if !directory('data01le')
   mkdir data01le
endif
public mdata01le
mdata01le=msnimak+'\data01le'

if !directory('data01le2')
   mkdir data01le2
endif
public mdata01le2
mdata01le2=msnimak+'\data01le2'

if !directory('data01bp')
   mkdir data01bp
endif
public mdata01bp
mdata01bp=msnimak+'\data01bp'


if !directory('data01put')
   mkdir data01put
endif
public mdata01put
mdata01put=msnimak+'\data01put'


if !directory('data01vp')
   mkdir data01vp
endif
public mdata01vp
mdata01vp=msnimak+'\data01vp'

if !directory('data0gf')
   mkdir data0gf
endif

mdatacsv=msnimak+'\datacsv'
if !directory('datacsv')
   mkdir datacsv
endif
mdata00csv=msnimak+'\data00csv'
if !directory('data00csv')
   mkdir data00csv
ENDIF
mdatakomcsv=msnimak+'\datakomcsv'
if !directory('datakomcsv')
   mkdir datakomcsv
ENDIF

mdataphp=msnimak+'\dataphp'
if !directory('dataphp')
   mkdir dataphp
ENDIF


if !directory('data00bo')
   mkdir data00bo
endif
mdata0bo=msnimak+'\data00bo'

if !directory('jalk')
   mkdir jalk
endif
mjalk=msnimak+'\jalk'

if !directory('tc0')
   mkdir tc0
endif
public mtc0
mtc0=msnimak+'\tc0'


set path to &mbazni
set default to &mbazni

do databaze0

do datavP

************************************
cd &mdata0gf
set path to &mdata0gf
set default to &mdata0gf
do  dbdata0gf
if file('sqlpar2.dbf')
   use sqlpar2 in 0
   select sqlpar2
   if reccount()<1
      tfdata01='n'
   else
      tfdata01=fdata01
   endif
   use
else
   tfdata01='n'
endif
if file('sqlpar.dbf')
   use sqlpar in 0
   select sqlpar
   tfpossif=fpossif
   use
else
   tfpossif='n'
endif

if tfdata01='d'
   mmbazni=sys(5)
   cd\   
   set path to &mmbazni
   set default to &mmbazni
   if !directory('data01')
      mkdir data01
   endif   
   mdata01=mmbazni+'\data01'
   cd &mbazni
   set path to &mbazni
   set default to &mbazni
endif

set path to &mbazni
set default to &mbazni

if !directory('data00')
   mkdir data00
endif


set path to &mbazni
set default to &mbazni

mdata00=mbazni+'\data00'

set path to &mgreske
set default to &mgreske

mgrdanas=dtos(date())

if !directory(mgrdanas)
   mkdir (mgrdanas)
endif

kgreske=mgreske+mgrdanas+'\greske'


set path to &mgreske
set default to &mgreske
set confirm off

mgrdanas=dtos(date())

if !directory(mgrdanas)
   mkdir (mgrdanas)
   cd\
   cd &mgreske
   cd\
   cd &mbazni
endif

set path to &mgreske
set default to &mgreske
cd &mgrdanas

do ibaze with 'greske'

set path to &mbazni
set default to &mbazni

do form glavna00
on error 
capslock(.f.)
clear all
close all
clear memory
clear program
return
