brojac=1
SELECT TABELE
mime=ALLTRIM(imetab)
bobi=FCREATE('napr00.sql')
mm='create table '+mime+'('
FPUTS(bobi,MM)
SELECT TABSTRU
GO top
DO while.not.eof()
   mnaziv=naziv
   mtip=ALLTRIM(tip)
   mduzina=ALLTRIM(STR(duzina,3,0))
   mdecimala=ALLTRIM(STR(decimala,3,0))
   DO CASE mtip
      CASE mtip='c'
         mm=mnaziv+' '+'char'+'    ('+mduzina+') not null,'
      CASE mtip='d'
         mm=mnaziv+' '+'date   '+' not null,'
      CASE mtip='n'
      IF VAL(mdecimala)<>0
         mm=mnaziv+' '+'double '+' ('+mduzina+','+mdecimala+') not null,'
      ELSE
         mm=mnaziv+' '+'int    '+' not null,'
      endif
   OTHERWISE
      mm=''       
   endcase
   FPUTS(bobi,MM)
   SKIP
enddo   
SELECT TABSTRU
mm='idbr         int   primary key auto_increment'
FPUTS(bobi,MM)
mm=') ENGINE = MYISAM;'               
FPUTS(bobi,MM)  
FCLOSE(bobi)
mupit=filetostr('napr00.sql')
modgovor=sqlexec(povezano,mupit)
SELECT TABELE
POP KEY

