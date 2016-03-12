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
MFILE=MIME+"_insert.php"
bobi=FCREATE(MFILE)
mm='<?PHP'
FPUTS(bobi,MM)
MM='session_start();'
FPUTS(bobi,MM)
mm='$tablename='+'"'+mime+'"'+';'
FPUTS(bobi,MM)
mm='$greske=array();'
FPUTS(bobi,MM)
mm='?> '
FPUTS(bobi,MM)
mm='<html>'
FPUTS(bobi,MM)
mm='<head>'
FPUTS(bobi,MM)
mm='<title>FIN-WEB</title>'
FPUTS(bobi,MM)
mm='<meta http-equiv="Content-Type" content="text/html; charset=utf8_unicode_ci" />'
FPUTS(bobi,MM)
mm='<link rel=' + '"' + 'stylesheet' + '"'+ 'type=' + '"' + 'text/css' + '"' + ' media=' + '"' + 'screen,projection' + '"' + ' href=' + '"' + ' ../../css/insert_01.css' + '"' + '>'
FPUTS(bobi,MM)
mm='</head>'
FPUTS(bobi,MM)
mm='<body>'
FPUTS(bobi,MM)
mm='   <div id="naslov">'+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;potvrda knjizenja tabele&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $tablename ?>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div id="kontejner" >'
FPUTS(bobi,MM)
mm=' <?PHP' 
FPUTS(bobi,MM)

mm='if (isset($_POST["Potvrda"]))'
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
mm='   include "../../logovanje/dbkonekt.php";'
FPUTS(bobi,MM)
mm="   mysql_select_db($_SESSION['imebaze']);"
FPUTS(bobi,MM)
mm="   $mimebaze=$_SESSION['imebaze'];"
FPUTS(bobi,MM)

brpolja=afields(niz)-1
mmi=''
mmv=''
for i=1 to brpolja
   mnaziv=alltrim(lower(niz(i,1)))
   IF mnaziv<>'preneto'
   mniz=alltrim(lower(niz(i,1)))
   if i<brpolja
      mmi=mmi+mniz+','
      mmv=mmv+"'"+'$'+'m'+mniz+"'"+','
   else
      mmi=mmi+mniz
      mmv=mmv+"'"+'$'+'m'+mniz+"'"
   endif
   mm='   $'+'m'+mnaziv+'=$_POST[' + "'"+mnaziv+"'"+'];'
   FPUTS(bobi,MM)
   endif
ENDFOR

mm='if (!empty($greske) )'
FPUTS(bobi,MM)
mm='{ '
FPUTS(bobi,MM)
mm=' echo "<b>Sledeca polja nisu ispravna:</b>";'
FPUTS(bobi,MM)
mm='foreach ($greske as $greska) '
FPUTS(bobi,MM)
mm=' {'
FPUTS(bobi,MM)
mm=" echo '<div >'.$greska.'</div>';"
FPUTS(bobi,MM)
mm=' }'
FPUTS(bobi,MM)
mm='}' 
FPUTS(bobi,MM)
mm='}'
FPUTS(bobi,MM)
mm='if (empty($greske) ) '
FPUTS(bobi,MM)
mm='{'
FPUTS(bobi,MM)
MM='$upit ='+'"'+' insert into ' + mime + ' (' + mmi+')'+' values ('+mmv+')'+'"'+';' 
FPUTS(bobi,MM)
mm='   if (mysql_query($upit))'
FPUTS(bobi,MM)
mm='   {'
FPUTS(bobi,MM)
mm='header(' + '"'+'Location: ' + '$tablename' + '.php");'
FPUTS(bobi,MM)
mm='   }'
FPUTS(bobi,MM)
mm='   else'
FPUTS(bobi,MM)
mm='   {'
FPUTS(bobi,MM)
mm='   echo "greska pri unosu podataka "'+'.'+'$tablename'+';   '
FPUTS(bobi,MM)
mm='   }'
FPUTS(bobi,MM)
mm='   }'
FPUTS(bobi,MM)
mm='?>'
FPUTS(bobi,MM)
mm='   </div>   '
FPUTS(bobi,MM)
mm=' <div id="donjanavigacija" >'
FPUTS(bobi,MM)
mm='   <div id="donjanavdugme99" >'
FPUTS(bobi,MM)
mm='      <form name=' + '"' + 'izlaz' + '"' + ' method=' + '"' + 'post' + '"' + ' action=' +'"' + mime + '.php'+'"'+' >'
FPUTS(bobi,MM)
mm='         <input name="izlaz" type="image" src="../../slike/izlaz.png" alt="izlaz" width="58" height="58" />'
FPUTS(bobi,MM)
mm='      </form>'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div class="donjanavdug99p">Izlaz</div>'
FPUTS(bobi,MM)
mm=' <div id="izlaz">'
FPUTS(bobi,MM)
mm=' </div>'
FPUTS(bobi,MM)
mm=' </div>'
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
