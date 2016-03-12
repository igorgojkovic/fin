PUSH KEY CLEAR
SET EXACT ON

IF !FILE('LETIPPRO.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LETIPPRO;
      (GRUPA     C(20) ,;
       TIP       C(30) ;
      )
   USE
ENDIF

IF !FILE('LETARPOR.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LETARPOR;
      (TARIFA    C(20),;
       NAZTAR    C(10),;      
       PROCPOR   N(10,2);
      )
   USE
ENDIF
    
     

IF !FILE('LEROBA.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEROBA;
               (RSIF      C(20)   ,;
                BARKOD    C(13),;
                GRUPA     C(20)   ,;
                TARIFA    C(20),;
                NAZ       C(50),;
                JED       C(10);
                )
         USE
     ENDIF

IF !FILE('LEGRUPA.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEGRUPA;
               (GRUPA1    C(20)   ,;
                NAZGRU    C(50);
                )
         USE
     ENDIF


IF !FILE('LEPROGRU.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEPROGRU;
               (RSIF      C(20)   ,;
                GRUPA1    C(20);  
                )
         USE
     ENDIF

IF !FILE('LEZALIHE.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEZALIHE;
               (RSIF      C(20)   ,;
                KOL       N(18,3);
                )
         USE
     ENDIF

IF !FILE('LECENE.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LECENE;
               (RSIF      C(20)   ,;
                VELCENA   N(18,2);
                )
         USE
     ENDIF

IF !FILE('LEKUPCI.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEKUPCI;
               (MISIFRA   C(20)   ,;
                MINAZIV   C(50),;
                ULICA     C(60),;
                MESTO     C(30)    ,;    
                POSTA     C(10)     ,;
                NAZIV     C(50)    ,;              
                LICE1     C(20)    ,;
                TELLICE1  C(20)    ,;
                LICE2     C(20)    ,;
                TELLICE2  C(20)    ,;
                pib       c(20)    ,; 
                IDBROJ    C(50)    ,;
                ZIRORAC   C(50)    ,;
                ZIRORAC2  C(50)    ,;
                NAPOMENA  C(50)    ,;
                NAPOMENA2 C(50)    ,;
                NAPOMENA3 C(50)    ,;
                IZNOS1    C(50)    ,;                
                VALUTA    C(50)    ,;                
                RABatk    C(50)    ,;                
                GRUPA1    C(50)    ,;                
                ZABRANA2  C(50)    ,;                
                SIFRA     C(50)    ,;                
                PIB2      C(50)    ,;    
                dospelo   N(18,2),;
                dug       N(18,2),;
                pot       N(18,2),;
                kreditlim N(18,2),;
                ULbroj    C(10) ,;
                VALdand   n(12,0),;                
                RABK      n(12,2) ;                
                )
         USE
     ENDIF

IF !FILE('LEPOPUST.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEPOPUST;
               (MISIFRA   C(20)   ,;
                RABK      N(12,2)  ;                
                )
         USE
     ENDIF
     
IF !FILE('LEAKCPRO.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEAKCPRO;
               (RSIF      C(20)   ,;
                AKCIJARAB N(12,2)  ;                
                )
         USE
     ENDIF     

IF !FILE('LEracuni.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LERACUNI;
               (BRRAC     C(20)   ,;
                FVRSTA    C(20)   ,;
                DATDOK    D(8)    ,;
                DUG       N(18,2) ,;                
                MISIFRA   C(20)   ,;
                SIFRA     C(50)   ;
                )
         USE
     ENDIF

IF !FILE('LEDUGVEZ.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEDUGVEZ;
               (BRRAC     C(20)   ,;
                FVRSTA    C(20)   ,;
                MISIFRA   C(20)   ,;
                SIFRA     C(20)   ;
                )
         USE
     ENDIF

IF !FILE('LEPOR.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEPOR;
               (BRRAC     C(20)   ,;
                FVRSTA    C(20)   ,;
                RSIF      C(20)   ,;
                REDBR     N(4,0)  ,;
                KOLI      N(18,3) ,;
                VELCENA   N(18,2) ,;
                MISIFRA   C(20)   ,;
                VOZILO    C(20)   ,;
                VOZAC     C(20)   ,;
                VALDAN    N(4) ,;
                RABPROC   N(12,2) ,;
                RABPROC2  N(12,2) ,;
                NAPOMENA  C(100)  ,;
                FPUTNIK   C(30),;  
                BRkal     C(6)   ,;
                SIFRA     C(5)   ,;
                DATDOK    d(8) ,;
                VALuta    d(8) ,;
                VSIFRA    C(04),; 
                VOZSIFRA  C(04),;  
                PUTNIK    C(3),;  
                brisanje  C(1) ,;
                NAPOMENAd C(50)  ,;
                motornaz  C(60) ;
                )
         USE
     ENDIF

IF !FILE('LEPUT.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE LEPUT;
               (PUTANJA   C(80)  ;
                )
         USE
     ENDIF
    
DO IIND WITH 'letippro','grupa'
DO IIND WITH 'legrupa','grupa1'
DO IIND WITH 'lekupci','sifra+misifra','sifra'
DO IIND WITH 'lepor','brrac'
DO IIND WITH 'leracuni','sifra+brrac'

CLOSE ALL TABLES
POP KEY
