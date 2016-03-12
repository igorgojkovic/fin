PUSH KEY CLEAR
SET DEFAULT TO &MDATABAZE
SELECT TABELE
MIME=LOWER(ALLTRIM(IME))
USE &MIME IN 0 ALIAS TABIME
SELECT TABIME
GO TOP
MFILE=MIME+"_stavka.php"
bobi=FCREATE(MFILE)
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
FCLOSE(BOBI)
SELECT TABIME
USE
SET DEFAULT TO &MDATA02
SELECT TABELE
POP KEY