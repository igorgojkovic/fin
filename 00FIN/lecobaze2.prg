PUSH KEY CLEAR
SET EXACT ON

IF !FILE('L2KOMERC.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE L2KOMERC;
      (PUTNIK    C(3) ,;
       IME       C(30) ;
      )
   USE
ENDIF

IF !FILE('L2KUPCI.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE L2KUPCI;
               (SIFRA     C(5)   ,;
				PUTNIK    c(3),;                
                NAZIV     C(40),;
                pib       c(9)    ,;                 
                ADRESA    C(60),;
                TELEFON   C(20)    ,;                
                kreditlim N(18,2),;
                dospelo   N(18,2),;
                ZABRANA   C(1)    ,;                
                KATEGORIJA  C(1);
                )
         USE
     ENDIF

IF !FILE('L2KODOB.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE L2KODOB;
               (SIFRA     C(5),;
                BROJODOB  C(40),;
                DATUM     D(8),;                 
                IZNOS     N(18,2);
                )
         USE
     ENDIF


IF !FILE('L2MESTAI.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE L2MESTAI;
               (SIFRA     C(5),;
                MISIFRA   C(5),;
                PUTNIK    c(3),;                 
                NAZIV     c(40),;                                 
                mesto     C(30),;             
				ULICA     C(30),;                              
                ULBROJ    C(10),;                             
                TELEFON   C(20),;                
                FAX       C(20),; 
                NAPOMENA  C(80),; 
                MOBTEL    C(20),;                                
                EMAIL     C(60),;                                                
                ADRESA    C(60),;                
                POVRATNO  C(1);                                                                
                )
         USE
     ENDIF


IF !FILE('L2ARTIK.DBF')
  * WAIT WINDOWS ' ROBA '
   CREATE TABLE L2ARTIK;
               (RSIF      C(20)   ,;
                NAZ       C(30),;
                barkod    C(20),;                
                VELCENA   N(18,2),;
                PAK       C(13),;
                GRUPA     C(3)   ,;
                GRUPA1    C(3),;
                RABK      N(12,2);
                )
         USE
     ENDIF

IF !FILE('L2saldo.DBF')
   CREATE TABLE L2SALDO;
               (SIFRA     C(5),;
				PUTNIK    c(3),;  
                DUG       N(18,2),;				              
                POT       N(18,2),;
                SALDO     N(18,2);                
                )
         USE
     ENDIF

IF !FILE('L2UPLA.DBF')
   CREATE TABLE L2UPLA;
               (SIFRA     C(5),;
				PUTNIK    c(3),;  
                DUG       N(18,2),;				              
                POT       N(18,2),;
                SALDO     N(18,2);                
                )
         USE
     ENDIF

IF !FILE('L2DUGOV2.DBF')
   CREATE TABLE L2DUGOV2;
                    (sifra     c(5),;
                     naziv     c(40),;
                     dat00     d(8),;
                     dospelo   n(18,2),;
                     dat01     d(8),;
                     dug01     n(18,2),;
                     dat02     d(8),;
                     dug02     n(18,2),;
                     dat03     d(8),;
                     dug03     n(18,2),;
                     dat04     d(8),;
                     dug04     n(18,2),;
                     dat05     d(8),;
                     dug05     n(18,2),;
                     dat06     d(8),;
                     dug06     n(18,2),;
                     dat07     d(8),;
                     dug07     n(18,2),;
                     dat08     d(8),;
                     dug08     n(18,2),;
                     dat09     d(8),;
                     dug09     n(18,2),;
                     dat10     d(8),;
                     dug10     n(18,2),;
                     dugsve    n(18,2),; 
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
	        	     preneto   c(1),;   
    	             idbr      n(11);                    
        	         )              
                use
             endif


IF !FILE('L2MENICE.DBF')
   CREATE TABLE L2MENICE;
               (SIFRA     C(5),;
                BROJMEN   C(20),;
                DATDOK    D(8),;                                                                
                DATUM     D(8),;                                                                  
                IZNOS     N(18,2);
                )
         USE
     ENDIF
    
*DO IIND WITH 'letippro','grupa'
*DO IIND WITH 'legrupa','grupa1'
*DO IIND WITH 'lekupci','sifra+misifra','sifra'
*DO IIND WITH 'lepor','brrac'
*DO IIND WITH 'leracuni','sifra+brrac'

CLOSE ALL TABLES
POP KEY
