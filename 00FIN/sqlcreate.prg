      parameters abaza,abaza1
      mtabstru=mdata0gf+'\'+'tabstru'
      use &mtabstru in 0 exclu alias tabstru
      select tabstru
      zap
      if parameters()=1
          mabaza=LOWER(abaza)
          mmabaza=mdatabaze+'\'+mabaza
          use &mmabaza in 0 alias ime
      else
         mabaza=LOWER(abaza)
         mabaza1=LOWER(abaza1)
         mmabaza1=mdatabaze+'\'+mabaza1      
         use &mmabaza1 in 0 alias ime
      endif     
      mmime=alltrim(mabaza)
      select ime
      brpolja=afields(niz)-1
      for i=1 to brpolja
         mnaziv=alltrim(lower(niz(i,1)))
         mtip=alltrim(lower(niz(i,2)))
         mduzina=niz(i,3)
         mdecimala=niz(i,4)
         select tabstru
         append blank
         replace naziv with mnaziv
         replace tip with mtip
         replace duzina with mduzina
         replace decimala with mdecimala
         replace imetab with lower(mmime)
      endfor
      select ime
      use
      select tabstru
      brojac=1
      bobi=fcreate('napr00.sql')
      mm='create table '+mmime+'('
      fputs(bobi,mm)
      select tabstru
      go top
      do while.not.eof()
         mnaziv=naziv
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
      select tabstru
      use
