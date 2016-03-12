parameters mbrkal
push key clear
public abrkal
abrkal=space(6)
abrkal=mbrkal
mdok=alltrim(tobjekat)+alltrim(ttvredni)
select niv
mbrnal=brnal
set exact off
IF TOBJEKAT='V'
   MOPIS='NIV-VP-'+ABRKAL
ELSE
   MOPIS='NIV-MP-'+ABRKAL
ENDIF

   do idel with (kkockax)
   do idel with (kkockax1)


   use trgpar in 0 alias tmpar 
   select tmpar
   locate for dok=tdok
     mpkgk=pkgk 
     mpkan=pkan 
     mpktm=pktm 
     mpkkp=pkkp 
     mpkpdv=pkpdv 
     mpngk=pngk 
     mpntm=pntm 
     mpnkp=pnkp 
     mpfgk=pfgk 
     mpfan=pfan 
     mpftm=pftm 
     mpfkp=pfkp 
     mpfpdv=pfpdv 
   use


use &kkonto in 0 order 1 alias konto



use &kksema in 0 order 1 alias ksema
use &kknjizt in 0 exclu alias knjizt
select knjizt
delete all
pack





use &kknjizr in 0 exclu alias knjizr
select knjizr
delete all
pack




use &kknjizs in 0 exclu alias knjizs
select knjizs
delete all
pack





select niv
set order to 3
seek mbrnal

if found()
   do while.not.eof()
      if brnal<>mbrnal
         exit
      endif
      mbrkal=brkal

      msema=sema
      select ksema
      seek msema
      if found()
         mkulaz=k_ulaz
         mkzav=k_zav
         mkpor=k_por
         mkmar=k_mar
         mkplac=k_plac
         mkplac8=k_plac8
         mkplac5=k_plac5
         mkmag=k_mag
         mkravnaj=k_ravnaj
      else
         mkulaz='ulaznema'
         mkzav ='zav nema'
         mkpor ='por nema'
         mkmar ='mar nema'
         mkplac='placnema'
         mkplac8='plac8ne '
         mkplac5='plac5ne '
         mkmag ='mag nema'
         mkravnaj='rav nema'
      endif         
      select niv

      if tobjekat='V'
         mvelvred=velvred
      else
         mvelvred=malvred
      endif
      msiznos=siznos
      msporez=sporez
      mporez=porez
      mmarza=marza
      mtarifa=tarifa
      mprocpor=procpor   
      msprocpor=sprocpor
      mdatdok=datdok
      mtarifa=tarifa
      mstarifa=starifa

      select tarifa
      seek mtarifa 
      if found() 
         mkon1p=kon1p
         mprocpor=procpor
      else
         mkon1p='00000000'
         mprocpor=0
      endif      
     
      select tarifa
      seek mstarifa 
      if found() 
         mskon1p=kon1p
         msprocpor=procpor
      else
         mskon1p='00000000'
         msprocpor=0
      endif   
         
      if mpngk='D'
      
      select knjizs
      
      if mvelvred<>0
         append blank
         replace konto with mkmag
         replace brnal with mbrnal
         if tkukalkp<>'D'
            replace dug with mvelvred
         else
            replace dug with mvelvred+mporez
         endif
         
         replace datdok with mdatdok
         replace opis with mopis
         mmagacin=mvelvred

         append blank
         replace konto with mkmag
         replace brnal with mbrnal
         if tkukalkp<>'D'
            replace dug with -msiznos
         else
            replace dug with -msiznos-msporez
         endif   
         replace datdok with mdatdok
         replace opis with mopis
         
         mmagacin=mvelvred
      endif 
      *-------marza----------
      if mmarza<>0
         append blank
         replace konto with mkmar
         replace brnal with mbrnal
         replace pot with mmarza
         replace datdok with mdatdok
         replace opis with mopis
      endif 
      
      if tobjekat='V'
         if tkukalkp='D'       
         *-------ukalkulisani porez----------
         if mporez<>0
            append blank
            replace brnal with mbrnal
            replace datdok with mdatdok
            replace opis with mopis
            if mprocpor<>0
               replace konto with substr(mkpor,1,4)+substr(mkon1p,5,4)+'00'
               replace pot with round(mporez,2)
            endif   
         endif
         *-------stari porez----------
         if msporez<>0
            append blank
            replace brnal with mbrnal
            replace datdok with mdatdok
            replace opis with mopis
            if msprocpor<>0
               replace konto with substr(mkpor,1,4)+substr(mskon1p,5,4)+'00'
               mspot=round(msporez,2)
               replace pot with -mspot
            endif   
         endif
         endif
      endif




      if tobjekat='M'                
         *-------ukalkulisani porez----------
         if mporez<>0
            append blank
            replace brnal with mbrnal
            replace datdok with mdatdok
            replace opis with mopis
            if mprocpor<>0
               mporkonto=substr(mkpor,1,4)+substr(mkon1p,5,4)+'00'
               IF LEN(ALLTRIM(mporkonto))=8
                  mporkonto=mporkonto+'00'
               endif   
               replace konto with MPORKONTO
               replace pot with round(mporez,2)
            endif   
         endif
         
         *-------stari porez----------
         if msporez<>0
            append blank
            replace brnal with mbrnal
            replace datdok with mdatdok
            replace opis with mopis
            if msprocpor<>0
              mporkontoS=substr(mkpor,1,4)+substr(mkon1p,5,4)+'00'
               IF LEN(ALLTRIM(mporkonto))=8
                  mporkontoS=mporkontoS+'00'
               endif               
               replace konto with MPORKONTOS
               mspot=round(msporez,2)
               replace pot with -mspot
            endif   
         endif
      endif
      
      
      
      
      endif
      
      if mpntm='D'
      *------knjizenje tm ili kepu------------------------
      select knjizt
      append blank
      replace brnal with mbrnal
      replace brkal with mbrkal
      if tkeukalkp<>'D'
         replace uknab with mvelvred-msiznos
      else
         replace uknab with mvelvred-msiznos+mporez-msporez
      endif
      
      
      replace opis with mopis
      replace datdok with mdatdok
      replace konto with mkmag
      endif
      
      *------knjizenje knjige prihoda -----------------------
      if mpnkp='D'
      select knjizr

      append blank
      replace brnal with mbrnal
      replace brkal with mbrkal
      replace malvred with mvelvred
      replace opis with mopis
      replace datdok with mdatdok
      replace porez with mporez
      replace marza with mmarza

      append blank
      replace brnal with mbrnal
      replace brkal with mbrkal
      replace malvred with -msiznos
      replace opis with mopis
      replace datdok with mdatdok
      replace porez with -msporez
      
      endif
      
      select niv
      skip
   enddo      
endif


if mpngk='D'
select knjizs
set order to 1
total on konto to &kkocka
zap
append from &kkocka
replace all dok with tobjekat+ttvredni
go top
set relation to konto into konto additive

select knjizs
go top
mdug=0
mpot=0

do while.not.eof()
   mdug=mdug+dug
   mpot=mpot+pot
   skip
enddo
go top
mbrnal=brnal

use nalap in 0 order 2 alias nalap
select nalap
seek mbrnal
if found()
   do while.not.eof()
      if brnal<>mbrnal
         exit
      endif
         replace dug with 0
         replace pot with 0
         replace konto with ''
         replace opis with 'B'
      skip
   enddo   
endif

use nal in 0 order 2 alias nal
select nal
seek mbrnal
if found()
   do while.not.eof()
      if brnal<>mbrnal
         exit
      endif
         replace dug with 0
         replace pot with 0
         replace konto with ''
         replace opis with 'B'
      skip
   enddo   
endif
use
*---------knjizenje sintetike------------

select knjizs
go top
mzsaldo=0
mopis=opis
mdatdok=datdok
do while.not.eof()
   mkonto=konto
   mdug=dug
   mpot=pot
   mopis=opis
   mdatdok=datdok
   if substr(konto,1,4)<>'nema'
   select nalap
   append blank
   replace konto with mkonto
   replace dug with mdug
   replace pot with mpot
   replace opis with mopis
   replace datdok with mdatdok
   replace dok with mdok
   replace brnal with mbrnal   
   replace automnal with '*'
   mzsaldo=mzsaldo+dug-pot 
   select knjizs
   endif
   skip
enddo   

select nalap
if mzsaldo<>0
   append blank
   replace konto with mkravnaj
   replace opis with mopis
   replace datdok with mdatdok
   replace dok with mdok
   replace pot with mzsaldo
   replace brnal with mbrnal
   replace automnal with '*'

endif   
use


endif


if mpntm='D'

select knjizt
set order to 1
total on  brkal to &kkocka
zap
append from &kkocka
*replace all dok with tobjekat+tredni
go top
*-----------knjizenje trgovacke knjige ili kepu-------------


if tobjekat='V'
   ktm='tvtm'+ttvredni
else
   ktm='tm'+ttvredni
endif

use &ktm in 0 order 2 alias tm
select knjizt
go top
kk=0
do while.not.eof()
   mdatdok=datdok
   mopis='NIV-'+brkal+'-'+dtoc(datdok)
   muknab=uknab
   *mdok=dok
   mbrkal=brkal
   mkonto=konto
   select tm
   set order to 2
   locate for brkal=mbrkal
   if .not.found()
      append blank
   endif 
   replace datdok with mdatdok
   replace opis with mopis
   replace uknab with muknab
   replace brnal with mbrnal   
   replace brkal with mbrkal
   replace konto with mkonto
   replace automnal with '*'
   select knjizt
   skip
enddo   
select tm
use
*--------kraj knjizenja kepu
endif
if mpnkp='D'
select knjizr
set order to 1
total on  brkal to &kkocka
zap
append from &kkocka
*replace all dok with tobjekat+tredni
go top
*-----------knjizenje knjige prihoda---------
*if tobjekat='m'
   mtm='tmp0'
   use &mtm in 0 order 1 alias tmp
   select knjizr
   go top
   kk=0
   do while.not.eof()
      mdatdok=datdok
      mopis='NIV-'+brkal+'-'+dtoc(datdok)
      mmarza=marza
      mporez=porez
      mmalvred=malvred
      mbrkal=brkal
      mbrnal=brnal
      select tmp
      set order to 3
      locate for brnal=mbrnal
      if .not.found()
         append blank
      endif 
      replace datdok with mdatdok
      replace opis with mopis
      replace marza with mmarza
      IF TOBJEKAT='M'
      replace porez with mporez
      replace malvred with mmalvred
      ELSE
      REPLACE POREZ WITH 0
      replace malvred WITH marza
      endif
      replace brnal with mbrnal   
      replace brkal with mbrkal
      replace dok with mdok
      replace automnal with '*'
      
      select knjizr
      skip
   enddo   
   select tmp
   use
*endif   
*--------kraj knjizenja knjige prihoda


endif

select knjizs
use
select knjizt
use

select knjizr
use
select konto
use
select ksema
use
select niv
set order to 
pop key
