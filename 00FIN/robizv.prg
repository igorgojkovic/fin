PARAMETERS MDAT0,MDAT1,MFVRSTA,MSIFRA,MINTERNE,MPRENOSNE,mgrupa,mgrupa1,mgrupa2,MGRUPA3,MGRUPA4,MGRUPA5,Mgrupa6,mtarifa,MPODRSIF,MPROIZV,MMAGACIN,MRNAL,MREVERS,MVRSTAR,musluge

set exact off
set optimize on


  do idel with (kkockax)
  do idel with (kkockax1)
  do idel with (kkockax2)
  do idel with (kkockax3)
  do idel with (kkockax4)    
  do idel with (kkockax5)    
  do idel with (kkockax6)    
  do idel with (kkockax7)          
  do idel with (kkockax8)          
  do idel with (kkockax9)            

*----------unosimo pocetno stanje--------------------

select ;
        rsif,kol;
            from &kkal as kal;
            inner join &kkalg as kalg on kal.brkal=kalg.brkal;
            where (kal.datdok<mdat0);
            into table &kkocka5
            use
   use &kkocka5 in 0 alias kocka5 exclu
   select kocka5
   index on rsif tag rsif
   set order to 1
   total on rsif to &kkocka1 fields rsif,kol
               zap
               append from &kkocka1
               use

select  FAK.rsif,koli;
            from &kfak as fak;
            inner join &kfakg as fakg on fak.brkal=fakg.brkal;
            where (fak.datdok<mdat0);
            into table &kkocka6
            use
   use &kkocka6 in 0 alias kocka6 exclu
   select kocka6
   index on rsif tag rsif
   set order to 1
   total on rsif to &kkocka1 fields rsif,koli
           zap
           append from &kkocka1
           use

select ;
        rob.rsif,KAL.kol,fak.koli;
        from &krob as rob;
        LEFT join &kkocka5 as kal on rob.rsif=kal.rsif ;
        LEFT join &kkocka6 as fak on rob.rsif=fak.rsif ;
        into table &kkocka8  ;
              where ;
         (rob.grupa=mgrupa.or.mgrupa=space(3)).and.;
         (rob.grupa1=mgrupa1.or.mgrupa1=space(3)).and.;
         (rob.grupa2=mgrupa2.or.mgrupa2=space(3)).and.;   
         (rob.grupa3=mgrupa3.or.mgrupa3=space(3)).and.;   
         (rob.grupa4=mgrupa4.or.mgrupa4=space(3)).and.;   
         (rob.grupa5=mgrupa5.or.mgrupa5=space(3)).and.;   
         (rob.grupa6=mgrupa6.or.mgrupa6=space(5)).and.;            
         (rob.podrsif=mpodrsif.or.mpodrsif=space(4)).and.;   
         (rob.proizv=mproizv.or.mproizv=space(5)).and.;   
         (rob.magacin=mmagacin.or.mmagacin=0).and.;   
         (rob.vrsta=mvrstar.or.mvrstar=space(1)).AND.;
         (kal.kol<>0.or.fak.koli<>0)
         use

*----------------sada radimo tekuci period-------------------


select ;
        rsif,kol,iznos,velvred,marza,rabat,;
            zavisni,zavisnin,zavisnic,zavisc2,zavisc3,trdob,trdobn,;
            carproc,cardin,nabvred,porez,malvred,akcvred,placpor,placporz,;
            placporu,placporc,placpord,poljdin,KAL.datdok,kalg.sifra,KALG.INTERNA,KALG.PRENOS;
            from &kkal as kal;
            inner join &kkalg as kalg on kal.brkal=kalg.brkal;
            where (kal.datdok>=mdat0.and.kal.datdok<=mdat1).and.;
            (kalg.sifra=msifra.or.msifra=space(5)).AND.;
            (kalg.INTERNA=mINTERNE.or.mINTERNE=space(1)).and.;          
            (kalg.prenos=mprenosNE.or.mprenosne=space(1));
            into table &kkocka2
            use
   use &kkocka2 in 0 alias kocka2 exclu
   select kocka2
   index on rsif tag rsif
   set order to 1
   total on rsif to &kkocka1 fields rsif,kol,iznos,VELVRED,MARZA,RABAT,zavisni,zavisnin,zavisnic,zavisc2,zavisc3,trdob,trdobn,;
               carproc,cardin,nabvred,porez,malvred,akcvred,placpor,placporz,placporu,placporc,placpord,poljdin 
               zap
               append from &kkocka1
               use

select  fak.rsif,fak.koli,fak.izni,fak.velvred,fak.marza,fak.rabat,fak.rabat2,fak.porez,fak.malvred,fakg.sifra;
            from &kfak as fak;
            left join &kfakg as fakg on fak.brkal=fakg.brkal;
            where (fak.datdok>=mdat0.and.fak.datdok<=mdat1).and.;
            (fakg.sifra=msifra.or.msifra=space(5)).and.;
            (fakg.INTERNA=mINTERNe.or.mINTERNe=space(1)).and.;          
            (fakg.prenos=mprenosne.or.mprenosne=space(1)).and.;
            (fakg.fvrsta=mfvrsta.or.mfvrsta=space(3));            
            into table &kkocka3
            use
   use &kkocka3 in 0 alias kocka3 exclu
   select kocka3
   index on rsif tag rsif
   set order to 1
*   BROWSE
   *COPY TO c:\fin0\a1
   total on rsif to &kkocka1 fields rsif,koli,izni,velvred,marza,rabat,rabat2,porez,malvred
           zap
           append from &kkocka1
           use
select rsif,siznos,velvred,malvred,marza,sporez,porez ;
           from &ktvniv as niv;
           where datdok>=mdat0.and.datdok<=mdat1;
           into table &kkocka4
           use
   use &kkocka4 in 0 alias kocka4 exclu
   select kocka4
   index on rsif tag rsif
   set order to 1
   total on rsif to &kkocka1 fields rsif,siznos,velvred,malvred,marza,sporez,porez
           zap
           append from &kkocka1
           use

*----------pocinjemo od sifarnika robe--------------------
  do idel with (kkockax9)
  select ;
            rob.rsif,rob.naz,kal.kol,fak.koli,rob.barkod,rob.zadnab,rob.zadnabm,rob.zadprod,rob.maksimum,rob.minimum,;
            rob.optimum,rob.podrob,rob.podnaziv,rob.proizv,rob.glavna,rob.grupa,rob.grupa1,rob.grupa2,rob.grupa3,;
            rob.grupa4,rob.grupa5,rob.grupa6,rob.bruto,rob.neto,rob.proscenv,rob.proscenm,KAL.IZNOS,kal.nabvred,kal.velvred,kal.marza,kal.rabat,;
            kal.zavisni,kal.zavisnin,kal.zavisnic,kal.zavisc2,kal.zavisc3,kal.trdob,kal.trdobn,;
            kal.carproc,kal.cardin,kal.porez,kal.malvred,kal.akcvred,kal.placpor, kal.placporz,;
            kal.placporu,kal.placporc,kal.placpord,kal.poljdin,fak.izni,fak.velvred,fak.marza,;
            fak.rabat,fak.rabat2,fak.porez,fak.malvred,niv.siznos,niv.velvred,niv.malvred,niv.marza,niv.sporez,niv.porez,;
            rob.sifra,rob.poc,rob.kolst,rob.dug,rob.pot,rob.saldo,rob.ndug,rob.npot,rob.nsaldo,rob.cena,rob.vrednost,rob.konsigvred,rob.ncena,;
            kaL.datdok,rob.sifrad,rob.sifrak,rob.poth,rob.potp,rob.poto,rob.proscenn,kAL.INTERNA,KAL.PRENOS ;
        from &krob as rob;
        LEFT join &kkocka2 as kal on rob.rsif=kal.rsif ;
        LEFT join &kkocka3 as fak on rob.rsif=fak.rsif ;
        LEFT join &kkocka4 as niv on rob.rsif=niv.rsif ;
        into table &kkocka9  ;
              where ;
         (rob.grupa=mgrupa.or.mgrupa=space(3)).and.;
         (rob.grupa1=mgrupa1.or.mgrupa1=space(3)).and.;
         (rob.grupa2=mgrupa2.or.mgrupa2=space(3)).and.;   
         (rob.grupa3=mgrupa3.or.mgrupa3=space(3)).and.;   
         (rob.grupa4=mgrupa4.or.mgrupa4=space(3)).and.;   
         (rob.grupa5=mgrupa5.or.mgrupa5=space(3)).and.;   
         (rob.grupa6=mgrupa6.or.mgrupa6=space(5)).and.;            
         (rob.podrsif=mpodrsif.or.mpodrsif=space(4)).and.;   
         (rob.proizv=mproizv.or.mproizv=space(5)).and.;   
         (rob.magacin=mmagacin.or.mmagacin=0).and.;   
         (rob.vrsta=mvrstar.or.mvrstar=space(1))
     *    (kal.kol<>0.or.fak.koli<>0)
         use
        
close all tables
use &kkurs in 0 order 1 alias kurs
use &kdat in 0 alias datumi
use firma in 0
use an0 in 0 order 1

   if tfpossif='D'.AND.TNEZAJEDNO<>'D'
      KROB='rob'+tobjekat+TTVREDNI
   ENDIF     

use &krob in 0 order 1 alias rob
USE &kkocka8 IN 0 ALIAS kocka8 EXCLU
SELECT kocka8
GO top
DO WHILE.NOT.EOF()
   DO AISNUL WITH 'KOL'
   DO AISNUL WITH 'KOLI'
   SKIP
ENDDO 
GO TOP
INDEX on rsif TAG rsif
SET ORDER TO 1

use &kkocka9 in 0 alias tvkart exclu
select tvkart
index on dtos(datdok) tag datdok
index on rsif tag rsif
index on NAZ tag NAZ
index on podrob tag podrob
index on podnaziv tag podnaziv
set order to 
set relation to sifra into an0 additive
set relation to rsif into rob additive
set relation to rsif into kocka8 additive
*SET STEP ON 
go top
do while.not.eof()
   Replace kolst WITH 0
   replace poc WITH kocka8.kol-kocka8.koli
   DO AISNUL WITH 'KOL'
   DO AISNUL WITH 'KOLI'   
   DO AISNUL WITH 'VELVRED_A'   
   DO AISNUL WITH 'VELVRED_B'   
   DO AISNUL WITH 'VELVRED_C'   
   DO AISNUL WITH 'SIZNOS'   
   DO AISNUL WITH 'MALVRED_A'   
   DO AISNUL WITH 'MALVRED_C'   
   DO AISNUL WITH 'MALVRED_B'   
   DO AISNUL WITH 'SIZNOS'   
   DO AISNUL WITH 'NABVRED'   
   DO AISNUL WITH 'IZNOS'   
   DO AISNUL WITH 'IZNI'   
   DO AISNUL WITH 'MARZA_A'   
   DO AISNUL WITH 'MARZA_B'   
   DO AISNUL WITH 'MARZA_C'   
   DO AISNUL WITH 'SPOREZ'   
   DO AISNUL WITH 'POREZ_A'         
   DO AISNUL WITH 'POREZ_B'         
   DO AISNUL WITH 'POREZ_C'      
   DO AISNUL WITH 'RABAT_A'      
   DO AISNUL WITH 'RABAT_B'
   DO AISNUL WITH 'ZAVISNI'         
   DO AISNUL WITH 'ZAVISNIN'         
   DO AISNUL WITH 'ZAVISNIC'         
   DO AISNUL WITH 'ZAVISC2'         
   DO AISNUL WITH 'ZAVISC3'            
   DO AISNUL WITH 'TRDOB'               
   DO AISNUL WITH 'TRDOBN'
   DO AISNUL WITH 'POLJDIN'
   DO AISNUL WITH 'CARDIN'         
   DO AISNUL WITH 'AKCVRED'
   DO AISNUL WITH 'PLACPOR'
   DO AISNUL WITH 'PLACPORZ'
   DO AISNUL WITH 'PLACPORU'   
   DO AISNUL WITH 'PLACPORC'
   DO AISNUL WITH 'PLACPORD'      
               
            
                              

   replace kolst with kol-koli
   replace sifrak WITH msifra
   replace sifrad WITH msifra
   if tobjekat='V' 
      replace dug with velvred_a+velvred_c-siznos
      replace pot with velvred_b
   else
      replace dug with malvred_a+malvred_c-siznos
      replace pot with malvred_b
   ENDIF
   
   replace ndug with nabvred
   replace npot with izni
   replace saldo with dug-pot
   replace nsaldo with ndug-npot
   
   if tobjekat='V'
      replace cena with rob.velcena
      replace proscenv WITH rob.proscenv
   else
      replace cena with rob.malcena   
      replace proscenm WITH rob.proscenm
   endif
   replace nsaldo with ndug-npot
   replace vrednost with kolst*cena
   replace konsigvred with koli*zadnab 
   IF KOLST<>0
      REPLACE PROSCENN WITH ROUND(NSALDO/KOLST,3)
   ELSE
      REPLACE PROSCENN WITH NSALDO
   ENDIF   
   ROBA0IZV.LBL1.CAPTION=RSIF+' '+NAZ   
   skip
enddo   
SET RELATION TO
go top
SELECT KOCKA8
USE
SELECT TVKART
DELETE ALL FOR POC=0.AND.KOL=0.AND.KOLI=0.AND.DUG=0.AND.POT=0.AND.NDUG=0.AND.NPOT=0
PACK
GO TOP

set relation to sifra into an0 additive
set relation to rsif into rob additive
IF musluge<>'D'
   DELETE ALL FOR ROB.VRSTA='U'
   PACK
ENDIF   
GO TOP
SET RELATION to
set relation to sifra into an0 additive
set relation to rsif into rob additive

*set relation to rsif into kocka8 additive

use &ktvniv in 0 alias niv 

use &kkal in 0 alias kal


use &kfak in 0 alias fak
   
use &kkalg in 0 alias kalg order 1

use &kfakg in 0 order 1 alias fakg


select tvkart

DO FORM ROBIZV WITH MDAT0,MDAT1,MFVRSTA,MSIFRA,MINTERNE,MPRENOSNE,mgrupa,mgrupa1,mgrupa2,MGRUPA3,MGRUPA4,MGRUPA5,mgrupa6,mtarifa,MPODRSIF,MPROIZV,MMAGACIN,MRNAL,MREVERS,MVRSTAR
