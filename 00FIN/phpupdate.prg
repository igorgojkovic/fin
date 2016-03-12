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
MFILE=MIME+"_update.php"
bobi=FCREATE(MFILE)
mm='<?PHP'
FPUTS(bobi,MM)
MM='session_start();'
FPUTS(bobi,MM)
MM="include "+'"'+'../../logovanje/dbkonekt.php'+'"'+';'
FPUTS(bobi,MM)
MM="mysql_select_db($_SESSION['imebaze']);"
FPUTS(bobi,MM)
MM="$mimebaze=$_SESSION['imebaze'];"
FPUTS(bobi,MM)
MM="$tablename=$_SESSION['tabela'];"
FPUTS(bobi,MM)
mm="if (isset($_POST['izmena']))"
FPUTS(bobi,MM)
mm="{" 
FPUTS(bobi,MM)
mm="$meditovanje=$_POST['izmena'];"
FPUTS(bobi,MM)
mm="}"
FPUTS(bobi,MM)
mm="else"
FPUTS(bobi,MM)
mm="{" 
FPUTS(bobi,MM)
mm="$meditovanje='';"
FPUTS(bobi,MM)
mm="}"
FPUTS(bobi,MM)
mm="if ($meditovanje<>'')"
FPUTS(bobi,MM)
mm="{"
FPUTS(bobi,MM)
mm="    $cekiranje = $_POST['cekiranje']; "
FPUTS(bobi,MM)
mm="	if ($cekiranje>0)"
FPUTS(bobi,MM)
mm="	{"
FPUTS(bobi,MM)

brpolja=afields(niz)-1
mmi=''
mmv=''

for i=1 to brpolja
   mnaziv=alltrim(lower(niz(i,1)))
   mtip=alltrim(lower(niz(i,2)))
   IF mtip='d'
      mm='   $' + 'm' +mnaziv+ '=date("Y-m-d", strtotime($_POST[' + "'"+ mnaziv + "'" + ']));'
   else
      mm='   $'+'m'+mnaziv+'=$_POST[' + "'"+mnaziv+"'"+'];'
   endif
   FPUTS(bobi,MM)
ENDFOR
mm="	   $edit_id  = $cekiranje;"
FPUTS(bobi,MM)
mm="       $upit2="
FPUTS(bobi,MM)
mm="       ("
FPUTS(bobi,MM)
mm="	       "+'"'+'UPDATE $tablename SET '
FPUTS(bobi,MM)
for i=1 to brpolja
   mnaziv=alltrim(lower(niz(i,1)))
   mniz=alltrim(lower(niz(i,1)))
   if i<brpolja
   mm='            '+mnaziv+'='+"'"+'$m' + mnaziv+"'"+','
   else
   mm='            ' + mnaziv + '=' + "'" + '$m' + mnaziv+ "'"
   endif
   FPUTS(bobi,MM)
ENDFOR
mm="           WHERE idbr=" + "'" + "$edit_id"+ "'" +'"'
FPUTS(bobi,MM)
mm="	   );"
FPUTS(bobi,MM)
mm="       $rezultat2=mysql_query($upit2);"
FPUTS(bobi,MM)
mm="	}"
FPUTS(bobi,MM)
mm="  header(" + '"' + 'Location: '+mime+'.php'+'"'+');'
FPUTS(bobi,MM)
mm=""  
FPUTS(bobi,MM)
mm="}"
FPUTS(bobi,MM)
mm=""
FPUTS(bobi,MM)
mm=" ?>"   
FPUTS(bobi,MM)
FCLOSE(BOBI)
SELECT TABIME
USE
SET DEFAULT TO &MDATA02
SELECT TABELE
POP KEY