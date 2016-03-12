PUSH KEY CLEAR

if !file('vpvodom.dbf')
   create table vpvodom(;
      pib       c(13),;
      ime_prez  c(30) ,;
      stkraj    n(12,0), ;
      stpoc     n(12,0), ;
      pot       n(12,0), ;
      pausal    c(1) ,; 
      mespausal n(9),;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      grupa     c(2),;
      mesEC     C(2), ;
      datcit    d(8), ;      
      preneto   c(1),;   
      idbr      n(11);                    
      )
   use
endif   

if !file('vpcit.dbf')
   create table vpcit(;
      pib       c(13),;
      stkraj    n(12,0), ;
      mesEC     C(2), ;
      datcit    d(8), ;      
      preneto   c(1),;   
      idbr      n(11);                    
      )
   use
endif   


if !file('vploz.dbf')
   create table vploz;
               (korisnik  c(30)   ,;
                lozinka   c(30)   ,;                
                imebaze   c(30),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

close all tables
pop key
