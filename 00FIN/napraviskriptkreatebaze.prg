PARAMETERS mmimedbf,mmime
      if file(mmimedbf)
         mima=1
            use &mmime in 0 alias ime
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
            go top
            mm='$upit="'+' create table if not exists '+mime+'('
            fputs(bobi,mm)
            do while.not.eof()
               mnaziv=naziv
               mtip=alltrim(tip)
               mduzina=alltrim(str(duzina,3,0))
               mdecimala=alltrim(str(decimala,3,0))
               do case mtip
                  case mtip='c'
                     IF ALLTRIM(mnaziv)='sifra';
                            .or.ALLTRIM(mnaziv)=='rsif';
                            .or.ALLTRIM(mnaziv)=='vsifra';
                            .or.ALLTRIM(mnaziv)=='vozsifra';
                            .or.ALLTRIM(mnaziv)=='olsifra';                             
                            .or.ALLTRIM(mnaziv)=='misifra'; 
                            .or.ALLTRIM(mnaziv)=='fpsifra';                                                       
                            .or.ALLTRIM(mnaziv)=='fvrsta';                            
                            .or.ALLTRIM(mnaziv)=='sema';                            
                            .or.ALLTRIM(mnaziv)=='ssifra';                            
                            .or.ALLTRIM(mnaziv)=='osifra';
                            .or.ALLTRIM(mnaziv)=='psif';                            
                            .or.ALLTRIM(mnaziv)=='msif';                            
                            .or.ALLTRIM(mnaziv)=='pmsif';                            
                            .or.ALLTRIM(mnaziv)=='asif';
                            .or.ALLTRIM(mnaziv)=='prsif';                                                        
                            .or.ALLTRIM(mnaziv)=='ldsif';
                            .or.ALLTRIM(mnaziv)=='dirsif';
                            .or.ALLTRIM(mnaziv)=='opssif';                                                       
                            .or.ALLTRIM(mnaziv)=='normativ'                                                                                    
                        mm=mnaziv+' '+'int'+' ('+mduzina+') not null,'
                     ELSE
                        mm=mnaziv+' '+'varchar'+'    ('+mduzina+') not null,'
                     ENDIF                        
                     
                  case mtip='d'
                     mm=mnaziv+' '+'date   '+' not null,'
                  case mtip='n'
                     if val(mdecimala)<>0
                        mm=mnaziv+' '+'double  '+' ('+mduzina+','+mdecimala+') not null,'
                     else
                        mm=mnaziv+' '+'int    '+' not null,'
                     endif
                  otherwise
                     mm=''       
               endcase
               fputs(bobi,mm)
               skip
            enddo
            mm='idbr         int   primary key auto_increment'
            fputs(bobi,mm)
            mm=') engine = myisam";'               
            fputs(bobi,mm) 
            mm="$rez=mysql_query($upit);"
            fputs(bobi,mm) 
            mm="if (!$rez){txtsnimi('kreiranje tabela databaze a  greska = '.$upit.' '.mysql_error()."+'"\r\n");}' 
            fputs(bobi,mm)     
            *mm="tabele_prikazi('"+mmime+"');"                       
            fputs(bobi,mm)                 
            select tabele
      endif   
endproc