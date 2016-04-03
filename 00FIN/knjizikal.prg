parameters mbrkal,amsve
push key clear 
public abrkal
select kal
abrkal=space(6)
abrkal=mbrkal
abrnal=kalg.brnal
tprodaja=kalg.prodaja
if amsve=1
   if tnivelac='D'
      do kalnivel2
   endif   
endif   
select kal

mhelp='knjizi'
mdok=alltrim(tobjekat)+alltrim(ttvredni)

set exact off
if tobjekat='V'
   kkalzav='kalzav'+ttvredni+'.dbf'
else
   kkalzav='kalzam'+ttvredni+'.dbf'
endif
mzavdug=0
use &kkalzav in 0 alias kalzav order 1
select kalzav
   seek mbrkal

if found()
   do while.not.eof()
      if brkal<>mbrkal
         exit
      endif
      mzavdug=mzavdug+dug   
      skip
   enddo   
endif

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


select kal
set order to 1
seek abrkal
mbrnal=kalg.brnal
medatdok=kalg.datdok
medatpri=kalg.datpri
medatpdv=kalg.datpdv
MSN=KALG.SN
mnaziv=alltrim(substr(an0.naziv,1,30))+' '+alltrim(an0.mesto)
set relation to
set relation to rsif into rob additive
if tobjekat='V'
   MOPIS='KVP-'+ABRKAL+' '+DTOC(MEDATDOK)+' '+MNAZIV
ELSE
   MOPIS='KMP-'+ABRKAL+' '+DTOC(MEDATDOK)+' '+MNAZIV
ENDIF

kplac='kocka2'+operater+'.dbf'
kplacx='kocka2'+operater+'.cdx'

   do idel with (kkockax)
   do idel with (kkockax1)
   do idel with (kplacx)

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


use &kknjizv in 0 exclu alias knjizv
select knjizv
delete all
pack


use &kknjiza in 0 exclu alias knjiza
select knjiza
delete all
pack



select kalg
set order to 3

select kal
set order to 1

mmagacin=0
*set step on 

select kalg
set order to 3
seek mbrnal
if found()
   do while.not.eof()
      if brnal<>mbrnal
         exit
      endif
      mbrkal=brkal
      msifra=sifra
      minterna=interna
      mprenos=prenos
      mvpdv=vpdv
      msema=kalprn.sema
      mdevkurs=devkurs
      mdev=dev
      MSN=SN
      select ksema
      seek msema

     if found()
         mkulaz=k_ulaz
         mkulaz2=k_ulaz2
         mkulaz3=k_ulaz3
         mkzav=k_zav
         mkpor=k_por
         mkpor2=k_por2
         mkpor3=k_por3
         mkmar=k_mar
         mkmar2=k_mar2
         mkmar3=k_mar3
         mkplac=k_plac
         mkplac8=k_plac8
         mkplac5=k_plac5
         mkmag=k_mag
         mkmag2=k_mag2
         mkmag3=k_mag3
         mksznak=k_sznak
         mkravnaj=k_ravnaj
         mk9prdug=k9_prdug
         mk9prpot=k9_prpot
         mk9gpdug=k9_gpdug
         mk9gppot=k9_gppot
         mksvenor=k_svenor
      else
         mkulaz=space(10) 
         mkulaz2=space(10) 
         mkulaz3=space(10) 
         mkzav =space(10) 
         mkpor =space(10) 
         mkpor2 =space(10) 
         mkpor3 =space(10) 
         mkmar =space(10) 
         mkmar2 =space(10) 
         mkmar3 =space(10) 
         mkplac=space(10) 
         mkplac8=space(10) 
         mkplac5=space(10) 
         mkmag =space(10) 
         mkmag2 =space(10) 
         mkmag3 =space(10) 
         mksznak=space(1)
         mkravnaj=space(10)
         mk9prdug=space(10)
         mk9prpot=space(10)
         mk9gpdug=space(10)
         mk9gppot=space(10)
         mksvenor=space(1)
      endif
         
      select kalg

      mbrrac=brrac
      mvaluta=valuta
      mpv1=pv1
      mpv2=pv2
      mpv3=pv3
      mpv4=pv4
      mpv5=pv5                                    
      mpv6=pv6            
      mpv7=pv7
      mpv8=pv8                        
      mpv9=pv9      
      mpv10=pv10                        
      mpv11=pv11                       
      mpv12=pv12                       
    
      mprdin1=prdin1
      mprdin2=prdin2
      mprdin3=prdin3
      mprdin4=prdin4
      mprdin5=prdin5
      mprdin6=prdin6
      mprdin7=prdin7                                                            
      mprdin8=prdin8
      mprdin9=prdin9
      mprdin10=prdin10
      mprdin11=prdin11
      mprdin12=prdin12
     
      
      select kal
      seek mbrkal

      if found()
         mviseval=0
         do while.not.eof()
            if brkal<>mbrkal
               exit
            endif   
            if mksvenor<>'D'
               mvrsta=rob.vrsta
            else
               mvrsta='N'
            endif
            mplac18=0
            mplac8=0
            mplac5=0
            mvelvred=0
            mvelvred2=0
            mvelvred3=0
            mvelvredk=0
            mvelvred2k=0
            mvelvred3k=0
            miznos=0
            miznos2=0
            miznos3=0
            mmarza=0
            mmarza2=0
            mmarza3=0
            mfakvred=0
            mfakvred2=0
            mfakvred3=0
            mplacd18=0
            mplacd8=0
            mprocpord=0
            mzavisnic=0
            mzavisnin=0
            mtrdobn=0
            mtrdob18=0
            mtrdob8=0
            mtrdob=0
            mfak18=0
            mfak8=0
            mfak5=0
            mizni=0
            mporpos=0
            do case
            case mvrsta='S'
               miznos2=iznos
            case mvrsta='K' 
               miznos3=iznos
            otherwise
               miznos=iznos
            endcase
                  
            if tobjekat='V'
               if tkukalkp<>'D'
                  do case 
                  case mvrsta='S'
                     mvelvred2=velvred
                  case mvrsta='K'
               	     mvelvred3=velvred
                  otherwise
                     mvelvred=velvred
                  endcase
               else
              *------------dodato 01.01.2010-------
                  do case
                  case mvrsta='S'
                     mvelvred2=malvred
                  case mvrsta='K'
                     mvelvred3=malvred
                  otherwise
                     mvelvred=malvred
                  endcase
               endif                
               if tkeukalkp='D'
                  do case
                  case mvrsta='S'
                     mvelvred2k=malvred
                  case mvrsta='K'
                     mvelvred3k=malvred
                  otherwise
                     mvelvredk=malvred
                  endcase
               endif
            else
               do case
               case mvrsta='S'
                  mvelvred2=malvred
                  mvelvred2k=malvred                  
               case mvrsta='K'
                  mvelvred3=malvred
                  mvelvred3k=malvred
               otherwise
                  mvelvred=malvred
                  mvelvredk=malvred
               endcase
            endif
            mtarifa=tarifa
            mprocpor=procpor   
            mdatdok=datdok
            mpoljproc=poljproc
            mrabat=rabat
            mporez=porez
            mpoljdin=poljdin
            mprocpord=procpord
            mplanul=iznos
            mporpos=porpos
            
            if poljproc=0
               if procpor==VAL(TOSTOPA).OR.PROCPOR==VAL(TSOSTOPA)
                  mplac18=placpor
                  mplac8=0
                  mplac5=0
               endif
               if procpor==VAL(TNSTOPA).OR.PROCPOR==VAL(TSNSTOPA)
                  mplac18=0
                  mplac8=placpor
                  mplac5=0
               endif
            else
               mplac18=0
               mplac8=0
               mplac5=poljdin
            endif
            if mprocpord==VAL(TOSTOPA).OR.PROCPORD==VAL(TSOSTOPA)
               mplacd18=placpord
               mplacd8=0
               mtrdob18=trdob
               mtrdob8=0
            else
               mplacd8=placpord
               mplacd18=0
               mtrdob8=trdob
               mtrdob18=0
            endif         
            mzavisni=zavisni
            *mtrdob=trdob
            mzaokruz=zaokruz
            mzavisnic=zavisnic
            mzavisnin=zavisnin
            mtrdobn=trdobn  
            mplacpord=placpord
            do case
            case mvrsta='S'
               mmarza2=marza-mzaokruz+marzakor
            case mvrsta='K'
               mmarza3=marza-mzaokruz+marzakor
            otherwise
               mmarza=marza-mzaokruz+marzakor
            endcase

               mfak0s=-mrabat+mtrdob18+mtrdob8+mplac18+mplac8+mplac5+mzaokruz
               mfak0=-mrabat+mtrdob18+mtrdob8+mplac18+mplac8+mplac5+mzaokruz+mplacd18+mplacd8+mporpos
               do case
               case mvrsta='S'
                  mfakvred2=miznos2+mfak0s
               case mvrsta='K'
                   if tobjekat='V'
                      mfakvred3=mvelvred3 
                   else
                      mfakvred3=miznos3+mfak0
                   endif                
               otherwise
                  mfakvred=miznos+mfak0
               endcase
               if mpoljproc=0
                  if (mprocpor=VAL(TOSTOPA).or.mplacd18==VAL(TOSTOPA)).OR.(MPROCPOR==VAL(TSOSTOPA).or.mplacd18==VAL(TSOSTOPA))
                     mfak18=miznos+miznos2+miznos3-mrabat+mtrdob18+mplac18+mzaokruz+mplacd18
                     mfak8=0
                     mfak5=0
                  endif
                  if (mprocpor=VAL(TNSTOPA).or.mplacd8==VAL(TNSTOPA)).OR.(MPROCPOR==VAL(TSNSTOPA).or.mplacd8==VAL(TSNSTOPA))
                     mfak8=miznos+miznos2+miznos3-mrabat+mtrdob8+mplac8+mzaokruz+mplacd8
                     mfak18=0
                     mfak5=0
                  endif
               else
                  mfak5=miznos+miznos2+miznos3-mrabat+mtrdob18+mtrdob8+mplac5+mzaokruz
                  mfak18=0
                  mfak8=0
               endif
        
            
             
            select tarifa
            seek mtarifa 
            *********AAAAA****
            if found() 
               mkon1p=kon1p
               mprocpor=procpor
            else
               mkon1p='00000000'
               mprocpor=0
            endif      
            if mpkgk='D'  
               *----------knjizenje klase 9 prijemnice-------------------
               select knjizs
               do knjkal0 with mvelvred,mk9prdug,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
               do knjkal0 with mvelvred,mk9prpot,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               *----------knjizenje klase 9 gotovi proizvodi------------
               *do knjkal0 with mplanul,mk9gpdug,mbrnal,mdatdok,mopis,'d'
               *do knjkal0 with mplanul,mk9gppot,mbrnal,mdatdok,mopis,'p'
               
               *----------kraj knjizenja klase 9----------------------
               select knjizs
               *-------prodajna vrednost----------
               do knjkal0 with mvelvred,mkmag,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
               
               if mvelvred<>0
                  mmagacin=mvelvred
               endif 
               *-------prodajna vrednost-2---------
               do knjkal0 with mvelvred2,mkmag2,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
               if mvelvred2<>0
                  mmagacin=mvelvred2
               endif 
               *-------prodajna vrednost-3---------
               do knjkal0 with mvelvred3,mkmag3,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
               if mvelvred3<>0
                  mmagacin=mvelvred3
               endif 
               *-------ulazna vrednost mkulaz----------
               do knjkal0 with mfakvred,mkulaz,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               do knjkal0 with mfakvred2,mkulaz2,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               do knjkal0 with mfakvred3,mkulaz3,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               *-------zavisni troskovi----------
               if mzavdug<>0
                  do knjkal0 with mzavisni,mkzav,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               endif 
                *-------marza----------
               do knjkal0 with mmarza,mkmar,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               do knjkal0 with mmarza2,mkmar2,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               if tobjekat='M'
                  do knjkal0 with mmarza3,mkmar3,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
               endif
               if tobjekat='M'             
                  *-------ukalkulisani porez----------
                  if mkpor<>space(10)
                     mporkonto=substr(mkpor,1,4)+substr(mkon1p,5,4)
                     IF LEN(ALLTRIM(mporkonto))=8
                        mporkonto=mporkonto+'00'
                     endif   
                     if mprocpor<>0
                        do knjkal0 with round(mporez,2),mporkonto,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
                     endif   
                  endif
               endif
               if tobjekat='V'
                  if tkukalkp='D'
                     if mkpor<>space(10)
                        mporkonto=substr(mkpor,1,4)+substr(mkon1p,5,4)
                        IF LEN(ALLTRIM(mporkonto))=8
                           mporkonto=mporkonto+'00'
                        endif   
                        if mprocpor<>0
                           do knjkal0 with round(mporez,2),mporkonto,mbrnal,mdatdok,mopis,'P',medatpri,medatpdv
                        endif   
                     endif
                  endif
               endif
               *-------placeni porez----------
               if mplac18+mplac8+mplac5+mplacd18+mplacd8<>0
                  if mkplac<>space(10).or.mkplac8<>space(10).or.mkplac5<>space(10)
                     if mpoljdin=0
                        if mprocpor<>0
                           if mprocpor==VAL(TOSTOPA).OR.mprocpor==VAL(TSOSTOPA)
                              madug=round(mplac18+mplac8+mplac5,2)
                              makonto=substr(mkplac,1,10)
                              do knjkal0 with madug,makonto,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
                           endif   
                           if mprocpor==VAL(TNSTOPA) .OR. mprocpor==VAL(TSNSTOPA)
                              madug=round(mplac18+mplac8+mplac5,2)
                              makonto=substr(mkplac8,1,10)
                              do knjkal0 with madug,makonto,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
                           endif   
                        endif
              
                        if mprocpord<>0
                           if mprocpord==VAL(TOSTOPA).OR.mprocporD==VAL(TSOSTOPA)
                              madug=round(mplacd18,2)
                              makonto=substr(mkplac,1,10)
                              do knjkal0 with madug,makonto,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
                           endif   
                           if mprocpord==VAL(TNSTOPA).OR.mprocpor==VAL(TSNSTOPA)
                              madug=round(mplacd8,2)
                              makonto=substr(mkplac8,1,10)
                              do knjkal0 with madug,makonto,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
                           endif   
                        endif
                     else
                        madug=round(mplac5,2)
                        makonto=substr(mkplac5,1,10)
                        do knjkal0 with madug,makonto,mbrnal,mdatdok,mopis,'D',medatpri,medatpdv
                     endif
                  endif
               endif
            
            endif  
            *------knjizenje analitike------------------------

            if mpkan='D'  
           
            if minterna=' '.and.mprenos=' '
               if mkulaz<>space(10)
                  select knjiza
                  if mprdin1=0
                     append blank
                     replace brnal with mbrnal
                     replace brkal with mbrkal
                     replace sifra with msifra
                     REPLACE SN WITH MSN
                     replace pot with miznos-mrabat+mplac18+mplac8+mplac5+mtrdob18+mtrdob8+mzaokruz+mplacd18+mplacd8+mporpos
                     if mdevkurs<>0  
                        replace devpot with round(pot/mdevkurs,4)
                        replace dev with mdev
                        replace devkurs with mdevkurs
                     endif
                     replace brrac with mbrrac 
                     replace valuta with mvaluta                           
                     replace datdok with mdatdok
                     replace datpri with medatpri
                     replace datpdv with medatpdv
                     replace konto with mkulaz
                  else
                     if mviseval=0
                        for i=1 to 12
                           mpv='mpv'+alltrim(str(i,2,0))
                           mprdin='mprdin'+alltrim(str(i,2,0))
                           if &mprdin<>0
                              append blank
                              replace pot with &mprdin
                              replace brnal with mbrnal
                              replace brkal with mbrkal
                              replace sifra with msifra
                              replace valuta with &mpv
                              replace datdok with mdatdok
                              replace datpri with medatpri
                              replace datpdv with medatpdv
                              replace konto with mkulaz
                              REPLACE SN WITH MSN
                              mdan=alltrim(str(valuta-datdok,3,0))
                              replace brrac with alltrim(mbrrac)+'-'+mdan
                            endif     
                        next
                        mviseval=1
                     endif
                  endif
               endif   
            endif
            
            endif
            
            if mpkpdv='D'  
            *------knjizenje pdv------------------------
               if minterna=' '.and.mprenos=' '.and.mvpdv<>space(3)            
                  select ksema
                  seek msema
                  select knjizv
                  append blank
                  replace vpdv with mvpdv
                  replace brnal with mbrnal
                  replace sifra with msifra
                  replace uknab with miznos-mrabat+mplac18+mplac8+mplac5+mzaokruz+mporpos
                  IF mplac18+mplac8+mplac5=0
                     replace neoporez WITH uknab
                  endif
                  replace brrac with mbrrac 
                  replace valuta with mvaluta                           
                  replace datdok with mdatdok
                  replace datpri with medatpri
                  replace datpdv with medatpdv
                  replace konto with mkulaz
                  REPLACE SN WITH MSN
                  if mplac18<>0
                     replace osn18 with mfak18-mtrdob18-mplacd18
                     replace pdv18 with mplac18
                  endif
                  if mplac8<>0
                     replace osn8 with mfak8-mtrdob8-mplacd8
                     replace pdv8 with mplac8
                  endif
                  if mplac5<>0
                     replace osn5 with mfak5
                     replace pdv5 with mplac5
                  endif
                  *troskovi dobavljaca 
                  select knjizv
                  append blank
                  replace vpdv with mvpdv
                  replace brnal with mbrnal
                  replace sifra with msifra
                  replace uknab with mtrdob18+mtrdob8+mplacd18+mplacd8
                  replace brrac with mbrrac 
                  replace valuta with mvaluta                           
                  replace datdok with mdatdok
                  replace datpri with medatpri
                  replace datpdv with medatpdv
                  replace konto with mkulaz
                  REPLACE SN WITH MSN
                  if mplacd18<>0
                     replace osn18 with mtrdob18+mplacd18
                     replace pdv18 with mplacd18
                  endif
                  if mplacd8<>0
                     replace osn8 with mtrdob8+mplacd8
                     replace pdv8 with mplacd8
                  endif
               endif
            
            endif
            
            if mpktm='D'
               
            *------knjizenje tm ili kepu------------------------
            select knjizt

            append blank
            replace brnal with mbrnal
            replace brkal with mbrkal
            if tobjekat='V'
               if tkeukalkp<>'D'
                  replace uknab with mvelvred+mvelvred2+mvelvred3
               else
                  replace uknab with mvelvredk+mvelvred2k+mvelvred3k
               endif   
            else
               if tprodaja<>'P'
                  replace uknab with mvelvred+mvelvred2+mvelvred3
               else
                  replace vredprod with -(mvelvred+mvelvred2+mvelvred3)
               endif
            endif
            
            *replace opis with mbrkal+' '+mbrrac 
            replace opis with mopis
            replace datdok with medatpri
            replace datpri with mdatdok
            replace datpdv with medatpdv
            replace konto with mkmag
            
            endif
            
            if mpkkp='D'
*               set step on 
               *------knjizenje knjige prihoda -----------------------
               *------knjizenje knjige prihoda -----------------------
               *------knjizenje knjige prihoda -----------------------
               select knjizr
               append blank
               replace brnal with mbrnal
               replace brkal with mbrkal
               replace malvred with mvelvred+mvelvred2+mvelvred3
               replace opis with mbrkal+' '+mbrrac 
               replace datdok with mdatdok
               replace datpri with medatpri
               replace datpdv with medatpdv
               if tobjekat='M'
                  replace porez with mporez
               else
                  replace porez with 0
               endif
               replace placpor with mplac18+mplac8+mplac5+mplacd18+mplacd8
               replace marza with mmarza+mmarza2+mmarza3
               *----dodato 17.01.2022-------------
       *        if tobjekat='v'
                  if mvrsta<>'S'
                     replace nabvred with mvelvred-porez-mmarza
                     replace sopvred with 0
 *                    replace porez with mporez
*                     replace malvred with nabvred+marza
                  else
                     replace sopvred with mvelvred2-porez-mmarza2
                     replace nabvred with 0
*                    replace porez with mporez
*                    replace placpor with 0
*                    replace marza with mmarza
*                     replace malvred with mvelvred2
                  endif
        *       endif
            endif   
            select kal
            mvrsta=rob.vrsta
            skip
         enddo   
      endif
      select kalg
      skip
   enddo      
endif
*-----------knjizenje racuna zavisnih troskova-----------
if mzavdug<>0
   select kalzav
      seek mbrkal

   do while.not.eof()
      if brkal<>mbrkal
         exit
      endif   
      msifra=sifra
      mdatdok=datdok
      mvaluta=valuta
      mdatpdv=datpdv
      mdatpri=datpri
      mbrrac=brrac
      mmdug=dug
      mocarina=ocarina
      mpor18=por18
      mpor8=por8
      mneporez=neporez
      *mvrsta=vrsta
      msema=sema
      mvpdv=vpdv
      *---------------ovde se knjizi----
      *------glavna knjiga--------------
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
      else
         mkulaz=space(10) 
         mkzav =space(10) 
         mkpor =space(10) 
         mkmar =space(10) 
         mkplac=space(10) 
         mkplac8=space(10) 
         mkplac5=space(10) 
         mkmag =space(10) 
      endif
      *-----glavna knjiga-----------
      if mmdug<>0 
         if mkulaz<>space(10) 
            select knjizs
            append blank
            replace konto with mkulaz
            replace brnal with mbrnal
            replace pot with mmdug
            replace datdok with mdatdok
            replace datpri with mdatpri
            replace datpdv with mdatpdv
            
            replace opis with mopis
            select kalzav
         endif
         *-------placeni porez----------
         if mpor18<>0
            if mkplac<>space(10)
               select knjizs
               append blank
               replace brnal with mbrnal
               replace datdok with mdatdok
               replace datpri with mdatpri
               replace datpdv with mdatpdv
               replace opis with mopis
               replace konto with substr(mkplac,1,10)
               replace dug with round(mpor18,2)
            endif
         endif                    
         if mpor8<>0
            if mkplac8<>space(10)
               select knjizs
               append blank
               replace brnal with mbrnal
               replace datdok with mdatdok
               replace datpri with mdatpri
               replace datpdv with mdatpdv
               replace opis with mopis
               replace konto with substr(mkplac8,1,10)
               replace dug with round(mpor8,2)
            endif
         endif                
             
         *--------kraj glavna knjiga---
*--------knjizenje analitike--
         select knjiza
         append blank
         replace brnal with mbrnal
         replace brkal with mbrkal
         replace sifra with msifra
         replace pot with mmdug
         replace brrac with mbrrac 
         replace valuta with mvaluta                           
         replace datdok with mdatdok
         replace datpri with mdatpri
         replace datpdv with mdatpdv
         replace konto with mkulaz
         REPLACE SN WITH MSN
      endif      
      *----knjizenje knjige pdv------
      *if mpor18<>0.or.mpor8<>0
         select knjizv
         append blank
         replace vpdv  with mvpdv
         replace brnal with mbrnal
         replace sifra with msifra
         replace uknab with mmdug
         replace neoporez with mneporez
         replace brrac with mbrrac 
         replace valuta with mvaluta                           
         replace datdok with mdatdok
         replace datpri with mdatpri
         replace datpdv with mdatpdv
         REPLACE SN WITH MSN
*         replace konto with mkulaz
         
         if mpor18<>0
            replace pdv18 with mpor18+mplacpord
            replace osn18 with round(mpor18*100/VAL(tostopa),2)+pdv18
         endif
         if mpor8<>0
            replace pdv8 with mpor8
            replace osn8 with round(mpor8*100/VAL(TNSTOPA),2)+pdv8
         endif
      *endif   
      select kalzav
      skip
   enddo   
endif
*------kraj racuna zavisnih troskova------------------

select ksema
use
*---------knjizenje sintetike------------
if mpkgk='D'
select knjizs
set order to 1
total on konto to &kkocka
delete all
pack

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

select knjizs
go top
mopis=opis
mdatdok=datdok
mzsaldo=0
do while.not.eof()
   mkonto=konto
   mdug=dug
   mpot=pot
   mopis=opis
   mdatdok=datdok
   mdatpri=datpri
   mdatpdv=datpdv
   if mdug<>0.or.mpot<>0
      select nalap
      append blank
      replace konto with mkonto
      if mksznak<>'D'
         replace dug with mdug
         replace pot with mpot
      else
         replace dug with -mpot
         replace pot with -mdug
      endif   
      replace opis with mopis
      replace datdok with mdatdok
      replace datpri with mdatpri
      replace datpdv with mdatpdv
      replace datum with date()
      replace dok with mdok
      replace brnal with mbrnal   
      replace automnal with '*'
      mzsaldo=mzsaldo+dug-pot
   endif
   select knjizs
   skip
enddo   

select nalap
if mzsaldo<>0
   append blank
   replace opis with mopis
   replace datdok with mdatdok
   replace datpri with mdatpri
   replace datpdv with mdatpdv
   replace dok with mdok
   replace brnal with mbrnal   
   replace konto with mkravnaj
   replace pot with mzsaldo
   replace datum with date()
endif   


use

endif

*-----------knjizenje trgovacke knjige ili kepu-------------

if mpktm='D'

select knjizt
set order to 1
total on  brkal to &kkocka
delete all
pack

append from &kkocka
*replace all dok with tobjekat+ttvredni
go top

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
   mdatpri=datpri
   mdatpdv=datpdv
   *mopis='kal-'+brkal+'-'+dtoc(datdok)
   muknab=uknab
   mvredprod=vredprod
   *mdok=dok
   mbrkal=brkal
   mkonto=konto
   mopis=opis
   select tm
   set order to 2
   seek mbrkal
   if .not.found()
      append blank
   endif 
   replace datdok with mdatdok
   replace datpri with mdatpri
   replace datpdv with mdatpdv
   replace opis with mopis
   if tprodaja<>'P'
      replace uknab with muknab 
   else
      replace vredprod with mvredprod
   endif
   
*   replace dok with mdok
   replace brnal with mbrnal   
   replace brkal with mbrkal
   replace konto with mkonto
   replace automnal with '*'
   select knjizt
   skip
enddo   
select tm

use
endif
*--------kraj knjizenja kepu
*---------------pdv pdv--------------------
if mpkpdv='D'

select knjizv

set order to 2
total on  sifra+brrac to &kkocka fields osn18,osn8,osn5,uknab,pdv18,pdv8,pdv5
delete all
pack

append from &kkocka
*replace all dok with tobjekat+ttvredni
go top
*-----------knjizenje knjige placenog poreza-------------

use pdvu in 0 order 5
select pdvu
*---------prvi prolaz brise kalkulacije
seek mbrnal
do while.not.eof()
   if brnal<>mbrnal
      exit
   endif   
   replace vpdv with ''
   replace uknab with 0
   replace osn18 with 0
   replace osn8 with 0
   replace osn5 with 0
   replace pdv18 with 0
   replace pdv8 with 0
   replace pdv5 with 0
   replace ukupno with 0
   replace pdv with 0
   replace neoporez with 0
   skip
enddo      

*-----drugi prolaz knjizi--------------
select knjizv
go top
do while.not.eof()
   mvpdv=vpdv
   mdatdok=datdok
   mdatpri=datpri
   mdatpdv=datpdv
   mbrrac=brrac
   mvaluta=valuta
   mbrnal=brnal
   muknab=uknab
   mosn18=osn18
   mosn8=osn8
   mosn5=osn5
   mpdv18=pdv18
   mpdv8=pdv8
   mpdv5=pdv5
   msifra=sifra
   mneoporez=neoporez
   mkonto=konto
   select pdvu    
   append blank
   replace vpdv with mvpdv
   replace sifra with msifra
   replace datdok with mdatdok
   replace datpri with mdatpri
   replace brrac with mbrrac
   replace datpdv with mdatpdv
   replace valuta with mvaluta
   replace dok with mdok
   replace brnal with mbrnal
   replace uknab with muknab
   replace osn18 with mosn18-mpdv18
   replace osn8 with mosn8-mpdv8
   replace osn5 with mosn5-mpdv5
   replace pdv18 with mpdv18
   replace pdv8 with mpdv8
   replace pdv5 with mpdv5
   replace neoporez with mneoporez
   replace ukupno with osn18+osn8+osn5+neoporez
   replace pdv with pdv18+pdv8+pdv5
   replace konto with mkonto
   replace datum with date()
   replace automnal with '*'
   REPLACE SN WITH MSN
               REPLACE PROC18 WITH VAL(tostopa)
               REPLACE PROC8 WITH VAL(tnstopa)
   
   
   select knjizv
   skip
enddo  
select pdvu

use
*--------kraj knjizenja knjige placenog poreza
endif
*-----------knjizenje knjige prihoda---------
if mpkkp='D'
select knjizr
set order to 1
total on  brkal to &kkocka
delete all
pack
append from &kkocka
*replace all dok with tobjekat+ttvredni
go top
*if tobjekat='m'
   mtmp='tmp0'
   use &mtmp in 0 order 2 alias tmp0
   select knjizr
   go top
   kk=0
   do while.not.eof()
      mdatdok=datdok
      mdatpri=datpri
      mdatpdv=datpdv
      *mopis='kal-'+brkal+'-'+dtoc(datdok)
      mplacpor=placpor
      mnabvred=nabvred
      msopvred=sopvred
      mmarza=marza
      mporez=porez
      mmalvred=malvred
      mbrkal=brkal
      mbrnal=brnal
      select tmp0
      set order to 3
      seek mbrnal
      if .not.found()
         append blank
      endif 
      replace datdok with mdatpri
      replace datpri with mdatdok
      replace datpdv with mdatpdv
      replace opis with mopis
      replace placpor with mplacpor
      replace nabvred with mnabvred
      replace sopvred with msopvred
      replace marza with mmarza
      replace porez with mporez
      replace malvred with mmalvred
      IF malvred<>0
         replace nabvred WITH malvred-porez-marza-sopvred
      endif
      replace brnal with mbrnal   
      replace brkal with mbrkal
      replace dok with mdok
      replace datum with date()
      replace automnal with '*'
      select knjizr
      skip
   enddo   
   select tmp0
   
   use
*endif
*--------kraj knjizenja knjige prihoda
endif
*-----------knjizenje analitike-------------
if mpkan='D'
select knjiza
set order to 1
total on konto+sifra+brrac to &kkocka1 fields dug,pot,devdug,devpot
delete all
pack

append from &kkocka1
replace all dok with tobjekat+ttvredni
set relation to sifra into an0 additive
go top
use aaan in 0 alias aaan 
select knjiza
go top
kk=0
do while.not.eof()
   mkonto=konto
   msifra=sifra
   mdatdok=datdok
   mdatpri=datpri
   mdatpdv=datpdv
   mvaluta=valuta
   mbrrac=brrac
   mdug=dug
   mpot=pot
   mdevdug=devdug
   mdevpot=devpot
   mdok=dok
   mopis=brkal
   mdev=dev
   mdevkurs=devkurs
   MSN=SN
   select aaan
   locate for konto=mkonto
   if found()
      mredni=alltrim(sifprod)
      kanal='anal'+mredni
      use &kanal in 0 order 4 alias anal
     
      select anal
      if kk=0
         seek mbrnal
         if found()
            if kk=0
               do while.not.eof()
                  if brnal<>mbrnal
                     exit
                  endif
                  replace dug with 0
                  replace pot with 0
                  replace brrac with ''
                  replace devpot with 0
                  replace devdug with 0
                  replace dev with ' '
                  replace devkurs with 0
                  skip
               enddo   
            endif   
         endif
         kk=1
      endif
      append blank
      replace konto with mkonto
      replace sifra with msifra
      replace datdok with mdatdok
      replace datpri with mdatpri
      replace datpdv with mdatpdv
      replace valuta with mvaluta
      replace brrac with mbrrac
      replace datum with date()
      REPLACE SN WITH MSN
      if mksznak<>'D'
         replace dug with mdug
         replace pot with mpot
         replace devdug with mdevdug
         replace devpot with mdevpot
      else
         replace dug with -mpot
         replace pot with -mdug
         replace devdug with -mdevpot
         replace devpot with -mdevdug
      endif
      replace dev with mdev
      replace devkurs with mdevkurs
      replace brnal with mbrnal
      replace dok with mdok
      replace automnal with '*'
      select anal
      
      use
   endif
   select knjiza
   skip
   if konto<>mkonto
      kk=0
      mkonto=konto
   endif      
enddo   
select aaan
use

endif

select konto
use

select kalzav
use
select knjiza
use
select knjizs
use
select knjizt
use
select knjizv
use
select knjizr
use
select kalg
set relation to 
set order to 1
set relation to sifra into an0 additive
set relation to fvrsta into kalprn additive

select kal
set relation to 
set relation to brkal into kalg  additive
set relation to rsif into rob additive
pop key


