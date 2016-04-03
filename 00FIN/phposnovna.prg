PUSH KEY CLEAR
SET DEFAULT TO &MDATABAZE
SELECT TABELE
MIME=LOWER(ALLTRIM(IME))
USE &MIME IN 0 ALIAS TABIME
SELECT TABIME
GO TOP
*IF !DIRECTORY(mime)
*   MKDIR &mime
*ENDIF
*SET DEFAULT TO &Mime
MFILE=MIME+".php"
bobi=FCREATE(MFILE)
mm='<?php'
FPUTS(bobi,MM)
mm='session_start();'
FPUTS(bobi,MM)
mm='include "../../logovanje/dbkonekt.php";'
FPUTS(bobi,MM)
mm='include "../../instalacija/funkcije.php";'
FPUTS(bobi,MM)
mm="mysql_select_db($_SESSION['imebaze']);"
FPUTS(bobi,MM)
mm=" $mimebaze=$_SESSION["+"'"+'imebaze'+"'"+"];"
FPUTS(bobi,MM)
mm='$tablename='+"'"+mime+"'"+';'
FPUTS(bobi,MM)
mm="$_SESSION['tabela']=$tablename;"
FPUTS(bobi,MM)
mm='$upit="SELECT * FROM $tablename order by idbr ";'
FPUTS(bobi,MM)
mm='$rezultat=mysql_query($upit);'
FPUTS(bobi,MM)
mm='if ($rezultat)'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='   $brojredova=mysql_num_rows($rezultat);'
FPUTS(bobi,MM)
mm="   $mredosled='R';"
FPUTS(bobi,MM)
mm="   $msmer='ASC';"
FPUTS(bobi,MM)
mm="   $muslov='';"
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='else'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='   $brojredova=0;'
FPUTS(bobi,MM)
mm="   $mredosled='R';"
FPUTS(bobi,MM)
mm="   $msmer='ASC';"
FPUTS(bobi,MM)
mm="   $muslov='';"
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">'
FPUTS(bobi,MM)
mm='<html>'
FPUTS(bobi,MM)
mm='<head>'
FPUTS(bobi,MM)
mm='<title>FIN-WEB</title>'
FPUTS(bobi,MM)
mm='<meta http-equiv="Content-Type" content="text/html" charset="utf8_unicode_ci" />'
FPUTS(bobi,MM)
mm='<meta http-equiv="cache-control" content="no-cache">'
FPUTS(bobi,MM)
mm='<link rel="stylesheet"type="text/css" media="screen,projection" href="../../css/osnovna_01.css">'
FPUTS(bobi,MM)
mm='<script language="javascript" type="text/javascript">'
FPUTS(bobi,MM)
mm='    function prikazporuke(izm)' 
FPUTS(bobi,MM)
mm='	{'
FPUTS(bobi,MM)
mm='	alert("redni broj sloga je "+"izm" );'
FPUTS(bobi,MM)
mm='    }'
FPUTS(bobi,MM)
mm='</script>'
FPUTS(bobi,MM)
mm='</head>'
FPUTS(bobi,MM)
mm='<body>'
FPUTS(bobi,MM)
mm='<div id="naslov">'
FPUTS(bobi,MM)
mm="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo ' baza: '.$mimebaze.'  tabela: '.$tablename; ?> "
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm='<div id="kontejner" >'
FPUTS(bobi,MM)
mm='<?php'
FPUTS(bobi,MM)
mm='if ($brojredova>0)'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='<table id="glavnatab" align="center" width="95%" NOWRAP >'
FPUTS(bobi,MM)
mm='   <tr>'
FPUTS(bobi,MM)
mm='      <td>'
FPUTS(bobi,MM)
mm='	     '
FPUTS(bobi,MM)
mm='            <table id="glavnatab2" align="center" width="95%" NOWRAP >     '
FPUTS(bobi,MM)
mm='			      <td align="center" bgcolor="#FDFFDA" WIDTH= "20px" >#</td>'
FPUTS(bobi,MM)
mm='<?php'
FPUTS(bobi,MM)
mm='                  $brojkolona = mysql_num_fields($rezultat);'
FPUTS(bobi,MM)
mm=' 	              For ($i = 0; $i<$brojkolona; $i += 1) '
FPUTS(bobi,MM)
mm='		          {'
FPUTS(bobi,MM)
mm='				     $duzinapolja = mysql_field_len($rezultat, $i);'
FPUTS(bobi,MM)
mm='                     $kolona = mysql_fetch_field($rezultat, $i);'
FPUTS(bobi,MM)
mm='			         $mduzinapolja=$duzinapolja*4;'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='				  <td id="glavnatabred"  border="1px solid black" align="center" NOWRAP WIDTH= " <?PHP echo $mduzinapolja."px" ;?>" >'
FPUTS(bobi,MM)
mm='				      <?php echo $kolona->name."&nbsp;"; ?> '
FPUTS(bobi,MM)
mm='				  </td>'
FPUTS(bobi,MM)
MM='<?PHP'
FPUTS(bobi,MM)
mm='                  }'
FPUTS(bobi,MM)
mm='           while($red=mysql_fetch_array($rezultat))'
FPUTS(bobi,MM)
mm='           {'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='			   <form name='+'"'+'form1'+'"'+' method='+'"'+'post'+'"'+' action='+'"'+mime+'_update.php'+'"'+'>'
FPUTS(bobi,MM)
mm='				 <tr>'
FPUTS(bobi,MM)
mm='				 <td align="left" bgcolor="#FFFFFF"><input name="izmena" type="submit" id="izmena" value="Izm" ></td>'
FPUTS(bobi,MM)
mm='				 <?php'
FPUTS(bobi,MM)
mm='				 for($i=0;$i<$brojkolona;$i++)'
FPUTS(bobi,MM)
mm='				 {'
FPUTS(bobi,MM)
mm='				     $duzinapolja = mysql_field_len($rezultat, $i);'
FPUTS(bobi,MM)
mm='                     $kolona = mysql_fetch_field($rezultat, $i);'
FPUTS(bobi,MM)
mm='				     $simepolja    = mysql_field_name($rezultat, $i);'
FPUTS(bobi,MM)
mm='                     $imepolja     = trim(strtolower($simepolja));'
FPUTS(bobi,MM)
mm='					 $imepoljaniz[]=$imepolja;'
FPUTS(bobi,MM)
mm='			         $mduzinapolja=$duzinapolja*4;'
FPUTS(bobi,MM)
mm='					 $tippolja    = mysql_field_type($rezultat,$i);'
FPUTS(bobi,MM)
mm='				     $mtippolja= trim(strtolower($tippolja));'
FPUTS(bobi,MM)
mm="					 if ($mtippolja=='real')"
FPUTS(bobi,MM)
mm='					 {'
FPUTS(bobi,MM)
mm='					    $mprikazreda="<td id=\"glavnatabred\" align=\"right\" bgcolor=\"#fff\" \"NOWRAP\" width=$mduzinapolja  >";'
FPUTS(bobi,MM)
mm='					 }'
FPUTS(bobi,MM)
mm='					 else'
FPUTS(bobi,MM)
mm='					 {'
FPUTS(bobi,MM)
mm='					    $mprikazreda="<td id=\"glavnatabred\" align=\"left\" bgcolor=\"#fff\" \"NOWRAP\" width=$mduzinapolja >";			'
FPUTS(bobi,MM)
mm='					 }'
FPUTS(bobi,MM)
mm='					 echo $mprikazreda ;					'
FPUTS(bobi,MM)
mm='    				  '
FPUTS(bobi,MM)
mm='					?>'
FPUTS(bobi,MM)
mm='					 <input name=' + '"' + 'cekiranje' + '"' + ' type=' + '"' + 'hidden' + '"' + ' id=' + '"' + 'cekiranje' + '"' + 'value=' + '"' + '<?php echo $red[' + "'" + 'idbr' + "'" + ']; ?>'+'"' + '> '
FPUTS(bobi,MM)
mm='					 <?php'
FPUTS(bobi,MM)
mm="					$mlevo='d';"
FPUTS(bobi,MM)
mm='					$aktiv_polje=$red[$imepolja];'
FPUTS(bobi,MM)
mm="					if ($mtippolja=='real')"				  
FPUTS(bobi,MM)
mm='				    {'
FPUTS(bobi,MM)
mm='				       if ($imepolja=="dug" or $imepolja=="pot"'
FPUTS(bobi,MM)
mm='					      or $imepolja=="devdug" or $imepolja=="devpot")'
FPUTS(bobi,MM)
mm='				       {'
FPUTS(bobi,MM)
mm=' 				          if  (is_null($aktiv_polje))'
FPUTS(bobi,MM)
mm='					      {'
FPUTS(bobi,MM)
mm='    				         $aktiv_polje="&nbsp;";				 '
FPUTS(bobi,MM)
mm='					      }'
FPUTS(bobi,MM)
mm='					      else'
FPUTS(bobi,MM)
mm='					      {'
FPUTS(bobi,MM)
mm='					        $aktiv_polje=$aktiv_polje;							'
FPUTS(bobi,MM)
mm='					      }'
FPUTS(bobi,MM)
mm="				          $mlevo='n';"
FPUTS(bobi,MM)
mm='					   }'
FPUTS(bobi,MM)
mm='				    }'
FPUTS(bobi,MM)
mm='                    else'
FPUTS(bobi,MM)
mm='				    {'
FPUTS(bobi,MM)
mm="				     if ($mtippolja=='date')"
FPUTS(bobi,MM)
mm='					 {'
FPUTS(bobi,MM)
mm='			            $novidatum = date("d-m-Y", strtotime($aktiv_polje));'
FPUTS(bobi,MM)
mm="        			    if ($novidatum<>'01-01-1970')"
FPUTS(bobi,MM)
mm='						{'
FPUTS(bobi,MM)
mm='						  $aktiv_polje=$novidatum;'
FPUTS(bobi,MM)
mm='						}	  '
FPUTS(bobi,MM)
mm='						else'
FPUTS(bobi,MM)
mm='						{'
FPUTS(bobi,MM)
mm='						  $aktiv_polje="&nbsp;";						   '
FPUTS(bobi,MM)
mm='						}'
FPUTS(bobi,MM)
mm='					 }'
FPUTS(bobi,MM)
mm='					 else'
FPUTS(bobi,MM)
mm='					 {'
FPUTS(bobi,MM)
mm='        			 $aktivpolje=$aktiv_polje;'
FPUTS(bobi,MM)
mm='					 }'
FPUTS(bobi,MM)
mm="					 $mlevo='d';"
FPUTS(bobi,MM)
mm=' 				    }'
FPUTS(bobi,MM)
mm="					if ($mlevo=='n')"
FPUTS(bobi,MM)
mm='					{'
FPUTS(bobi,MM)
mm='					?>'
FPUTS(bobi,MM)
mm='  				     <input name ='+'"'+'<?php echo $imepoljaniz[$i] ; ?>'+'"'+'  align='+'"'+'right'+'"'+' maxlength='+'"'+'<?php echo $duzinapolja ; ?>'+'"'+' size='+'"'+'<?php echo $duzinapolja ; ?>'+'"'+ 'bgcolor='+'"'+'#FBFCCD'+'"'+ 'type='+'"'+'text'+'"'+' id='+'"'+'<?php echo $imepoljaniz[$i] ; ?>'+'"'+' value='+'"'+'<?php echo $aktiv_polje; ?>'+'"'+'  >'
FPUTS(bobi,MM)
mm='                    <?php'					
FPUTS(bobi,MM)
mm='					}'
FPUTS(bobi,MM)
mm='					else'
FPUTS(bobi,MM)
mm='					{'
FPUTS(bobi,MM)
mm='					?>'
FPUTS(bobi,MM)
mm='  				     <input name =' + '"' + '<?php echo $imepoljaniz[$i] ; ?>' + '"' + '  align=' + '"' + 'left' + '"' + ' maxlength=' + '"' + '<?php echo $duzinapolja ; ?>' + '"' + ' size=' + '"' + '<?php echo $duzinapolja ; ?>' + '"' +' bgcolor=' + '"' + '#FBFCCD' + '"' + ' type='+ '"' + 'text' + '"' + ' id=' + '"' + '<?php echo $imepoljaniz[$i] ; ?>' + '"' + ' value=' + '"' + '<?php echo $aktiv_polje; ?>'+'"'+'  >'
FPUTS(bobi,MM)
mm='					<?php'
FPUTS(bobi,MM)
mm='                    }'
FPUTS(bobi,MM)
mm='                    ?>'  					
FPUTS(bobi,MM)
mm='				 </td>	'	
FPUTS(bobi,MM)
mm='				 <?php'
FPUTS(bobi,MM)
mm='				 }'
FPUTS(bobi,MM)
mm='				 ?>'
FPUTS(bobi,MM)
mm='		      </tr>'
FPUTS(bobi,MM)
mm='			  </form>	 '
FPUTS(bobi,MM)
mm='<?php'
FPUTS(bobi,MM)
mm='           }'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='              <tr>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='              </tr>'
FPUTS(bobi,MM)
mm='            </table>'
FPUTS(bobi,MM)
mm=''
FPUTS(bobi,MM)
mm='      </td>'
FPUTS(bobi,MM)
mm='   </tr>'
FPUTS(bobi,MM)
mm='</table>'
FPUTS(bobi,MM)
mm='<?php'
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='else'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='echo " nema slogova u tabeli ";'
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm=' </div>'
FPUTS(bobi,MM)
mm=' <div id="donjanavigacija" >'
FPUTS(bobi,MM)
mm='   <div id="donjanavdugme0" >'
FPUTS(bobi,MM)
mm='  <form name='+'"'+'novastavka'+'"'+' method='+'"'+'post'+'"'+' action='+'"'+mime+'_stavka.php'+'"'+' >'
FPUTS(bobi,MM)
mm='   <input name="novastavka" type="image" src="../../slike/novastavka.png" alt="Dodaj" width="58" height="58" />'
FPUTS(bobi,MM)
mm='   </form>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div class="donjanavdug0p">Dodaj</div>'
FPUTS(bobi,MM)

mm='   <div id="donjanavdugme1" >'
FPUTS(bobi,MM)
mm='   <form name="dodavanje" method="post" action="../../forma0/forma1_insert.php" >'
FPUTS(bobi,MM)
mm='      <input name="dodaj" type="image" src="../../slike/dodavanje.png" alt="dodaj" width="58" height="58" />'
FPUTS(bobi,MM)
mm='   </form>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div class="donjanavdug1p">Novi red</div>'
FPUTS(bobi,MM)


mm='   <div id="donjanavdugme2" >'
FPUTS(bobi,MM)
mm='   <form name="brisanje" method="post" action="../../forma0/forma1_delete.php" >'
FPUTS(bobi,MM)
mm='      <input name="brisi" type="image" src="../../slike/brisanje.png" alt="brisanje" width="58" height="58" />'
FPUTS(bobi,MM)
mm='   </form>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div class="donjanavdug2p">Brisanje</div>'
FPUTS(bobi,MM)


mm='   <div id="donjanavdugme3" >'
FPUTS(bobi,MM)
mm='   <form name="pregled" method="post" action='+'"'+mime+'_pregled.php'+'"'+' >'
FPUTS(bobi,MM)
mm='      <input name="brisi" type="image" src="../../slike/pregled.png" alt="pregled" width="58" height="58" />'
FPUTS(bobi,MM)
mm='   </form>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div class="donjanavdug3p">Pregled</div>'
FPUTS(bobi,MM)

mm='   <div id="donjanavdugme99" >'
FPUTS(bobi,MM)
mm='   <form name="izlaz" method="post" action="../../meni/meni.php" >'
FPUTS(bobi,MM)
mm='      <input name="izlaz" type="image" src="../../slike/izlaz.png" alt="izlaz" width="58" height="58" />'
FPUTS(bobi,MM)
mm='   </form>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div class="donjanavdug99p">Izlaz</div>'
FPUTS(bobi,MM)
mm='       <div id="izlaz">'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm='</body>'
FPUTS(bobi,MM)
mm='</html>'
FPUTS(bobi,MM)
FCLOSE(BOBI)
SELECT TABIME
USE
SET DEFAULT TO &MDATA02
SELECT TABELE
POP KEY
