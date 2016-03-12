PARAMETERS MDAT0,MDAT1,mgrupa,mmgrupaP

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
*----------------tekuci period-------------------
select ;
        kal.rsif as rsif,kal.kol as kol,kal.kol as koli,kal.kol AS kolst,kal.velcena,kal.velvred,kal.datdok,kalg.sifra as sifrad,kalg.sifra, ;
		rob.grupa as grupa,rob.rsif as rrsif,rob.grupa as grupap;
            from &kkal as kal;
    	    LEFT join &kkalg as kalg on kal.brkal=kalg.brkal ;
        	LEFT join &krob as rob on kal.rsif=rob.rsif ;
            where (kal.datdok>=mdat0.and.kal.datdok<=mdat1).and.;
	         (rob.grupa=mgrupa.or.mgrupa=space(3));
            into table &kkocka2
            use
   use &kkocka2 in 0 alias kocka2 exclu
   select kocka2
   REPLACE ALL KOLI WITH 0
   index on sifra+rsif+grupa tag rsif
   set order to 1
   total on SIFRA+rsif+grupa to &kkocka1 
               zap
               append from &kkocka1
               use

select  fak.rsif as rsif,fak.koli,fak.velvred,fak.velcena,fak.datdok,fakg.sifra,rob.grupa as grupa,rob.rsif as rrsif,rob.grupa as grupap;
            from &kfak as fak;
    	    LEFT join &kfakg as fakg on fak.brkal=fakg.brkal ;
        	LEFT join &krob as rob on fak.rsif=rob.rsif ;
            where (fak.datdok>=mdat0.and.fak.datdok<=mdat1).and.;
           (rob.grupa=mgrupa.or.mgrupa=space(3));            
            into table &kkocka3
            use
   use &kkocka3 in 0 alias kocka3 exclu
   select kocka3
   index on sifra+rsif+grupa tag rsif
   set order to 1
   total on sifra+rsif+grupa to &kkocka1 
           zap
           append from &kkocka1
   *brow
           use

*----------pocinjemo od sifarnika robe--------------------
  do idel with (kkockax9)
  do idel with (kkockax8)
  
  USE &kkocka2 IN 0 ALIAS TVKART EXCLU
  SELECT TVKART
  *BROW
  APPEND FROM &kkocka3
  *BROW
  SET ORDER TO 1
  TOTAL ON sifra+rsif+grupa TO &kkocka9
  ZAP
  APPEND FROM &kkocka9
*  BROW
*    select ;
        rob.rsif,rob.naz,kal.kol,rob.podnaziv,rob.grupa,rob.grupa1,rob.grupa2,rob.grupa3,;
        rob.grupa4,rob.grupa5,rob.grupa6,rob.sifra,rob.kolst,kal.sifrad,fak.sifrak ;
        from &krob as rob;
        INNER join &kkocka2 as kal on rob.rsif=kal.rsif ;
        INNER join &kkocka3 as fak on rob.rsif=fak.rsif ;
        into table &kkocka9  ;
              where ;
         (rob.grupa=mgrupa.or.mgrupa=space(3)).and.;
         (rob.grupa1=mgrupa1.or.mgrupa1=space(3)).and.;
         (rob.grupa2=mgrupa2.or.mgrupa2=space(3)).and.;   
         (rob.grupa3=mgrupa3.or.mgrupa3=space(3)).and.;   
         (rob.grupa4=mgrupa4.or.mgrupa4=space(3)).and.;   
         (rob.grupa5=mgrupa5.or.mgrupa5=space(3)).and.;   
         (rob.grupa6=mgrupa6.or.mgrupa6=space(5))            

   if tfpossif='D'.AND.TNEZAJEDNO<>'D'
      KROB='rob'+tobjekat+TTVREDNI
   ENDIF     

SELECT TVKART
set order to 
set relation to sifra into an0 additive
set relation to rsif into rob additive
go top
do while.not.eof()
   Replace kolst WITH 0
   DO AISNUL WITH 'KOL'
   DO AISNUL WITH 'KOLI'   
   replace kolst with kol-koli
   skip
enddo   
SET RELATION TO
go top
SELECT TVKART
DELETE ALL FOR KOL=0.AND.KOLI=0
PACK
GO TOP
SET RELATION to
set relation to sifra into an0 additive
set relation to rsif into rob additive
replace ALL grupap WITH an0.grupa
SET EXACT on
DELETE ALL FOR allTRIM(grupap)<>ALLTRIM(mmgrupap)
*BROWSE
PACK
*set relation to rsif into kocka8 additive
*use &ktvniv in 0 alias niv 
*use &kkal in 0 alias kal
*use &kfak in 0 alias fak
*use &kkalg in 0 alias kalg order 1
*use &kfakg in 0 order 1 alias fakg
GO top
DO while.not.EOF()
   IF koli<>0
      replace velcena WITH ROUND(velvred/koli,2)
   ELSE 
      replace velcena WITH 0
   endif      
   SKIP
enddo
select tvkart
DO FORM ROBIZVPOKOM WITH MDAT0,MDAT1,mgrupa
