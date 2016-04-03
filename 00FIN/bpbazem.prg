PUSH KEY CLEAR
SET EXACT ON

IF !FILE('bpprodM.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bpprodM;
      (datum     C(10) ,;
       cek       n(18,2),;
       kartica   n(18,2),;
       gotovina  n(18,2),;
       datdok    d(8);       
      )
   USE
ENDIF


IF !FILE('bpfakM.dbf')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE bpfakM;
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

if !file('bp00veza.dbf')
   create table bp00veza;
               (TIPRedA    C(1),;   
                SIFRApart  c(10)   ,;
                PIB        c(16),;
                brrac      c(10),;
                datum      c(10),;
                brisecka   c(10),;
                sifraart   c(22),;
                pdvstopa   n(7,2),;
                kolicina   n(15,3),;
                mpcena     n(15,2),;
                preneto   c(1),;
                idbr      n(11);
                )
         use
     endif


CLOSE ALL TABLES
POP KEY
