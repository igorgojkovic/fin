PARAMETERS MIMETAB
PUSH KEY CLEAR
brojac=1
select tabele
mime=alltrim(LOWER(Mimetab))
bobi=fcreate('napr00.sql')
mm='create table '+mime+'('
fputs(bobi,mm)
select tabstru
go top
do while.not.eof()
   mnaziv=ALLTRIM(LOWER(naziv))
   mtip=alltrim(tip)
   mduzina=alltrim(str(duzina,3,0))
   mdecimala=alltrim(str(decimala,3,0))
   do case mtip
      case mtip='c'
         if duzina>5
            mm=mnaziv+' '+'varchar'+'    ('+mduzina+') not null,'
         else
            mm=mnaziv+' '+'char'+'    ('+mduzina+') not null,'         
         endif
      case mtip='d'
         mm=mnaziv+' '+'date   '+' not null,'
      case mtip='n'
      if val(mdecimala)<>0
         mm=mnaziv+' '+'double '+' ('+mduzina+','+mdecimala+') not null,'
      else
         mm=mnaziv+' '+'int    '+' not null,'
      endif
   otherwise
      mm=''       
   endcase
   fputs(bobi,mm)
   skip
enddo   
select tabstru
mm='idbr         int   primary key auto_increment'
fputs(bobi,mm)
mm=') engine = myisam;'               
fputs(bobi,mm)  
fclose(bobi)
mupit=filetostr('napr00.sql')
modgovor=sqlexec(povezano,mupit)
select tabele
pop key

