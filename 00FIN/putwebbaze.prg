PUSH KEY CLEAR
if !file('putan0.dbf')
   create table putan0 ;
               (sifra     c(5)     ,;
                naziv     c(40)    ,;              
                posta     c(5)     ,;
                mesto     c(35)    ,;    
                ulica     c(35)    ,;
                ulbroj    c(10)    ,;
                telefon   c(25)    ,;
                telefon2  c(25)    ,;
                email     c(40)    ,;
                lice1     c(30)    ,;
                napomena  c(50)    ,;
                napomena2 c(50)    ,;
                napomena3 c(50)    ,;
                grupa     c(3)     ,;      
                pib       c(9)     ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('putrob.dbf')
   create table putrob;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                kol       n(18,3),;
                velcena   n(18,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                transpak  n(12,2),;
                unpak     n(12,2),;                
                kompak    n(12,2),;                
                jed       c(10),;
                barkod    c(20),;
                grupa     c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('putfak.dbf')
   create table putfak;
               (brkal     c(6)   ,;
                rsif      c(5)   ,;
                naz       c(30),;
                koli      n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,2),;
                rabproc   n(10,3),;
                rabat     n(18,2),;
                tarifa    c(6),;
                procpor   n(10,4),;
                porez     n(18,2),;
                malvred   n(18,2),;
                sifra     c(5),;
                naziv     c(40),;
                mesto     c(35),;
                datdok    d(8),;
                napomenag c(60),;
                preneto   c(1),;
                idbr      n(11);
                )
         use
     endif




if !file('putfakg.dbf')
   create table putfakg;
               (brkal     c(6),;
                sifra     c(5),;
                datdok    d(8),;
                naziv     c(40),;
                mesto     c(35),;
                datum     d(8),;
                korisnik  c(10),;
                napomenag c(60),;
                preneto   c(1),;
                idbr      n(11);
                )
         use
     endif
if !file('putWput.dbf')
  * wait windows ' roba '
   create table putWput;
               (putanja   c(80),;
                preneto   c(1),;
                idbr      n(11);
                )
         use
     ENDIF
     

if !file('putniciw.dbf')
   create table putniciw;
               (korisnik  c(30)   ,;
                lozinka   c(30)   ,;                
                imebaze   c(30),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('putan0mi.dbf')
   create table putan0mi ;
               (misifra   c(5)     ,;
                sifra     c(5)     ,;
                posta     c(5)     ,;
                mesto     c(35)    ,;    
                ulica     c(35)    ,;
                ulbroj    c(10)    ,;
                telefon   c(25)    ,;
                fax       c(25)    ,;
                napomena  c(50)    ,;
                siflin    n(9),;
                redlin    n(9),;      
                cenovnik  c(3),;                          
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


do iind with 'putan0','sifra','naziv','mesto'
do iind with 'putrob','rsif','naz+podnaziv','podnaziv','grupa'
do iind with 'putfak','brkal','rsif'
do iind with 'putfakg','brkal','dtos(datdok)','sifra','brkal+sifra'
do iind with 'putan0mi','sifra','mesto'
close all tables
pop key
