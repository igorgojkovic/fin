PUSH KEY CLEAR
SET EXACT ON

IF !FILE('bpprod.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bpprod;
      (datum     C(10) ,;
       cek       n(18,2),;
       kartica   n(18,2),;
       gotovina  n(18,2),;
       datdok    d(8);       
      )
   USE
ENDIF

IF !FILE('bppromet.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bppromet;
      (sifra     c(5) ,;
       naziv     c(32),;
       jm        c(3),;
       kolicina  n(18,2),;              
       cena      n(18,2),;    
       datdok    d(8);                             
      )
   USE
ENDIF

IF !FILE('bpkal.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bpkal;
      (brdok     c(6) ,;
       datum     c(10),;
       sifkom    c(6),;
       nazkom    c(45),;              
       adresa    c(45),;                     
       mesto     c(45),;                            
       pib       c(45),;                                   
       rokpla    c(10),;
       bfi       c(10),;
       brlkv     c(10),;                                                        
       imev      c(10),;                                                        
       reg       c(10),;                                                               
       nacpla    c(10),;                                                                      
       sifart    c(5),;                                                                             
       nazart    c(32),;
       jm        c(3),;                                                                                           
       kol       n(18,2),;              
       cena      n(18,2),;                     
       pdv       n(18,2),;                            
       datdok    d(8);       
       )
   USE
ENDIF

IF !FILE('bpniv.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bpniv;
      (brdok     c(6) ,;
       datum     c(10),;
       sifart    c(5),;
       nazart    c(32),;              
       jm        c(3),;                                                                                           
       kol       n(18,2),;              
       cena      n(18,2),;                     
       ncena     n(18,2),;  
       pdv       n(18,2),;                            
       datdok    d(8);       
       )
   USE
ENDIF

IF !FILE('bpfak.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bpfak;
      (brdok     c(6) ,;
       datum     c(10),;
       sifkom    c(6),;
       nazkom    c(45),;              
       adresa    c(45),;                     
       mesto     c(45),;                            
       pib       c(45),;                                   
       iznos     n(18,2),;                     
       pdv       n(18,2),;                            
       rokpla    c(10),;
       bfi       c(10),;
       brlkv     c(10),;                                                        
       imev      c(10),;                                                        
       reg       c(10),;                                                               
       cek       n(18,2),;              
       kartica   n(18,2),;              
       gotovina  n(18,2),;              
       sifart    c(5),;                                                                             
       nazart    c(32),;
       jm        c(3),;                                                                                           
       kol       n(18,2),;              
       cena      n(18,2),;                     
       tarifa    n(18,2),;                     
       datdok    d(8);       
       )
   USE
ENDIF

CLOSE ALL TABLES
POP KEY
