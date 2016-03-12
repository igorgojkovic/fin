PUSH KEY CLEAR
SET DEFAULT TO &MDATABAZE
SELECT TABELE
MIME=LOWER(ALLTRIM(IME))
USE &MIME IN 0 ALIAS TABIME
SELECT TABIME
GO TOP
SET DEFAULT TO &MDATAPHP
MFILE='kartica_'+LOWER(mime)+"k.php"
bobi=FCREATE(MFILE)
mprefiks=lower(mime)+'k'
*mm='<div class='+'"'+'kartica_'+mprefiks+'"'+'>'
mm='<div class='+'"'+'kartica'+'"'+'>'
FPUTS(bobi,MM)
*mm='   <div id=';
*+'"'+'kartica_'+mprefiks+'_zag'+'"';
*+"><"+'/'+"div>"
mm='   <div class=';
+'"'+'kartica_zag'+'"';
+"><"+'/'+"div>"

FPUTS(bobi,MM)
mm='   <div class =';
+'"'+'kartica_zatvori'+'"';
+' onClick=';
+'"'+'kartica_zatvori(tabela)'+'"'+'><'+'/'+'div>'
FPUTS(bobi,MM)
mm='   <div class=';
+'"'+'kartica_telo_1'+'"';
+' >'
FPUTS(bobi,MM)	
brpolja=afields(niz)-1
mindex0=10001
for i=1 to brpolja
   mindex=ALLTRIM(STR(mindex0,5,0))
   mnaziv=alltrim(lower(niz(i,1)))
   IF mnaziv<>'preneto'
      mtip=ALLTRIM(LOWER(niz(i,2)))
      IF mtip<>'d'
         mduzina=ALLTRIM(STR(niz(i,3)))
      ELSE
         mduzina=ALLTRIM(STR(niz(i,3)+2))   
      endif
      mm='      <div class=';
      + '"'+'kartica_'+mprefiks+'_tabela-red'+'"';
      +'  >'
	  FPUTS(bobi,MM)
      mm='         <div class=';
      +'"'+'kartica_celija_tekst'+'"';
      +'  >';
      +mnaziv+':</div>'		
	  FPUTS(bobi,MM)
      mm='            <div class=';
      +'"'+'kartica_celija_podatak'+'"';
      +'  >'
	  FPUTS(bobi,MM)
      mm='               <input name=' ;
      +'"'+mnaziv+'"'; 
      +' type=' ;
      + '"' + 'text' + '"' ;
      + ' id=' + '"' + mprefiks+'_' + mnaziv + '"' ;
      + 'class='+'"'+mprefiks+ '_podatak'+'"';
      + ' maxlength=' ;
      + '"' +mduzina+ '"' ;
      +' size=' ;
      + '"'+mduzina+'"' ;
      +' value='+ '""' ;
      +'tabindex=';
      +'"'+mindex+'"';
      +' >'
	  FPUTS(bobi,MM)
    mm='         </div> ' 
	FPUTS(bobi,MM)	
    mm='      </div> ' 
	FPUTS(bobi,MM)	
   endif   
   mindex0=mindex0+1   
ENDFOR
mindex0=mindex0-1  
mindex=ALLTRIM(STR(mindex0,5,0))
   mm='   </div> ' 
   fPUTS(bobi,MM)	
   mm='   <div class=';
   +'"'+'kartica_telo_dole'+'"';
   +' >'   
   FPUTS(bobi,MM)
   mm='   <div class=';
   +'"'+'kartica_tabela-red_dole'+'"';
   +' >'
   FPUTS(bobi,MM)
   mm='         <div class=';
   +'"'+'kartica_dugmici'+'"';
   +' onclick=';
   +'"'+'kartica_potvrda('+mime+')'+'"';
   +'>'		 		 
   FPUTS(bobi,MM)   
   mm='            <a target="_self" href="#"  tabindex='+'"'+mindex+'"'+' >';
   +'<label id=';
   +'"'+'labela_'+mprefiks+'_trazi'+'"';
   +'></label></a>'
   FPUTS(bobi,MM)   
   mm='	     </div>'
   FPUTS(bobi,MM)   
   mm='   </div>'
   FPUTS(bobi,MM)   
   mm='</div>'	
   FPUTS(bobi,MM)   
   mm='<div id=';
   +'"'+'kartica_'+mprefiks+'_dno'+'"';
   +'></div>'      
   FPUTS(bobi,MM)
mm='</div> '  
FPUTS(bobi,MM)
FCLOSE(BOBI)
SET DEFAULT TO &MDATABAZE
SELECT TABIME
USE
SET DEFAULT TO &MDATA02
SELECT TABELE
POP KEY