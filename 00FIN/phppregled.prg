PUSH KEY CLEAR
MIME=LOWER(ALLTRIM(IME))
USE &MIME IN 0 ALIAS TABIME
SELECT TABIME
GO TOP
mfile=mime+"_pregled.php"
bobi=FCREATE(mfile)
mm='<?php'
FPUTS(bobi,MM)
MM='session_start();'
FPUTS(bobi,MM)
mm='include '+'"'+'dbkonekt.php'+'"'+';'
FPUTS(bobi,MM)
mm='include '+'"'+'funkcije.php'+'"'+';'
FPUTS(bobi,MM)
MM="mysql_select_db($_SESSION['imebaze']);"
FPUTS(bobi,MM)
MM="$mimebaze=$_SESSION['imebaze'];"
FPUTS(bobi,MM)
mm='$tablename='+'"'+mime+'"'+';'
FPUTS(bobi,MM)
mm='if (isset($_POST['+"'"+'Potvrda'+"'"+']))'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='   $muslov=$_POST[' + "'"+'uslov'+"'"+'];'
FPUTS(bobi,MM)
mm='   $mmuslov='+"'"+"'"+'; '
FPUTS(bobi,MM)
mm='   if (!empty($muslov)) $mmuslov="WHERE $muslov"; '
FPUTS(bobi,MM)
mm='   $mpocetnired=$_POST[' + "'"+'odreda'+"'"+'];'
FPUTS(bobi,MM)
mm='   if (empty($mpocetnired)) $mpocetnired='+'0'+'; '
FPUTS(bobi,MM)
mm='   $mbrojredova=$_POST[' + "'"+'doreda'+"'"+'];'
FPUTS(bobi,MM)
mm='   if (empty($mbrojredova)) $mbrojredova='+'20'+'; '
FPUTS(bobi,MM)
mm='   $mredosled=$_POST[' + "'"+'redosled'+"'"+'];'
FPUTS(bobi,MM)
mm='   $msmer=$_POST[' + "'"+'smer'+"'"+'];'
FPUTS(bobi,MM)
mm='   $mstart=$_POST[' + "'"+'start'+"'"+'];'
FPUTS(bobi,MM)
mm='   if (empty($mstart)) $mstart='+'0'+'; '
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='else'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='   $muslov="";'
FPUTS(bobi,MM)
mm='   $mmuslov="";'
FPUTS(bobi,MM)
mm='   $mpocetnired=0;'
FPUTS(bobi,MM)
mm='   $mbrojredova=20;'
FPUTS(bobi,MM)
mm='   $mredosled="";'
FPUTS(bobi,MM)
mm='   $msmer="R";'
FPUTS(bobi,MM)
mm='   $mstart=0;'
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='   $upit="";'
FPUTS(bobi,MM)
mm='   $rezultat="";'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='<html>'
FPUTS(bobi,MM)
mm='<head>'
FPUTS(bobi,MM)
mm='<title>FIN-WEB</title>'
FPUTS(bobi,MM)
mm='<meta http-equiv="Content-Type" content="text/html; charset=utf8_unicode_ci" />'
FPUTS(bobi,MM)
mm='<link rel=' + '"' + 'stylesheet' + '"'+ 'type=' + '"' + 'text/css' + '"' + ' media=' + '"' + 'screen,projection' + '"' + ' href=' + '"' + ' apodloga.css ' + '"' + '>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='</head>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='<body>'
FPUTS(bobi,MM)
mm='<div id="naslov">'
FPUTS(bobi,MM)
mm="<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <?php echo ' ime baze '.$mimebaze.' tabela '.$tablename; ?> "
FPUTS(bobi,MM)
mm='	</p>'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='<div id="kontejner" >'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='   <div id="levastrana" >'
FPUTS(bobi,MM)
mm='      <table id="tabela">'
FPUTS(bobi,MM)
mm='      <tr>'
FPUTS(bobi,MM)
mm='         <form id="forma" name="form1" method="post" action='+'"'+mfile+'"'+''
FPUTS(bobi,MM)
mm='            <td>'
FPUTS(bobi,MM)
mm='               <table id="tabela2">'
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td colspan="1"><strong>Pretraživanje</strong></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='  '
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td width="10">Uslov</td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>	'		   
FPUTS(bobi,MM)
mm='                  <td width="10"><input name="uslov" type="text" id="uslov" maxlength="100" size="20" ></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td width="10">redosled po polju</td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>	'			  
FPUTS(bobi,MM)
mm='                  <td width="10"><input name="redosled" type="text" id="redosled" maxlength="10" size="10" ></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td width="10">od reda</td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>	'		   
FPUTS(bobi,MM)
mm='                  <td width="10"><input name="odreda" type="text" id="odreda" maxlength="10" size="10"></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td width="10">do reda</td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>	'		   
FPUTS(bobi,MM)
mm='                  <td width="10"><input name="doreda" type="text" id="doreda" maxlength="10" size="10"></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td width="10">redosled R/O</td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               <tr>'
FPUTS(bobi,MM)
mm='                  <td width="10"><input name="smer" type="text" id="smer" size="1"></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='              <tr>'
FPUTS(bobi,MM)
mm='                  <td><input name="start" type="hidden" id="start" value=1 ></td>'
FPUTS(bobi,MM)
mm='               </tr>			   '
FPUTS(bobi,MM)
mm='			   <tr>	  '
FPUTS(bobi,MM)
mm='                  <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="Potvrda" value="Potvrda"></td>'
FPUTS(bobi,MM)
mm='               </tr>'
FPUTS(bobi,MM)
mm='               </table>'
FPUTS(bobi,MM)
mm='            </td>'
FPUTS(bobi,MM)
mm='         </form>'
FPUTS(bobi,MM)
mm='      </tr>'
FPUTS(bobi,MM)
mm='   </table> '     
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='   <div id="desnastrana">'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='      <?php'
FPUTS(bobi,MM)
mm='prikazslogova($mstart,$mredosled,$msmer,$mpocetnired,$mbrojredova,$mmuslov,$tablename);'
FPUTS(bobi,MM)
mm='      ?>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm=' '
FPUTS(bobi,MM)
mm='  ' 
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='<div id="donjanavigacija" >'
FPUTS(bobi,MM)
mm='<a href="nalp_unos.php" target="_self"  ><img src="slike/dodaj.png" alt="Novi red" width="62" height="62" /> </a>'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='<div id="prikazupita">'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='</body>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='</html>'
FPUTS(bobi,MM)
FCLOSE(BOBI)
SELECT TABIME
USE
SELECT TABELE
POP KEY