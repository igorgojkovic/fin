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
MFILE=MIME+"_stavka.php"
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
mm='<link rel=' + '"' + 'stylesheet' + '"'+ 'type=' + '"' + 'text/css' + '"' + ' media=' + '"' + 'screen,projection' + '"' + ' href=' + '"' + ' ../../css/stavka_01.css ' + '"' + '>'
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
mm='         <form id="forma" name="forma" method="post" action=' + '"' + mime +'_insert.php'+'"'+'>'
FPUTS(bobi,MM)
mm='            <td>'
FPUTS(bobi,MM)
mm='               <table id="tabela2">'
FPUTS(bobi,MM)
mm='	              <tr>'
FPUTS(bobi,MM)
mm='                     <td width='+'"'+'60'+'"'+'>'+mime + "&nbsp;unos_podataka</td>"
FPUTS(bobi,MM)
mm='                  </tr>   			   '
FPUTS(bobi,MM)
brpolja=afields(niz)-1
for i=1 to brpolja
   mnaziv=alltrim(lower(niz(i,1)))
   IF mnaziv<>'preneto'
      mtip=ALLTRIM(LOWER(niz(i,2)))
      IF mtip<>'d'
         mduzina=ALLTRIM(STR(niz(i,3)))
      ELSE
         mduzina=ALLTRIM(STR(niz(i,3)+2))   
      endif
      mm='                  <tr>'
      FPUTS(bobi,MM)
      mm='                  '+'<td width='+'"'+'130'+'"'+'>'+mnaziv+'</td>'
      FPUTS(bobi,MM)
      mm='                  '+'<td width='+'"'+mduzina+'"'+'><input name='+'"'+mnaziv+'"'+' type='+'"'+'text'+'"'+' id='+'"'+'unos'+'"'+' maxlength='+'"'+mduzina+'"'+' size='+'"'+mduzina+'"'+' value=' + '"' + '<?php echo ' + '$m' + mnaziv + ' ;?>' + '"' + '></td>'
      FPUTS(bobi,MM) 
      mm='                  </tr>   			   '
      FPUTS(bobi,MM)
   endif   
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
mm='    <div id="donjanavdugme99" >'
FPUTS(bobi,MM)
mm='   <form name=' + '"' + 'izlaz' + '"' + ' method=' + '"' + 'post' + '"' + ' action=' + '"' + mime + '.php' + '"' + ' >'
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