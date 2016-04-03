parameters mbrkal 
*SET STEP ON 
public abrkal
push key clear 
*SET STEP ON 
abrkal=space(6)
abrkal=mbrkal
mdok=alltrim(tobjekat)+alltrim(ttvredni)
mhelp='knjizi'
set exact off
select fak
mbrnal=fakg.brnal
mfvrsta=fakg.fvrsta
mflsifra=fakg.flsifra
MSN=FAKG.SN
set relation to
mdev=fakg.dev
mdevkurs=fakg.devkurs
mkurs=0
if mdev<>space(3)
   kdev=mdata00+'\dev.dbf'
   use &kdev in 0 alias dev order 1
   select dev
   mdevdatdok=mdev+dtos(fakg.datdok)
   seek mdevdatdok
   if found()
      mkurs=kurs
   else
      mkurs=1
   endif
   select dev
   use
   select fak
endif
if tobjekat='V'
   MOPIS='FAK-VP-'+ABRKAL
ELSE
   MOPIS='FAK-MP-'+ABRKAL
ENDIF

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
     mpfkpo=pfkpo
   use


   do idel with (kkockax)
   do idel with (kkockax1)


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

use &kknjizp in 0 exclu alias knjizp
select knjizp
delete all
pack

use &kknjizv in 0 exclu alias knjizv
select knjizv
delete all
pack



use &kknjizs in 0 exclu alias knjizs
select knjizs
delete all
pack


use &kknjiza in 0 exclu alias knjiza
select knjiza
delete all
pack

select fak
mvval=fakprn.fvval
mpdvodvoji=fakprn.pdvodvoji
mvalpdv=fakprn.valpdv

select fak
set relation to 
set relation to rsif into rob additive
select fakg
set order to 3

select fak
set order to 1
imarasp=0

mmagacin=0
select fakg
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
      msema=fakprn.sema
      mgrupa=fakprn.grupa
      mmtr=mtr
      select ksema
      seek msema

      if found()
         mkfak=k_fak 
         mkprih=k_prih
         mkprih2=k_prih2
         mkprih3=k_prih3
         mkrabat=k_rabat
         mkrabat2=k_rabat2
         mkrabat3=k_rabat3
         mkrash=k_rash
         mkrash2=k_rash2
         mkrash3=k_rash3
         mkmag=k_mag
         mkmag2=k_mag2
         mkmag3=k_mag3
         mkobpor=k_obpor
         mkobpor8=k_obpor8
         mkrmar=k_rmar
         mkrmar2=k_rmar2
         mkrmar3=k_rmar3
         mkusluge=k_usluge
         mkrpor=k_rpor
         mkrpor8=k_rpor8
         mkrpor2=k_rpor2
         mkrpor82=k_rpor82
         mkrpor3=k_rpor3
         mkrpor83=k_rpor83
         mksznak=k_sznak
         mkravnaj=k_ravnaj
         mk9trdug=k9_trdug
         mk9trpot=k9_trpot
         mk9gtdug=k9_gtdug
         mk9gtpot=k9_gtpot
         mkkomis=k_komis
         mkaobpor=k_aobpor
         mkaobpor8=k_aobpor8
         mkDaobpor=k_Daobpor
         mkDaobpor8=k_Daobpor8
      else
         mkfak   =space(10) 
         mkfak2  =space(10) 
         mkfak3  =space(10) 
         mkprih  =space(10) 
         mkprih2 =space(10) 
         mkprih3 =space(10) 
         mkrabat =space(10) 
         mkrabat2=space(10) 
         mkrabat3=space(10) 
         mkrash  =space(10) 
         mkrash2 =space(10) 
         mkrash3 =space(10) 
         mkmag   =space(10) 
         mkmag2  =space(10) 
         mkmag3  =space(10) 
         mkrmar  =space(10) 
         mkrmar2 =space(10) 
         mkrmar3 =space(10) 
         mkusluge=space(10) 
         mkobpor =space(10) 
         mkobpor8=space(10) 
         mkrpor  =space(10)
         mkrpor8 =space(10)
         mkrpor2  =space(10)
         mkrpor82 =space(10)
         mkrpor3  =space(10)
         mkrpor83 =space(10)
         mksznak=space(1)
         mkravnaj=space(10)
         mk9trdug=space(10)
         mk9trpot=space(10)
         mk9gtdug=space(10)
         mk9gtpot=space(10)
         mkkomis=space(10)
         mkaobpor=space(10)
         mkaobpor8=space(10)
         mkDaobpor=space(10)
         mkDaobpor8=space(10)
      endif

      musluge=0
      mvelvred=0
      mvelvred2=0
      mvelvred3=0
      mobpor18=0
      mobpor8=0
      mobpor18u=0
      mobpor8u=0
        
      select fakg
      mvpdv=vpdv  
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
      mpv13=pv13                        
      mpv14=pv14                        
      mpv15=pv15                        
      mpv16=pv16                        
      mpv17=pv17                        
      mpv18=pv18                        
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
      mprdin13=prdin13
      mprdin14=prdin14
      mprdin15=prdin15
      mprdin16=prdin16
      mprdin17=prdin17
      mprdin18=prdin18
      MAVANS=AVANS
      MAVANS18=AVANS18
      MAVANS8=AVANS8
      MAVANSP18=AVANSP18
      MAVANSP8=AVANSP8                  
      select fak
      seek mbrkal
      if found()
         do while.not.eof()
            if brkal<>mbrkal
               exit
            endif 
            mvrsta=rob.vrsta  
            mpdvne=rob.pdvne
            musluge=0
            mvelvred=0
            mvelvred2=0
            mvelvred3=0
            mrabat=0
            mrabat2=0
            mrabat3=0
            mrabat4=0
            mobpor18=0
            mobpor8=0
            mobpor18u=0
            mobpor8u=0
            mmarza=0
            mmarza2=0
            mmarza3=0            
            mporez=0
            mporez2=0
            mporez3=0
            mporez4=0
            mizni=0
            mporezo=porezo
            if tobjekat='V'
               if mvrsta<>'U'
                  do case
                  case mvrsta='S'
                     mvelvred2=velvred+zaokruz
                  case mvrsta='K'
                     mvelvred3=velvred+zaokruz
                  otherwise
                     mvelvred=velvred+zaokruz
                  endcase
               else
                  musluge=velvred+zaokruz
               endif
            else
               if mvrsta<>'U'
                  do case
                  case mvrsta='S'
                     mvelvred2=malvred+zaokruz
                  case mvrsta='K'
                     mvelvred3=malvred+zaokruz
                  otherwise
                     mvelvred=malvred+zaokruz
                  endcase
               else
                  musluge=malvred+zaokruz  
               endif   
            endif
            mizni=izni
            do case 
            case mvrsta='S'
               mrabat2=rabat+rabat2
               mporez2=porez
            case mvrsta='K'
               mrabat3=rabat+rabat2
               mporez3=porez
            case mvrsta='U'
               mrabat4=rabat+rabat2
               mporez4=porez
            otherwise 
               mrabat=rabat+rabat2
               mporez=porez
            endcase         
      *      set step on 

            mporezo18=0
            mporezo8=0
            mporezo18k=0
            mporezo8k=0
            mobpor18=0
            mobpor8=0
            mobpor18u=0
            mobpor8u=0
            
            if procpor=VAL(TOSTOPA).OR.PROCPOR=VAL(TSOSTOPA)
               if mvrsta<>'U'
                  mobpor18=porez
                  if mvrsta<>'K'
                     mporezo18=porezo
                  else
                     mporezo18k=porez
                  endif   
               else
                  mobpor18u=porez
               endif                
            endif
            
            if procpor=VAL(TNSTOPA).OR.PROCPOR=VAL(TSNSTOPA)
               if mvrsta<>'U'
                  mobpor8=porez
                  if mvrsta<>'K'
                     mporezo8=porezo
                  else
                     mporezo8k=porez   
                  endif
               else
                  mobpor8u=porez
               endif   
            endif
            
            do case 
            case mvrsta='S'
               mmarza2=marza
            case mvrsta='K'
               mmarza3=marza
            otherwise 
               mmarza=marza
            endcase         
            mdatdok=datdok
            mtarifa=tarifa             
            select tarifa
            seek mtarifa 
            if found() 
               mkon1p=kon1p
               mprocpor=procpor
            else
               mkon1p='00000000'
               mprocpor=0
            endif      
            if mpfgk='D'
               select knjizs
               *----------knjizenje klase 9 trebovanje---------------------------
               if mvelvred<>0
                  if mk9trdug<>space(10)
                     do knjfak0 with mvelvred,mk9trdug,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                  endif 
                  if mk9trpot<>space(10)
                     do knjfak0 with mvelvred,mk9trpot,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                  endif   
               endif
               *----------knjizenje klase 9 gotovi proizvodi-------------------------
               if mizni<>0
                  if mk9gtdug<>space(10)
                     do knjfak0 with mizni,mk9gtdug,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                  endif   
                  if mk9gtpot<>space(10)
                     do knjfak0 with mizni,mk9gtpot,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                  endif   
               endif   
               *-------kraj knjizenja klase 9------------------------          
               *-------prodajna vrednost 202----------
            if mvelvred+mvelvred2+mvelvred3<>0.or.musluge<>0
               if mkfak<>space(10)
                  if mvelvred+mvelvred2+mvelvred3+mporez+mporez2+mporez3+mporez4-mrabat-mrabat2-mrabat3-mrabat4+musluge<>0
                     if tobjekat='V'
                        mfdug=mvelvred+mvelvred2+mvelvred3+mporez+mporez2+mporez3+mporez4-mrabat-mrabat2-mrabat3-mrabat4+musluge
                     else
                        mfdug=mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+musluge
                     endif
                     if tobjekat='V'
                        do knjfak0 with mfdug,mkfak,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     else
                        if mvrsta<>'K'
                           do knjfak0 with mfdug,mkfak,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                        else
                           do knjfak0 with mfdug,mkfak,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                        endif
                     endif
                  endif
               endif   
            endif
            
            *------602---------------------------
            if mvrsta<>'U'   
               if tobjekat='V'
                  mfpot=mvelvred+mporez
               else
                  mfpot=mvelvred
               endif

               do knjfak0 with mfpot,mkprih,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs


               if tobjekat='V'
                  mfpot2=mvelvred2+mporez2
               else
                  mfpot2=mvelvred2
               endif

               do knjfak0 with mfpot2,mkprih2,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs

     
               if tobjekat='V'
                  if mvrsta<>'K'
                     mfpot3=mvelvred3+mporez3+mporez4
                  else
                     mfpot3=mvelvred3
                  endif
               else
                  mfpot3=mvelvred3
               endif
               if tobjekat='M' 
                  do knjfak0 with mfpot3,mkprih3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               endif
               

            endif
            *--------------611 usluge------------
            if mvrsta='U'
               if tobjekat='V'
                  mfpot=musluge+mporez4
               else
                  mfpot=musluge
               endif
               do knjfak0 with mfpot,mkusluge,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
            endif
            *------602---------------------------
*            SET STEP ON 
            do knjfak0 with mrabat,mkrabat,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
            do knjfak0 with mrabat2,mkrabat2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
            do knjfak0 with mrabat3,mkrabat3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
            do knjfak0 with mrabat4,mkrabat,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs            
            if mprenos=' '
            *SET STEP ON 
               if mvrsta<>'U'
                  *------501---------------------------
                  IF tobjekat='V'
                     do knjfak0 with mvelvred,mkrash,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     do knjfak0 with mvelvred2,mkrash2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     if mvrsta='K'
                        do knjfak0 with mvelvred3,mkrash3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     ENDIF
                  ELSE
                  *----POREZ AKO JE MALOPRODAJA-----------
                     do knjfak0 with mvelvred,mkrash,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     do knjfak0 with mvelvred2-MPOREZ2,mkrash2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     if mvrsta='K'
                        do knjfak0 with mvelvred3,mkrash3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     ENDIF
                  ENDIF
                  
                  *------1349------marza i realizacija---------------------
*                  SET STEP ON 
					if mvrsta='N'
                     if mkrmar<>space(10)
                        do knjfak0 with mmarza,mkrmar,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                        do knjfak0 with -mmarza,mkrash,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     endif'
                     ENDIF
					if mvrsta='S'                     
                     if mkrmar2<>space(10)
                        do knjfak0 with mmarza2,mkrmar2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                        do knjfak0 with -mmarza2,mkrash2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     endif    
                     ENDIF
					if mvrsta='K'                     
                     if mkrmar3<>space(10)
                        if tobjekat='V' 
                          * do knjfak0 with mmarza3,mkrmar3,mbrnal,mdatdok,mopis,'d',mmtr,mdev,mdevkurs
                           do knjfak0 with mmarza3,mkusluge,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                        else
                           do knjfak0 with mmarza3,mkrmar3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                        endif
                     endif   
                     ENDIF
               endif
            *------740---------------------------
            else
               if mvrsta<>'U'
                  if tfprodc='D'
                     mkdug=mvelvred-mrabat-mrabat2-mrabat3-mrabat4
                     do knjfak0 with mkdug,mkrash,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     mkdug=mvelvred2
                     do knjfak0 with mkdug,mkrash2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     mkdug=mvelvred3
                     do knjfak0 with mkdug,mkrash3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                  else
                     mkdug=mvelvred-mrabat-mrabat2-mrabat3-mrabat4-mmarza
                     do knjfak0 with mkdug,mkrash,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     mkdug=mvelvred2-mmarza2
                     do knjfak0 with mkdug,mkrash2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     mkdug=mvelvred3-mmarza3
                     do knjfak0 with mkdug,mkrash3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                  endif
               endif
            endif            
            *------132---------------------------
            if mvrsta<>'U'   
               do knjfak0 with mvelvred,mkmag,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               IF TOBJEKAT='V'
                  do knjfak0 with mvelvred2,mkmag2,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               ELSE
                  do knjfak0 with mvelvred2-MPOREZ2,mkmag2,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               ENDIF               
               
               if mvrsta='K'
                *  if tobjekat='v'
                *     do knjfak0 with mizni,mkmag3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                *  else
                     do knjfak0 with mvelvred3,mkmag3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                *  endif      
               endif
            endif
            *-----------470--------------------
            mkpot=mobpor18+mobpor18u
            *if tobjekat='V'
               do knjfak0 with mkpot,mkobpor,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
            *endif   
            *-----------471--------------------
            mkpot8=mobpor8+mobpor8u
            *if tobjekat='V'
               do knjfak0 with mkpot8,mkobpor8,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
            *endif
             *-----AKO IMA AVANS--------DODATO 24.06.2012-------
             IF mavans<>0
               do knjfak0 with -mavansp18,mkaobpor,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               do knjfak0 with -mavansp8,mkaobpor8,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               do knjfak0 with -mavansp18,mkDaobpor,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
               do knjfak0 with -mavansp8,mkDaobpor8,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
            endif 
             
             

            *----------promena zakona od 01.01.2010
            *if tobjekat='V'
               if tkukalkp='D'
                  if mvrsta<>'K'
                     do knjfak0 with mporezo18,mkmag,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                     do knjfak0 with mporezo8,mkmag,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                     do knjfak0 with mporezo18,mkrpor,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     do knjfak0 with mporezo8,mkrpor8,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                  else
                     do knjfak0 with mporezo18k,mkmag3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                     do knjfak0 with mporezo8k,mkmag3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                  endif
                  
               endif
            *endif   
            if tobjekat='M'                
               *-------ukalkulisani porez--602 dugovno--------
               if mporez<>0
                  if mkrpor<>space(10)
                     mporkonto=substr(mkrpor,1,4)+substr(mkon1p,5,4)+'00'
                     mkdug=round(mporez,2)
                     do knjfak0 with mkdug,mporkonto,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     if mvelvred<>0
                        do knjfak0 with -mkdug,mkrash,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     endif
                     if mvelvred2<>0
                        do knjfak0 with -mkdug+MPOREZ2,mkrash2,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     endif
                     if mvelvred3<>0
                        do knjfak0 with -mkdug,mkrash3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
                     endif
                  endif                   
               endif
               if mporezo18k<>0
                  do knjfak0 with mporezo18k,mkrpor3,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
               endif
               if mporezo8k<>0
                  do knjfak0 with mporezo8k,mkrpor83,mbrnal,mdatdok,mopis,'D',mmtr,mdev,mdevkurs
               endif   
            endif
            *------602---------------------------
            if mvrsta<>'U'
               if mvelvred<>0
                  mkpot=-(mobpor18+mobpor8)
                  do knjfak0 with mkpot,mkprih,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               endif
               if mvelvred2<>0
                  mkpot=-(mobpor18+mobpor8)
                  do knjfak0 with mkpot,mkprih2,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               endif
            endif  
            *------621---------------------------
            if mvrsta='U'   
               if mkusluge<>space(10)               
                  mkpot=-(mobpor18u+mobpor8u)
                  do knjfak0 with mkpot,mkusluge,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
               endif  
            endif
            *-------prodajna vrednost
            if tobjekat='V'
               mfakvred=mvelvred-mrabat+mporez+musluge
            else
               mfakvred=mvelvred-mrabat+musluge
            ENDIF
            if tfprodc<>'D'
               if mprenos<>' '
                  *----740--1329------marza---------------------
                  if mvrsta<>'U'
                     do knjfak0 with -(mmarza),mkrmar,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                     do knjfak0 with -(mmarza2),mkrmar2,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                     if mkrmar3<>space(10)
                        do knjfak0 with -(mmarza3),mkrmar3,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                     endif
                  endif
               endif
            endif   
            endif
            *------442---------------------------
            if tobjekat='V'            
               if mvrsta='K'
                  *do knjfak0 with mizni,mkkomis,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs
                  *-----izmena 11.06.2010------------
                  do knjfak0 with mvelvred3,mkkomis,mbrnal,mdatdok,mopis,'P',mmtr,mdev,mdevkurs

               endif
            endif 
            *---------kraj knjizenja sintetike----------------
            *------knjizenje analitike------------------------
            if mpfan='D'
             *  SET STEP ON 
               if minterna=' '.and.mprenos=' '
               if mkfak<>space(10)   
                  * ako nije visevalutna
                  select fak
                  mvaldan=valdan
                  select knjiza 
                  if mpdvodvoji=' '.or.tobjekat='M'
                     if mvval=0
                        if mprdin1=0
                           if mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+mporez+mporez2+mporez3+mporez4+musluge<>0
                              append blank
                              replace brnal with mbrnal
                              replace brkal with mbrkal
                              replace sifra with msifra
                              replace grupa with mgrupa
                              if tobjekat='V'
                                 replace dug with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+mporez+mporez2+mporez3+mporez4+musluge
                              else                
                                 replace dug with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+musluge
                              endif
                              replace brrac with mbrrac 
                              replace valuta with mvaluta                           
                              replace datdok with mdatdok
                              replace datpdv with mdatdok
                              replace datpri with mdatdok
                              replace konto with mkfak    
                              replace fvrsta with mfvrsta    
                              REPLACE SN WITH MSN          
                              if mkurs<>0
                                 replace dev with mdev
                                 replace devdug with round(dug/mkurs,4)
                              endif
                           endif   
                        else
                           *-----------ako ima raspodele valuta
                           if imarasp=0
                              for i=1 to 18
                                 mpr='fakg.'+'pr'+alltrim(str(i,2,0))
                                 mpv='fakg.'+'pv'+alltrim(str(i,2,0))
                                 mprdin='fakg.'+'prdin'+alltrim(str(i,2,0))
                                 if &mprdin<>0
                                    append blank
                                    replace dug with &mprdin
                                    replace brnal with mbrnal
                                    replace brkal with mbrkal
                                    replace sifra with msifra
                                    replace valuta with &mpv
                                    replace datdok with mdatdok
                                    replace datpdv with mdatdok
                                    replace datpri with mdatdok
                                    replace konto with mkfak
                                    mmpr=alltrim(str(&mpr,3,0))
                                    mdan=alltrim(str(valuta-datdok,3,0))
                                    replace brrac with alltrim(mbrrac)+'-'+mdan
                                    replace grupa with mgrupa
                                    replace fvrsta with mfvrsta  
                                    REPLACE SN WITH MSN            
                                 endif     
                              next
                              imarasp=1
                           endif
                        endif
                        
                        *--------ako je visevalutna
                     else
                        append blank
                        if tobjekat='V'
                           replace dug with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+mporez+mporez2+mporez3+mporez4+musluge
                        else                
                           replace dug with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+musluge
                        endif
                        replace brnal with mbrnal
                        replace brkal with mbrkal
                        replace sifra with msifra
                        replace valuta with mdatdok+val(mvaldan)
                        replace datdok with mdatdok
                        replace datpdv with mdatdok
                        replace datpri with mdatdok
                        replace konto with mkfak
                        replace brrac with alltrim(mbrrac)+'-'+alltrim(str(val(mvaldan),3,0))
                        replace grupa with mgrupa
                        replace fvrsta with mfvrsta     
                        REPLACE SN WITH MSN         
                     endif
                  else
                     *--------ako se odvaja pdv------------------------------------------------
                     if tobjekat='V'
                        mdug=mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+musluge
                        mdugpdv=mporez
                        append blank
                        replace brnal with mbrnal
                        replace brkal with mbrkal
                        replace sifra with msifra
                        replace valuta with mvaluta
                        replace datdok with mdatdok
                        replace datpdv with mdatdok
                        replace datpri with mdatdok
                        replace konto with mkfak
                        replace brrac with alltrim(mbrrac)
                        replace grupa with mgrupa
                        replace fvrsta with mfvrsta              
                        replace dug with mdug
                        REPLACE SN WITH MSN
                        if mkurs<>0
                           replace dev with mdev
                           replace devdug with round(mdug/mkurs,4)
                        endif
                        append blank
                        replace brnal with mbrnal
                        replace brkal with mbrkal
                        replace sifra with msifra
                        replace valuta with mdatdok+mvalpdv
                        replace datdok with mdatdok
                        replace datpdv with mdatdok
                        replace datpri with mdatdok
                        replace konto with mkfak
                        replace brrac with alltrim(mbrrac)+'-p-'+alltrim(str(mvalpdv,3,0))
                        replace grupa with 'pdv'
                        replace fvrsta with mfvrsta              
                        replace dug with mdugpdv
                        REPLACE SN WITH MSN
                        if mkurs<>0
                           replace dev with mdev
                           replace devdug with round(mdugpdv/mkurs,4)
                        endif
                     endif   
                  endif
               endif   
            endif
            endif
            
            if mpftm='D'

            *------knjizenje tm ili kepu------------------------
               select knjizt
               append blank
               replace brnal with mbrnal
               replace brkal with mbrkal
               replace opis with mbrkal+' '+mbrrac 
               replace datdok with mdatdok
               replace datpdv with mdatdok
               replace datpri with mdatdok
               replace brnal with mbrnal
               replace brkal with mbrkal
               replace konto with mkprih
               if tobjekat='V'   
                  *-----ako je do 01.01.2010
                   if tkeukalkp<>'D'
                  
                     muknab=0
                     if mvrsta<>'U'
                        muknab=(mporez+mporez2+mporez3-mrabat)
                        IF tkepuvp<>'D'
                           replace vredprod with mvelvred+mvelvred2+mvelvred3+mporez+mporez2+mporez3-mrabat-mrabat2-mrabat3
                        ELSE
                           replace vredprod with mvelvred+mvelvred2+mvelvred3
                           MUKNAB=0
                        ENDIF
                     ELSE
                        IF TKEPUVP<>'D'
                           replace vredprod with musluge+mporez+mporez4-mrabat-mrabat2-mrabat3-mrabat4
                        ELSE
                           replace vredprod with musluge
                           MUKNAB=0
                        ENDIF
                        replace vrsta with 'U'
                     endif   
                     replace uknab with muknab 
                   else
                     *-----novi nacin-------------
                     if mvrsta<>'U'
                        replace uknab with (mporez+mporez2+mporez3-mrabat-mporezo)
                        replace vredprod with mvelvred+mvelvred2+mvelvred3+mporez+mporez2+mporez3-mrabat-mrabat2-mrabat3
                        
                     else
                        replace uknab with (mporez+mporez2+mporez3+mporez4-mrabat-mrabat2-mrabat3-mrabat4-mporezo)
                        replace vredprod with musluge+mporez-mrabat-mrabat2-mrabat3-mrabat4
                        replace vrsta with 'U'
                      endif     
                   endif   
                   *------------kraj novi nacin-----------------------   
               else
                  if mvrsta<>'U'
                     replace vredprod with mvelvred+mvelvred2+mvelvred3
                  else
                     replace usluge with musluge
                  endif
               endif                
            endif
            
            if mpfkp='D'
               *------knjizenje knjige prihoda -----------------------
               *if mprenos=' '
                  select knjizr
                  append blank
                  replace brnal with mbrnal
                  replace dok with mdok
                  replace brkal with mbrkal
                  IF TOBJEKAT='V'
                     IF TTMPPOREZ<>'D'
                        replace proo with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3
                     ELSE   
                        replace proo with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3+mporez+mporez2+mporez3
                     ENDIF   
                  ELSE
                     replace proo with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3+mporez+mporez2+mporez3
                  ENDIF
                  IF TTMPPOREZ<>'D'                  
                     replace uslp with musluge-mrabat4
                  ELSE
                     replace uslp with musluge-mrabat4+mporez4
                  ENDIF   
                  replace ukprih with proo+uslp
               *else
               *   select knjizr
               *   append blank
               *   replace brnal with mbrnal
               *   replace dok with mdok
               *   replace brkal with mbrkal
               *   replace nabvred with -mvelvred-mvelvred3
               *   replace sopvred with -mvelvred2
               *   replace proo with 0
               *   replace uslp with 0
               *   replace malvred with -mvelvred-mvelvred2-mvelvred3
               *endif
               replace opis with mbrkal+' '+mbrrac 
               replace datdok with mdatdok
               replace datpdv with mdatdok
               replace datpri with mdatdok
            endif  
            if mpfkpo='D'
               *------knjizenje knjige kpo -----------------------
               select knjizp
               append blank
               replace brnal with mbrnal
               replace dok with mdok
               replace malpro with mvelvred+mvelvred2+mvelvred3
               replace malusl with musluge
               replace svega with malpro+malusl
               replace opis with mbrkal+' '+mbrrac 
               replace datdok with mdatdok
               replace dok with mdok               
            endif

            if mpfpdv='D'

            *------knjizenje knjige pdvi -----------------------
            if mprenos=' '.and.minterna=' '.and.mvpdv<>space(3)
         
               select knjizv
               append blank
               replace vpdv with mvpdv
               replace brnal with mbrnal
               replace datdok with mdatdok
               replace datpdv with mdatdok
               IF mvval=0
                  replace brrac with mbrrac
               else   
                  replace brrac with alltrim(mbrrac)+'-'+alltrim(str(val(mvaldan),3,0))
               endif
               replace valuta with mvaluta
               REPLACE SN WITH MSN
               if mpdvne<>'*'
                  replace uknab with mvelvred+mvelvred2+mvelvred3+mporez+mporez2+mporez3+mporez4-mrabat-mrabat2-mrabat3-mrabat4+musluge
               else
                  replace uknab with mvelvred+mvelvred2+mvelvred3+mporez+mporez2+mporez3+mporez4-mrabat-mrabat2-mrabat3-mrabat4+musluge
                  replace vpdv with 'ne0'
               endif
               replace datpri with mdatdok
               replace sifra with msifra
               replace konto with mkprih
               if mprocpor=VAL(TOSTOPA).OR.MPROCPOR=VAL(TSOSTOPA)
                  if mporez<>0.or.mporez2<>0.or.mporez3<>0.or.mporez4<>0
                     replace osn18 with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+musluge
                     replace pdv18 with mporez+mporez2+mporez3+mporez4
                  else
                     replace osn18 with 0
                     replace pdv18 with 0
                  endif
               endif
               if mprocpor=VAL(TNSTOPA).OR.MPROCPOR=VAL(TSNSTOPA)
                  if mporez<>0.or.mporez2<>0.or.mporez3<>0.or.mporez4<>0
                     replace osn8 with mvelvred+mvelvred2+mvelvred3-mrabat-mrabat2-mrabat3-mrabat4+musluge
                     replace pdv8 with mporez+mporez2+mporez3+mporez4
                  else
                     replace osn8 with 0
                     replace pdv8 with 0
                  endif
               ENDIF
               IF MAVANS<>0
                  *---AKO IMA AVANS DODATO 24.06.2012.----
                  select knjizv
                  append blank
                  replace vpdv with 'IA0'
                  replace brnal with mbrnal
                  replace datdok with mdatdok
                  replace datpdv with mdatdok
                  replace brrac with mbrrac
                  replace valuta with mvaluta
                  replace uknab with -MAVANS
                  replace datpri with mdatdok
                  replace sifra with msifra
                  replace konto with mkprih
                  if mAVANS18<>0
                     replace osn18 with -mAVANS18
                     replace pdv18 with -MAVANSP18
                  ELSE
                     REPLACE OSN18 WITH 0
                     REPLACE PDV18 WITH 0
                  ENDIF   
                  if mAVANS8<>0
                     replace osn8 with -mAVANS8
                     replace pdv8 with -MAVANSP8
                  ELSE
                     REPLACE OSN8 WITH 0
                     REPLACE PDV8 WITH 0
                  ENDIF   
               ENDIF
            endif
            
            endif              
            select fak
            *--------KRAJ KNJIZENJA AVANSA - DODATTO 24.06.2012.
            MAVANS=0
            MAVANS18=0
            MAVANS8=0
            MAVANSP18=0
            MAVANSP8=0
            skip
         enddo   
      endif
      select fakg
      skip
   enddo      
endif

*------------kraj svih priprema i knjizenje
*---------knjizenje sintetike------------
   if mpfgk='D'
      select knjizs
      set order to 1
      total on konto to &kkocka for dug<>0.or.pot<>0 fields dug,pot,devdug,devpot
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
            replace devdug with 0
            replace devkurs with 0
            replace devpot with 0
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
            replace devdug with 0
            replace devkurs with 0
            replace devpot with 0
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
      mmtr=mtr
      mzsaldo=0
      do while.not.eof()
         mkonto=konto
         mdug=dug
         mpot=pot
         mopis=opis
         mdatdok=datdok
         mmtr=mtr
         mdevdug=devdug
         mdevpot=devpot
         mdev=dev
         mdevkurs=devkurs
         if substr(konto,1,4)<>'nema'
            select nalap
            append blank
            replace konto with mkonto
            if mksznak<>'D' 
               replace dug with mdug
               replace pot with mpot
               replace devdug with mdevdug
               replace devpot with mdevpot
            else
               replace dug with -mdug
               replace pot with -mpot
               replace devdug with -mdevdug
               replace devpot with -mdevpot
            endif
            replace opis with mopis
            replace datdok with mdatdok
            replace datpdv with mdatdok
            replace datpri with mdatdok
            replace dok with mdok
            replace brnal with mbrnal   
            replace mtr with mmtr
            replace dev with mdev
            replace devkurs with mdevkurs
            replace datum with date()
            replace automnal with '*'
            mzsaldo=mzsaldo+dug-pot
            select knjizs
         endif
         skip
      enddo   
      select nalap
      
      if mzsaldo<>0
         append blank
         replace opis with mopis
         replace datdok with mdatdok
         replace datpdv with mdatdok
         replace datpri with mdatdok
         replace dok with mdok
         replace brnal with mbrnal   
         replace mtr with mmtr
         replace pot with mzsaldo
         replace konto with mkravnaj
         replace datum with date()
         replace automnal with '*'
      endif
      use
   endif
   *-----------knjizenje trgovacke knjige ili kepu-------------
   if mpftm='D'
      select knjizt
      set order to 1
      total on  brkal to &kkocka fields uknab,vredprod,usluge
      delete all
      pack
      append from &kkocka
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
         mopis='FAK-'+brkal+'-'+dtoc(datdok)
         mvredprod=vredprod
         muknab=uknab
         musluge=usluge
         mvrsta=vrsta
         *mdok=dok
         mbrkal=brkal
         mkonto=konto
         select tm
         set order to 4
         seek mbrkal
         if .not.found()
            append blank
         endif 
         replace datdok with mdatdok
         replace datpdv with mdatdok
         replace datpri with mdatdok
         replace opis with mopis
         replace vredprod with mvredprod
         replace uknab with muknab
         if tobjekat='V'
            if tkeukalkp='D'
               replace uknab with muknab
            else
               replace uknab with muknab
            endif
         endif   
         
         replace usluge with musluge
         replace vrsta with mvrsta
         replace brnal with mbrnal   
         replace brfak with mbrkal
         replace konto with mkonto
         replace automnal with '*'
         select knjizt
         skip
      enddo   
      select tm
      use
   endif
   *--------kraj knjizenja kepu
   *-----------knjizenje knjige prihoda---------
   if mpfkp='D'
      select knjizr
      set order to 1
      total on  brkal to &kkocka
      delete all
      pack
      append from &kkocka
      *replace all dok with tobjekat+ttvredni
      go top
      *if tobjekat='m'
*         mtm='tmp'+ttvredni
         mtm='tmp0'
         use &mtm in 0 order 3 alias tmp
         select knjizr
         go top
         kk=0
         do while.not.eof()
            mdatdok=datdok
            mopis='FAK-'+brkal+'-'+dtoc(datdok)
            mproo=proo
            muslp=uslp
            mbrkal=brkal
            mbrnal=brnal
            mdok=dok
            mnabvred=nabvred
            msopvred=sopvred
            mmalvred=malvred
            select tmp
            set order to 3
            *   locate for brkal=mbrkal
            seek mbrnal
            if .not.found()
               append blank
            endif 
            replace datdok with mdatdok
            replace datpdv with mdatdok
            replace datpri with mdatdok
            replace opis with mopis
            replace proo with mproo
            replace uslp with muslp
            replace ukprih with proo
            replace nabvred with mnabvred
            replace sopvred with msopvred
            replace malvred with mmalvred
            replace brnal with mbrnal   
            replace brfak with mbrkal
            replace dok with mdok
            replace datum with date()
            replace automnal with '*'
            select knjizr
            skip
         enddo   
         select tmp
         use
      *endif   
   endif   
   *--------kraj knjizenja knjige prihoda---------
   
   *-----------knjizenje knjige pausal---------
   if mpfkpo='D'
      select knjizp
      set order to 1
      total on  brnal to &kkocka
      delete all
      pack
      append from &kkocka
      go top
         mtm='kpo'
         use kpo in 0 order 2 alias kpo
         select knjizp
         go top
         kk=0
         do while.not.eof()
            mdatdok=datdok
            mopis='FAK-'+brnal+'-'+dtoc(datdok)
            mmalpro=malpro
            mmalusl=malusl
            mbrnal=brnal
            select kpo
            set order to 2
*            locate for brnal=mbrnal
            seek mbrnal
            if .not.found()
               append blank
            endif 
            replace datdok with mdatdok
            replace opis with mopis
            replace malpro with mmalpro
            replace malusl with mmalusl
            replace svega with malpro+malusl
            replace brnal with mbrnal   
            replace dok with mdok
            replace automnal with '*'
            select knjizp
            skip
         enddo   
         select kpo
         use
   endif   
   *--------kraj knjizenja knjige kpo---------
   
   
   *-----------knjizenje knjige pdvi-------------
   if mpfpdv='D'
      select knjizv
      set order to 1
      total on  brnal+vpdv+brrac to &kkocka
      delete all
      pack
      append from &kkocka
      go top
      if tobjekat='V'.or.tkupdv='D'
         use pdvi in 0 order 5
         select pdvi
         *---------prvi prolaz brise kalkulacije
  *       locate for brnal=mbrnal
         seek mbrnal
         do while.not.eof()
            if brnal<>mbrnal
               exit
            endif   
            replace vpdv with ''
            replace ukprod with 0
            replace osn18 with 0
            replace osn8 with 0
            replace pdv18 with 0
            replace pdv8 with 0
            replace ukupno with 0
            replace pdv with 0
            skip
         enddo      
         *-----drugi prolaz knjizi--------------
         select knjizv
         go top
*         brow
         do while.not.eof()
            mvpdv=vpdv
            mdatdok=datdok
            mbrrac=brrac
            mvaluta=valuta
            mbrnal=brnal
            muknab=uknab
            mosn18=osn18
            mosn8=osn8
            mpdv18=pdv18
            mpdv8=pdv8
            msifra=sifra
            mkonto=konto
            MSN=SN
            select pdvi
            append blank
            replace vpdv with mvpdv
            replace sifra with msifra
            replace datdok with mdatdok
            replace datpdv with mdatdok
            replace datpri with mdatdok
            replace brrac with mbrrac
            replace valuta with mvaluta
            replace dok with mdok
            replace brnal with mbrnal
            replace pdv18 with mpdv18
            replace pdv8 with mpdv8
            IF TOBJEKAT='V'
               replace ukprod with muknab
               replace osn18 with mosn18
               replace osn8 with mosn8
            ELSE
               replace ukprod with muknab
               replace osn18 with mosn18
               replace osn8 with mosn8
            ENDIF
            replace ukupno with osn18+osn8
            replace pdv with pdv18+pdv8
            replace konto with mkonto
            replace datum with date()
            replace automnal with '*'
            REPLACE SN WITH MSN
*            IF DTOS(DATDOK)<=DTOS(CTOD('30.09.2012'))
               REPLACE PROC18 WITH VAL(tostopa)
               REPLACE PROC8 WITH VAL(tnstopa)
            select knjizv
            skip
         enddo  
         select pdvi
         use
      endif
   endif
   *-----------knjizenje analitike-------------

   if mpfan='D'
      select knjiza
      IF mflsifra<>SPACE(5)

         man06='an0'+ALLTRIM(tsiffizli)+'.dbf'
         manal6='anal'+ALLTRIM(tsiffizli)+'.dbf'         
         USE &man06 IN 0 ALIAS aan06
         USE &manal6 IN 0 ALIAS aanal6         
         SELECT aan06
         LOCATE FOR pib2=mflsifra
         IF FOUND()
            m6sifra=sifra
         endif   
         SELECT knjiza
         replace ALL sifra WITH m6sifra
         SELECT aan06
         USE
         SELECT aanal6
         USE
      endif   
      SELECT KNJIZA
      set order to 1
      total on konto+sifra+brrac to &kkocka1 
      delete all
      pack 
      append from &kkocka1
      replace all dok with tobjekat+ttvredni
      set relation to sifra into an0 additive
      go top
      use aaan in 0 alias aaan order 1
      select knjiza
      go top
      kk=0
      do while.not.eof()
         mkonto=konto
         msifra=sifra
         mdatdok=datdok
         mvaluta=valuta
         mbrrac=brrac
         mdug=dug
         mpot=pot
         mdevdug=devdug
         mopis=brkal
         mgrupa=grupa
         mfvrsta=fvrsta
         MSN=SN
         select aaan
         seek mkonto
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
                        replace devdug with 0
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
            replace datpdv with mdatdok
            replace datpri with mdatdok
            replace valuta with mvaluta
            replace brrac with mbrrac
            replace fvrsta with mfvrsta
            if mksznak<>'D'
               replace dug with mdug
               replace pot with mpot
            else
               replace dug with -mdug
               replace pot with -mpot
            endif
            replace brnal with mbrnal
            replace dok with mdok
            replace dev with mdev
            replace devkurs with mkurs
            replace devdug with mdevdug
            replace grupa with mgrupa
            replace datum with date()
            replace automnal with '*'
            REPLACE SN WITH MSN
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
   select ksema
   use

   *--------arhiviranje racuna---------------------------------
   select fakg
   set order to 1
   seek abrkal
   if found()
      replace arhiva with '*'
   endif
   select knjiza
   use
   select knjizs
   use
   select knjizt
   use
   select knjizr
   use
   select knjizp
   use
   select knjizv
   use
   select rob
   set order to 1
   select an0
   set order to 1
   select fakpodn
   set order to 1
   select fakprn 
   set relation to
   set order to 1
   set relation to fpsifra into fakpodn additive
   select fakg
   set relation to
   set order to 1
   set relation to sifra into an0 additive
   set relation to fvrsta into fakprn additive
   select fak
   set relation to
   set relation to brkal into fakg  additive
   set relation to rsif into rob additive
   pop key
