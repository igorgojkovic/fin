PUSH KEY CLEAR
MIME=LOWER(ALLTRIM(IME))
USE &MIME IN 0 ALIAS TABIME
SELECT TABIME
GO TOP
MFILE=MIME+"_unos0.php"
bobi=FCREATE(MFILE)
mm='<?php'
FPUTS(bobi,MM)
MM='session_start();'
FPUTS(bobi,MM)
MM="include "+'"'+'../../logovanje/dbkonekt.php'+'"'+';'
FPUTS(bobi,MM)
MM="mysql_select_db($_SESSION['imebaze']);"
FPUTS(bobi,MM)
MM="$mimebaze=$_SESSION['imebaze'];"
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
mm='<link rel=' + '"' + 'stylesheet' + '"'+ 'type=' + '"' + 'text/css' + '"' + ' media=' + '"' + 'screen,projection' + '"' + ' href=' + '"' + ' aunos.css ' + '"' + '>'
FPUTS(bobi,MM)
mm='</head>'
FPUTS(bobi,MM)
mm='<body>'
FPUTS(bobi,MM)
mm='<div id="naslov">'
FPUTS(bobi,MM)
mm='    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp'+mime
FPUTS(bobi,MM)
mm='	</p>'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm='<div id="kontejner" >'
FPUTS(bobi,MM)
mm='   <div id="levastrana" >'
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='   <div id="desnastrana">'
FPUTS(bobi,MM)
mm='        <table id="tabela">'
FPUTS(bobi,MM)
mm='       <tr>	  '
FPUTS(bobi,MM)
mm='         <form id="forma" name="forma" method="post" action=' + '"' + mime +'_unos_potvrda0.php'+'"'+'>'
FPUTS(bobi,MM)
mm='            <td>'
FPUTS(bobi,MM)
mm='               <table id="tabela2">'
FPUTS(bobi,MM)
mm='	              <tr>'
FPUTS(bobi,MM)
mm='                     <td width='+'"'+'100'+'"'+'>'+mime + "&nbsp;unos_podataka</td>"
FPUTS(bobi,MM)
mm='                  </tr>   			   '
FPUTS(bobi,MM)
brpolja=afields(niz)-1
for i=1 to brpolja
   mnaziv=alltrim(lower(niz(i,1)))
   mduzina=ALLTRIM(STR(niz(i,3)))
   mm='                  <tr>'
   FPUTS(bobi,MM)
   mm='                  '+'<td width='+'"'+'100'+'"'+'>'+mnaziv+'</td>'
   FPUTS(bobi,MM)
   mm='                  '+'<td width='+'"'+mduzina+'"'+'><input name='+'"'+mnaziv+'"'+' type='+'"'+'text'+'"'+' id='+'"'+mnaziv+'"'+' maxlength='+'"'+mduzina+'"'+' size='+'"'+mduzina+'"'+'></td>'
   FPUTS(bobi,MM)
   mm='                  </tr>   			   '
   FPUTS(bobi,MM)
endfor
mm='			   <tr>	 ' 
FPUTS(bobi,MM)
mm='			      <td></td>'
FPUTS(bobi,MM)
mm='                  <td><input type="submit" name="Potvrda" value="Potvrda"></td>'
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
mm='      </table>      '
FPUTS(bobi,MM)
mm='   </div>'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm='<div id="donjanavigacija" >'
FPUTS(bobi,MM)
mm='</div>'
FPUTS(bobi,MM)
mm='<div id="prikazupita">'
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
SELECT TABELE
POP KEY