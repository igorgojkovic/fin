*------------------------------ostalo--------------------
    USE AAAN IN 0 ALIAS IZBOR 
    SELECT IZBOR
    IF RECCOUNT()<1
      APPEND BLANK
      REPLACE SIFPROD WITH STR(RECNO(),2,0)
      REPLACE PNAZIV WITH 'KUPCI'
      REPLACE KONTO WITH '2020'
      REPLACE DP WITH 'D'
      REPLACE PRIKAZ WITH 'D'
      REPLACE KNJNAL WITH 'D'
      REPLACE DEVIZNO WITH 'N'
      REPLACE ZAJEDNO WITH 'D'
      APPEND BLANK
      REPLACE SIFPROD WITH STR(RECNO(),2,0)
      REPLACE PNAZIV WITH 'DOBAVLJAEI'
      REPLACE KONTO WITH '4330'
      REPLACE DP WITH 'P'
      REPLACE PRIKAZ WITH 'D'
      REPLACE KNJNAL WITH 'D'
      REPLACE DEVIZNO WITH 'N'
      REPLACE ZAJEDNO WITH 'D'
      USE
      DO dbdata03     
   ELSE
      USE   
   ENDIF
   
   USE AANAL in 0 ALIAS IZBOR
   select IZBOR
   IF RECCOUNT()<1
      APPEND BLANK
      REPLACE SIFPROD WITH STR(RECNO(),2,0)
      REPLACE PNAZIV WITH 'GLAVNA KNJIGA'  
      USE
      DO DBdata03
   ELSE
      USE   
   ENDIF
   
   USE AABL in 0 ALIAS IZBOR
   select IZBOR
   IF RECCOUNT()<1
      APPEND BLANK
      REPLACE SIFPROD WITH STR(RECNO(),2,0)
      REPLACE PNAZIV WITH 'GLAVNA BLAGAJNA'  
      USE
      DO DBdata03
   ELSE
      USE   
   ENDIF

   USE AAKA in 0 ALIAS IZBOR
   select IZBOR
   IF RECCOUNT()<1
      APPEND BLANK
      REPLACE SIFPROD WITH STR(RECNO(),2,0)
      REPLACE PNAZIV WITH 'KAMATA'  
      USE
      DO DBdata03
   ELSE
      use   
   ENDIF


*php  $upit="select * from aaan ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    if ($rez)
*php    {
*php        $brredova=mysql_num_rows($rez);
*php 	   if ($brredova<1)
*php 	   { 
*php 	      //KUPCI
*php 	      $sifprod=' 1';
*php           $pnaziv='KUPCI';
*php           $konto='2020';
*php           $dp='D';
*php           $prikaz='D';
*php           $knjnal='D';
*php           $devizno='N';
*php           $zajedno='D';
*php   	      $upit =" insert into 
*php 		           aaan
*php 				   (
*php 				   sifprod,
*php 				   pnaziv,
*php 				   konto,
*php 				   dp,
*php 				   prikaz,
*php 				   knjnal,
*php 				   devizno,
*php 				   zajedno
*php 				   ) 
*php 				   values 
*php 				   (
*php 				   '$sifprod',
*php 				   '$pnaziv',
*php 				   '$konto',
*php 				   '$dp',
*php 				   '$prikaz',
*php 				   '$knjnal',
*php 				   '$devizno',
*php 				   '$zajedno'
*php 				   )
*php 				   ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php           //DOBAVLJACI		  
*php 	      $sifprod=' 2';
*php           $pnaziv='DOBAVLJACI';
*php           $konto='4330';
*php           $dp='P';
*php           $prikaz='D';
*php           $knjnal='D';
*php           $devizno='N';
*php           $zajedno='D';
*php   	      $upit =" insert into 
*php 		           aaan
*php 				   (
*php 				   sifprod,
*php 				   pnaziv,
*php 				   konto,
*php 				   dp,
*php 				   prikaz,
*php 				   knjnal,
*php 				   devizno,
*php 				   zajedno
*php 				   ) 
*php 				   values 
*php 				   (
*php 				   '$sifprod',
*php 				   '$pnaziv',
*php 				   '$konto',
*php 				   '$dp',
*php 				   '$prikaz',
*php 				   '$knjnal',
*php 				   '$devizno',
*php 				   '$zajedno'
*php 				   )
*php 				   ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	   }
*php    }
*php 
*php 
*php    //AANAL
*php    $upit="select * from aanal";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    if ($rez)
*php    {
*php        $brredova=mysql_num_rows($rez);
*php 	   if ($brredova<1)
*php 	   { 
*php 	      //glavna knjiga
*php 	      $sifprod=' 1';
*php           $pnaziv='GLAVNA KNJIGA';
*php   	      $upit =" insert into 
*php 		           aanal
*php 				   (
*php  				   sifprod,
*php 			 	   pnaziv
*php 				   ) 
*php 				   values 
*php 				   (
*php 				   '$sifprod',
*php 				   '$pnaziv'
*php 				   )
*php 				   ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	   }
*php    }
*php    
*php    //AABL
*php    $upit="select * from aabl";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    if ($rez)
*php    {
*php        $brredova=mysql_num_rows($rez);
*php 	   if ($brredova<1)
*php 	   { 
*php 	      //glavna knjiga
*php 	      $sifprod=' 1';
*php           $pnaziv='GLAVNA BLAGAJNA';
*php   	      $upit =" insert into 
*php 		           aabl
*php 				   (
*php 				   sifprod,
*php 				   pnaziv
*php 				   ) 
*php 				   values 
*php 				   (
*php 				   '$sifprod',
*php 				   '$pnaziv'
*php 				   )
*php 				   ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	   }
*php    }
*php    //AAKA
*php    $upit="select * from aaka";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    if ($rez)
*php    {
*php        $brredova=mysql_num_rows($rez);
*php 	   if ($brredova<1)
*php 	   { 
*php 	      //glavna knjiga
*php 	      $sifprod=' 1';
*php           $pnaziv='KAMATA';
*php   	      $upit =" insert into 
*php 		           aaka
*php 				   (
*php 				   sifprod,
*php 				   pnaziv
*php 				   ) 
*php 				   values 
*php 				   (
*php 				   '$sifprod',
*php 				   '$pnaziv'
*php 				   )
*php 				   ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	   }
*php    }
 
*----------------------




use firma in 0
select firma
tdat0=fdat0
tdat1=fdat1
use

*php   $mreca=0;
*php   $upit = "SELECT * FROM firma ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $fdat0='2013-01-01';
*php       $fdat1='2013-12-31';
*php       $fime='nova firma';
*php 
*php   	  $upit =" insert into firma (fdat0,fdat1,fime)
*php 			   values('$fdat0','$fdat1','$fime') ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    }

*-------------------------------------------------
use anzast in 0
select anzast
if reccount()<1
   append blank
   replace danas with date()
   replace datdok with date()
   replace dana with 3*365
   
endif
use   

*php   $mreca=0;
*php   $upit = "SELECT * FROM anzast ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   $danas=date("Y-m-d");
*php   $datdok=date("Y-m-d");
*php   $dana=3*365;
*php   
*php   if ($mreca<1)
*php   {
*php      $upit =" insert into anzast 
*php 	 (danas,datdok,dana) 
*php 	 values 
*php 	 ('$danas','$datdok','$dana')";
*php 	 
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   }

*------------------------------------------------------
mreca=0
if file('aaan.dbf')
   use aaan in 0 
   select aaan
   mreca=reccount()
   use
endif
if mreca>0
   use aaan in 0
   select aaan
   go top
   do while.not.eof()
      mprikaz=prikaz
      mi=alltrim(str(recno(),2,0))
      if mprikaz<>'N'
         kanal='anal'+mi 
         kan0='an0'+mi 
         kanpl='anpl'+mi 
         do ibaze with kanal,'anal'
         do iind with kanal,'datdok','sifra','sifra+brrac',;
                  'brnal+dok','brrac+dtos(datdok)','sifra+dtos(datdok)','valuta','sifra+dtos(valuta)','brrac'

         do ibaze with kan0,'an0'
         do iind with kan0,'sifra','naziv','zirorac','mesto','ulica','telefon','fax','pib','pib2','mbr'
         do ibaze with kanpl,'anpl'
         do iind with kanpl,'datdok','sifra','valuta','dana','saldo'
      endif
      select aaan
      skip
   enddo
   select aaan
   use   
endif


*php  $mreca=0;
*php   $upit = "SELECT * FROM aaan ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   while($red=mysql_fetch_array($rez))
*php   {  
*php      $mi=trim(strval($red['idbr']));
*php      $kanal='anal'.$mi; 
*php      $kan0='an0'.$mi; 
*php      $kanpl='anpl'.$mi; 
*php      ibaze($kanal,'anal');
*php      iind($kanal,'datdok','sifra','sifra,brrac','brnal,dok','brrac,datdok','sifra,datdok','valuta','sifra,valuta','brrac');
*php      ibaze($kan0,'an0');
*php      iind($kan0,'sifra','naziv','zirorac','mesto','ulica','telefon','fax','pib','pib2','mbr');
*php      ibaze($kanpl,'anpl');
*php      iind($kanpl,'datdok','sifra','valuta','dana','saldo');
*php   }


*-----------------------------------------------------
mreca=0
if file('anodob00.dbf')
   use anodob00 in 0 
   select anodob00
   mreca=reccount()
   use
endif

if mreca>0
   for ii=1 to mreca
      mii=alltrim(str(ii,2,0))
      kanodob='anodob'+mii 
      do ibaze with kanodob,'anodob'
      do iind with kanodob,'redbr','sifra','brnal','dtos(datdok)'
   next
endif

if mreca>0
   for ii=1 to mreca
      mii=alltrim(str(ii,2,0))
      kanput='anput'+mii
      kanputt='anputt'+mii 
      do ibaze with kanputt,'anputt'
      do iind with kanputt,'sifra','dtos(datdok)','sifra+brrac','grupa'
      do ibaze with kanput,'anput'
      do iind with kanput,'sifra','dtos(datdok)','sifra+brrac','grupa','brrac'
   next
endif

*php  $mreca=0;
*php   $upit = "SELECT * FROM anodob00 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   while($red=mysql_fetch_array($rez))
*php   {
*php       $mii=trim(strval($red['idbr']));
*php       $kanodob='anodob'.$mii; 
*php       $kanput='anput'.$mii; 
*php       $kanputt='anputt'.$mii; 
*php       ibaze($kanodob,'anodob');
*php       iind($kanodob,'redbr','sifra','brnal','dtos(datdok)');
*php       ibaze($kanputt,'anputt');
*php       iind($kanputt,'sifra','datdok','sifra,brrac','grupa');
*php       ibaze($kanput,'anput');
*php       iind($kanput,'sifra','datdok','sifra,brrac','grupa','brrac');
*php   }


*---------------------------------------------
if file('an0mi.dbf')
   use an0mi in 0
   select an0mi
   if reccount()<1
      append blank
      replace misifra with str(recno(),5,0)
   endif
   use
endif    

*php   $mreca=0;
*php   $upit = "SELECT * FROM an0mi ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php      $upit =" insert into an0mi 
*php 	 (misifra) 
*php 	 values 
*php 	 ('1')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   }


*-------------------------------------------
mrecb=0
if file('aabl.dbf')
   use aabl in 0
   select aabl
   mrecb=reccount()
   use
endif

mkblp=mdata01+'\'+'blp.dbf'
if mrecb>0
   for ii=1 to mrecb
      mii=alltrim(str(ii,2,0))
      mkbl='bl'+mii 
      do ibaze with mkbl,'blp'
      do iind with mkbl,'konto+dtos(datdok)','brnal','dtos(datdok)','dnev','nalu','nali','sifra','vrstaan'   
   next
endif


*php   $mreca=0;
*php   $upit = "SELECT * FROM aabl ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   for($i=1;$i<=$mreca;$i+=1)
*php   {
*php     $mkbl='bl'.$i;
*php     ibaze($mkbl,'blp');
*php     iind($mkbl,'konto,datdok','brnal','datdok','dnev','nalu','nali','sifra','vrstaan');     
*php   }
*--------------------------------------------------

mreca=0
if file('aaplan.dbf')
   use aaplan in 0
   select aaplan
   mreca=reccount()
   use
endif
if mreca>0
   for ii=1 to mreca
      mii=alltrim(str(ii,2,0))
      kplan='plan'+mii
      do ibaze with kplan,'plan'
      do iind with kplan,'konmtr'
   next
endif

*php   $mreca=0;
*php   $upit = "SELECT * FROM aaplan ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   for($i=1; $i<=$mreca;$i+=1)
*php   {
*php       $mi=trim(strval($i));
*php       $kplan='plan'.$mi;
*php       ibaze($kplan,'plan');
*php       iind($kplan,'konmtr');
*php   }

*--------------------------------------------------



mrecn=0
if file('aanal.dbf')
   use aanal in 0
   select aanal
   mrecn=reccount()
   use
endif

if mrecn>0
   for ii=1 to mrecn
      mii=alltrim(str(ii,2,0))
      knal='nal'+mii
      do ibaze with knal,'nalp'
      do iind with knal,'konto+dtos(datdok)','brnal','dtos(datdok)','konto' 
   next
endif       

*php   $mreca=0;
*php   $upit = "SELECT * FROM aanal ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   for($i=1; $i<=$mreca;$i+=1)
*php   {
*php       $mi=trim(strval($i));
*php       $knal='nal'.$mi;
*php       ibaze($knal,'nalp');
*php       iind($knal,'konto,datdok','brnal','datdok','konto');
*php   }

*-----------------------------------------------
mreca=0
if file('aaka.dbf')
   use aaka in 0
   select aaka
   mreca=reccount()
   use
endif
if mreca>0
   for ii=1 to mreca
      mii=alltrim(str(ii,2,0))
      kkamate='kamate'+mii 
      kkakoef='kakoef'+mii
      kkastop='kastop'+mii 
      do ibaze with kkamate,'kamate'
      do iind with kkamate,'rbr+dtos(datpoc)+dtos(datkra)','sifra'
      do ibaze with kkakoef,'kakoef'
      do iind with kkakoef,'dtos(datum)'
      do ibaze with kkastop,'kastop'
      do iind with kkastop,'dtos(dat0)'
   next
endif   
use kamobrac in 0
select kamobrac
if reccount()<1
   append blank
   replace dat0 with date()
   replace dat1 with date()
   replace rednal with '1'
   replace konto with '6620000000'
   replace sifra with '    '
endif
use
use kamkn in 0
select kamkn
if reccount()<1
   append blank
   replace brnal with 'k00001'
   replace branal with 1
   replace datdok with date()
   replace valuta with date()+1
endif
use

*php   $mreca=0;
*php   $upit = "SELECT * FROM aaka ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   for($i=1; $i<=$mreca;$i+=1)
*php   {
*php       $mii=trim(strval($i));
*php       $kkamate='kamate'.$mii; 
*php       $kkakoef='kakoef'.$mii;
*php       $kkastop='kastop'.$mii ;
*php 
*php       ibaze($kkamate,'kamate');
*php       iind($kkamate,'rbr,datpoc,datkra','sifra');
*php       
*php       ibaze($kkakoef,'kakoef');
*php       iind($kkakoef,'datum');
*php 
*php       ibaze($kkastop,'kastop');
*php       iind($kkastop,'dat0');
*php   
*php   }
*php 
*php   $mreca=0;
*php   $upit = "SELECT * FROM kamobrac ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php    $dat0=date("Y-m-d");
*php    $dat1=date("Y-m-d");
*php    $rednal='1';
*php    $konto='6620000000';
*php    $sifra='';
*php   
*php      $upit =" insert into kamobrac
*php 	 (dat0,dat1,rednal,konto,sifra) 
*php 	 values ('$dat0','$dat1','$rednal','$konto','$sifra')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);   
*php   }  
*php   
*php   $mreca=0;
*php   $upit = "SELECT * FROM kamkn ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php    $brnal='k00001';
*php    $branal=1;
*php    $datdok=date("Y-m-d");
*php    $valuta=date('Y-m-d', strtotime('+5 days'));
*php   
*php      $upit =" insert into kamkn
*php 	 (brnal,branal,datdok,valuta) 
*php 	 values ('$brnal','$branal','$datdok','$valuta')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   }  
*--------------------------------------------------------
use ldparam in 0 exclusive
select ldparam
if reccount()>1
   zap
endif   
use

use ldparam in 0
select ldparam
if reccount()<1
   append blank
   replace cmes with 174
   replace czakon with 174
   replace procnoc with 26
   replace procprod with 26
   replace procpraz with 110
   replace procned with 110  
   replace procmin with 0.4
   replace procbol with 65
   replace procplac with 45 
   replace prosbruto with 61116
   replace minimal with 27304
   replace ben1 with 3.4
   replace ben2 with 5.4
   replace ben3 with 6.9
   replace ben4 with 10.3
          
   replace doppr1 with 14.0
   replace dopzr1 with 5.15
   replace dopnr1 with 0.75
         
   replace doppf1 with 12.0
   replace dopzf1 with 5.15
   replace dopnf1 with 0.75


   replace doppr2 with 14.0
   replace dopzr2 with 5.15
   replace dopnr2 with 0.75
         
   replace doppf2 with 12.0
   replace dopzf2 with 5.15
   replace dopnf2 with 0.75


   replace doppr3 with 14.0
   replace dopzr3 with 5.15
   replace dopnr3 with 0.75
         
   replace doppf3 with 12.0
   replace dopzf3 with 5.15
   replace dopnf3 with 0.75 

   replace doppr4 with 0  
   replace dopzr4 with 0   
   replace dopnr4 with 0   
         
   replace doppf4 with 0  
   replace dopzf4 with 12.3
   replace dopnf4 with 0    

   replace doppr5 with 14.0
   replace dopzr5 with 0   
   replace dopnr5 with 0   
         
   replace doppf5 with 12.0
   replace dopzf5 with 0    
   replace dopnf5 with 0    

   
   replace s1 with '1  '
   replace s3 with '3  '   
   replace s4 with '4  '
   replace s5 with '5  '   
   replace s6 with '6  '
   replace s71 with '7/1'
   replace s72 with '7/2'
   replace s8 with '8  '


   replace sdin1 with 22282
   replace sdin3 with 0
   replace sdin4 with 0
   replace sdin5 with 0
   replace sdin6 with 0
   replace sdin71 with 0
   replace sdin72 with 0
   replace sdin8 with 0


   replace mesec with 1
   replace nazmes with 'JANUAR' 
   replace redispl with 1
   replace isplata with 1

   replace cenarada with 22357

   replace smesec with 1
   replace snazmes with 'JANUAR'
   replace sredispl with 1
   replace sisplata with 1
   replace godina with '2015'
   replace nazp1 with 'ostalapr.1'
   replace nazp2 with 'ostalapr.2'
   replace nazp3 with 'ostalapr.3'
   replace nazp5ter with 'Terenski dod'
   replace nazo1 with 'ostaleob.1'
   replace nazo2 with 'ostaleob.2'
   replace nazo3 with 'ostaleob.3'
   replace nazo4 with 'ostaleob.4'
   replace nazo5 with 'ostaleob.5'
   replace nazo6 with 'ostaleob.6'
   replace procpor with 10
   replace neoporezp with 11433
   replace decimale with '*'
   replace srazpor with 'D'
   replace solporod1 WITH 60000
   replace solpordo1 WITH 100000
   replace solproc1 WITH 0
   replace solporod2 WITH 100000
   replace solpordo2 WITH 1000000
   replace solproc2 WITH 0
endif
mmesec=mesec
misplata=isplata
mnazmes=nazmes
mredispl=redispl
use
   
do case
case misplata=1
   lvrsta=''
case misplata=2
   lvrsta='P'
case misplata=3
   lvrsta='B'
case misplata=4
   lvrsta='I'
case misplata=5   
   lvrsta='R'
case misplata=6   
   lvrsta='U'
otherwise
   lvrsta=''
endcase



use ldslobs in 0
select ldslobs
   if reccount()<1
      append blank
   endif
use   


use ldalati in 0
select ldalati
   if reccount()<1
      append blank
      replace sabol with 'D'
      replace sakor with 'D'
   endif
use   




use ldpotv in 0 
select ldpotv
if reccount()<1
   for i=1 to 99
      append blank
      replace mesec with i
   next
endif
use


use ldpotv2 in 0
select ldpotv2
if reccount()<1
   append blank
   replace text1 with 'potvrda se izdaje na lièni zahtev imenovanog'
   replace text2 with 'radi regulisanja prava iz '
   replace text3 with ' '
   replace text4 with 'i u druge svhe se ne može upotrebiti '
   replace text5 with 'izdato dana'
endif
use


use ldosn in 0
select ldosn
if reccount()<1
   for i=1 to 9
     append blank
  next
   goto 1
   replace sstepen with '1  '
   replace m1  with 5447
   replace m2  with 5447
   replace m3  with 5447
   replace m4  with 5447
   replace m5  with 5323
   replace m6  with 5323
   replace m7  with 5323
   replace m8  with 5971
   replace m9  with 5971
   replace m10 with 5971
   replace m11 with 6336
   replace m12 with 6336
   goto 2
   replace sstepen with '3  '
   replace m1  with 7952
   replace m2  with 7952
   replace m3  with 7952
   replace m4  with 7952
   replace m5  with 7768
   replace m6  with 7768
   replace m7  with 7768
   replace m8  with 8715
   replace m9  with 8715
   replace m10 with 8715
   replace m11 with 9248
   replace m12 with 9248
   goto 3
   replace sstepen with '4  '
   replace m1  with 9451
   replace m2  with 9451
   replace m3  with 9451
   replace m4  with 9451
   replace m5  with 9351
   replace m6  with 9351
   replace m7  with 9351
   replace m8  with 10490
   replace m9  with 10490
   replace m10 with 10490
   replace m11 with 11131
   replace m12 with 11131
   goto 4
   replace sstepen with '5  '
   replace m1  with 11918
   replace m2  with 11918
   replace m3  with 11918
   replace m4  with 11918
   replace m5  with 11509
   replace m6  with 11509
   replace m7  with 11509
   replace m8  with 12910
   replace m9  with 12910
   replace m10 with 12910
   replace m11 with 13700
   replace m12 with 13700
   goto 5
   replace sstepen with '6  '
   replace m1  with 12834
   replace m2  with 12834
   replace m3  with 12834
   replace m4  with 12834
   replace m5  with 12516
   replace m6  with 12516
   replace m7  with 12516
   replace m8  with 14040
   replace m9  with 14040
   replace m10 with 14040
   replace m11 with 14899
   replace m12 with 14899
   goto 6
   replace sstepen with '7/1'
   replace m1  with 16900
   replace m2  with 16900
   replace m3  with 16900
   replace m4  with 16900
   replace m5  with 16544
   replace m6  with 16544
   replace m7  with 16544
   replace m8  with 18559
   replace m9  with 18559
   replace m10 with 18559
   replace m11 with 19694
   replace m12 with 19694
   goto 7
   replace sstepen with '7/2'
   replace m1  with 18879
   replace m2  with 18879
   replace m3  with 18879
   replace m4  with 18879
   replace m5  with 18270
   replace m6  with 18270
   replace m7  with 18270
   replace m8  with 20495
   replace m9  with 20495
   replace m10 with 20495
   replace m11 with 21749
   replace m12 with 21749
   goto 8
   replace sstepen with '8  '
   replace m1  with 22856
   replace m2  with 22856
   replace m3  with 22856
   replace m4  with 22856
   replace m5  with 22298
   replace m6  with 22298
   replace m7  with 22298
   replace m8  with 25014
   replace m9  with 25014
   replace m10 with 25014
   replace m11 with 26544
   replace m12 with 26544
endif
use

use ldopj1n0 in 0
select ldopj1n0
   if reccount()<1
      do ldopj1n0dod with ' 1','naknada troškova prevoza u javnom ','saobraæaju(èl.18 st.1 t.1 zakona) ',2352,0
      do ldopj1n0dod with ' 2','dnevnica za službeno putovanje u  ','zemlji i inostr.(èl.18 st.1 t.2 zakona) ',1859,2459.55
      do ldopj1n0dod with ' 3','naknada troškova smeštaja na služb',' putovanju(èl.18 st.1 t.3 zakona) ',0,0
      do ldopj1n0dod with ' 4','naknada prevoza na službenom      ','putovanju (èl.18 st.1 t.4 zakona) ',0,0
      do ldopj1n0dod with ' 5','solidarna pomoæ                   ','          (èl.18 st.1 t.5 zakona) ',23517,0
      do ldopj1n0dod with ' 6','poklon deci zaposlenih starosti do',' 15 godina(èl.18 st.1 t.6 zakona) ',5879,0
      do ldopj1n0dod with ' 7','jubilarna nagrada                 ','          (èl.18 st.1 t.7 zakona) ',11759,0
      do ldopj1n0dod with ' 8','ostalo                            ','                                  ',0,0
   endif
use   


*php   $mreca=0;
*php   $upit = "SELECT * FROM ldparam ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php    $cmes=174;
*php    $czakon=174;
*php    $procnoc=26;
*php    $procprod=26;
*php    $procpraz=110;
*php    $procned=110;
*php    $procmin=0.4;
*php    $procbol=65;
*php    $procplac=45; 
*php    $prosbruto=61116;
*php    $minimal=27304;
*php    $ben1=3.4;
*php    $ben2=5.4;
*php    $ben3=6.9;
*php    $ben4=10.3;
*php    $doppr1=13.0;
*php    $dopzr1=6.15;
*php    $dopnr1=0.75;
*php    $doppf1=11.0;
*php    $dopzf1=6.15;
*php    $dopnf1=0.75;
*php    $doppr2=13.0;
*php    $dopzr2=6.15;
*php    $dopnr2=0.75;
*php    $doppf2=11.0;
*php    $dopzf2=6.15;
*php    $dopnf2=0.75;
*php    $doppr3=13.0;
*php    $dopzr3=6.15;
*php    $dopnr3=0.75;
*php    $doppf3=11.0;
*php    $dopzf3=6.15;
*php    $dopnf3=0.75 ;
*php    $doppr4=0; 
*php    $dopzr4=0; 
*php    $dopnr4=0;         
*php    $doppf4=0;  
*php    $dopzf4=12.3;
*php    $dopnf4=0;    
*php    $doppr5=13.0;
*php    $dopzr5=0;   
*php    $dopnr5=0;   
*php    $doppf5=11.0;
*php    $dopzf5=0;    
*php    $dopnf5=0;    
*php    $s1='1  ';
*php    $s3='3  ';  
*php    $s4='4  ';
*php    $s5='5  ';   
*php    $s6='6  ';
*php    $s71='7/1';
*php    $s72='7/2';
*php    $s8='8  ';
*php    $sdin1=27304;
*php    $sdin3=0;
*php    $sdin4=0;
*php    $sdin5=0;
*php    $sdin6=0;
*php    $sdin71=0;
*php    $sdin72=0;
*php    $sdin8=0;
*php    $mesec=1;
*php    $nazmes='januar';
*php    $redispl=1;
*php    $isplata=1;
*php    $cenarada=27304;
*php    $smesec=1;
*php    $snazmes='januar';
*php    $sredispl=1;
*php    $sisplata=1;
*php    $godina='2013';
*php    $nazp1='ostalapr.1';
*php    $nazp2='ostalapr.2';
*php    $nazp3='ostalapr.3';
*php    $nazp4='ostalapr.4';
*php    $nazp5='ostalapr.5';
*php    $nazo1='ostaleob.1';
*php    $nazo2='ostaleob.2';
*php    $nazo3='ostaleob.3';
*php    $nazo4='ostaleob.4';
*php    $nazo5='ostaleob.5';
*php    $nazo6='ostaleob.6';
*php    $procpor=10;
*php    $neoporezp=11000;
*php    $decimale='*';
*php    $srazpor='D';
*php 
*php    $upit =" insert into ldparam
*php 	 (
*php    cmes,
*php    czakon,
*php    procnoc,
*php    procprod,
*php    procpraz,
*php    procned,
*php    procmin,
*php    procbol,
*php    procplac, 
*php    prosbruto,
*php    minimal,
*php    ben1,
*php    ben2,
*php    ben3,
*php    ben4,
*php    doppr1,
*php    dopzr1,
*php    dopnr1,
*php    doppf1,
*php    dopzf1,
*php    dopnf1,
*php    doppr2,
*php    dopzr2,
*php    dopnr2,
*php    doppf2,
*php    dopzf2,
*php    dopnf2,
*php    doppr3,
*php    dopzr3,
*php    dopnr3,
*php    doppf3,
*php    dopzf3,
*php    dopnf3,
*php    doppr4,
*php    dopzr4,
*php    dopnr4,        
*php    doppf4,  
*php    dopzf4,
*php    dopnf4,    
*php    doppr5,
*php    dopzr5,   
*php    dopnr5,   
*php    doppf5,
*php    dopzf5,   
*php    dopnf5,    
*php    s1,
*php    s3,  
*php    s4,
*php    s5,   
*php    s6,
*php    s71,
*php    s72,
*php    s8,
*php    sdin1,
*php    sdin3,
*php    sdin4,
*php    sdin5,
*php    sdin6,
*php    sdin71,
*php    sdin72,
*php    sdin8,
*php    mesec,
*php    nazmes,
*php    redispl,
*php    isplata,
*php    cenarada,
*php    smesec,
*php    snazmes,
*php    sredispl,
*php    sisplata,
*php    godina,
*php    nazp1,
*php    nazp2,
*php    nazp3,
*php    nazp4,
*php    nazp5,
*php    nazo1,
*php    nazo2,
*php    nazo3,
*php    nazo4,
*php    nazo5,
*php    nazo6,
*php    procpor,
*php    neoporezp,
*php    decimale,
*php    srazpor
*php 	 ) 
*php 	 values 
*php 	 (
*php    '$cmes',
*php    '$czakon',
*php    '$procnoc',
*php    '$procprod',
*php    '$procpraz',
*php    '$procned',
*php    '$procmin',
*php    '$procbol',
*php    '$procplac', 
*php    '$prosbruto',
*php    '$minimal',
*php    '$ben1',
*php    '$ben2',
*php    '$ben3',
*php    '$ben4',
*php    '$doppr1',
*php    '$dopzr1',
*php    '$dopnr1',
*php    '$doppf1',
*php    '$dopzf1',
*php    '$dopnf1',
*php    '$doppr2',
*php    '$dopzr2',
*php    '$dopnr2',
*php    '$doppf2',
*php    '$dopzf2',
*php    '$dopnf2',
*php    '$doppr3',
*php    '$dopzr3',
*php    '$dopnr3',
*php    '$doppf3',
*php    '$dopzf3',
*php    '$dopnf3',
*php    '$doppr4',
*php    '$dopzr4', 
*php    '$dopnr4',         
*php    '$doppf4',  
*php    '$dopzf4',
*php    '$dopnf4',    
*php    '$doppr5',
*php    '$dopzr5',   
*php    '$dopnr5',   
*php    '$doppf5',
*php    '$dopzf5',    
*php    '$dopnf5',    
*php    '$s1',
*php    '$s3',  
*php    '$s4',
*php    '$s5',   
*php    '$s6',
*php    '$s71',
*php    '$s72',
*php    '$s8',
*php    '$sdin1',
*php    '$sdin3',
*php    '$sdin4',
*php    '$sdin5',
*php    '$sdin6',
*php    '$sdin71',
*php    '$sdin72',
*php    '$sdin8',
*php    '$mesec',
*php    '$nazmes',
*php    '$redispl',
*php    '$isplata',
*php    '$cenarada',
*php    '$smesec',
*php    '$snazmes',
*php    '$sredispl',
*php    '$sisplata',
*php    '$godina',
*php    '$nazp1',
*php    '$nazp2',
*php    '$nazp3',
*php    '$nazp4',
*php    '$nazp5',
*php    '$nazo1',
*php    '$nazo2',
*php    '$nazo3',
*php    '$nazo4',
*php    '$nazo5,'
*php    '$nazo6',
*php    '$procpor',
*php    '$neoporezp',
*php    '$decimale',
*php    '$srazpor'
*php     )";
*php   }
*php   $rez=mysql_query($upit);		
*php   $upit = "SELECT * FROM ldparam ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   while($red=mysql_fetch_array($rez))
*php   {
*php     $mmesec=$red['mesec'];
*php     $misplata=$red['isplata'];
*php     $mnazmes=$red['nazmes'];
*php     $mredispl=$red['redispl'];   
*php     if ($misplata==1)
*php 	{
*php        $lvrsta='';
*php 	}   
*php     elseif ($misplata==2)
*php 	{
*php        $lvrsta='P';
*php 	}   
*php     elseif ($misplata==3)
*php 	{
*php        $lvrsta='B';
*php 	}   
*php     elseif ($misplata==4)
*php 	{
*php        $lvrsta='I';
*php 	}   
*php     elseif ($misplata==5)
*php 	{
*php        $lvrsta='R';
*php 	}   
*php     elseif ($misplata==6)
*php 	{
*php        $lvrsta='U';
*php 	}   
*php     else
*php 	{
*php        $lvrsta=' ';
*php 	}   
*php   }
*php   $mreca=0;
*php   $upit = "SELECT * FROM ldslobs ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php      $upit =" insert into ldslobs
*php 	 () 
*php 	 values ()";
*php      $rez=mysql_query($upit);	
*php      if (!$rez){txtsnimi('dbld greska =ldslobs '.mysql_error()."\r\n");}	 
*php   }  
*php 	
*php   $mreca=0;
*php   $upit = "SELECT * FROM ldalati ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $sabol='D';
*php       $sakor='D';
*php       $upit =" insert into ldalati
*php 	 (sabol,sakor) 
*php 	 values ('$sabol','$sakor')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   }  
*php 
*php   $mreca=0;
*php   $upit = "SELECT * FROM ldpotv ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php      for ($i=1;$i<=99;$i+=1)
*php 	 {
*php         $upit =" insert into ldpotv (mesec) values ($i)";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	 }
*php   }  
*php   
*php   $mreca=0;
*php   $upit = "SELECT * FROM ldpotv2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php      $text1='potvrda se izdaje na licni zahtev imenovanog';
*php      $text2='radi regulisanja prava iz ';
*php      $text3=' ';
*php      $text4='i u druge svhe se ne može upotrebiti ';
*php      $text5='izdato dana';
*php      for ($i=1;$i<=99;$i+=1)
*php 	 {
*php         $upit =" insert into ldpotv2
*php 	    (text1,text2,text3,text4,text5)
*php 	    values ('$text1','$text2','$text3','$text4','$text5')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	 }
*php   }  
*php 
*php   $mreca=0;
*php   $upit = "SELECT * FROM ldopj1n0 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       ldopj1n0dod(' 1','naknada troškova prevoza u javnom ','saobracaju(cl.18 st.1 t.1 zakona) ',2352,0);
*php       ldopj1n0dod(' 2','dnevnica za službeno putovanje u  ','zemlji i inostr.(cl.18 st.1 t.2 zakona) ',1411,2459.55);
*php       ldopj1n0dod(' 3','naknada troškova smeštaja na služb',' putovanju(cl.18 st.1 t.3 zakona) ',0,0);
*php       ldopj1n0dod(' 4','naknada prevoza na službenom      ','putovanju (cl.18 st.1 t.4 zakona) ',0,0);
*php       ldopj1n0dod(' 5','solidarna pomoc                   ','          (cl.18 st.1 t.5 zakona) ',23517,0);
*php       ldopj1n0dod(' 6','poklon deci zaposlenih starosti do',' 15 godina(cl.18 st.1 t.6 zakona) ',5879,0);
*php       ldopj1n0dod(' 7','jubilarna nagrada                 ','          (cl.18 st.1 t.7 zakona) ',11759,0);
*php       ldopj1n0dod(' 8','ostalo                            ','                                  ',0,0);
*php    }
*php    
*php       function ldopj1n0dod($msifopis,$mopis1,$mopis2,$mneoporez,$mpravo)
*php 	  {
*php          $sifopis=$msifopis;
*php          $opis1=$mopis1;
*php          $opis2=$mopis2;
*php          $pravo=$mpravo;
*php          $neoporez=$mneoporez;
*php          $upit =" insert into ldopj1n0
*php 	              (sifopis,opis1,opis2,pravo,neoporez)
*php 	              values('$sifopis','$opis1','$opis2','$pravo','$neoporez')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php 	  }
*php 
*php 

*--------------------PROIZVODNJA-----------
use propar2 in 0
select propar2
if reccount()<1
   append blank
      REPLACE RMALVEL WITH 'V'
      REPLACE RKAL WITH 'D'
      REPLACE RFAK WITH 'D'
      REPLACE RTRE WITH 'D'
      REPLACE ROBJEK WITH 1
      REPLACE RFKAL WITH '  1'
      REPLACE RFFAK WITH '  1'
      REPLACE RSEMA WITH '   1'
      REPLACE RNOVA WITH 'D'
      REPLACE RZMAT WITH 'TM'
      REPLACE RZAMB WITH 'TA'
      REPLACE RZPMAT WITH 'TP'
      REPLACE RMDKON WITH '51100000'
      REPLACE RADKON WITH '51100001'
      REPLACE RPMDKON WITH '51100002'
      REPLACE RMPKON WITH '10100000'
      REPLACE RAPKON WITH '10100001'
      REPLACE RPMPKON WITH '10100002'
      REPLACE RZMAT9 WITH '9M'
      REPLACE RZAMB9 WITH '9A'
      REPLACE RZPMAT9 WITH '9P'
      REPLACE RMDKON9 WITH '95000000'
      REPLACE RADKON9 WITH '95000001'
      REPLACE RPMDKON9 WITH '95000002'
      REPLACE RMPKON9 WITH '90200000'
      REPLACE RAPKON9 WITH '90200001'
      REPLACE RPMPKON9 WITH '90200002'
ENDIF
USE

USE PROPAR IN 0
SELECT PROPAR
IF RECCOUNT()<1
   APPEND BLANK
   REPLACE MAGGOT WITH '1'
   REPLACE MAGPOLU WITH '2'
   REPLACE MAGMAT WITH '3'
   REPLACE MAGPMAT WITH '4'
   REPLACE MAGAMB WITH '5'
ENDIF
USE   


USE PROCKTR IN 0
SELECT PROCKTR
IF RECCOUNT()<1
   APPEND BLANK
ENDIF
USE   
*------------VISEFAZNA PROIZVODNJA-----------------

USE AAPR IN 0
SELECT AAPR
IF RECCOUNT()<1
   APPEND BLANK
   REPLACE SIFPROD WITH STR(RECNO(),2,0)
   REPLACE PNAZIV WITH 'OSNOVNA PROIZVODNJA'
   REPLACE SIFPROD WITH str(recno(),2,0)
   REPLACE KONTO WITH '9600000000'
   replace PRIKAZ WITH 'D'
   APPEND BLANK
   REPLACE SIFPROD WITH STR(RECNO(),2,0)
   REPLACE PNAZIV WITH 'PROIZVODNJA 2'
   REPLACE SIFPROD WITH str(recno(),2,0)
   REPLACE KONTO WITH '9600000000'
   replace PRIKAZ WITH 'D'
ENDIF   
USE   

IF FILE('AAPR.DBF')
   USE AAPR IN 0 
   SELECT AAPR
   MRECT=RECCOUNT()
  USE
ENDIF


IF MRECT>0
   FOR I=1 TO MRECT
      MI=ALLTRIM(STR(I,2,0))
      KPRNOR='PRNOR'+MI 
      KPRNAL='PRNAL'+MI 
      DO IBAZE WITH KPRNOR,'PRONORMA' 
      DO IBAZE WITH KPRNAL,'PRONALN' 
      DO IIND WITH KPRNOR,'RSIF+GRUPA','RSIF','NORMATIV','NORMATIV+GRUPA'
      DO IIND WITH KPRNAL,'Rnal','rSIF','NORMATIV','DTOS(DAT0)'
      KPRNOR='PRNORP'+MI 
      KPRNAL='PRNALP'+MI 
      DO IBAZE WITH KPRNOR,'PRONORMP' 
      DO IBAZE WITH KPRNAL,'PRONALNP' 
      DO IIND WITH KPRNOR,'PSIF+GRUPA','PSIF','NORMATIV','NORMATIV+GRUPA'
      DO IIND WITH KPRNAL,'Rnal','PSIF','NORMATIV','DTOS(DAT0)'
   NEXT
ENDIF



*php  $mreca=0;
*php   $upit = "SELECT * FROM propar2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $rmalvel='V';
*php       $rkal='D';
*php       $rfak='D';
*php       $rtre='D';
*php       $robjek=1;
*php       $rfkal='  1';
*php       $rffak='  1';
*php       $rsema='   1';
*php       $rnova='D';
*php       $rzmat='TM';
*php       $rzamb='TA';
*php       $rzpmat='TP';
*php       $rmdkon='51100000';
*php       $radkon='51100001';
*php       $rpmdkon='51100002';
*php       $rmpkon='10100000';
*php       $rapkon='10100001';
*php       $rpmpkon='10100002';
*php       $rzmat9='9M';
*php       $rzamb9='9A';
*php       $rzpmat9='9P';
*php       $rmdkon9='95000000';
*php       $radkon9='95000001';
*php       $rpmdkon9='95000002';
*php       $rmpkon9='90200000';
*php       $rapkon9='90200001';
*php       $rpmpkon9='90200002';
*php   
*php   
*php     $upit =" insert into propar2
*php 	 (
*php 	  rmalvel,
*php       rkal,
*php       rfak,
*php       rtre,
*php       robjek,
*php       rfkal,
*php       rffak,
*php       rsema,
*php       rnova,
*php       rzmat,
*php       rzamb,
*php       rzpmat,
*php       rmdkon,
*php       radkon,
*php       rpmdkon,
*php       rmpkon,
*php       rapkon,
*php       rpmpkon,
*php       rzmat9,
*php       rzamb9,
*php       rzpmat9,
*php       rmdkon9,
*php       radkon9,
*php       rpmdkon9,
*php       rmpkon9,
*php       rapkon9,
*php       rpmpkon9
*php 	  )
*php 	  values 
*php 	 ('$rmalvel',
*php       '$rkal',
*php       '$rfak',
*php       '$rtre',
*php       '$robjek',
*php       '$rfkal',
*php       '$rffak',
*php       '$rsema',
*php       '$rnova',
*php       '$rzmat',
*php       '$rzamb',
*php       '$rzpmat',
*php       '$rmdkon',
*php       '$radkon',
*php       '$rpmdkon',
*php       '$rmpkon',
*php       '$rapkon',
*php       '$rpmpkon',
*php       '$rzmat9',
*php       '$rzamb9',
*php       '$rzpmat9',
*php       '$rmdkon9',
*php       '$radkon9',
*php       '$rpmdkon9',
*php       '$rmpkon9',
*php       '$rapkon9',
*php       '$rpmpkon9'
*php 	  )";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php  }
*php  
*php   $mreca=0;
*php   $upit = "SELECT * FROM propar ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php    $maggot='1';
*php    $magpolu='2';
*php    $magmat='3';
*php    $magpmat='4';
*php    $magamb='5';
*php   
*php     $upit =" insert into propar
*php 	 (maggot,magpolu,magmat,magpmat,magamb)
*php 	 values ($maggot,$magpolu,$magmat,$magpmat,$magamb)";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php  }
*php 
*php   $mreca=0;
*php   $upit = "SELECT * FROM procktr ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php     $upit =" insert into procktr () values ()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php  } 
*php //VISEFAZNA PROIZVODNJA
*php 
*php   $mreca=0;
*php   $upit = "SELECT * FROM aapr ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $sifprod='1';
*php       $pnaziv='Proizvodnja 1 ';
*php       $konto='1320000000';
*php       $prikaz='D';
*php       $upit =" insert into aapr (sifprod,pnaziv,konto,prikaz) values ('$sifprod','$pnaziv','$konto','$prikaz')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php       $sifprod='2';
*php       $pnaziv='Proizvodnja 2 ';
*php       $konto='1320000000';
*php       $prikaz='D';
*php       $upit =" insert into aapr (sifprod,pnaziv,konto,prikaz) values ('$sifprod','$pnaziv','$konto','$prikaz')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php  } 
*php 
*php   $mreca=0;
*php   $upit = "SELECT * FROM aapr ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);   
*php   for($i=1;$i<=$mreca;$i+=1)  
*php   {
*php       $mi=trim(strval($i));
*php       $kprnor='prnor'.$mi; 
*php       $kprnal='prnal'.$mi; 
*php       ibaze($kprnor,'pronorma');
*php       ibaze($kprnal,'pronaln');
*php       iind($kprnor,'rsif,grupa','rsif','normativ','normativ,grupa');
*php       iind($kprnal,'rnal','rsif','normativ','dat0');

*php       $kprnorp='prnorp'.$mi; 
*php       $kprnalp='prnalp'.$mi; 
*php       ibaze($kprnorp,'pronormp');
*php       ibaze($kprnalp,'pronalnp');
*php       iind($kprnorp,'psif,grupa','psif','normativ','normativ,grupa');
*php       iind($kprnalp,'rnal','psif','normativ','dat0');
*php    }
*php 
*---------------------------------------
mrect=0
if file('aatm.dbf')
   use aatm
   select aatm      
   mrect=reccount()
   use
endif

use kasapt in 0 alias kasaput
select kasaput
mrec=reccount()
if mrec<mrect
   for i=mrec+1 to mrect
      append blank
   next
endif
use      

If mrect<>0
   use aatm in 0
   select aatm
   go top
   do while.not.eof()
      mprikaz=prikaz
      mii=alltrim(str(recno(),2,0))
      replace dok with 'M'+mii  	    
      kkal='tmkal'+mii 
      kkalg='tmkalg'+mii 
      kfak='tmfak'+mii 
      kfakg='tmfakg'+mii 
      ktvniv='tmniv'+mii 
      kkalzav='kalzam'+mii 
      krob='mrob'+mii 
      krobm='robm'+mii 
      ktm='tm'+mii 
      ktmp='tmp'+mii 
      ktrmpar='trmpar'+mii 
      kkasarf='kasarf'+mii      
      kpazars='pazars'+mii            
      Kkasarv='kasarv'+mii                        
      Kkasakr='kasakr'+mii                              

      do ibaze with krob,'rob' 
      do ibaze with krobm,'rob' 
      do ibaze with kkal,'kal' 
      do ibaze with kkalg,'kalg' 
      do ibaze with kfak,'fak' 
      do ibaze with kfakg,'fakg' 
      do ibaze with ktvniv,'tvniv' 
      do ibaze with ktm,'tvtm' 
      do ibaze with kkalzav,'kalzav'
      do ibaze with kkasarf,'kasarf'      
      do ibaze with kpazars,'pazars'            
      do ibaze with kkasarv,'kasarv'                        
      do ibaze with kkasakr,'kasakr'                              
        
      do iind with krob,'rsif','naz+podnaziv','tarifa','barkod','sifra','podnaziv','rsif+podnaziv','proizv','podrob','grupa+naz'
      do iind with krobm,'rsif','naz+podnaziv','tarifa','barkod','sifra','podnaziv','rsif+podnaziv','proizv','podrob','grupa+naz'

      do iind with kkalzav,'brkal'
      do iind with kkal,'brkal','rsif+dtos(datdok)'
      do iind with kkalg,'brkal','datdok','brnal+brkal','sifra','sifra+brrac','rnal','dokum'
      do iind with kfak,'brkal','rsif+dtos(datdok)','magacin'
      do iind with kfakg,'brkal','datdok','brnal+brkal','sifra','sifra+brrac','rnal','tovarni','otpbr'
      do iind with ktvniv,'brkal','rsif+dtos(datdok)','brnal+brkal','brkaln'
      do iind with ktm,'datdok','brkal','brnal','brfak'
      do iind with kkasarf,'rsif','brkal','naz'         
      do iind with kpazars,'datdok','brojdnev','dok'     
      do iind with kkasakr,'brkred','flsifra','datdok','dok+brkred'                     
*      endif
      select aatm
      skip
   enddo   
   select aatm
   use
endif


*php   $mreca=0;
*php   $upit = "select * from kasapt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);   
*php 
*php   $mrecb=0;
*php   $upit = "select * from aatm ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mrecb=mysql_num_rows($rez);   
*php 
*php   if ($mreca<$mrecb)
*php   {
*php     for ($i=1;$i<=$mrecb;$i+=1)
*php     {
*php        $upit =" insert into kasapt() values ()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php     }	  
*php   }
*php   if ($mrecb<>0)
*php   {
*php     for ($i=1;$i<=$mrecb;$i+=1)
*php     {  
*php        $mii=trim(strval($i));
*php        $dok='M'.$mii;  	    
*php        $kkal='tmkal'.$mii;
*php        $kkalg='tmkalg'.$mii;
*php        $kfak='tmfak'.$mii;
*php        $kfakg='tmfakg'.$mii;
*php        $ktvniv='tmniv'.$mii;
*php        $kkalzav='kalzam'.$mii;
*php        $krob='mrob'.$mii;
*php        $krobm='robm'.$mii;
*php        $ktm='tm'.$mii;
*php        $kkasarf='kasarf'.$mii;     
*php        $kkasafs='kasafs'.$mii;           
*php        $kpazars='pazars'.$mii;           
*php        $kkasarv='kasarv'.$mii;                       
*php        $kkasakr='kasakr'.$mii;                             

*php 
*php       ibaze('rob','1'); 
*php       ibaze($kkal,'kal'); 
*php       ibaze($kkalg,'kalg'); 
*php       ibaze($kfak,'fak'); 
*php       ibaze($kfakg,'fakg'); 
*php       ibaze($ktvniv,'tvniv'); 
*php       ibaze($kkalzav,'kalzav');
*php       ibaze($ktm,'tvtm');  
*php       ibaze($krob,'rob'); 
*php       ibaze($krobm,'rob'); 
*php       ibaze($kkasarf,'kasarf');      
*php       ibaze($kpazars,'pazars');            
*php       ibaze($kkasarv,'kasarv');                        
*php       ibaze($kkasakr,'kasakr');                              
*php         
*php       iind($krob,'rsif','naz,podnaziv','tarifa','barkod','sifra','podnaziv','rsif,podnaziv','proizv','podrob','grupa,naz');
*php       iind($krobm,'rsif','naz,podnaziv','tarifa','barkod','sifra','podnaziv','rsif,podnaziv','proizv','podrob','grupa,naz');
*php       iind($kkalzav,'brkal');
*php       iind($kkal,'brkal','rsif,datdok');
*php       iind($kkalg,'brkal','datdok','brnal,brkal','sifra','sifra,brrac','rnal','dokum');
*php       iind($kfak,'brkal','rsif,datdok','magacin');
*php       iind($kfakg,'brkal','datdok','brnal,brkal','sifra','sifra,brrac','rnal','tovarni','otpbr');
*php       iind($ktvniv,'brkal','rsif,datdok','brnal,brkal','brkaln');
*php       iind($ktm,'datdok','brkal','brnal','brfak');
*php       iind($kkasarf,'rsif','brkal','naz');
*php       iind($kpazars,'datdok','brojdnev','dok');     
*php       iind($kkasakr,'brkred','flsifra','datdok','dok,brkred');   
*php     }
*php   }	  




*--------------------------------------------- 
mrect=0
if file('aatv.dbf')
   use aatv in 0 alias aat
   select aat
   mrect=reccount()
   use
endif

if mrect<>0
   use aatv in 0
   select aatv
   go top
   do while.not.eof()
      mprikaz=prikaz
      mii=alltrim(str(recno(),2,0))
      replace dok with 'V'+mii
         kkal='kal'+mii
         kkalg='kalg'+mii 
         kkalzav='kalzav'+mii 
         kfak='fak'+mii 
         kfakg='fakg'+mii 
         ktvniv='tvniv'+mii 
         krob='rob'+mii 
         krobv='robv'+mii 
         ktm='tvtm'+mii 
         kkalgu='kalgu'+mii 
         kfakgu='fakgu'+mii 

         do ibaze with krob,'rob' 
         do ibaze with krobv,'rob' 
         do ibaze with kkal,'kal' 
         do ibaze with kkalzav,'kalzav'
         do ibaze with kkalg,'kalg' 
         do ibaze with kfak,'fak' 
         do ibaze with kfakg,'fakg' 
         do ibaze with ktvniv,'tvniv' 
         do ibaze with ktm,'tvtm' 
         do ibaze with kkalgu,'kalgu' 
         do ibaze with kfakgu,'kalgu' 
     
         do iind with krob,'rsif','naz+podnaziv','tarifa','barkod','sifra','podnaziv','rsif+podnaziv','proizv','podrob','grupa+naz'
         do iind with krobv,'rsif','naz+podnaziv','tarifa','barkod','sifra','podnaziv','rsif+podnaziv','proizv','podrob','grupa+naz'
         do iind with kkal,'brkal','rsif+dtos(datdok)'
         do iind with kkalzav,'brkal'
         do iind with kkalg,'brkal','datdok','brnal+brkal','sifra','sifra+brrac','rnal','dokum'
         do iind with kfak,'brkal','rsif+dtos(datdok)','magacin'
         do iind with kfakg,'brkal','datdok','brnal+brkal','sifra','sifra+brrac','rnal','tovarni','otpbr'
         do iind with ktvniv,'brkal','rsif+dtos(datdok)','brnal+brkal','brkaln'
         do iind with ktm,'datdok','brkal','brnal','brfak'
         do iind with kkalgu,'brkal'
         do iind with kfakgu,'brkal'
*      endif   
      select aatv
      skip
   enddo   
   select aatv
   use
endif

*php   $mreca=0;
*php   $upit = "select * from aatv ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mrecb=mysql_num_rows($rez);   
*php   if ($mrecb<>0)
*php   {
*php     for ($i=1;$i<=$mrecb;$i+=1)
*php     {
*php          $mii=trim(strval($i));
*php          $dok='V'.$mii;
*php          $kkal='kal'.$mii;
*php          $kkalg='kalg'.$mii; 
*php          $kkalzav='kalzav'.$mii;
*php          $kfak='fak'.$mii; 
*php          $kfakg='fakg'.$mii;
*php          $ktvniv='tvniv'.$mii;
*php          $krob='rob'.$mii; 
*php          $krobv='robv'.$mii; 
*php          $ktm='tvtm'.$mii; 
*php          $kkalgu='kalgu'.$mii; 
*php          $kfakgu='fakgu'.$mii; 
*php 
*php          ibaze($krob,'rob'); 
*php          ibaze($krobv,'rob');  
*php          ibaze($kkal,'kal');  
*php          ibaze($kkalzav,'kalzav'); 
*php          ibaze($kkalg,'kalg');  
*php          ibaze($kfak,'fak');  
*php          ibaze($kfakg,'fakg');  
*php          ibaze($ktvniv,'tvniv');  
*php          ibaze($ktm,'tvtm');  
*php          ibaze($kkalgu,'kalgu');  
*php          ibaze($kfakgu,'kalgu');  
*php      
*php          iind($krob,'rsif','naz,podnaziv','tarifa','barkod','sifra','podnaziv','rsif,podnaziv','proizv','podrob','grupa,naz'); 
*php          iind($krobv,'rsif','naz,podnaziv','tarifa','barkod','sifra','podnaziv','rsif,podnaziv','proizv','podrob','grupa,naz'); 
*php          iind($kkal,'brkal','rsif,datdok'); 
*php          iind($kkalzav,'brkal'); 
*php          iind($kkalg,'brkal','datdok','brnal,brkal','sifra','sifra,brrac','rnal','dokum'); 
*php          iind($kfak,'brkal','rsif,datdok','magacin'); 
*php          iind($kfakg,'brkal','datdok','brnal,brkal','sifra','sifra,brrac','rnal','tovarni','otpbr'); 
*php          iind($ktvniv,'brkal','rsif,datdok','brnal,brkal','brkaln'); 
*php          iind($ktm,'datdok','brkal','brnal','brfak'); 
*php          iind($kkalgu,'brkal');
*php          iind($kfakgu,'brkal'); 
*php    }
*php }   
