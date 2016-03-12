PUSH KEY CLEAR
MIME=LOWER(ALLTRIM(IME))
USE &MIME IN 0 ALIAS TABIME
SELECT TABIME
GO TOP
MFILE=MIME+"_unos_potvrda0.php"
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
mm='<link rel=' + '"' + 'stylesheet' + '"'+ 'type=' + '"' + 'text/css' + '"' + ' media=' + '"' + 'screen,projection' + '"' + ' href=' + '"' + ' apodloga.css ' + '"' + '>'
FPUTS(bobi,MM)
mm='</head>'
FPUTS(bobi,MM)
mm='<body>'
FPUTS(bobi,MM)
mm='   <div id="naslov">'
FPUTS(bobi,MM)
mm='      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;potvrda knjizenja</p>'
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

brpolja=afields(niz)-1
mmi=''
mmv=''
for i=1 to brpolja
   mnaziv=alltrim(lower(niz(i,1)))
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
MM="include "+'"'+'../../logovanje/dbkonekt.php'+'"'+';'
FPUTS(bobi,MM)
MM="$mimebaze=$_SESSION['imebaze'];"
FPUTS(bobi,MM)
MM="if (mysql_select_db($mimebaze))"
FPUTS(bobi,MM)
MM="{"
FPUTS(bobi,MM)
MM="}"
FPUTS(bobi,MM)
mm='else'
FPUTS(bobi,MM)
MM="{"
FPUTS(bobi,MM)
MM="     die (mysql_error());"
FPUTS(bobi,MM)
MM="}"
FPUTS(bobi,MM)
MM='$upit ='+'"'+' insert into ' + mime + ' (' + mmi+')'+' values ('+mmv+')'+'"'+';' 
FPUTS(bobi,MM)
mm='   if (mysql_query($upit))'
FPUTS(bobi,MM)
mm='   {'
FPUTS(bobi,MM)
mm='   echo "1 slog je uspesno dodat u tabelu "'+'.'+'$tablename'+';   '
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
mm='</body>'
FPUTS(bobi,MM)
mm='</html>'
FPUTS(bobi,MM)
FCLOSE(BOBI)
SELECT TABIME
USE
SELECT TABELE
POP KEY