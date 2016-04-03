set default to &mdata02k   
do ibazekom  with 'vp'

*php ibazekom('vp','1');

do ibazekom  with 'vpupl'

*php ibazekom('vpupl','1');


do ibazekom  with 'vpupld'
*php ibazekom('vpupld','1');

do ibazekom  with 'vpcene'
*php ibazekom('vpcene','1');

do ibazekom  with 'vpobrac'
*php ibazekom('vpobrac','1');

do ibazekom  with 'vpuple','vpupl'
*php ibazekom('vpuple','vpupl');

do ibazekom  with 'vpuples','vpupl'
*php ibazekom('vpuples','vpupl');

do ibazekom  with 'vpupless','vpupl'
*php ibazekom('vpupless','vpupl');

do ibazekom  with 'vpulice'
*php ibazekom('vpulice','1');

do ibazekom  with 'vpkam'
*php ibazekom('vpkam','1');

do ibazekom  with 'vpkastop'
*php ibazekom('vpkastop','1');

do ibazekom  with 'vpkakoef'
*php ibazekom('vpkakoef','1');

do ibazekom  with 'an00'
*php ibazekom('an00','1');

do ibazekom  with 'vpeput'
*php ibazekom('vpeput','1');

do ibazekom  with 'vpeks'
*php ibazekom('vpeks','1');

do ibazekom  with 'vpsporaz'
*php ibazekom('vpsporaz','1');

do ibazekom  with 'vpopom'
*php ibazekom('vpopom','1');

do ibazekom  with 'vpopomd'
*php ibazekom('vpopomd','1');

do ibazekom  with 'vpf','vp'
*php ibazekom('vpf','vp');

do ibazekom  with 'vpupldf','vpupld'
*php ibazekom('vpupldf','vpupld');

do ibazekom  with 'vpractxt'
*php ibazekom('vpractxt','1');

do ibazekom  with 'vpractx2'
*php ibazekom('vpractx2','1');

do ibazekom  with 'vpractxf'
*php ibazekom('vpractxf','1');

do ibazekom  with 'vpunp'
*php ibazekom('vpunp','1');

do ibazekom  with 'vpgrupa'
*php ibazekom('vpgrupa','1');

do ibazekom  with 'vpgrupak'
*php ibazekom('vpgrupak','1');

do ibazekom  with 'vpsud0'
*php ibazekom('vpsud0','1');

do ibazekom  with 'vpsud'
*php ibazekom('vpsud','1');

do ibazekom  with 'vc'
*php ibazekom('vc','1');

do ibazekom  with 'vcf','vp'
*php ibazekom('vcf','vp');

do ibazekom  with 'vccene'
*php ibazekom('vccene','1');



do ibazekom  with 'vpprenos'
*php ibazekom('vpprenos','1');

do ibazekom  with 'vpprv'
*php ibazekom('vpprv','1');

do ibazekom  with 'vppr'
*php ibazekom('vppr','1');

do ibazekom  with 'vpprrad'
*php ibazekom('vpprrad','1');

do ibazekom  with 'vpprmat'
*php ibazekom('vpprmat','1');

do ibazekom  with 'vpk'
*php ibazekom('vpk','1');

do ibazekom  with 'vpnalz'
*php ibazekom('vpnalz','1');

do ibazekom  with 'vpspis'
*php ibazekom('vpspis','1');

do ibazekom  with 'vpizv02'
*php ibazekom('vpizv02','1');

do ibazekom  with 'vpizv03'
*php ibazekom('vpizv03','1');

do ibazekom  with 'vpizv05'
*php ibazekom('vpizv05','1');

do ibazekom  with 'masine'
*php ibazekom('masine','1');

do ibazekom  with 'vpreklam'
*php ibazekom('vpreklam','1');

do ibazekom  with 'vpOTPISI'
*php ibazekom('vpotpisi','1');


use vpunp in 0
select vpunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from vpunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vpunp() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }





set default to &mdata02k

use vpractxt in 0
select vpractxt
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vpractxt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vpractxt() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


use vpractx2 in 0
select vpractx2
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vpractx2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vpractx2() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }



do ibazekom with 'pu0'
*php ibazekom('pu0','1');

do ibazekom with 'pu'
*php ibazekom('pu','1');

do ibazekom with 'puanal'
*php ibazekom('puanal','1');


do ibazekom with 'aptro'
*php ibazekom('aptro','1');

do ibazekom with 'aptro0'
*php ibazekom('aptr0o','1');

do ibazekom with 'apfak'
*php ibazekom('apfak','1');

do ibazekom with 'apfak0'
*php ibazekom('apfak0','1');

do ibazekom with 'apizv'
*php ibazekom('apizv','1');

do ibazekom with 'apizv01'
*php ibazekom('apizv01','1');


push key clear
   do ibazekom with 'nopazput'
   *php ibazekom('nopazput','1');

   do ibazekom with 'nopazpar'
   *php ibazekom('nopazpar','1');

   do ibazekom with 'nopazrob'
   *php ibazekom('nopazrob','1');

   do ibazekom with 'nopazkon'   
   *php ibazekom('nopazkon','1');

   do ibazekom with 'nopazos0'      
   *php ibazekom('nopazos0','1');

   do ibazekom with 'nopazpro'
   *php ibazekom('nopazpro','1');

   do ibazekom with 'nopazgk'
   *php ibazekom('nopazgk','1');
   
pop key

*--------------boljevac-----------

do ibazekom  with 'bo'
*php ibazekom('bo','1');

do ibazekom  with 'boupl'
*php ibazekom('boupl','1');

do ibazekom  with 'boupld'
*php ibazekom('boupld','1');

do ibazekom  with 'bocene'
*php ibazekom('bocene','1');

do ibazekom  with 'boobrac'
*php ibazekom('boobrac','1');

do ibazekom  with 'bouple','boupl'
*php ibazekom('bouple','boupl');

do ibazekom  with 'bouples','boupl'
*php ibazekom('bouples','boupl');

do ibazekom  with 'boupless','boupl'
*php ibazekom('boupless','boupl');

do ibazekom  with 'boulice'
*php ibazekom('boulice','1');

do ibazekom  with 'boeput'
*php ibazekom('boeput','1');

do ibazekom  with 'boeks'
*php ibazekom('boeks','1');

do ibazekom  with 'bosporaz'
*php ibazekom('bosporaz','1');

do ibazekom  with 'botuzbe'
*php ibazekom('botuzbe','1');

do ibazekom  with 'bofirme','bo'
*php ibazekom('bofirme','bo');

do ibazekom  with 'boupldf','boupld'
*php ibazekom('boupldf','boupld');

do ibazekom  with 'boractxt'
*php ibazekom('boractxt','1');

do ibazekom  with 'boractx2'
*php ibazekom('boractx2','1');


do ibazekom  with 'boractxf'
*php ibazekom('boractxf','1');

do ibazekom  with 'bounp'
*php ibazekom('bounp','1');

do ibazekom  with 'bogrupa'
*php ibazekom('bogrupa','1');

do ibazekom  with 'bogrupak'
*php ibazekom('bogrupak','1');

do ibazekom  with 'bosud0'
*php ibazekom('bosud0','1');

do ibazekom  with 'bosud'
*php ibazekom('bosud','1');




do ibazekom  with 'boprenos'
*php ibazekom('boprenos','1');

do ibazekom  with 'boprv'
*php ibazekom('boprv','1');

do ibazekom  with 'bopr'
*php ibazekom('bopr','1');

do ibazekom  with 'boprrad'
*php ibazekom('boprrad','1');

do ibazekom  with 'boprmat'
*php ibazekom('boprmat','1');


do ibazekom  with 'bok'
*php ibazekom('bok','1');

do ibazekom  with 'bonalz'
*php ibazekom('bonalz','1');

do ibazekom  with 'bospis'
*php ibazekom('bospis','1');



use vpunp in 0
select vpunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from vpunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vpunp() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }




set default to &mdata02k


*------bojnik-----------------------------

do ibazekom  with 'jb'
*php ibazekom('jb','1');

do ibazekom  with 'jbupl'
*php ibazekom('jbupl','1');

do ibazekom  with 'jbupld','jb'
*php ibazekom('jbupld','jb');

do ibazekom  with 'jbcene'
*php ibazekom('jbcene','1');

do ibazekom  with 'jbobrac'
*php ibazekom('jbobrac','1');

do ibazekom  with 'jbuple','jbupl'
*php ibazekom('jbuple','jbupl');

do ibazekom  with 'jbuples','jbupl'
*php ibazekom('jbuples','jbupl');

do ibazekom  with 'jbupless','jbupl'
*php ibazekom('jbupless','jbupl');

do ibazekom  with 'jbulice'
*php ibazekom('jbulice','1');

do ibazekom  with 'an00'
*php ibazekom('an00','1');

do ibazekom  with 'jbeput'
*php ibazekom('jbeput','1');

do ibazekom  with 'jbeks'
*php ibazekom('jbeks','1');

do ibazekom  with 'jbsporaz'
*php ibazekom('jbsporaz','1');



do ibazekom  with 'jbf','jb'
*php ibazekom('jbf','jb');

do ibazekom  with 'jbupldf','jb'
*php ibazekom('jbupldf','jb');

do ibazekom  with 'jbractxt'
*php ibazekom('jbractxt','1');

do ibazekom  with 'jbractx2'
*php ibazekom('jbractx2','1');


do ibazekom  with 'jbractxf'
*php ibazekom('jbractxf','1');

do ibazekom  with 'jbunp'
*php ibazekom('jbunp','1');

do ibazekom  with 'jbgrupa'
*php ibazekom('jbgrupa','1');

do ibazekom  with 'jbgrupak'
*php ibazekom('jbgrupak','1');


do ibazekom  with 'jbsud0'
*php ibazekom('jbsud0','1');

do ibazekom  with 'jbsud'
*php ibazekom('jbsud','1');



do ibazekom  with 'jbprenos'
*php ibazekom('jbprenos','1');

do ibazekom  with 'jbprv'
*php ibazekom('jbprv','1');

do ibazekom  with 'jbpr'
*php ibazekom('jbpr','1');

do ibazekom  with 'jbprrad'
*php ibazekom('jbprrad','1');

do ibazekom  with 'jbprmat'
*php ibazekom('jbprmat','1');


do ibazekom  with 'jbk'
*php ibazekom('jbk','1');

do ibazekom  with 'jbnalz'
*php ibazekom('jbnalz','1');

do ibazekom  with 'jbspis'
*php ibazekom('jbspis','1');

do ibazekom  with 'jbizv02'
*php ibazekom('jbizv02','1');

do ibazekom  with 'jbizv03'
*php ibazekom('jbizv03','1');

do ibazekom  with 'jbizv05'
*php ibazekom('jbizv05','1');



use jbunp in 0
select jbunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from jbunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into jbunp values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


*--------usluga pn--------------------------------


set default to &mdata02k

do ibazekom  with 'jp'
*php ibazekom('jp','1');

do ibazekom  with 'jpf','jp'
*php ibazekom('jpf','jp');

do ibazekom  with 'jpupl'
*php ibazekom('jpupl','1');

do ibazekom  with 'jpcene'
*php ibazekom('jpcene','1');

do ibazekom  with 'jpulice'
*php ibazekom('jpulice','1');

do ibazekom  with 'jpobrac'
*php ibazekom('jpobrac','1');

do ibazekom  with 'jpfobrac','jpobrac'
*php ibazekom('jpfobrac','jpobrac');

do ibazekom  with 'jpractxt'
*php ibazekom('jpractxt','1');

do ibazekom  with 'jpractxf'
*php ibazekom('jpractxf','1');

do ibazekom  with 'jpunp'
*php ibazekom('jpunp','1');

do ibazekom  with 'jpgrupak'
*php ibazekom('jpgrupak','1');

do ibazekom  with 'jpgrupa'
*php ibazekom('jpgrupa','1');

do ibazekom  with 'jpfk'
*php ibazekom('jpfk','1');





use jpunp in 0
select jpunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from jpunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into jpunp values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }

use jpractxt in 0
select jpractxt
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from jpractxt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into jpractxt values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }

set default to &mdata02k

use jbractxt in 0
select jbractxt
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from jbractxt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into jbractxt() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


use jbractx2 in 0
select jbractx2
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from jbractx2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into jbractx2() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }



*-----------tehnicki--------------------------------------

set default to &mdata02k


do ibazekom  with 'otg'
*php ibazekom('otg','1');

do ibazekom  with 'otgtxt'
*php ibazekom('otgtxt','1');

do ibazekom  with 'ot0','otg'
*php ibazekom('ot0','otg');

do ibazekom  with 'otnos'
*php ibazekom('otnos','1');

do ibazekom  with 'otopst'
*php ibazekom('otopst','1');

do ibazekom  with 'otosnbo'
*php ibazekom('otosnbo','1');

do ibazekom  with 'otposta'
*php ibazekom('otposta','1');

do ibazekom  with 'ottip'
*php ibazekom('ottip','1');

do ibazekom  with 'otvirm0'
*php ibazekom('otvirm0','1');

do ibazekom  with 'otvirma','otvirm'
*php ibazekom('otvirma','otvirm');

do ibazekom  with 'otvirme','otvirm'
*php ibazekom('otvirme','otvirm');

do ibazekom  with 'otvrsta'
*php ibazekom('otvrsta','1');

do ibazekom  with 'otzapr'
*php ibazekom('otzapr','1');

do ibazekom  with 'otzemlj'
*php ibazekom('otzemlj','1');

do ibazekom  with 'otrazlog'
*php ibazekom('otrazlog','1');

do ibazekom  with 'otgorivo'
*php ibazekom('otgorivo','1');

do ibazekom  with 'otvrpreg'
*php ibazekom('otvrpreg','1');

do ibazekom  with 'otisprav'
*php ibazekom('otisprav','1');

do ibazekom  with 'otgrad'
*php ibazekom('otgrad','1');

do ibazekom  with 'otvirs'
*php ibazekom('otvirs','1');

do ibazekom  with 'ot0s'
*php ibazekom('ot0s','1');




use otrazlog in 0
select otrazlog
if reccount()<1
   append blank
   replace sifraz with '0'
   replace razlog with 'prva registracija '
   append blank
   replace sifraz with '1'
   replace razlog with 'ponovna registracija '
   append blank
   replace sifraz with '2'
   replace razlog with 'produžena registracija '
   append blank
   replace sifraz with '3'
   replace razlog with 'privremena registracija '
   append blank
   replace sifraz with '4'
   replace razlog with 'promena imaoca vozila '
   append blank
   replace sifraz with '5'
   replace razlog with 'promena podat.o imaocu vozila '
   append blank
   replace sifraz with '6'
   replace razlog with 'promena teh.podataka o vozilu '
   append blank
   replace sifraz with '7'
   replace razlog with 'promena registarskih tablica '
   append blank
   replace sifraz with '8'
   replace razlog with 'promena prebivališta-adrese '
   append blank
   replace sifraz with '9'
   replace razlog with 'odjava vozila '
   append blank
   replace sifraz with 'x'
   replace razlog with 'briše razlog '
endif
use

use otgorivo in 0
select otgorivo
if reccount()<1
   append blank
   replace gorivo with '1'
   replace gornaz with 'benzin '
   append blank
   replace gorivo with '2'
   replace gornaz with 'benzin/tng '
   append blank
   replace gorivo with '3'
   replace gornaz with 'benzin/kpg '
   append blank
   replace gorivo with '4'
   replace gornaz with 'dizel '
   append blank
   replace gorivo with '5'
   replace gornaz with 'dizel/elektro '
   append blank
   replace gorivo with '6'
   replace gornaz with 'mešavina '
   append blank
   replace gorivo with '7'
   replace gornaz with 'eurodizel '
   append blank
   replace gorivo with '8'
   replace gornaz with 'bezolovni '
endif
use

use otvrpreg in 0
select otvrpreg
if reccount()<1
   append blank
   replace vrspregl with '1'
   replace nvrspregl with 'redovan '
   append blank
   replace vrspregl with '2'
   replace nvrspregl with 'vanredan '
   append blank
   replace vrspregl with '16'
   replace nvrspregl with 'redovan 6 mes '
endif
use

use otisprav in 0
select otisprav
if reccount()<1
   append blank
   replace ispravno with '1'
   replace nispravno with 'ispravno '
   append blank
   replace ispravno with '2'
   replace nispravno with 'neispravno '
endif
use

use otvirs in 0
select otvirs
if reccount()<1
   append blank
   replace grupa with '2'
   replace dat0 with date()
   replace dat1 with date()
endif
use

*----------batocina---------------------


do ibazekom  with 'vb'
*php ibazekom('vb','1');

do ibazekom  with 'vbupl'
*php ibazekom('vbupl','1');

do ibazekom  with 'vbcene'
*php ibazekom('vbcene','1');

do ibazekom  with 'vbobrac'
*php ibazekom('vbobrac','1');

do ibazekom  with 'vbuple','vbupl'
*php ibazekom('vbuple','vbupl');

do ibazekom  with 'vbuples','vbupl'
*php ibazekom('vbuples','vbupl');

do ibazekom  with 'vbupless','vbupl'
*php ibazekom('vbupless','vbupl');

do ibazekom  with 'vbulice'
*php ibazekom('vbulice','1');

do ibazekom  with 'vbunp'
*php ibazekom('vbunp','1');

do ibazekom  with 'vbgrupa'
*php ibazekom('vbgrupa','1');

do ibazekom  with 'vbgrupak'
*php ibazekom('vbgrupak','1');

do ibazekom  with 'vbprenos'
*php ibazekom('vbprenos','1');

do ibazekom  with 'vbprv'
*php ibazekom('vbprv','1');

do ibazekom  with 'vbpr'
*php ibazekom('vbpr','1');

do ibazekom  with 'vbk'
*php ibazekom('vbk','1');

do ibazekom  with 'vbnalz'
*php ibazekom('vbnalz','1');

do ibazekom  with 'vbspis'
*php ibazekom('vbspis','1');

do ibazekom  with 'vbizv02'
*php ibazekom('vbizv02','1');

do ibazekom  with 'vbizv03'
*php ibazekom('vbizv03','1');

do ibazekom  with 'vbizv05'
*php ibazekom('vbizv05','1');






use vbunp in 0
select vbunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from vbunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vbunp() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }

**************************************************

set default to &mdata02k


*----despotovac------------


do ibazekom  with 'vd'
*php ibazekom('vd','1');

do ibazekom  with 'vdF','vd'
*php ibazekom('vdf','vd');

do ibazekom  with 'vdupl'
*php ibazekom('vdupl','1');

do ibazekom  with 'vdupld'
*php ibazekom('vdupld','1');

do ibazekom  with 'vduplf','vdupl'
*php ibazekom('vduplf','vdupl');

do ibazekom  with 'vdupldf','vdupld'
*php ibazekom('vdupldf','vdupld');

do ibazekom  with 'vdcene'
*php ibazekom('vdcene','1');

do ibazekom  with 'vdobrac'
*php ibazekom('vdobrac','1');

do ibazekom  with 'vduple','vdupl'
*php ibazekom('vduple','vdupl');

do ibazekom  with 'vduples','vdupl'
*php ibazekom('vduples','vdupl');

do ibazekom  with 'vdupless','vdupl'
*php ibazekom('vdupless','vdupl');

do ibazekom  with 'vdkam'
*php ibazekom('vdkam','1');

do ibazekom  with 'vdkastop'
*php ibazekom('vdkastop','1');

do ibazekom  with 'vdkakoef'
*php ibazekom('vdkakoef','1');

do ibazekom  with 'an00'
*php ibazekom('an00','1');

do ibazekom  with 'vdeput'
*php ibazekom('vdeput','1');

do ibazekom  with 'vdeks'
*php ibazekom('vdeks','1');

do ibazekom  with 'vdsporaz'
*php ibazekom('vdsporaz','1');

do ibazekom  with 'vdmesta'
*php ibazekom('vdmesta','1');

do ibazekom  with 'vdreon'
*php ibazekom('vdreon','1');

do ibazekom  with 'vdulice'
*php ibazekom('vdulice','1');

do ibazekom  with 'vdzgra'
*php ibazekom('vdzgra','1');

do ibazekom  with 'vdsavet'
*php ibazekom('vdsavet','1');

do ibazekom  with 'vdvert'
*php ibazekom('vdvert','1');

do ibazekom  with 'vdstan'
*php ibazekom('vdstan','1');

do ibazekom  with 'vdvrste'
*php ibazekom('vdvrste','1');

do ibazekom  with 'vdvodom'
*php ibazekom('vdvodom','1');

do ibazekom  with 'vdvopot'
*php ibazekom('vdvopot','1');


do ibazekom  with 'vdf','vd'
*php ibazekom('vdf','vd');

do ibazekom  with 'vdupldf','vdupld'
*php ibazekom('vdupldf','vdupld');


do ibazekom  with 'vdractxt'
*php ibazekom('vdractxt','1');

do ibazekom  with 'vdractx2'
*php ibazekom('vdractx2','1');


do ibazekom  with 'vdractxf'
*php ibazekom('vdractx2','1');

do ibazekom  with 'vdunp'
*php ibazekom('vdunp','1');

do ibazekom  with 'vdgrupa'
*php ibazekom('vdgrupa','1');

do ibazekom  with 'vdgrupak'
*php ibazekom('vdgrupak','1');


do ibazekom  with 'vdsud0'
*php ibazekom('vdsud0','1');

do ibazekom  with 'vdsud'
*php ibazekom('vdsud','1');




do ibazekom  with 'vdprenos'
*php ibazekom('vdprenos','1');

do ibazekom  with 'vdprv'
*php ibazekom('vdprv','1');

do ibazekom  with 'vdpr'
*php ibazekom('vdpr','1');

do ibazekom  with 'vdprrad'
*php ibazekom('vdprrad','1');

do ibazekom  with 'vdprmat'
*php ibazekom('vdprmat','1');


do ibazekom  with 'vdk'
*php ibazekom('vdk','1');

do ibazekom  with 'vdnalz'
*php ibazekom('vdnalz','1');

do ibazekom  with 'vdspis'
*php ibazekom('vdspis','1');

do ibazekom  with 'vdizv02'
*php ibazekom('vdizv02','1');

do ibazekom  with 'vdizv03'
*php ibazekom('vdizv03','1');

do ibazekom  with 'vdizv05'
*php ibazekom('vdizv05','1');

do ibazekom  with 'vdk'
*php ibazekom('vdk','1');



use vdunp in 0
select vdunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from vdunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vdunp() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }



set default to &mdata02k

use vdractxt in 0
select vdractxt
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vdractxt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vdractxt() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


use vdractx2 in 0
select vdractx2
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vdractx2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vdractx2() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }

*-------------prokuplje------------------

do ibazekom  with 'vk'
*php ibazekom('vk','1');

do ibazekom  with 'vkPOST'
*php ibazekom('vkpost','1');

do ibazekom  with 'vkPOSTd'
*php ibazekom('vkpostd','1');

do ibazekom  with 'vkPOSTT'
*php ibazekom('vkpostt','1');

do ibazekom  with 'vkupl'
*php ibazekom('vkupl','1');

do ibazekom  with 'vkupld'
*php ibazekom('vkupld','1');

do ibazekom  with 'vkcene'
*php ibazekom('vkcene','1');

do ibazekom  with 'vkobrac'
*php ibazekom('vkobrac','1');

do ibazekom  with 'vkuple','vkupl'
*php ibazekom('vkuple','vkupl');

do ibazekom  with 'vkuples','vkupl'
*php ibazekom('vkuples','vkupl');

do ibazekom  with 'vkupless','vkupl'
*php ibazekom('vkupless','vkupl');

do ibazekom  with 'vkulice'
*php ibazekom('vkulice','1');

do ibazekom  with 'an00'
*php ibazekom('an00','1');


do ibazekom  with 'vkf','vk'
*php ibazekom('vkf','vk');

do ibazekom  with 'vkupldf','vkupld'
*php ibazekom('vkupldf','vkupld');


do ibazekom  with 'vkractxt'
*php ibazekom('vkractxt','1');

do ibazekom  with 'vkractx2'
*php ibazekom('vkractx2','1');


do ibazekom  with 'vkractxf'
*php ibazekom('vkractxf','1');

do ibazekom  with 'vkunp'
*php ibazekom('vkunp','1');

do ibazekom  with 'vkgrupa'
*php ibazekom('vkgrupa','1');

do ibazekom  with 'vkgrupak'
*php ibazekom('vkgrupak','1');



do ibazekom  with 'vkprenos'
*php ibazekom('vkprenos','1');

do ibazekom  with 'vkprv'
*php ibazekom('vkprv','1');

do ibazekom  with 'vkpr'
*php ibazekom('vkpr','1');

do ibazekom  with 'vkprrad'
*php ibazekom('vkprrad','1');

do ibazekom  with 'vkprmat'
*php ibazekom('vkprmat','1');


do ibazekom  with 'vkk'
*php ibazekom('vkk','1');

do ibazekom  with 'vknalz'
*php ibazekom('vknalz','1');

do ibazekom  with 'vkspis'
*php ibazekom('vkspis','1');

do ibazekom  with 'vkizv02'
*php ibazekom('vkizv02','1');

do ibazekom  with 'vkizv03'
*php ibazekom('vkizv03','1');

do ibazekom  with 'vkizv05'
*php ibazekom('vkizv05','1');









use vkunp in 0
select vkunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

*php $mreca=0;
*php $upit = "select * from vkunp ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vkunp() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


use vkractxt in 0
select vkractxt
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vkractxt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vkractxt() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }




use vkractx2 in 0
select vkractx2
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vkractx2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vkractx2() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }



*--------toplana vp----------------------------

do ibazekom  with 'vt'
*php ibazekom('vt','1');

do ibazekom  with 'vtupl'
*php ibazekom('vtupl','1');

do ibazekom  with 'vtupld','vt'
*php ibazekom('vtupld','vt');

do ibazekom  with 'vtupldo','vt'
*php ibazekom('vtupldo','vt');

do ibazekom  with 'vtcene'
*php ibazekom('vtcene','1');

do ibazekom  with 'vtobrac'
*php ibazekom('vtobrac','1');

do ibazekom  with 'vtuple','vtupl'
*php ibazekom('vtuple','vtupl');

do ibazekom  with 'vtulice'
*php ibazekom('vtulice','1');

do ibazekom  with 'vtspis'
*php ibazekom('vtspis','1');


do ibazekom  with 'vtf','vt'
*php ibazekom('vtf','vt');

do ibazekom  with 'vtupldf','vt'
*php ibazekom('vtupldf','vt');


do ibazekom  with 'vtractxt'
*php ibazekom('vtractxt','1');

do ibazekom  with 'vtractx2'
*php ibazekom('vtractx2','1');


do ibazekom  with 'vtractxf'
*php ibazekom('vtractxf','1');

do ibazekom  with 'vtgrupa'
*php ibazekom('vtgrupa','1');

do ibazekom  with 'vtgrupak'
*php ibazekom('vtgrupak','1');


do ibazekom  with 'vtprenos'
*php ibazekom('vtprenos','1');


do ibazekom  with 'vtk'
*php ibazekom('vtk','1');

do ibazekom  with 'vtnalz'
*php ibazekom('vtnalz','1');

do ibazekom  with 'vtspis'
*php ibazekom('vtspis','1');

do ibazekom  with 'vtzgrade'
*php ibazekom('vtzgrade','1');







set default to &mdata02k

use vtractxt in 0
select vtractxt
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vtractxt ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vtractxt() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


use vtractx2 in 0
select vtractx2
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vtractx2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vtractx2() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }



use vtractxf in 0
select vtractxf
if reccount()<1
   append blank
endif
use   

*php $mreca=0;
*php $upit = "select * from vtractxf ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php $mreca=mysql_num_rows($rez);
*php if ($mreca<1)
*php {
*php    $upit =" insert into vtractxf() values()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }


*----------soc-------------------------
do ibazekom with 'soc'
*php ibazekom('soc','1');

do ibazekom with 'soci'
*php ibazekom('soci','1');

do ibazekom with 'soculice'
*php ibazekom('soculice','1');


*---------haccap
do ibazekom with 'hc01'
*php ibazekom('hc01','1');


do ibazekom with 'hc02'
*php ibazekom('hc02','1');




do ibazekom with 'hc02s'
*php ibazekom('hc02s','1');


do ibazekom with 'hc03'
*php ibazekom('hc03','1');



do ibazekom with 'hc04'
*php ibazekom('hc04','1');


do ibazekom with 'hc040'
*php ibazekom('hc040','1');


do ibazekom with 'hc04k'
*php ibazekom('hc04k','1');


do ibazekom with 'hc040k'
*php ibazekom('hc040k','1');



do ibazekom with 'hc05'
*php ibazekom('hc05','1');


do ibazekom with 'hc051'
*php ibazekom('hc051','1');


do ibazekom with 'hc06'
*php ibazekom('hc06','1');


do ibazekom with 'hc07'
*php ibazekom('hc07','1');


do ibazekom with 'hc08'
*php ibazekom('hc08','1');




*****************INDEKSI--------------


do iind with 'vpprv','vrsta','opis'
*php iind('vpprv','vrsta','opis');

do iind with 'vppr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('vppr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');

do iind with 'vpprrad','radnal'
*php iind('vpprrad','radnal');


do iind with 'vpprmat','radnal'
*php iind('vpprmat','radnal');

do iind with 'masine','massif'
*php iind('masine','massif');


do iind with 'vpgrupa','grupa','naziv' 
*php iind('vpgrupa','grupa','naziv' );

do iind with 'vpgrupak','grupa','naziv' 
*php iind('vpgrupak','grupa','naziv' );

do iind with 'vp','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('vp','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'vpf','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('vpf','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'vpupl','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('vpupl','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'vpupld','pib','datum','brnal','grupa','brrac','brnal+brrac' 
*php iind('vpupld','pib','datum','brnal','grupa','brrac','brnal,brrac' );

do iind with 'vpupldf','pib','datum','brnal','grupa','brrac','brnal+brrac','sifra'
*php iind('vpupldf','pib','datum','brnal','grupa','brrac','brnal,brrac','sifra');


do iind with 'vpuple','pib','datum','brnal','grupa','sifra' 
*php iind('vpuple','pib','datum','brnal','grupa','sifra' );

do iind with 'vpuples','pib','datum','brnal','grupa','sifra' 
*php iind('vpuples','pib','datum','brnal','grupa','sifra' );

do iind with 'vpupless','pib','datum','brnal','grupa','sifra' 
*php iind('vpupless','pib','datum','brnal','grupa','sifra' );

do iind with 'vpcene','cenovnik'
*php iind('vpcene','cenovnik');

do iind with 'vpulice','siful','ulica'
*php iind('vpulice','siful','ulica');

do iind with 'vpkam','pib','sifra'
*php iind('vpkam','pib','sifra');

do iind with 'vpkastop','dtos(dat0)'
*php iind('vpkastop','dat0');

do iind with 'vpkakoef','dtos(datum)'
*php iind('vpkakoef','datum');

do iind with 'an00','sifra','alltrim(prez)+alltrim(ime)+alltrim(otac)','posta0','maticni0','maticni1','siful0','ulica0+ulbroj0+stan0','pib'
*php iind('an00','sifra','prez,ime,otac','posta0','maticni0','maticni1','siful0','ulica0,ulbroj0,stan0','pib');

do iind with 'vpsud0','redbr','pib'
*php iind('vpsud0','redbr','pib');

do iind with 'vpsud','redbr','pib'
*php iind('vpsud','redbr','pib');

do iind with 'vpsporaz','pib','sifra','grupa','ime_prez'
*php iind('vpsporaz','pib','sifra','grupa','ime_prez');

do iind with 'vpreklam','pib','sifra','grupa','ime_prez'
*php iind('vpreklam','pib','sifra','grupa','ime_prez');

do iind with 'vpOTPISI','pib','sifra','grupa','ime_prez'
*php iind('vpotpisi','pib','sifra','grupa','ime_prez');

do iind with 'vc','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('vc','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'vcf','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('vcf','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'vccene','cenovnik'
*php iind('vccene','cenovnik');

do iind with 'vpopom','pib','sifra','grupa','ime_prez','siful','datdok'
*php iind('vpopom','pib','sifra','grupa','ime_prez','siful','datdok');

do iind with 'vpopomd','pib','datdok'
*php iind('vpopomd','pib','datdok');


do iind with 'pu0','sifra','ime_prez','maticnibr','grupa'
*php iind('pu0','sifra','ime_prez','maticnibr','grupa');

do iind   with 'pu','sifra','ime_prez','grupa','str(mesec,2,0)+str(grupa,2,0)'
*php iind('pu','sifra','ime_prez','grupa','mesec,grupa');

do iind with 'puanal','datdok','sifra+dtos(datdok)','sifra+brrac','brnal','grupa'
*php iind('puanal','datdok','sifra,datdok','sifra,brrac','brnal','grupa');

do iind with 'aptro0','msif','naziv'
*php iind('aptro0','msif','naziv');

do iind with 'apfak0','msif','naziv'
*php iind('apfak0','msif','naziv');

do iind with 'boprv','vrsta','opis'
*php iind('boprv','vrsta','opis');

do iind with 'bopr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('bopr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');

do iind with 'boprrad','radnal'
*php iind('boprrad','radnal');

do iind with 'boprmat','radnal'
*php iind('boprmat','radnal');

do iind with 'bogrupa','grupa','naziv' 
*php iind('bogrupa','grupa','naziv' );

do iind with 'bogrupak','grupa','naziv' 
*php iind('bogrupak','grupa','naziv' );

do iind with 'bo','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('bo','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'bofirme','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('bofirme','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'boupl','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('boupl','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'boupld','pib','datum','brnal','grupa','brrac','brnal+brrac' 
*php iind('boupld','pib','datum','brnal','grupa','brrac','brnal,brrac' );

do iind with 'boupldf','pib','datum','brnal','grupa','brrac','brnal+brrac','sifra'
*php iind('boupldf','pib','datum','brnal','grupa','brrac','brnal,brrac','sifra');

do iind with 'bouple','pib','datum','brnal','grupa','sifra' 
*php iind('bouple','pib','datum','brnal','grupa','sifra' );

do iind with 'bouples','pib','datum','brnal','grupa','sifra' 
*php iind('bouples','pib','datum','brnal','grupa','sifra' );

do iind with 'boupless','pib','datum','brnal','grupa','sifra' 
*php iind('boupless','pib','datum','brnal','grupa','sifra' );

do iind with 'bocene','cenovnik'
*php iind('bocene','cenovnik');

do iind with 'boulice','siful','ulica'
*php iind('boulice','siful','ulica');

do iind with 'bosud0','redbr','pib'
*php iind('bosud0','redbr','pib');

do iind with 'bosud','redbr','pib'
*php iind('bosud','redbr','pib');

do iind with 'bosporaz','pib','sifra','grupa','ime_prez'
*php iind('bosporaz','pib','sifra','grupa','ime_prez');

do iind with 'botuzbe','pib','datum','brnal','brrac' 
*php iind('botuzbe','pib','datum','brnal','brrac' );


do iind with 'jbprv','vrsta','opis'
*php iind('jbprv','vrsta','opis');

do iind with 'jbpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('jbpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');
do iind with 'jbprrad','radnal'
*php iind('jbprrad','radnal');

do iind with 'jbprmat','radnal'
*php iind('jbprmat','radnal');
do iind with 'masine','massif'
*php iind('masine','massif');

do iind with 'jbgrupa','grupa','naziv' 
*php iind('jbgrupa','grupa','naziv' );

do iind with 'jbgrupak','grupa','naziv' 
*php iind('jbgrupak','grupa','naziv' );

do iind with 'jb','pib','datum','brnal','grupa','brrac','brnal+brrac','ime_prez','siful','sifra' 
*php iind('jb','pib','datum','brnal','grupa','brrac','brnal,brrac','ime_prez','siful','sifra' );

do iind with 'jbupld','pib','datum','brnal','grupa','brrac','brnal+brrac','ime_prez','siful','sifra'
*php iind('jbupld','pib','datum','brnal','grupa','brrac','brnal,brrac','ime_prez','siful','sifra');

do iind with 'jbf','pib','sifra','grupa','ime_prez','siful','sifra' 
*php iind('jbf','pib','sifra','grupa','ime_prez','siful','sifra' );

do iind with 'jbupl','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('jbupl','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'jbupldf','pib','datum','brnal','grupa','brrac','brnal+brrac','sifra'
*php iind('jbupldf','pib','datum','brnal','grupa','brrac','brnal,brrac','sifra');

do iind with 'jbuple','pib','datum','brnal','grupa','sifra' 
*php iind('jbuple','pib','datum','brnal','grupa','sifra' );

do iind with 'jbuples','pib','datum','brnal','grupa','sifra' 
*php iind('jbuples','pib','datum','brnal','grupa','sifra' );

do iind with 'jbupless','pib','datum','brnal','grupa','sifra' 
*php iind('jbupless','pib','datum','brnal','grupa','sifra' );

do iind with 'jbcene','cenovnik'
*php iind('jbcene','cenovnik');

do iind with 'jbulice','siful','ulica'
*php iind('jbulice','siful','ulica');

do iind with 'an00','sifra','alltrim(prez)+alltrim(ime)+alltrim(otac)','posta0','maticni0','maticni1','siful0','ulica0+ulbroj0+stan0','pib'
*php iind('an00','sifra','prez,ime,otac','posta0','maticni0','maticni1','siful0','ulica0,ulbroj0,stan0','pib');

do iind with 'jbsud0','redbr','pib'
*php iind('jbsud0','redbr','pib');

do iind with 'jbsud','redbr','pib'
*php iind('jbsud','redbr','pib');

do iind with 'jbsporaz','pib','sifra','grupa','ime_prez'
*php iind('jbsporaz','pib','sifra','grupa','ime_prez');


do iind with 'jp','pib','sifra','grupa','ime_prez','siful','idbroj'
*php iind('jp','pib','sifra','grupa','ime_prez','siful','idbroj');

do iind with 'jpf','pib','sifra','grupa','ime_prez','siful','pib2'
*php iind('jpf','pib','sifra','grupa','ime_prez','siful','pib2');

do iind with 'jpupl','pib','datum','brnal','grupa','sifra','brrac'
*php iind('jpupl','pib','datum','brnal','grupa','sifra','brrac');

do iind with 'jpcene','cenovnik'
*php iind('jpcene','cenovnik');

do iind with 'jpulice','siful','ulica'
*php iind('jpulice','siful','ulica');

do iind with 'jpgrupak','grupa','naziv'
*php iind('jpgrupak','grupa','naziv');

do iind with 'jpgrupa','grupa','naziv'
*php iind('jpgrupa','grupa','naziv');


do iind with 'otg','sifra','oznaka','dtos(datum)','tnaziv','vrspregl','godp','matbroj','prezime'
*php iind('otg','sifra','oznaka','datum','tnaziv','vrspregl','godp','matbroj','prezime');

do iind with 'ot0','sifra','oznaka','dtos(datum)','tnaziv','vrspregl','godp','matbroj','prezime'
*php iind('ot0','sifra','oznaka','datum','tnaziv','vrspregl','godp','matbroj','prezime');

do iind with 'ot0s','oznaka','sasija','dtos(datum)'
*php iind('ot0s','oznaka','sasija','datum');

*do iind with 'otdrz','drzava','naziv'
****php iind('otdrz','drzava','naziv');


do iind with 'otnos','nsifra'
*php iind('otnos','nsifra');

do iind with 'otopst','opstina','naziv'
*php iind('otopst','opstina','naziv');

do iind with 'otosnbo','osnboja','naziv'
*php iind('otosnbo','osnboja','naziv');

do iind with 'otposta','posta','mesto2'
*php iind('otposta','posta','mesto2');

do iind with 'ottip','tnaziv+marnaziv+znaziv+snaga+zapr','marnaziv','znaziv'
*php iind('ottip','tnaziv,marnaziv,znaziv,snaga,zapr','marnaziv','znaziv');

do iind with 'otvirm0','vsifra','nazrac'
*php iind('otvirm0','vsifra','nazrac');

do iind with 'otvirma','vsifra','nazrac','sifra','datdok'
*php iind('otvirma','vsifra','nazrac','sifra','datdok');

do iind with 'otvirme','vsifra','nazrac','sifra','datdok'
*php iind('otvirme','vsifra','nazrac','sifra','datdok');

do iind with 'otvrsta','vrstav','naziv'
*php iind('otvrsta','vrstav','naziv');

do iind with 'otzapr','zsifra','grad','zapr0','zirorac'
*php iind('otzapr','zsifra','grad','zapr0','zirorac');

do iind with 'otgrad','zsifra','grad'
*php iind('otgrad','zsifra','grad');

do iind with 'otzemlj','zemlja','znaziv'
*php iind('otzemlj','zemlja','znaziv');


do iind with 'vbprv','vrsta','opis'
*php iind('vbprv','vrsta','opis');

do iind with 'vbpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('vbpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');

do iind with 'vbgrupa','grupa','naziv' 
*php iind('vbgrupa','grupa','naziv' );

do iind with 'vbgrupak','grupa','naziv' 
*php iind('vbgrupak','grupa','naziv' );

do iind with 'vb','pib','sifra','grupa','ime_prez','siful','pib2','kssifra' 
*php iind('vb','pib','sifra','grupa','ime_prez','siful','pib2','kssifra' );

do iind with 'vbupl','pib','datum','brnal','grupa','sifra' 
*php iind('vbupl','pib','datum','brnal','grupa','sifra' );

do iind with 'vbuple','pib','datum','brnal','grupa','sifra' 
*php iind('vbuple','pib','datum','brnal','grupa','sifra' );

do iind with 'vbuples','pib','datum','brnal','grupa','sifra' 
*php iind('vbuples','pib','datum','brnal','grupa','sifra' );

do iind with 'vbupless','pib','datum','brnal','grupa','sifra' 
*php iind('vbupless','pib','datum','brnal','grupa','sifra' );

do iind with 'vbcene','cenovnik'
*php iind('vbcene','cenovnik');

do iind with 'vbulice','siful','ulica'
*php iind('vbulice','siful','ulica');


do iind with 'vdprv','vrsta','opis'
*php iind('vdprv','vrsta','opis');

do iind with 'vdpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('vdpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');

do iind with 'vdprrad','radnal'
*php iind('vdprrad','radnal');

do iind with 'vdprmat','radnal'
*php iind('vdprmat','radnal');

do iind with 'masine','massif'
*php iind('masine','massif');


do iind with 'vdgrupa','grupa','naziv' 
*php iind('vdgrupa','grupa','naziv' );

do iind with 'vdgrupak','grupa','naziv' 
*php iind('vdgrupak','grupa','naziv' );

do iind with 'vd','pib','sifra','grupa','ime_prez','siful','sifstan','ssifra','sifvodom','sifvert'
*php iind('vd','pib','sifra','grupa','ime_prez','siful','sifstan','ssifra','sifvodom','sifvert');

do iind with 'vdf','pib','sifra','grupa','ime_prez','siful','sifstan','ssifra','sifvodom','sifvert' 
*php iind('vdf','pib','sifra','grupa','ime_prez','siful','sifstan','ssifra','sifvodom','sifvert' );

do iind with 'vdupl','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('vdupl','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'vduplf','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('vduplf','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'vdupld','pib','datum','brnal','grupa','brrac','brnal+brrac' 
*php iind('vdupld','pib','datum','brnal','grupa','brrac','brnal,brrac' );


do iind with 'vdupldf','pib','datum','brnal','grupa','brrac','brnal+brrac','sifra'
*php iind('vdupldf','pib','datum','brnal','grupa','brrac','brnal,brrac','sifra');



do iind with 'vduple','pib','datum','brnal','grupa','sifra' 
*php iind('vduple','pib','datum','brnal','grupa','sifra' );

do iind with 'vduples','pib','datum','brnal','grupa','sifra' 
*php iind('vduples','pib','datum','brnal','grupa','sifra' );

do iind with 'vdupless','pib','datum','brnal','grupa','sifra' 
*php iind('vdupless','pib','datum','brnal','grupa','sifra' );

do iind with 'vdcene','sifcen'
*php iind('vdcene','sifcen');

do iind with 'vdkam','pib','sifra'
*php iind('vdkam','pib','sifra');

do iind with 'vdkastop','dtos(dat0)'
*php iind('vdkastop','dat0');

do iind with 'vdkakoef','dtos(datum)'
*php iind('vdkakoef','datum');

do iind with 'an00','sifra','alltrim(prez)+alltrim(ime)+alltrim(otac)','posta0','maticni0','maticni1','siful0','ulica0+ulbroj0+stan0','pib'
*php iind('an00','sifra','prez,ime,otac','posta0','maticni0','maticni1','siful0','ulica0,ulbroj0,stan0','pib');


do iind with 'vdsud0','redbr','pib'
*php iind('vdsud0','redbr','pib');

do iind with 'vdsud','redbr','pib'
*php iind('vdsud','redbr','pib');


do iind with 'vdsporaz','pib','sifra','grupa','ime_prez'
*php iind('vdsporaz','pib','sifra','grupa','ime_prez');


do iind with 'vdmesta','sifmesta','mesto'
*php iind('vdmesta','sifmesta','mesto');

do iind with 'vdreon','grupa','naziv'
*php iind('vdreon','grupa','naziv');

do iind with 'vdulice','siful','ulica'
*php iind('vdulice','siful','ulica');

do iind with 'vdzgra','sifzgra','zgrada'
*php iind('vdzgra','sifzgra','zgrada');

do iind with 'vdsavet','sifsavet','savet'
*php iind('vdsavet','sifsavet','savet');

do iind with 'vdvert','sifvert','vertikala'
*php iind('vdvert','sifvert','vertikala');

do iind with 'vdstan','sifstan','stan'
*php iind('vdstan','sifstan','stan');

do iind with 'vdvrste','sifvrstev','placa_na'
*php iind('vdvrste','sifvrstev','placa_na');

do iind with 'vdvodom','sifvodom','placa_na'
*php iind('vdvodom','sifvodom','placa_na');

do iind with 'vdvopot','vodomer'
*php iind('vdvopot','vodomer');



do iind with 'vkprv','vrsta','opis'
*php iind('vkprv','vrsta','opis');

do iind with 'vkpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('vkpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');

do iind with 'vkprrad','radnal'
*php iind('vkprrad','radnal');

do iind with 'vkprmat','radnal'
*php iind('vkprmat','radnal');

do iind with 'masine','massif'
*php iind('masine','massif');


do iind with 'vkgrupa','grupa','naziv' 
*php iind('vkgrupa','grupa','naziv' );

do iind with 'vkgrupak','grupa','naziv' 
*php iind('vkgrupak','grupa','naziv' );

do iind with 'vk','pib','sifra','grupa','ime_prez','siful' 
*php iind('vk','pib','sifra','grupa','ime_prez','siful' );

do iind with 'vkf','pib','sifra','grupa','ime_prez','siful' 
*php iind('vkf','pib','sifra','grupa','ime_prez','siful' );


do iind with 'vkupl','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('vkupl','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'vkupld','pib','datum','brnal','grupa','brrac','brnal+brrac' 
*php iind('vkupld','pib','datum','brnal','grupa','brrac','brnal,brrac' );

do iind with 'vkupldf','pib','datum','brnal','grupa','brrac','brnal+brrac','sifra'
*php iind('vkupldf','pib','datum','brnal','grupa','brrac','brnal,brrac','sifra');

do iind with 'vkuple','pib','datum','brnal','grupa','sifra' 
*php iind('vkuple','pib','datum','brnal','grupa','sifra' );

do iind with 'vkuples','pib','datum','brnal','grupa','sifra' 
*php iind('vkuples','pib','datum','brnal','grupa','sifra' );

do iind with 'vkupless','pib','datum','brnal','grupa','sifra' 
*php iind('vkupless','pib','datum','brnal','grupa','sifra' );

do iind with 'vkcene','cenovnik'
*php iind('vkcene','cenovnik');

do iind with 'vkulice','siful','ulica'
*php iind('vkulice','siful','ulica');

do iind with 'an00','sifra','alltrim(prez)+alltrim(ime)+alltrim(otac)','posta0','maticni0','maticni1','siful0','ulica0+ulbroj0+stan0','pib'
*php iind('an00','sifra','prez,ime,otac','posta0','maticni0','maticni1','siful0','ulica0,ulbroj0,stan0','pib');


do iind with 'vtgrupa','grupa','naziv' 
*php iind('vtgrupa','grupa','naziv' );

do iind with 'vtgrupak','grupa','naziv' 
*php iind('vtgrupak','grupa','naziv' );

do iind with 'vt','pib','grupa','prez+ime','sifra','naziv'
*php iind('vt','pib','grupa','prez,ime','sifra','naziv');

do iind with 'vtf','pib','grupa','prez+ime','sifra','naziv'
*php iind('vtf','pib','grupa','prez,ime','sifra','naziv');



do iind with 'vtupl','pib','datdok','brnal','grupa','brrac','pib+brrac' 
*php iind('vtupl','pib','datdok','brnal','grupa','brrac','pib,brrac' );

do iind with 'vtupld','pib','datdok','brnal','grupa','brrac','brnal+brrac' 
*php iind('vtupld','pib','datdok','brnal','grupa','brrac','brnal,brrac' );

do iind with 'vtupldf','pib','datdok','brnal','grupa','brrac','brnal+brrac'
*php iind('vtupldf','pib','datdok','brnal','grupa','brrac','brnal,brrac');


do iind with 'vtuple','pib','datdok','brnal','grupa'
*php iind('vtuple','pib','datdok','brnal','grupa');

do iind with 'vtcene','cenovnik'
*php iind('vtcene','cenovnik');

do iind with 'vtulice','siful','ulica'
*php iind('vtulice','siful','ulica');

do iind with 'vtzgrade','sifmernom'
*php iind('vtzgrade','sifmernom');



do iind with 'soc','sifra','grupa','ime_prez','matbroj','ulica' 
*php iind('soc','sifra','grupa','ime_prez','matbroj','ulica' );

do iind with 'soci','psifra','sifra','grupa','pime_prez','pmatbroj' 
*php iind('soci','psifra','sifra','grupa','pime_prez','pmatbroj' );

do iind with 'soculice','siful','ulica' 
*php iind('soculice','siful','ulica' );


do iind with 'hc01','dtoc(datdok)','rsif','naz'
*php iind('hc01','datdok','rsif','naz');


do iind with 'hc02','dtoc(datdok)','rsif','naz'
*php iind('hc02','datdok','rsif','naz');


do iind with 'hc02s','dtoc(datdok)','rsif','naz'
*php iind('hc02s','datdok','rsif','naz');

do iind with 'hc03','dtoc(datdok)','rsif','naz','brkal'
*php iind('hc03','datdok','rsif','naz','brkal');

*php iind('vdvopot','vodomer');

do iind with 'hc04','dtoc(datdok)','rsif','operacija'
*php iind('hc04','datdok','rsif','operacija');

do iind with 'hc040','rsif','operacija'
*php iind('hc040','rsif','operacija');

do iind with 'hc04k','dtoc(datdok)','rsif','operacija'
*php iind('hc04k','datdok','rsif','operacija');

do iind with 'hc040k','rsif','operacija'
*php iind('hc040k','rsif','operacija');

do iind with 'hc05','linija','dtoc(datdok)'
*php iind('hc05','linija','datdok');

do iind with 'hc051','proizvod','dtoc(datdok)'
*php iind('hc051','proizvod','datdok');

do iind with 'hc06','brkal','dtoc(datdok)','brrac','rsif','sifra'
*php iind('hc06','brkal','datdok','brrac','rsif','sifra');

do iind with 'hc07','dtoc(datdok)','rsif','naz','brkal'
*php iind('hc07','datdok','rsif','naz','brkal');

do iind with 'hc08','rsif+dtoc(datdok)','rsif','naz','brkal'
*php iind('hc08','rsif,datdok','rsif','naz','brkal');


do ibazekom with 'socvoda'
*php ibazekom('socvoda','1');

*--------------bkbkbkbkbkbkbkbkbkbkbkbkbkbk---------------------------

set default to &mdata02k
do ibazekom with 'bkperiod'
*php ibazekom('bkperiod','1');

do ibazekom  with 'bkobav'
*php ibazekom('bkobav','1');

for i=1 to 12
   mbkobav='bkobav'+alltrim(str(i,2,0))
   do ibazekom  with mbkobav,'bkobav'
   do iind with mbkobav,'sifra','brnal','fvrsta','brrac','datdok','datpri','valuta'
next

*php for ($i = 1; $i <= 12; $i += 1) {
*php $mbkobav='bkobav'.$i;
*php ibazekom($mbkobav,'bkobav');
*php iind ($mbkobav,'sifra','brnal','fvrsta','brrac','datdok','datpri','valuta');
*php }


do ibazekom  with 'bkbs'
*php ibazekom('bkbs','1');

for i=1 to 4
   mbkbs='bkbs'+alltrim(str(i,2,0))
   do ibazekom  with mbkbs,'bkbs'
   do iind with mbkbs,'aop'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbkbs='bkbs'.$i;
*php    ibazekom($mbkbs,'bkbs');
*php    iind($mbkbs,'aop'); 
*php }


mbkbs0='bkbs0'
do ibazekom  with mbkbs0,'bkbs'
*php ibazekom('bkbs0','bkbs');

do iind with mbkbs0,'aop'
*php iind('bkbs0','aop'); 

do ibazekom  with 'bktok'
*php ibazekom('bktok','1');

for i=1 to 4
   mbktok='bktok'+alltrim(str(i,2,0))
   do ibazekom  with mbktok,'bktok'
   do iind with mbktok,'aop'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbktok='bktok'.$i;
*php    ibazekom($mbktok,'bktok');
*php    iind($mbktok,'aop');
*php }

do ibazekom  with 'bktok0','bktok'
*php ibazekom('bktok0','bktok');

do iind with 'bktok0','aop'
*php iind('bktok','aop');

do ibazekom  with 'bktrza'
*php ibazekom('bktrza','1');


for i=1 to 4
   mbktrza='bktrza'+alltrim(str(i,2,0))
   do ibazekom  with mbktrza,'bktrza'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbktrza='bktrza'.$i;
*php    ibazekom($mbktrza,'bktrza');
*php }


do ibazekom  with 'bkdinz'
*php ibazekom('bkdinz','1');

for i=1 to 4
   mbkdinz='bkdinz'+alltrim(str(i,2,0))
   do ibazekom  with mbkdinz,'bkdinz'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbkdinz='bkdinz'.$i;
*php    ibazekom($mbkdinz,'bkdinz');
*php }

do ibazekom  with 'bknena'
*php ibazekom('bknena','1');

for i=1 to 4
   mbknena='bknena'+alltrim(str(i,2,0))
   do ibazekom  with mbknena,'bknena'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbknena='bknena'.$i;
*php    ibazekom( $mbknena,'bknena');
*php }

do ibazekom  with 'bkcene'
*php ibazekom('bkcene','1');


do ibazekom  with 'bkposn'
*php ibazekom('bkposn','1');

for i=1 to 4
   mbkposn='bkposn'+alltrim(str(i,2,0))
   do ibazekom  with mbkposn,'bkposn'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbkposn='bkposn'.$i;
*php    ibazekom($mbkposn,'bkposn');
*php }

do ibazekom  with 'bksubv'
*php ibazekom('bksubv','1');

for i=1 to 4
   mbksubv='bksubv'+alltrim(str(i,2,0))
   do ibazekom  with mbksubv,'bksubv'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbksubv='bksubv'.$i;
*php    ibazekom($mbksubv,'bksubv');
*php }

do ibazekom  with 'bkkred'
*php ibazekom('bkkred','1');


do ibazekom  with 'bkjavn'
*php ibazekom('bkjavn','1');

for i=1 to 4
   mbkjavn='bkjavn'+alltrim(str(i,2,0))
   do ibazekom  with mbkjavn,'bkjavn'
   do iind with mbkjavn,'vrsta','vrsta+opis','opis'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbkjavn='bkjavn'.$i;
*php    ibazekom($mbkjavn,'bkjavn');
*php    iind($mbkjavn,'vrsta','vrsta,opis','opis');
*php }




do ibazekom  with 'bkgotov'
*php ibazekom('bkgotov','1');

for i=1 to 4
   mbkgotov='bkgotov'+alltrim(str(i,2,0))
   do ibazekom  with mbkgotov,'bkgotov'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbkgotov='bkgotov'.$i;
*php    ibazekom($mbkgotov,'bkgotov');
*php }

do ibazekom  with 'bkfinin'
*php ibazekom('bkfinin','1');

for i=1 to 4
   mbkfinin='bkfinin'+alltrim(str(i,2,0))
   do ibazekom  with mbkfinin,'bkfinin'
next

*php for ($i = 1; $i <= 4; $i += 1) {
*php    $mbkfinin='bkfinin'.$i;
*php    ibazekom($mbkfinin,'bkfinin');
*php }

do ibazekom  with 'setekgr'
*php ibazekom('setekgr','1');

do ibazekom  with 'setekfi','setekgr'
*php ibazekom('setekfi','setekgr');


set default to &mdata02k
do ibazekom with 'jnopsti'
do iind with 'jnopsti','sifrao','nazivo'
*php ibazekom('jnopsti','1');

do ibazekom with 'jndopun'
do iind with 'jndopun','sifrad'
*php ibazekom('jndopun','1');

do ibazekom with 'jnplan'
do iind with 'jnplan','sifrao'
*php ibazekom('jnplan','1');

do ibazekom with 'jnreal'
do iind with 'jnreal','sifrao'
*php ibazekom('jnreal','1');

do ibazekom  with 'vdtuzbe'
*php ibazekom('vdtuzbe','1');

do iind with 'vdtuzbe','pib','datum','brnal','brrac' 
*php iind('vdtuzbe','pib','datum','brnal','brrac' );


do ibazekom  with 'ra'
do ibazekom  with 'vbupl'
do ibazekom  with 'racene'
do ibazekom  with 'vbobrac'
do ibazekom  with 'vbulice'
do ibazekom  with 'vbunp'
do ibazekom  with 'vbgrupa'
do ibazekom  with 'vbgrupak'


do ibazekom with 'vbprenos'
do ibazekom with 'vbprv'
do ibazekom with 'vbpr'
do ibazekom with 'vbk'
do ibazekom with 'vbnalz'
do ibazekom with 'vbspis'
do ibazekom with 'vbizv02'
do ibazekom with 'vbizv03'
do ibazekom with 'vbizv05'

do iind with 'vbprv','vrsta','opis'
do iind with 'vbpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
do iind with 'vbgrupa','grupa','naziv' 
do iind with 'vbgrupak','grupa','naziv' 
do iind with 'ra','pib','sifra','grupa','ime_prez','siful','pib2','kssifra' 
do iind with 'vbupl','pib','datum','brnal','grupa','sifra' 
do iind with 'racene','cenovnik'
do iind with 'vbulice','siful','ulica'








use vbunp in 0
select vbunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   

use vbunp in 0
select vbunp
if reccount()<1
   append blank
   replace poc with 0
   replace kraj with 3
endif
use   
do ibazekom with 'ra'
do ibazekom with 'racene' 
do ibazekom with 'raprenos' 
do ibazekom with 'raspis' 
do ibazekom with 'raracd'
do ibazekom with 'vbracu'
do ibazekom with 'vbobrac'
do ibazekom with 'RAGRO'
do iind with 'RAGRO','sifra','ime_prez'

**************cicevac/////////////

do ibazekom  with 'jc'
*php ibazekom('jc','1');

do ibazekom  with 'jcupl'
*php ibazekom('jcupl','1');

do ibazekom  with 'jcupld'
*php ibazekom('jcupld','1');

do ibazekom  with 'jccene'
*php ibazekom('jccene','1');

do ibazekom  with 'jcobrac'
*php ibazekom('jcobrac','1');

do ibazekom  with 'jcuple','jcupl'
*php ibazekom('jcuple','jcupl');

do ibazekom  with 'jcuples','jcupl'
*php ibazekom('jcuples','jcupl');

do ibazekom  with 'jcupless','jcupl'
*php ibazekom('jcupless','jcupl');

do ibazekom  with 'jculice'
*php ibazekom('jculice','1');

do ibazekom  with 'jceput'
*php ibazekom('jceput','1');

do ibazekom  with 'jceks'
*php ibazekom('jceks','1');

do ibazekom  with 'jctuzbe'
*php ibazekom('jctuzbe','1');

do ibazekom  with 'jcfirme','jc'
*php ibazekom('jcfirme','jc');

do ibazekom  with 'jcupldf','jcupld'
*php ibazekom('jcupldf','jcupld');

do ibazekom  with 'jcractxt'
*php ibazekom('jcractxt','1');

do ibazekom  with 'jcractx2'
*php ibazekom('jcractx2','1');


do ibazekom  with 'jcractxf'
*php ibazekom('jcractxf','1');

do ibazekom  with 'jcunp'
*php ibazekom('jcunp','1');

do ibazekom  with 'jcgrupa'
*php ibazekom('jcgrupa','1');

do ibazekom  with 'jcgrupak'
*php ibazekom('jcgrupak','1');

do ibazekom  with 'jcsud0'
*php ibazekom('jcsud0','1');

do ibazekom  with 'jcsud'
*php ibazekom('jcsud','1');




do ibazekom  with 'jcprenos'
*php ibazekom('jcprenos','1');

do ibazekom  with 'jcprv'
*php ibazekom('jcprv','1');

do ibazekom  with 'jcpr'
*php ibazekom('jcpr','1');

do ibazekom  with 'jcprrad'
*php ibazekom('jcprrad','1');

do ibazekom  with 'jcprmat'
*php ibazekom('jcprmat','1');


do ibazekom  with 'jck'
*php ibazekom('jck','1');

do ibazekom  with 'jcnalz'
*php ibazekom('jcnalz','1');

do ibazekom  with 'jcspis'
*php ibazekom('jcspis','1');



****CICEVAC INDEKSI

do iind with 'jcprv','vrsta','opis'
*php iind('jcprv','vrsta','opis');

do iind with 'jcpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj'
*php iind('jcpr','redbroj','poziv','radnal','pib','vrsta','datnal','datpoc','datkraj');

do iind with 'jcprrad','radnal'
*php iind('jcprrad','radnal');

do iind with 'jcprmat','radnal'
*php iind('jcprmat','radnal');

do iind with 'jcgrupa','grupa','naziv' 
*php iind('jcgrupa','grupa','naziv' );

do iind with 'jcgrupak','grupa','naziv' 
*php iind('jcgrupak','grupa','naziv' );

do iind with 'jc','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('jc','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'jcfirme','pib','sifra','grupa','ime_prez','siful','kssifra' 
*php iind('jcfirme','pib','sifra','grupa','ime_prez','siful','kssifra' );

do iind with 'jcupl','pib','datum','brnal','grupa','sifra','brrac' 
*php iind('jcupl','pib','datum','brnal','grupa','sifra','brrac' );

do iind with 'jcupld','pib','datum','brnal','grupa','brrac','brnal+brrac' 
*php iind('jcupld','pib','datum','brnal','grupa','brrac','brnal,brrac' );

do iind with 'jcupldf','pib','datum','brnal','grupa','brrac','brnal+brrac','sifra'
*php iind('jcupldf','pib','datum','brnal','grupa','brrac','brnal,brrac','sifra');

do iind with 'jcuple','pib','datum','brnal','grupa','sifra' 
*php iind('jcuple','pib','datum','brnal','grupa','sifra' );

do iind with 'jcuples','pib','datum','brnal','grupa','sifra' 
*php iind('jcuples','pib','datum','brnal','grupa','sifra' );

do iind with 'jcupless','pib','datum','brnal','grupa','sifra' 
*php iind('jcupless','pib','datum','brnal','grupa','sifra' );

do iind with 'jccene','cenovnik'
*php iind('jccene','cenovnik');

do iind with 'jculice','siful','ulica'
*php iind('jculice','siful','ulica');

do iind with 'jcsud0','redbr','pib'
*php iind('jcsud0','redbr','pib');

do iind with 'jcsud','redbr','pib'
*php iind('jcsud','redbr','pib');

do iind with 'jctuzbe','pib','datum','brnal','brrac' 
*php iind('jctuzbe','pib','datum','brnal','brrac' );


*jc.dbf
*jcupl.dbf
*jcupld.dbf
*jccene.dbf
*jculice.dbf
*jcobrac.dbf
*jcractxt.dbf
*jcractx2.dbf
*jcractxf.dbf
*jcunp.dbf
*jcgrupa.dbf
*jcgrupak.dbf
*jcprenos.dbf
*jcprv.dbf
*jcpr.dbf
*jcprrad.dbf
*jcprmat.dbf
*jcprvoz.dbf
*jck.dbf
*jcnalz.dbf
*jcspis.dbf

*jcracd.dbf
*jcracu.dbf
*jcobrac.dbf
*jcrac.dbf
*jckart.dbf
*jcsud0.dbf
*jcsud.dbf
*jceks.dbf
*jceput.dbf
*jcuvoz.dbf
*jctuzbe.dbf
close all tables
set default to &mdata02
