push key CLEAR  

if !file('dev.dbf')
   create table dev;
               (dev       c(3),;
                datdok    d(8),;
                kurs      n(18,6),;                
                skurs     n(18,6),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('zor.dbf')
   create table zor(;
         ppolje1   c(120),;
         kod       c(1),;  
                preneto   c(1),;   
                idbr      n(11);                    
         )
   use
endif         

if !file('lozinke.dbf')
   create table lozinke ;
               (pas       c(2)      ,;
                korisnik  c(20)     ,;                                
                lozinka   c(10)     ,; 
                passgk    n(1)      ,;
                passan    n(1)      ,;
                passbl    n(1)      ,;
                passtv    n(1)      ,;
                passtvra  n(1)      ,;                
                passtvkal n(1)      ,;                                
                passtvrac n(1)      ,;                                
                passtvniv n(1)      ,;                                                
                passtm    n(1)      ,;
                passtmra  n(1)      ,;                
                passtmkal n(1)      ,;                                
                passtmrac n(1)      ,;                                
                passtmniv n(1)      ,;                                                
                passus    n(1)      ,;
                passos    n(1)      ,;
                passld    n(1)      ,;
                passpro   n(1)      ,;
                passost   n(1)      ,;
                passprn   n(1)      ,;
                passprof  n(1)      ,;
                passdel   n(1)      ,;
                passnivo  n(1)      ,;
                aktivan   c(1)      ,;
                datum     d(8)      ,; 
                vreme0    c(10)     ,;
                vreme1    c(10)     ,;
                slike     c(2)      ,;                 
                magacin   n(2)      ,; 
                putanja   c(80)     ,; 
                korime    c(30)     ,; 
                foxy      c(1),;
                PDFPRINT  c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use             
endif

if !file('lozinkea.dbf')
   create table lozinkea ;
               (pas      c(2)      ,;
                korisnik c(20)     ,;                                
                aktivan  c(1)      ,;
                datum    d(8)      ,;
                vreme0   c(10)     ,;
                vreme1   c(10)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use             
endif

if !file('faklica.dbf')
   create table faklica ;
               (olsifra   c(2)  ,;
                olime     c(30) ,; 
                oladresa  c(30),;     
                ollkbr    c(20),;
                oljmbg    c(13),;
                oltel     c(15),;                         
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use             
endif

if !file('kurs.dbf')
  * wait windows ' kursna lista '   
   create table kurs                 ;
               (datdok    d(8)      ,;
                kurs      n(18,6)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('mesta.dbf')
  * wait windows ' evidencija gradova '   
   create table mesta ;
               (mp        c(2)      ,;
                posta     c(5)      ,;
                mesto     c(30)     ,;
                ziro1     c(5)      ,;                
                ziro2     c(3)      ,;
                porbroj   c(23)     ,;    
                porbrojp  c(23)     ,;   
                regsoc    c(10)     ,;
                por       n(12,2)   ,;
                por1      n(12,2)   ,;
                por2      n(12,2)   ,;
                por3      n(12,2)   ,;
                por4      n(12,2)   ,;
                porf      n(12,2)   ,;                
                porf1     n(12,2)   ,;
                porf2     n(12,2)   ,;                
                porf3     n(12,2)   ,;
                porf4     n(12,2)   ,;                
                zdr       n(12,2)   ,;                
                zdr1      n(12,2)   ,;
                zdr2      n(12,2)   ,;
                zdr3      n(12,2)   ,;
                zdr4      n(12,2)   ,;
                zdrf      n(12,2)   ,;                
                zdrf1     n(12,2)   ,;
                zdrf2     n(12,2)   ,;
                zdrf3     n(12,2)   ,;
                zdrf4     n(12,2)   ,;
                pio       n(12,2)   ,;                
                pio1      n(12,2)   ,;
                pio2      n(12,2)   ,;
                pio3      n(12,2)   ,;
                pio4      n(12,2)   ,;
                piof      n(12,2)   ,;                
                piof1     n(12,2)   ,;
                piof2     n(12,2)   ,;
                piof3     n(12,2)   ,;
                piof4     n(12,2)   ,;
                nez       n(12,2)   ,;                
                nez1      n(12,2)   ,;
                nez2      n(12,2)   ,;
                nez3      n(12,2)   ,;
                nez4      n(12,2)   ,;
                nezf      n(12,2)   ,;                
                nezf1     n(12,2)   ,;
                nezf2     n(12,2)   ,;
                nezf3     n(12,2)   ,;
                nezf4     n(12,2)   ,;
                piovl     n(12,2)   ,;                
                piovl1    n(12,2)   ,;
                piovl2    n(12,2)   ,;
                piovl3    n(12,2)   ,;
                piovl4    n(12,2)   ,;
                ben       n(12,2)   ,;                
                ben1      n(12,2)   ,;
                ben2      n(12,2)   ,;
                ben3      n(12,2)   ,;
                ben4      n(12,2)   ,;
                zdrv      n(12,2)   ,;                
                zdr1v     n(12,2)   ,;
                zdr2v     n(12,2)   ,;
                zdr3v     n(12,2)   ,;
                zdr4v     n(12,2)   ,;
                zdrfv     n(12,2)   ,;                
                zdrf1v    n(12,2)   ,;
                zdrf2v    n(12,2)   ,;
                zdrf3v    n(12,2)   ,;
                zdrf4v    n(12,2)   ,;
                piou      n(12,2)   ,;                
                pio1u     n(12,2)   ,;
                pio2u     n(12,2)   ,;
                pio3u     n(12,2)   ,;
                pio4u     n(12,2)   ,;
                piofu     n(12,2)   ,;                
                piof1u    n(12,2)   ,;
                piof2u    n(12,2)   ,;
                piof3u    n(12,2)   ,;
                piof4u    n(12,2)   ,;
                poru      n(12,2)   ,;
                por1u     n(12,2)   ,;
                por2u     n(12,2)   ,;
                por3u     n(12,2)   ,;
                por4u     n(12,2)   ,;
                isplata   n(1),;   
                mesec     n(2),;   
                vrsta     c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('valute.dbf')
  * wait windows ' evidencija gradova '   
   create table valute ;
               (dev       c(3)      ,;
                devnaz    c(30)     ,;
                devkoef   n(14,2),; 
                devsif    c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('nalvrsta.dbf')
 *  wait windows ' vrste naloga za knjizenje'   
   create table nalvrsta ;
             (vrnal    c(3)    ,;
              naziv    c(30)   ,;                                          
              dok      c(3)    ,;
              mp       c(2)    ,;
              obl      c(1)    ,;
              period   n(2)    ,;
              naldok   c(1)    ,;                                        
              znakovi  n(1)    ,;              
              pocsif   c(3)    ,; 
              nauto    c(1),;  
              konto    c(10),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('ksema.dbf')
  * wait windows ' seme knjizenja    '
   create table ksema;
               (sema      c(4)  ,;
                k_ulaz    c(10)  ,;
                k_ulaz2   c(10)  ,;
                k_ulaz3   c(10)  ,;
                k_zav     c(10)  ,;
                k_por     c(10)  ,;
                k_por2    c(10)  ,;
                k_por3    c(10)  ,;
                k_mar     c(10)  ,;
                k_mar2    c(10)  ,;
                k_mar3    c(10)  ,;
                k_plac    c(10)  ,;
                k_plac8   c(10)  ,;
                k_plac5   c(10)  ,;
                k_mag     c(10)  ,;
                k_mag2    c(10)  ,;
                k_mag3    c(10)  ,;
                k_fak     c(10)  ,;
                k_prih    c(10)  ,;
                k_prih2   c(10)  ,;
                k_prih3   c(10)  ,;
                k_rabat   c(10)  ,;
                k_rabat2  c(10)  ,;
                k_rabat3  c(10)  ,;
                k_rash    c(10)  ,;
                k_rash2   c(10)  ,;
                k_rash3   c(10)  ,;
                k_obpor   c(10)  ,;
                k_obpor8  c(10)  ,;
                k_rmar    c(10)  ,;
                k_rmar2   c(10)  ,;
                k_rmar3   c(10)  ,;
                k_rpor    c(10)  ,;
                k_rpor8   c(10)  ,;
                k_rpor2   c(10)  ,;
                k_rpor82  c(10)  ,;
                k_rpor3   c(10)  ,;
                k_rpor83  c(10)  ,;
                k_usluge  c(10)  ,;
                k_opis    c(20)  ,;
                k_sznak   c(1)   ,;
                k_ravnaj  c(10)  ,; 
                k_komis   c(10)  ,; 
                k9_prdug  c(10)  ,;
                k9_prpot  c(10)  ,;
                k9_trdug  c(10)  ,;
                k9_trpot  c(10)  ,;
                k9_gpdug  c(10)  ,;
                k9_gppot  c(10)  ,;
                k9_gtdug  c(10)  ,;
                k9_gtpot  c(10)  ,;
                k_Aobpor  c(10)  ,;
                k_Aobpor8 c(10)  ,;
                k_DAobpor  c(10)  ,;
                k_DAobpor8 c(10)  ,;
                k_svenor  c(1)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
               )
      use
   endif

if !file('tarifa.dbf')
  * wait windows ' tarife poreza    '
   create table tarifa;
               (tarifa    c(6)      ,;
                procpor   n(14,4)      ,;
                kon1d     c(10)      ,;
                kon1p     c(10)      ,;
                naz1      c(70)      ,;
                zirorac   c(23)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
               )
          use
      endif

if !file('fakprn.dbf')
   create table fakprn;
               (fvrsta    c(3)      ,;
                sema      c(4)      ,;
                fnaz      c(30)      ,;
                interna   c(1)      ,;
                prenos    c(1)      ,;
                intprenos c(1)      ,;
                izvoz     c(1)      ,;
                vpdv      c(3)      ,;
                vrstaobj  c(1)      ,;   
                grupa     c(3)      ,;
                fvval     n(1)      ,;
                fnormal   n(1)      ,;
                ffakt     n(1)      ,;
                ftfakt    c(20)     ,;
                fizdao    n(1)      ,;
                ftizdao   c(20)     ,;
                fdirektor n(1)      ,;
                ftdirektor c(20)     ,;  
                fprimio   n(1)      ,;
                ftprimio  c(20)     ,;
                fpsifra   c(3)      ,;
                vsifra    c(4)     ,;                
                revers    c(1),;
                dev       c(3),;
                devk      c(3),;
                pdvodvoji c(1),;
                valpdv    n(6),;
                putnik    c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
           use
        endif

if !file('kalprn.dbf')
  * wait windows ' formiranje kalkulac '
   create table kalprn;
               (fvrsta    c(3)      ,;
                sema      c(4)      ,;
                fnaz      c(30)     ,;
                interna   c(1)      ,;
                prenos    c(1)      ,;
                intprenos c(1)      ,;
                uvoz      c(1)      ,;
                vpdv      c(3)      ,;   
                vrstaobj  c(1)      ,;   
                prencene  c(1)      ,;   
                grupa     c(3)      ,;
                opis      c(30)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif

if !file('fakpodn.dbf')
  * wait windows ' podnozje fakture '
   create table fakpodn;
               (fpsifra   c(3),;
                txt1      c(90)      ,;
                txt2      c(90)      ,;
                txt3      c(90)      ,;
                txt4      c(90)      ,;
                txt5      c(90)      ,;
                txt6      c(90)      ,;
                txt7      c(90)      ,;
                txt8      c(90)      ,;
                txt9      c(90)      ,;
                txt10     c(90)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
use
ENDIF

if !file('fakpodn2.dbf')
  * wait windows ' podnozje fakture '
   create table fakpodn2;
               (fpsifra   c(3),;
                fpsifra2  c(3),;
                txt1      c(220)      ,;
                txt2      c(220)      ,;
                txt3      c(220)      ,;
                txt4      c(220)      ,;
                txt5      c(220)      ,;
                txt6      c(220)      ,;
                txt7      c(220)      ,;
                txt8      c(220)      ,;
                txt9      c(220)      ,;
                txt10     c(220)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('kon1.dbf')
*   wait windows ' konto klasa '   
   create table kon1 ;
              (k1       c(1)   ,;              
               naziv    c(45)  ,;
               nazkto1  c(45)  ,;
               k1n      c(1)   ,;                             
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('kon2.dbf')
 *  wait windows ' konto grupa '   
   create table kon2 ;
              (k2       c(2)   ,;              
               naziv    c(45)  ,;
               nazkto2  c(45)  ,;
               k2n      c(2)   ,;                             
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('kon3.dbf')
*   wait windows ' konto grupa '   
   create table kon3 ;
              (k3       c(3)   ,;              
               naziv    c(55)  ,;
               nazkto3  c(45)  ,;
               k3n      c(3)   ,;                             
                preneto   c(1),;   
                idbr      n(11);                    
             )
   use
ENDIF

if !file('kon4.dbf')
   create table kon4 ;
              (k4       c(4)   ,;              
               naziv    c(55)  ,;
               nazkto   c(45)  ,;
               k4n      c(4)   ,;                                            
                preneto   c(1),;   
                idbr      n(11);                    
             )
   use
endif
if !file('kon5.dbf')
   create table kon5 ;
              (k5       c(5)   ,;              
               naziv    c(55)  ,;
               nazkto   c(45)  ,;
               k5n      c(5)   ,;                                            
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('kon6.dbf')
   create table kon6 ;
              (k6       c(6)   ,;              
               naziv    c(55)  ,;
               nazkto   c(45)  ,;
               k6n      c(6)   ,;                                            
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('konto.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table konto ;
              (konto    c(10)   ,;              
               naziv    c(70)  ,;
               k1       c(1),; 
               k2       c(2),; 
               k3       c(3),; 
               k4       c(4),; 
               k5       c(5),; 
               k6       c(6),; 
               kod      c(20)  ,;              
               nazkto4  c(45),;     
               skonto    c(10),;              
               jed       c(10),;  
               konton    c(10)   ,;                                                        
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif

if !file('konplan.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table konplan ;
              (konto    c(10)   ,;              
               naziv    c(70)  ,;
               k1       c(1),; 
               k2       c(2),; 
               k3       c(3),; 
               k4       c(4),; 
               k5       c(5),; 
               k6       c(6),; 
               kod      c(20)  ,;              
               nazkto4  c(45) ,;               
               kn1      c(70),;
               kn2      c(70),;
               kn3      c(70),;
               kn4      c(70),;
               kn5      c(70),;
               kn6      c(70),;
               skonto   c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('putanje.dbf')
*   wait windows ' pregled postojanja firmi '   
   create table putanje ;
               (psifra    n(4)      ,;
                firma     c(30)     ,;  
                fbaza     c(20)     ,;  
                aktivna   c(1),;
                akt1      c(1),;
                akt2      c(1),;
                akt3      c(1),;
                akt4      c(1),;
                akt5      c(1),;
                fsnimi    c(1),;
                fkalprn   c(1),; 
                ffakprn   c(1),;
                fksema    c(1),;
                fkonplan  c(1),;
                ffakpodn  c(1),;
                fnalvrsta c(1),;
                fmesta    c(1),;
                putanja   c(40)     ,; 
                slike     c(2)      ,;
                fime      c(50)    ,;
                fime2     c(50)     ,;
                fpos      c(5)      ,;
                fmes      c(25)     ,;
                ful       c(25)     ,;                
                fulbr     c(10)     ,;
                frepub    c(25)     ,;
                fdrzava   c(25)     ,;
                fziro     c(30)     ,;                
                fziro2    c(30)     ,;                
                fziro3    c(30)     ,;                
                fziro4    c(30)     ,;                
                fziro5    c(30)     ,;                
                fziro6    c(30)     ,;                
                fzirodev  c(30)     ,;                
                fbanka    c(30)     ,;
                fbanka2   c(30)     ,;
                fbanka3   c(30)     ,;
                fbanka4   c(30)     ,;
                fbanka5   c(30)     ,;
                fbanka6   c(30)     ,;
                fbankad   c(30)     ,;
                ftel      c(20)     ,;
                ftel2     c(20)     ,;
                ftel3     c(20)     ,;
                ffax      c(20)     ,;
                ffax2     c(20)     ,;
                ffax3     c(20)     ,;
                femail    c(40)     ,;
                fveb      c(40)     ,;
                fsif      c(10)     ,;
                fnazd     c(30)     ,;
                fsdk      c(3)      ,;
                fmat      c(9)     ,;
                fpor      c(16)     ,;
                fdop      c(24)     ,;
                fvlast    c(30)     ,;
                fagenc    c(30)     ,;
                ffpaslrn  c(1)      ,;
                fops      c(30)     ,;
                fdat0     d(8)      ,;
                fdat1     d(8)      ,;
                fdatobr   d(8)      ,;
                fregsoc   c(10)     ,;
                fregsud   c(20)     ,;
                fpibsav   c(09)     ,; 
                fmbsav    c(13)     ,; 
                frep      c(3)      ,;
                fporrep   c(16)     ,;
                fosoba    c(27)     ,;
                fuplaceni c(20),;
                fupisani  c(20),;
                fnaznaka  c(20),;
                fswift    c(20),;
                fpdv      c(1),;
                z1        n(18,2),;
                z2        n(18,2),;
                z3        n(18,2),;
                z4        n(18,2),;
                z5        n(18,2),;
                z6        n(18,2),;
                z7        n(18,2),;
                z8        n(18,2),;
                z9        n(18,2),;
                z10       n(18,2),;
                z11       n(18,2),;
                z12       n(18,2),;
                ukzad     n(18,2),;
                u1        n(18,2),;
                u2        n(18,2),;
                u3        n(18,2),;
                u4        n(18,2),;
                u5        n(18,2),;
                u6        n(18,2),;
                u7        n(18,2),;
                u8        n(18,2),;
                u9        n(18,2),;
                u10       n(18,2),;
                u11       n(18,2),;
                u12       n(18,2),;
                ukupl     n(18,2),;
                razlika   n(18,2),;
                fprodc    c(1),;
                fzatvgod  c(1),;
                fzatvper  d(8),;  
                fpossif   c(1),;                                                                  
                fjmbg     c(13),;   
                ffakpodn2 c(1),;                                                                                               
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('boje.dbf')
   create table boje  ;
               (boja       c(11)    ,;                                
                bkod       n(12)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('talon.dbf')
   create table talon   ;
               (ime      c(20)     ,;
                datum    d(8)      ,; 
                vreme0   c(10)     ,;
                vreme1   c(10)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use             
endif
if !file('finpar.dbf')
   create table finpar;
               (konto     c(10)  ,;
                p1        c(1),;            
                p2        c(1),;            
                p3        c(1),;            
                p4        c(1),;            
                p5        c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('pregle.dbf')
  * wait windows ' kursna lista '   
   create table pregle;
               (ppolje    c(103),;
                ppolje2   c(103),;
                ppolje3   c(103),;
                ppolje4   c(103),;
                ppolje5   c(103),;
                ppolje6   c(103),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pregf.dbf')
  * wait windows ' kursna lista '   
   create table pregf(ime       c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )            
   use
endif

if !file('pregf01.dbf')
   create table pregf01;
      (ime1      c(128),;
       ime2      c(128),;      
       preneto   c(1),;
       idbr      n(11);
      )            
   use
endif


if !file('datumi.dbf')
 *  wait windows ' datumi '   
   create table datumi ;
              (dat0     d(8)   ,;                                 
               dat1     d(8)   ,;      
               par1     c(1)   ,;
               par2     c(1)   ,;                   
               par3     c(1)   ,;
               par4     c(1)   ,;               
               centxt1  c(60)  ,;                              
               centxt2  c(60)  ,;                              
               centxt3  c(60)  ,;                                                            
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif
if !file('nalp.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalp ;
             (konto     c(10)    ,;                   
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              opis      c(30)   ,;                   
              datdok    d(8)    ,;              
              brnal     c(6)    ,;                                 
              dok       c(3)    ,;                            
              mp        c(2)    ,;                                               
              mtr       n(5)    ,;              
              dev       c(3)    ,;                            
              devkurs   n(18,6) ,;                            
              devdug    n(18,6) ,;                                          
              devpot    n(18,6) ,;     
              brdok     c(30)   ,;                   
              napomena1 c(80)  ,;
              napomena2 c(80)  ,;
              kurs      n(18,6) ,;                                                        
              kursdug   n(18,6) ,;                                          
              kurspot   n(18,6) ,;     
              dpsaldo   n(18,2) ,;                                                        
              cena      n(18,3) ,;                                                        
              ulaz      n(18,3) ,;                            
              izlaz     n(18,3) ,;                            
              ukupno_d  n(18,2) ,;                            
              ukupno_p  n(18,2) ,;                            
              sifra     c(5)    ,;
              brrac     c(20)   ,;
              valuta    d(8)    ,; 
              datpri    d(8)    ,;                                                                      
              datpdv    d(8)    ,;                                                                      
              stanje    n(18,3) ,;                
              saldo     n(18,2) ,; 
              oznaka    c(3)    ,;
              datum     d(8)    ,;                                                                      
              vreme     c(10)   ,;                                                                      
              skonto    c(10)   ,;                   
              automnal  c(1)    ,;
              oper      c(2)    ,;
              probni    c(1)    ,;
              gkonto    c(10)   ,;
              arhiva    c(1)    ,;
              arhiva2   c(1)    ,;
              devizno   c(1)    ,;
              vrsta     c(2),;
              imetabele c(8),;        
              datrazduz d(8)    ,; 
              opisu     c(60)   ,; 
              DINRAZDUZ n(18,2) ,; 
              sifprod   c(2),;   
              dp        c(1),;   
              doddug    n(18,2) ,;                   
              dodpot    n(18,2) ,;                                 
              preneto   c(1),;   
              idbr      n(11);                    
              )                
   use
endif

if !file('nalizv.dbf')
*   wait windows ' finansijski izvestaji '   
   create table nalizv ;
             (konto     c(10)    ,;                   
              k1        c(1)    ,;
              k2        c(2)    ,;
              k3        c(3)    ,;                            
              k4        c(4)    ,;                            
              k5        c(5)    ,;                            
              k6        c(6)    ,;                            
              pdug      n(18,2) ,;                   
              ppot      n(18,2) ,;                   
              psaldo    n(18,2) ,;                   
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              saldo     n(18,2) ,;                   
              pddug     n(18,4) ,;                   
              pdpot     n(18,4) ,;                   
              pdsaldo   n(18,4) ,;                   
              dsaldo    n(18,2) ,;                   
              udug      n(18,2) ,;                   
              upot      n(18,2) ,;                   
              usaldo    n(18,2) ,;                   
              opis      c(30)   ,;                   
              sifra     c(5)    ,;                   
              brrac     c(20)   ,;                                 
              valuta    d(8)    ,;                                 
              datdok    d(8)    ,;              
              datpri    d(8)    ,;              
              datpdv    d(8)    ,;              
              brnal     c(6)    ,;                                 
              mp        c(2)    ,;                                               
              mtr       n(5)    ,;              
              dok       c(3)    ,;                            
              dev       c(3)    ,;                            
              devkurs   n(18,4) ,;                            
              devdug    n(18,4) ,;                                          
              devpot    n(18,4) ,;     
              kurs      n(18,4) ,;
              k1naziv   c(45)   ,;              
              k2naziv   c(45)   ,;              
              k3naziv   c(55)   ,;              
              k4naziv   c(70)   ,;                                                        
              k5naziv   c(70)   ,;                                                        
              k6naziv   c(70)   ,;                                                        
              knaziv    c(70)   ,;                                                        
              fnaziv    c(30)   ,;                            
              mpnaziv   c(30)   ,;                            
              mtrnaziv  c(30)   ,;                                                        
              grupak    c(5)    ,;                                                                      
              grupa     c(3)    ,;                                                                      
              grupa1    c(3)    ,;
              grupa2    c(3)    ,;
              grupa3    c(3),;
              grupa4    c(3),;
              grupa5    c(5),;
              uknab     n(18,2),;
              vredprod  n(18,2),;
              uplaceno  n(18,2),;
              vanval    n(12),;
              zatvar    c(1),;
              idul      c(18),;                 
              konto10   c(10),;    
              ukupno_d  n(18,2) ,;                            
              ukupno_p  n(18,2) ,;                            
              brkal     c(6) ,;                            
              nacp        c(1) ,;                            
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('nalrasp.dbf')
   create table nalrasp;
             (konto     c(10)    ,;                   
              k9        c(10)    ,;                   
              ucesce    n(08,3)    ,;                   
              dp        c(1)    ,;                   
              dug       n(18,2)    ,;                   
              pot       n(18,2)    ,;                   
              opis      c(20)    ,;                   
              mtr       n(5)    ,;                   
              datdok    d(8)    ,; 
              brnal     c(6)    ,;                   
              dok       c(3)    ,;                   
              k1        c(1)    ,;                   
              k2        c(2)    ,;                   
              k3        c(3)    ,;                   
              k4        c(4)    ,;                   
              k5        c(5)    ,;                   
              k6        c(6)    ,;                   
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('nalmtr.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalmtr ;
             (konto    c(10)    ,;                   
              datdok   d(8)    ,;              
              brnal    c(6)    ,;                                 
              dug      n(18,2),;
              pot      n(18,2) ,;                   
              saldo    n(18,2) ,;                   
              iznos01 n(18,2) ,;                   
              iznos02 n(18,2) ,;                   
              iznos03 n(18,2) ,;                   
              iznos04 n(18,2) ,;                   
              iznos05 n(18,2) ,;                   
              iznos06 n(18,2) ,;                   
              iznos07 n(18,2) ,;                   
              iznos08 n(18,2) ,;                   
              iznos09 n(18,2) ,;                   
              iznos10 n(18,2) ,;                   
              iznos11 n(18,2) ,;                   
              iznos12 n(18,2) ,;                   
              iznos13 n(18,2) ,;                   
              iznos14 n(18,2) ,;                   
              iznos15 n(18,2) ,;                   
              iznos16 n(18,2) ,;                   
              iznos17 n(18,2) ,;                   
              iznos18 n(18,2) ,;                   
              iznos19 n(18,2) ,;                   
              iznos20 n(18,2) ,;                   
              iznos21 n(18,2) ,;                   
              iznos22 n(18,2) ,;                   
              iznos23 n(18,2) ,;                   
              iznos24 n(18,2) ,;                   
              iznos25 n(18,2) ,;                   
              iznos26 n(18,2) ,;                   
              iznos27 n(18,2) ,;                   
              iznos28 n(18,2) ,;                   
              iznos29 n(18,2) ,;                   
              iznos30 n(18,2) ,;                   
              naziv    c(60),;  
              opis     c(30)   ,;                   
              ukupno   n(18,2) ,;                   
              razlika  n(18,2) ,;
              arhiva   c(01) ,;
              arhiva2  c(01) ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('nalmtrk.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalmtrk ;
             (kontotr  c(05)   ,;                   
              naziv    c(20),;                 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('nalraspu.dbf')
   create table nalraspu;
             (dat0      d(8)    ,;                   
              dat1      d(8)    ,;                   
              brnal     c(6)    ,;                   
              mtr       n(5)   ,;                   
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('nalmat.dbf')
   create table nalmat ;
             (konto     c(10)    ,;                   
              cena      n(18,3) ,;                                                        
              ulaz      n(18,3) ,;                            
              izlaz     n(18,3) ,;                            
              ukupno_d  n(18,2) ,;                            
              ukupno_p  n(18,2) ,;                            
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              stanje    n(18,3) ,;                
              saldo     n(18,2) ,; 
              datdok    d(8)    ,;              
              brnal     c(6)    ,;                                 
              opis      c(30)   ,;                   
              preneto   c(1),;   
              idbr      n(11);                    
              )                
   use
endif



if !file('blp.dbf')
 *  wait windows ' gbp izrada blagajne za knjizenje '   
   create table blp ;
             (dnev     n(4)   ,;
              nalu     n(4)   ,;
              nali     n(4)   ,;
              dug      n(18,2) ,;                   
              pot      n(18,2) ,;                   
              opis     c(50)   ,;                   
              konto    c(10)    ,;                   
              datdok   d(8)    ,;              
              brnal    c(6)    ,;                                 
              mp       c(2)    ,;                                               
              mtr      n(5)    ,;     
              dok      c(3)    ,; 
              sifra    c(5)    ,;          
              sifprod  c(2)    ,;                         
              dev      c(3)    ,;                            
              devkurs  n(18,6) ,;                            
              devdug   n(18,6) ,;                                          
              devpot   n(18,6) ,;     
              idul     c(18),;                 
              pib      c(13)   ,;     
              priz     c(10)   ,;
              ime      c(30)   ,;
              mesto    c(25)   ,;
              adresa   c(25)   ,; 
              razlog1  c(30)   ,;
              razlog2  c(30)   ,;              
              kurs     n(18,6) ,;                                                        
              oper     c(2)    ,;                                                        
              datum    d(8)    ,;                                                                      
              vreme    c(10)   ,;                                                                      
              brdb     n(5)    ,;
              brul     n(5)    ,;
              briz     n(5)    ,;
              sadr     c(40)   ,;          
              arhiva   c(1)    ,;
              arhiva2  c(1)    ,;
              vrstapl  c(1)    ,;
              vrstaan  c(1)    ,;
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif

if !file('tvtm.dbf')
  * wait windows ' trgovacka knjiga '   
   create table tvtm ;
               (datdok    d(8)      ,;
                opis      c(60),;
                uknab     n(18,2),;
                vredprod  n(18,2),;
                uplaceno  n(18,2),;
                usluge    n(18,2),;
                vrsta     c(1),;
                gotovina  n(18,2),;
                cekovi    n(18,2),;
                kartica   n(18,2),;
                ostalo    n(18,2),;
                brkal     c(6),;
                brfak     c(6),;
                brnal     c(6),;
                datup     d(8),;
                datpri    d(8),;
                datpdv    d(8),;
                konto     c(10),; 
                datum     d(8),;
                vreme     c(8),;
                redni     n(14),;
                sstrana   n(8),;
                stampa    c(1),;
                stanje    n(18,2),;
                automnal  c(1)    ,;
                arhiva    c(1),;
                arhiva2   c(1),;
                oper      c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif

if !file('tmmeni.dbf')
  * wait windows ' trgovacka knjiga '   
   create table tmmeni;
                (opis      c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif


if !file('rob.dbf')
  * wait windows ' roba '
   create table rob;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                kol       n(18,3),;
                velcena   n(18,5),;
                dcena     n(18,5),;
                malcena   n(18,5),;
                dmcena    n(18,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                jed       c(10),;
                barkod    c(20),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;
                akccena   n(14,5),;
                akcvred   n(14,3),;
                ulaz      n(14,4),;
                izlaz     n(14,4),;
                zadnab    n(18,5),;
                zadprod   n(18,5),;
                transpak  n(14,4),;
                unpak     n(14,4),;
                kompak    n(14,4),;
                minpak    n(14,4),;
                maksimum  n(14,3),;
                optimum   n(14,3),;
                minimum   n(14,3),;
                plp       c(1),;
                valdan    c(3),;
                valdan1   c(3),;
                valdan2   c(3),;
                valdan3   c(3),;
                valdan4   c(3),;
                valdan5   c(3),;
                sifra     c(5),;
                datnab    d(8),;
                vrboda    n(14,5),;
                nabcena   n(14,5),;                
                nabvred   n(14,5),;                
                zadnabm   n(14,5),;
                zadprodm  n(14,5),;
                nabcenam  n(14,5),;                
                nabvredm  n(14,5),;                
                ulazm     n(14,4),;
                izlazm    n(14,4),;
                rab1      n(09,4),;
                rab2      n(09,4),;
                rab3      n(09,4),;
                rab4      n(09,4),;
                podrsif   c(5),;
                proizv    c(5),;
                podrob    c(5),;
                glavna    c(1),;  
                psif      c(5),;
                msif      c(5),;
                pmsif     c(5),;
                asif      c(5),; 
                cena      n(18,5),;  
                vrsta     c(1),;                 
                datum     d(8),;
                vreme     c(8),;
                period    n(3),;
                prvidan   d(8),;
                prvibroj  n(6),;
                plankol   n(18,3),;
                rvrsta    c(5),;
                katbroj   c(12),;
                velplcena n(18,5),;
                malplcena n(18,5),;
                kurs      n(18,6),;
                unkol     n(18,3),;
                plcena    n(18,3),;
                velvred   n(14,2),;
                malvred   n(14,2),;
                vredulv   n(14,2),;
                vredizv   n(14,2),;
                vredulm   n(14,2),;
                vredizm   n(14,2),;
                opis01    c(30),;
                opis02    c(30),;
                opis03    c(30),;
                opis04    c(30),;
                opis05    c(30),;
                opis06    c(30),;
                opis07    c(30),;
                opis08    c(30),;
                opis09    c(30),;
                opis10    c(30),;
                opis11    c(30),;
                opis12    c(30),;  
                tarozn    c(25,0),;
                carproc   n(07,3),; 
                nazeng    c(30),;
                naznem    c(30),;
                nazita    c(30),;
                vazi      c(1),;    
                tezina    n(14,3),;      
                marzamul  n(12,2),;
                marzamiz  n(12,2),;
                marzav    n(12,2),;       
                marzaviz  n(12,2),;
                num06     n(10,2),;
                num07     n(10,2),;
                num08     n(10,2),;
                num09     n(10,2),;
                num10     n(10,2),;
                num12     n(10,2),;
                num14     n(10,2),;
                num16     n(10,2),;
                num18     n(10,2),;
                num20     n(10,2),;
                num22     n(10,2),;
                proscenv  n(18,3),;  
                proscenm  n(18,3),;  
                profil    c(5),;  
                maksmarza n(10,2),;
                maksmarmp n(10,2),;
                maksrabat n(10,2),;
                velicina  c(10),;
                duzina    c(10),;
                sirina    c(10),;
                idbroj    c(15),;
                nivougrad c(3),;
                vrkasa    c(1),;     
                nazskr    c(18),;      
                prockalo  n(09,4),;  
                cigoznaka c(10),;
                bruto     n(18,5),;
                neto      n(18,5),;
                polica    c(10),;
                proscenaa n(18,3),;  
                magacin   n(02),;
                vrsto     c(04),;
                pproc     n(14,6),;
                akcijarab n(18,2),;                
                devcena   n(18,6),;                 
                akcijaput n(18,2),;
                marka     c(20),;        
                tip       c(25),;
                model     c(20),;    
                godiste   c(04),;
                snaga     c(10),;
                zapremina c(10),;
                procpos   n(9,4),;
                kbarkod   c(20),;
                uvoznik   c(20),;
                zproizv   c(20),;
                zemljauv  c(20),;
                utovarni  c(1),;
                vrstarobe c(25),;
                naz2      c(99),;
                boja      c(30),;
                niznos    n(18,2),;
                nizni     n(18,2),;
                neazur    c(1),;
                amb1      c(5),;
                amb1n     c(15),;
                amb2n     c(15),;
                ambkol    n(12,0),;
                ssif      c(5),;
                konto     c(10),;
                pdvne     c(1),;    
                akcijacena n(18,2),;
                poc       n(18,3),;           
                kolst     n(18,3),;  
                dug       n(18,2),;  
                pot       n(18,2),;   
                saldo     n(18,2),;   
                ndug      n(18,2),;   
                npot      n(18,2),;   
                nsaldo    n(18,2),;  
                vrednost  n(18,2),;   
                konsigvred n(18,2),;   
                ncena     n(18,3),;   
                sifrad    c(5),;                            
                sifrak    c(5),;                                     
                poth      n(13,2),;           
                potp      n(13,2),;           
                poto      n(13,2),;                    
                proscenn  n(18,3),;                            
                marogran  n(9,2),;           
                mariskor  n(9,2),;                           
                grupa6    c(5),;  
                jedpak    c(10),;   
                tarifaS   c(6),;
                procporS  n(10,4),;
                komkg     n(18,6),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

*if !file('robmemo.dbf')
*  * wait windows ' roba '
*   create table robmemo;
*               (rsif      c(5)   ,;
*                opis      m,;
*                preneto   c(1),;   
*                idbr      n(11);                    
*                )
*         use
*     endif


if !file('robpr.dbf')
  * wait windows ' roba '
   create table robpr;
               (profil    c(5)   ,;
                profnaz   c(30),;
                rab1      n(09,2),;
                rab2      n(09,2),;
                rab3      n(09,2),;
                rab4      n(09,2),;
                rab5      n(09,2),;
                rab6      n(09,2),;
                rab7      n(09,2),;
                rab8      n(09,2),;
                rab9      n(09,2),;
                rab10     n(09,2),;
                rab11     n(09,2),;
                rab12     n(09,2),;
                rab13     n(09,2),;
                rab14     n(09,2),;
                rab15     n(09,2),;
                rab16     n(09,2),;
                rab17     n(09,2),;
                rab18     n(09,2),;
                rab19     n(09,2),;
                rab20     n(09,2),;
                rab21     n(09,2),;
                rab22     n(09,2),;
                rab23     n(09,2),;
                rab24     n(09,2),;
                rab25     n(09,2),;
                rab26     n(09,2),;
                rab27     n(09,2),;
                rab28     n(09,2),;
                rab29     n(09,2),;
                rab30     n(09,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif




if !file('robtdn.dbf')
  * wait windows ' roba '
   create table robtdn;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                kol       n(18,3),;
                velcena   n(14,5),;
                dcena     n(14,5),;
                malcena   n(14,5),;
                dmcena    n(14,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('robvrst.dbf')
  * wait windows ' roba '
   create table robvrst;
               (rvrsta    c(5),;
                naziv     c(15),;
                opis      c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
   endif

if !file('robproi.dbf')
  * wait windows ' roba '
   create table robproi;
               (proizv    c(5),;
                naziv     c(15),;
                opis      c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
   endif


if !file('rokoktel.dbf')
  * wait windows ' roba '
   create table rokoktel;
               (rsif      c(5)   ,;
                podrob    c(5),;
                naz       c(30),;
                kol       n(18,6),;
                malcena   n(18,5),;
                malvred   n(14,2),;
                procvred  n(14,6),;
                nazkok    c(30),;
                malcenak  n(14,5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('robhem.dbf')
  * wait windows ' roba '
   create table robhem;
               (rsif      c(5)   ,;
                naz       c(30),;
                datnab    d(8),;                                
                kol       n(18,3),;
                datprod   d(8),;
                koli      n(18,3),;
                kolst     n(18,3),;                
                sifdob    c(5),;
                dobav     c(40),;                                
                dobavpib  c(9),;                                                
                sifkup    c(5),;                                
                kupac     c(40),;                                
                kupacpib  c(9),;                                                
                godina    n(4),;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('robhem0.dbf')
   create table robhem0;
               (rsif      c(5)   ,;
                naz       c(30),;
                grupa     c(3),;                
                casbr     c(30),;                                
                esbr      c(30),;
                klasifik  c(30),;
                nazprzem  c(60),;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('kal.dbf')
  * wait windows ' kal  '
   create table kal;
               (naz       c(30),;
                brkal     c(6) ,;
                rsif      c(5),;
                kol       n(18,4),;
                cena      n(18,5),;
                iznos     n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,3),;
                marproc   n(18,4),;
                marza     n(18,3),;
                rabproc   n(9,4),;
                rabat     n(18,3),;
                tarifa    c(6),;
                procpor   n(9,4),;
                porez     n(18,3),;
                zavproc   n(10,5),;
                zavisni   n(18,3),;
                zavprocn  n(10,5),;
                zavisnin  n(18,3),;
                zavprocc  n(10,5),;
                zavisnic  n(18,3),;
                zavprc2   n(10,5),;
                zavisc2   n(18,3),;
                zavprc3   n(10,5),;
                zavisc3   n(18,3),;
                porkproc  n(10,5),;
                porkorekc n(18,3),;
                trjdob    n(18,5),;
                trdob     n(18,3),;
                trjdobn   n(18,5),;
                trdobn    n(18,3),;
                zaokruz   n(14,2),;
                nabcena   n(18,3),;
                nabvred   n(18,3),;
                malcena   n(18,5),;
                malvred   n(18,3),;
                marprocmp n(18,4),;
                marzamp   n(18,2),;
                malcenamp n(18,2),;
                procpos   n(9,4),;
                porpos    n(18,3),;
                poljproc  n(09,4),;
                poljdin   n(18,3),;
                carproc   n(09,4),;
                cardin    n(18,3),;
                akccena   n(18,5),;
                akcvred   n(18,3),;
                plp       c(1),;
                placpor   n(18,3),;
                placporz  n(18,3),;
                placporu  n(18,3),;
                placporc  n(18,3),;
                procpord  n(09,4),;
                placpord  n(18,3),;
                datdok    d(8),;
                marzakor  n(18,3),;
                devcena   n(18,5),;
                devvred   n(18,3),;
                sbrkal    c(6),;
                sifra     c(5),;
                podnaziv  c(20),;
                normativ  c(05),;
                brnal     c(6),;             
                sfvrsta   c(3),;
                datrok    d(8),;             
                verifikac c(1),;             
                primljeno n(18,3),;
                grupa     c(3),;
                prodaja   c(1),;
                datisp    d(8),;             
                ssif      c(5),;
                magacin   n(02),;    
                datpro    d(8),;
                serija    c(15),;
                sertifik  c(15),;    
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('robhtm.dbf')
  * wait windows ' roba '
   create table robhtm;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                malcena   n(18,5),;
                kol1      n(18,3),;
                kol2      n(18,3),;
                kol3      n(18,3),;
                kol4      n(18,3),;
                kol5      n(18,3),;
                kol6      n(18,3),;
                kol7      n(18,3),;
                kol8      n(18,3),;
                kol9      n(18,3),;
                kol10     n(18,3),;
                kol11     n(18,3),;
                kol12     n(18,3),;
                kol13     n(18,3),;
                kol14     n(18,3),;
                kol15     n(18,3),;
                kol16     n(18,3),;                                                                                                                                
                kol17     n(18,3),;                                                                                                                                
                kol18     n(18,3),;                                                                                                                                
                kol19     n(18,3),;                                                                                                                                
                kol20     n(18,3),;                                                                                                                                
                kol21     n(18,3),;
                kol22     n(18,3),;
                kol23     n(18,3),;
                kol24     n(18,3),;
                kol25     n(18,3),;
                kol26     n(18,3),;
                kol27     n(18,3),;
                kol28     n(18,3),;
                kol29     n(18,3),;
                kol30     n(18,3),;
                kol31     n(18,3),;
                kol32     n(18,3),;
                kol33     n(18,3),;
                kol34     n(18,3),;
                kol35     n(18,3),;
                kol36     n(18,3),;
                kol37     n(18,3),;
                kol38     n(18,3),;
                kol39     n(18,3),;
                kol40     n(18,3),;
                ulazm     n(18,3),;
                izlazm    n(18,3),;
                kolsve    n(18,3),;
                naruciti  n(18,3),;
                tarifa    c(6),;
                procpor   n(10,4),;
                velcena   n(18,5),;
                dcena     n(18,5),;
                dmcena    n(18,5),;
                kol       n(18,3),;
                jed       c(10),;
                barkod    c(20),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;
                sifra     c(5),;
                proizv    c(5),;
                podrob    c(5),;
                polica    c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('kalg.dbf')
  * wait windows ' kalg  '
   create table kalg;
               (brkal     c(6) ,;
                brnal     c(6) ,;
                fvrsta    c(3)  ,;
                sifra     c(5) ,;
                brrac     c(20) ,;
                datpri    d(8)  ,;
                datdok    d(8)  ,;
                valuta    d(8)  ,;
                dokum     c(20),;
                uc        c(1),;
                pv1       d(8),;
                prdin1    n(14,2),;
                pv2       d(8),;
                prdin2    n(14,2),;
                pv3       d(8),;
                prdin3    n(14,2),;
                pv4       d(8),;
                prdin4    n(14,2),;
                pv5       d(8),;
                prdin5    n(14,2),;
                pv6       d(8),;
                prdin6    n(14,2),;
                pv7       d(8),;
                prdin7    n(14,2),;
                pv8       d(8),;
                prdin8    n(14,2),;
                pv9       d(8),;
                prdin9    n(14,2),;
                pv10      d(8),;
                prdin10   n(14,2),;
                pv11      d(8),;
                prdin11   n(14,2),;
                pv12      d(8),;
                prdin12   n(14,2),;
                pv13      d(8),;
                prdin13   n(14,2),;
                pv14      d(8),;
                prdin14   n(14,2),;
                pv15      d(8),;
                prdin15   n(14,2),;
                pv16      d(8),;
                prdin16   n(14,2),;
                pv17      d(8),;
                prdin17   n(14,2),;
                pv18      d(8),;
                prdin18   n(14,2),;
                rnal      c(12),; 
                pbrkal    c(6),; 
                pdok      c(3),; 
                pubrkal   c(6),; 
                pudok     c(3),; 
                preniz    c(1),; 
                prenu     c(1),; 
                nobrkal   c(6),; 
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                datumi    d(8),;
                vremei    c(8),;
                interna   c(1),;
                prenos    c(1),;
                vpdv      c(3),;
                ppdv      c(1),;
                opdv      c(1),;
                sbrkal    c(6),;
                dev       c(3),;
                devkurs   n(18,6),;
                devizna   c(1),;
                kasa      c(1),;
                idul      c(18),;                
                misifra   c(05),;      
                mimesto   c(60),;      
                datpdv    d(8)  ,;
                veza      c(20),;
                opis      c(20),;
                brojdok   c(20),;
                datdokaza d(8),;   
                placeno   n(18,2),;
                izvod     c(20),;
                prodaja   c(1),;
                olsifra   c(2)  ,;
                olime     c(30) ,; 
                oladresa  c(30),;     
                ollkbr    c(20),;
                oljmbg    c(13),;
                oltel     c(15),;    
                vozilo    c(20),; 
                vozac     c(30),; 
                vsifra    c(04),; 
                vozsifra  c(04),; 
                konto     c(10),;
                kontos    c(10),;
                kontok    c(10),;                  
                arhiva    c(1),;
                arhiva2   c(1),;
                sn        c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )

          use
       endif



if !file('kalzav.dbf')
  * wait windows ' kalg  '
   create table kalzav;
               (brkal     c(6) ,;
                sifra     c(5),;
                datpdv    d(8),;
                datpri    d(8),;
                datdok    d(8),;
                valuta    d(8),;
                brrac     c(20),;
                dug       n(18,2),;
                ocarina   n(18,2),;
                oporez    n(18,2),;
                por18     n(18,2),;
                por8      n(18,2),;
                neporez   n(18,2),;
                vrsta     c(01),;
                sema      c(04),;
                vpdv      c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('fak.dbf')
  * wait windows ' fak  '
   create table fak;
               (naz       c(30),;
                brkal     c(6),;       
                rsif      c(5),;       
                koli      n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,3),;
                cena      n(18,5),;
                izni      n(18,4),;
                marproc   n(18,4),;
                marza     n(18,3),;
                rabproc   n(10,4),;
                rabat     n(18,3),;
                tarifa    c(6)   ,;
                procpor   n(10,4),;
                porez     n(18,3),;
                malcena   n(18,5),;
                malvred   n(18,3),;
                procpos   n(9,4),;
                porpos    n(18,3),;
                akccena   n(18,5),;
                akcvred   n(18,3),;
                datdok    d(8)   ,;
                garancija c(20),;
                gardan    c(04),;
                valdan    c(03),;
                sifra     c(05),;
                paket     n(09,2),;
                vtxt      c(1),;
                rabproc2  n(10,4),;
                rabat2    n(18,3),;
                devcena   n(18,5),;
                devvred   n(18,3),;
                zaokruz   n(14,2),;
                podrob    c(05),;
                profil    c(05),;
                magacin   n(02),;
                bruto     n(18,5),;
                neto      n(18,5),;
                sbrkal    c(6),;
                zadkoli   c(1),;
                normativ  c(05),;          
                rredni    c(01),;          
                brnal     c(06),;     
                datrok    d(8),;
                verifikac c(1),; 
                izdato    n(18,3),;
                nema      c(1),;
                grupa     c(3),; 
                utovarni  c(1),; 
                porezo    n(18,3),;
                devrabat  n(18,3),;
                izniu     n(18,2),;
                velvredu  n(18,2),;
                porezu    n(18,2),;
                amb1      c(5),;
                amb1n     c(15),;
                amb2n     c(15),;
                ambkol    n(12,0),;
                ssif      c(5),;
                datpro    d(8),;
                serija    c(15),;
                sertifik  c(15),;
                kooperac  c(15),;
                PROIZV    c(5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('fakg.dbf')
  * wait windows ' fakg  '
   create table fakg;
               (rsif      c(5),;        
                brkal     c(6),;
                brnal     c(6),;
                fvrsta    c(3),;
                sifra     c(5),;
                brrac     c(20),;
                datdok    d(8),;
                valuta    d(8),;
                otpbr     c(20),;
                otpdat    d(8),;
                porbr     c(20),;
                pordat    d(8),;
                pr1       n(3),;
                pv1       d(8),;
                prdin1    n(14,2),;
                pr2       n(3),;
                pv2       d(8),;
                prdin2    n(14,2),;
                pr3       n(3),;
                pv3       d(8),;
                prdin3    n(14,2),;
                pr4       n(3),;
                pv4       d(8),;
                prdin4    n(14,2),;
                pr5       n(3),;
                pv5       d(8),;
                prdin5    n(14,2),;
                pr6       n(3),;
                pv6       d(8),;
                prdin6    n(14,2),;
                pr7       n(3),;
                pv7       d(8),;
                prdin7    n(14,2),;
                pr8       n(3),;
                pv8       d(8),;
                prdin8    n(14,2),;
                pr9       n(3),;
                pv9       d(8),;
                prdin9    n(14,2),;
                pr10      n(3),;
                pv10      d(8),;
                prdin10   n(14,2),;
                pr11      n(3),;
                pv11      d(8),;
                prdin11   n(14,2),;
                pr12      n(3),;
                pv12      d(8),;
                prdin12   n(14,2),;
                pr13      n(3),;
                pv13      d(8),;
                prdin13   n(14,2),;
                pr14      n(3),;
                pv14      d(8),;
                prdin14   n(14,2),;
                pr15      n(3),;
                pv15      d(8),;
                prdin15   n(14,2),;
                pr16      n(3),;
                pv16      d(8),;
                prdin16   n(14,2),;
                pr17      n(3),;
                pv17      d(8),;
                prdin17   n(14,2),;
                pr18      n(3),;
                pv18      d(8),;
                prdin18   n(14,2),;
                rnal      c(12),; 
                putnik    c(3),;
                tovarni   c(10),;
                mantar    c(6),;
                manproc   n(9,2),;
                maniznos  n(12,2),;
                manporez  n(12,2),;
                nacin     c(25),;
                ja        c(1),;
                otprema   c(20),; 
                vozilo    c(20),; 
                vozac     c(55),; 
                cmr       c(20),; 
                pbrkal    c(6),;  
                pdok      c(6),;  
                kasa      c(1),; 
                kes       n(14,2),;
                kartica   n(14,2),;
                cek       n(14,2),;
                virman    n(14,2),;
                avans     n(14,2),;
                avbrrac   c(20,0),;
                avdatdok  d(08,0),;
                avans18   n(14,2),;
                avans8    n(14,2),;
                avansp18  n(14,2),;
                avansp8   n(14,2),;
                napomenag c(80),;
                napomenad c(80),;
                relacod   c(30),;
                relacdo   c(30),;
                interna   c(1),;
                prenos    c(1),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                datumi    d(8),;
                vremei    c(8),;
                model     c(30),; 
                vpdv      c(3),;
                opdv      c(1),;
                sbrkal    c(6),;
                idkartice c(20),;
                dev       c(3),;
                devkurs   n(18,6),;
                devizna   c(1),;
                valdan    n(3),;        
                mtr       n(5),;              
                revers    c(1),;              
                koleta    n(14,2),;
                paritet   c(40),;
                motor     c(15),;
                napon     c(10),;
                snaga     c(10),;
                obrtaji   c(16),;
                serbroj   c(17),;
                tip       c(40),;
                motornaz  c(60),;
                struja    c(10),;
                vsifra    c(4),;
                vozsifra  c(4),;                
                idul      c(18),;    
                redni     c(1),;
                brac1     c(20),; 
                brac2     c(20),; 
                brac3     c(20),; 
                brac4     c(20),; 
                brac5     c(20),; 
                brac6     c(20),; 
                brac7     c(20),; 
                brac8     c(20),; 
                brac9     c(20),; 
                brac10    c(20),; 
                brac11    c(20),; 
                brac12    c(20),; 
                brac13    c(20),; 
                brac14    c(20),; 
                brac15    c(20),; 
                brac16    c(20),; 
                brac17    c(20),; 
                brac18    c(20),;
                vovrsta   c(20),;
                vomarka   c(20),;
                votip     c(20),;
                vosasija  c(25),;
                vomotora  c(25),; 
                vogodp    c(4),;
                voboja    c(25),;
                vosnaga   c(20),;
                vozaprem  c(20),;      
                misifra   c(05),;      
                mimesto   c(60),;      
                devk      c(03),;     
                kurs      n(18,4),;      
                ddug      n(18,2),;      
                dana      n(12,0),;      
                rata      n(12,0),;      
                trebov    c(1),;
                zavrseno  c(1),;
                olsifra   c(2)  ,;
                olime     c(30) ,; 
                oladresa  c(30),;     
                ollkbr    c(20),;
                oljmbg    c(13),;
                oltel     c(15),;    
                idbroj    c(11),;
                idprofc   c(02),;   
                idsektor  c(02),;
                idpodsek  c(03),;
                idlokac   c(02),;
                idlokacP  c(02),;
                sifravoz  c(5),;
                dat0      d(8),;                
                dat1      d(8),;                
                konto     c(10),;                
                kontos    c(10),;                
                kontok    c(10),;                                                
                kontou    c(10),;                                                
                usluge    n(12,2),;
                porusl    n(14,2),;
                iznos     n(14,2),;
                osn18     n(14,2),;
                pdv18     n(14,2),;
                osn8      n(14,2),;
                pdv8      n(14,2),;
                osn0      n(14,2),;
                placpor   n(14,2),;
                trdob     n(14,2),;
                nabvred   n(14,2),;              
                flsifra   c(5),;                              
                brkred    c(6),;                                              
                sn        c(1),;
                cenovnik  c(3),;                
                gotovina  c(1),;
                arhiva    c(1),;
                arhiva2   c(1),;
                siflin    n(9),;                    
                redlin    n(9),;                                    
                magsifra  c(3),;                                                    
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif

*-----------elektroservis-----------------------
if !file('esmotor.dbf')
   create table esmotor;
               (motor     c(15),;
                naz       c(60),;
                napon     c(10),;
                snaga     c(10),;
                obrtaji   c(16),;
                serbroj   c(17),;
                tip       c(40),;
                cena      n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif
*----------------------------------------------                


if !file('fakz.dbf')
  * wait windows ' fak  '
   create table fakz;
               (brkal     c(6),;       
                rsif      c(5),;       
                koli      n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,3),;
                cena      n(18,5),;
                izni      n(18,4),;
                marproc   n(18,4),;
                marza     n(18,3),;
                rabproc   n(10,4),;
                rabat     n(18,3),;
                tarifa    c(6)   ,;
                procpor   n(10,4),;
                porez     n(18,3),;
                malcena   n(18,5),;
                malvred   n(18,3),;
                akccena   n(18,5),;
                akcvred   n(18,3),;
                plp       c(1)   ,;
                placpor   n(18,3),;
                datdok    d(8)   ,;
                trjdob    n(18,5),;
                trdob     n(18,3),;
                dirpor    c(1),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('fakgz.dbf')
  * wait windows ' fakg  '
   create table fakgz;
               (rsif      c(4),;        
                brkal     c(6),;
                brnal     c(6),;
                fvrsta    c(3),;
                sifra     c(5),;
                brrac     c(20),;
                datdok    d(8),;
                valuta    d(8),;
                otpbr     c(20),;
                otpdat    d(8),;
                porbr     c(20),;
                pordat    d(8),;
                interna   c(1),;
                prenos    c(1),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                pr1       n(3),;
                pv1       d(8),;
                prdin1    n(14,2),;
                pr2       n(3),;
                pv2       d(8),;
                prdin2    n(14,2),;
                pr3       n(3),;
                pv3       d(8),;
                prdin3    n(14,2),;
                pr4       n(3),;
                pv4       d(8),;
                prdin4    n(14,2),;
                pr5       n(3),;
                pv5       d(8),;
                prdin5    n(14,2),;
                pr6       n(3),;
                pv6       d(8),;
                prdin6    n(14,2),;
                pr7       n(3),;
                pv7       d(8),;
                prdin7    n(14,2),;
                pr8       n(3),;
                pv8       d(8),;
                prdin8    n(14,2),;
                pr9       n(3),;
                pv9       d(8),;
                prdin9    n(14,2),;
                pr10      n(3),;
                pv10      d(8),;
                prdin10   n(14,2),;
                pr11      n(3),;
                pv11      d(8),;
                prdin11   n(14,2),;
                pr12      n(3),;
                pv12      d(8),;
                prdin12   n(14,2),;
                rnal      c(12),; 
                putnik    c(3),;
                tovarni   c(10),;
                mantar    c(6),;
                manproc   n(9,2),;
                maniznos  n(12,2),;
                manporez  n(12,2),;
                ja        c(1),;
                otprema   c(20),; 
                vozilo    c(20),; 
                vozac     c(30),; 
                pbrkal    c(6),;  
                pdok      c(6),;  
                kasa      c(1),;  
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif




if !file('tovarni.dbf')
  * wait windows ' fak  '
   create table tovarni;
               (brkal     c(6),;       
                rsif      c(5),;       
                koli      n(18,3),;
                vraceno   n(18,3),;
                izlaz     n(18,3),;
                datdok    d(8),;
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('tvniv.dbf')
  * wait windows ' tvniv  '
   create table tvniv;
              ( naz       c(30),;
                brkal     c(6),;
                rsif      c(5),;
                kol       n(18,3),;
                scena     n(18,5),;
                siznos    n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,3),;
                starifa   c(6),;
                sprocpor  n(9,4),;
                sporez    n(18,3),;
                tarifa    c(6),;
                procpor   n(9,4),;
                porez     n(18,3),;
                razlpor   n(18,3),;
                marproc   n(18,4),;
                marza     n(18,3),;
                plp       c(1),;
                malcena   n(18,5),;
                malvred   n(18,3),;
                datdok    d(8),;
                brnal     c(6),;
                dok       c(3),;
                kasa      c(1),;
                sbrkal    c(6),;
                brkaln    c(6),;
                brfakn    c(6),;
                oper      c(2),;
                sema      c(4),;
                ssif      c(5),;                
                datum     d(8),;
                vreme     c(8),;
                konto     c(10),;
                kontos    c(10),;
                kontok    c(10),;                                
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('tmp.dbf')
  * wait windows ' pp knjiga poreza  '
   create table tmp;
               (datdok    d(8)    ,;
                opis      c(40)    ,;
                proo      n(14,2)    ,;
                pron      n(14,2)    ,;
                prob      n(14,2)    ,;
                uslp      n(14,2)    ,;
                uslb      n(14,2)    ,;
                ostprih   n(14,2)    ,;
                ukprih    n(14,2)    ,;
                prenpor   n(14,2)    ,;
                placpor   n(14,2)    ,;
                uplacpor  n(14,2)    ,;
                nabvred   n(14,2)    ,;
                sopvred   n(14,2)    ,;
                marza     n(14,2)    ,;
                porez     n(14,2)    ,;
                malvred   n(14,2)    ,;
                plate     n(14,2)    ,;
                mattr     n(14,2)    ,;
                ostrash   n(14,2)    ,;
                ukrash    n(14,2)    ,;
                uplata    n(14,2)    ,;
                isplata   n(14,2)    ,;
                brkal     c(6)    ,;
                brfak     c(6)    ,;
                oper      c(2)    ,;
                brnal     c(6)    ,;
                dok       c(3)    ,;
                kurs      n(18,4)    ,;
                datum     d(8)    ,;
                vreme     c(8)    ,;
                datpri    d(8)    ,;
                datpdv    d(8)    ,;
                automnal  c(1)    ,;
                arhiva    c(1),;
                arhiva2   c(1),;
                konto     c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
           use     
        endif



if !file('kasa.dbf')
   create table kasa;
               (rsif      c(5)    ,;
                naz       c(30)   ,;
                koli      n(14,3) ,;
                malcena   n(14,3) ,;
                malvred   n(14,2) ,;
                podnaziv  c(10)   ,;
                storno    c(1),;
                cek       n(14,2) ,;
                kartica   n(14,2) ,;
                gotovina  n(14,2) ,;
                datnovac  n(14,2) ,;
                sto       c(5)    ,;
                oper      c(2)    ,;
                brkal     c(6)    ,;
                tarifa    c(6)    ,;   
                procpor   n(09,2) ,;
                rabproc   n(12,4) ,;
                rabat     n(14,2) ,;
                nmalcena  n(14,3) ,;
                nmalvred  n(14,2) ,;
                sifra     c(5)    ,;
                FLsifra   c(5)    ,;                
                vsifra    c(4)    ,;    
                vozsifra  c(4)    ,;
                brnal     c(6)    ,;
                datdok    d(8)    ,;
                vreme     c(8)    ,;
                jed       c(3)    ,; 
                tax       c(1)    ,;
                grupa     c(3)    ,;
                idkartice c(20),;
                nazskr    c(18),;
                storniran c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use                      
endif


if !file('kasapar.dbf')
   create table kasapar;
               (pocnal    c(2)    ,;
                sifra     c(5)    ,;
                sifrar    c(5)   ,;
                sema      c(04) ,;
                fvrsta    c(03) ,;
                fprint    c(1) ,;
                trebst    n(1) ,;
                fioka     n(1) ,;
                radnja    n(1),;
                obveznik  n(1),;
                pozivloz  n(1),;
                radtreb   n(1),;
                glbarkod  n(1),;
                kamarka   n(2),;
                magacin   n(1),;
                kafirme   n(1),;
                kontraka  n(1),;
                fdisplej  n(1),;
                tpodnaz   n(1),;
                prativp   n(1),;                
                pravibg   n(1),;                
                dropboxput  c(90),;
                dozminus  n(1),;                
                vrstacek  n(1),;                                
                partnaz   n(1),;                                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
      use                      
endif


if !file('kasasto.dbf')
   create table kasasto;
                (sto       c(5)    ,;
                oper      c(2)    ,;
                treb      c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use                      
endif


if !file('kasact0.dbf')
   create table kasact0 ;
               (des         c(18),;
                price       c(09),;
                vat         c(01),;
                dep         c(01),;
                mes         c(01),;
                barcode     c(12),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use              
endif

     
     
if !file('kasanag.dbf')
   create table kasanag ;
               (broj        n(09,0),;
                ime         c(30),;
                adresa      c(30),;
                posta       c(05),;
                mesto       c(25),;
                telefoni    c(25),;
                fiskalni    c(10),;
                datum       d(08),;
                vreme       c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use              
endif

if !file('kasabroj.dbf')
   create table kasabroj(;
                brkal     c(6),;
                datum     d(8),;
                vreme     c(8),;
                sto       c(5),;
                oper      c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
endif


*---------izvestaji iz kalkulacija------------------------------

if !file('kalizv.dbf')
  * wait windows ' kalizv  '
   create table kalizv;
               (brkal     c(6)   ,;
                rsif      c(5)   ,;
                iznos     n(18,2),;
                izni      n(18,2),;
                velvred   n(18,2),;
                usluge    n(18,2),;
                marza     n(18,2),;
                rabat     n(18,2),;
                rabat2    n(18,2),;
                zavisni   n(18,2),;
                zavisnin  n(18,2),;
                zavisnic  n(18,2),;
                zavisc2   n(18,2),;
                zavisc3   n(18,2),;
                carproc   n(12,4),;
                cardin    n(18,2),;    
                trdob     n(18,2),;
                trdobn    n(18,2),;
                nabvred   n(18,2),;
                tarifa    c(6)   ,;
                porez     n(18,2),;
                porusl    n(18,2),;
                malvred   n(18,2),;
                akcvred   n(18,2),;
                plp       c(1)   ,;
                placpor   n(18,2),;
                placporz  n(18,3),;
                placporu  n(18,3),;
                placporc  n(18,3),;
                placpord  n(18,3),;
                poljdin   n(18,3),;
                datdok    d(8)   ,;
                brnal     c(6)   ,;
                fvrsta    c(3)   ,;
                sifra     c(5)   ,;
                interna   c(1)   ,;
                prenos    c(1)   ,;
                grupa     c(3)   ,;
                grupa1    c(3)   ,;
                grupa2    c(3)   ,;
                grupa3    c(3)   ,;
                grupa4    c(3)   ,;
                grupa5    c(3)   ,;
                magacin   n(02,0),;
                naziv     c(30),;
                mesto     c(25),;
                vrsta     c(1),;
                rnal      c(12),;
                brrac     c(20),;
                dokum     c(20),;
                kol       n(18,3),;
                koli      n(18,3),;
                grupap    c(3),;
                idul      c(18),;
                osn18     n(18,2),;
                pdv18     n(18,2),;
                osn8      n(18,2),;
                pdv8      n(18,2),;
                kurs      n(18,4),;
                ddug      n(18,2),;
                porpos    n(18,2),;
                bruto     n(18,3),;
                neto      n(18,3),;
                misifra   c(05),;
                putnik    c(3),;      
                mtr       n(5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
          use
       endif


*---------izvestaji iz kalkulacija------------------------------

if !file('nivizv.dbf')
  * wait windows ' nivizv  '
   create table nivizv;
               (brkal     c(6)   ,;
                rsif      c(5),;
                siznos    n(18,3),;
                velvred   n(18,3),;
                starifa   c(6),;
                sprocpor  n(9,4),;
                sporez    n(18,3),;
                tarifa    c(6),;
                procpor   n(9,4),;
                porez     n(18,3),;
                razlpor   n(18,3),;
                marza     n(18,3),;
                plp       c(1),;
                malvred   n(18,3),;
                datdok    d(8)   ,;
                brnal     c(6)   ,;
                grupa     c(3)   ,;
                grupa1    c(3)   ,;
                grupa2    c(3)   ,;
                grupa3    c(3)   ,;
                grupa4    c(3)   ,;
                grupa5    c(3)   ,;
                magacin   n(02,0),;
                idul      c(18),;                 
                preneto   c(1),;   
                idbr      n(11);                    
                )
          use
       endif

*---------izvestaji iz kartice robe----------------------------

if !file('tvkart.dbf')
  * wait windows ' tvkart  '
   create table tvkart(;
                rsif      c(5)   ,;
                datdok    d(8)   ,;                
                brkal     c(6)   ,;                
                kol       n(18,3),;                
                koli      n(18,3),;
                kolst     n(18,3),;                                
                cena      n(14,3),;
                dug       n(14,2),;
                pot       n(14,2),;
                saldo     n(14,3),;                
                ncena     n(14,3),;
                ndug      n(14,2),;
                npot      n(14,2),;
                nsaldo    n(14,2),;
                akcvred   n(14,3),;
                zadnab    n(14,5),;
                zadprod   n(14,5),;
                sifra     c(5)   ,;
                datnab    d(8)   ,;
                nivkol    n(14,3),;                
                nivcena   n(14,3),;                                                
                nivvred   n(14,2),;                                                
                vrednost  n(14,2),;   
                potp      n(14,2),;   
                poth      n(14,2),;   
                poto      n(14,2),;   
                grupa     c(3)   ,;                                
                grupa1    c(3)   ,;                                
                grupa2    c(3)   ,;
                grupa3    c(3)   ,;
                grupa4    c(3)   ,;
                grupa5    c(3)   ,;
                poc       n(14,3),;                                                                               
                sifrak    c(5)   ,;                                                                                               
                sifrad    c(5)   ,;                                                                                               
                konsigvred n(14,2),;                                                                               
                dat0       d(8)   ,;
                dat1       d(8)   ,;
                maksimum  n(14,3),;
                optimum   n(14,3),;
                minimum   n(14,3),;
                velcena   n(14,5),;
                boja      c(10),;
                velicina  c(10),;
                duzina    c(10),;
                sirina    c(10),;
                barkod    c(20),;
                dok       c(3),;
                podrob    c(5),;
                glavna    c(1),;  
                naz       c(30),;  
                jed       c(10),;  
                dana      n(12,2),;
                koli1     n(14,4),;
                koli7     n(14,4),;
                koli30    n(14,4),;
                koli365   n(14,4),;
                podnaziv  c(20),;
                dokum     c(20),;
                rnal      c(12),;
                idul      c(18),;                 
                datrok    d(8),;        
                procpos   n(9,4),;
                porpos    n(18,3),;
                bruto     n(18,5),;
                neto      n(18,5),;                         
                proscenv  n(18,3),;
                proscenn  n(18,3),;  
                datpro    d(8),;
                serija    c(15),;
                sertifik  c(15),;                                            
                sat0      c(2)   ,;
                sat1      c(2)   ,;
                min0      c(2)   ,;
                min1      c(2)   ,;
                procpor   n(9,2) ,;                
                brrac     c(25),;
                oper      c(2),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


*---------vise valuta u fakturama----------------------------

if !file('fakval.dbf')
  * wait windows ' valute na fakturama '
   create table fakval(;
                brkal    c(6)   ,;
                rsif     c(5)   ,;                  
                podrsif  c(5)   ,;                  
                koli     n(18,3),;
                velcena  n(18,2),;
                velvred  n(18,2),;
                rabproc  n(9,3) ,;
                rabat    n(18,2),;                 
                procpor  n(9,2) ,;
                porez    n(18,2),;
                datdok   d(8)   ,;
                valdan   c(3)   ,;
                valuta   d(8)   ,;                
                brrac    c(20)  ,;               
                iznos    n(18,2),;                
                grupa    c(3)   ,;
                grupa1   c(3)   ,;
                grupa2   c(3)   ,;
                grupa3   c(3)   ,;
                grupa4   c(3)   ,;
                grupa5   c(3)   ,;
                transpak n(14,4),;
                unpak    n(14,4),;
                kompak   n(14,4),;
                malcena  n(18,2),;
                malvred  n(18,2),;
                model     c(30),; 
                magacin   n(02),;
                bruto     n(18,5),;
                neto      n(18,5),;
                zaokruz   n(18,3),;
                rabproc2  n(10,4),;
                zadkoli   c(1),;
                rabat2    n(18,3),;
                ziroracz  c(30),;
                sifra     c(5),;                
                preneto   c(1),;   
                idbr      n(11);                    
               )
           use
       endif


if !file('knjizt.dbf')
  * wait windows ' trgovacka knjiga '   
   create table knjizt ;
               (datdok    d(8)      ,;
                opis      c(60),;
                uknab     n(18,2),;
                vredprod  n(18,2),;
                uplaceno  n(18,2),;
                usluge    n(18,2),;
                vrsta     c(1),;
                gotovina  n(18,2),;
                cekovi    n(18,2),;
                ostalo    n(18,2),;
                datup     d(8),;
                brkal     c(6),;
                brfak     c(6),;
                brnal     c(6),;
                konto      c(10),;
                datpri     d(8),;
                datpdv     d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif



if !file('knjizs.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table knjizs ;
             (konto    c(10)    ,;                   
              dug      n(18,2) ,;                   
              pot      n(18,2) ,;                   
              opis     c(30)   ,;                   
              datdok   d(8)    ,;              
              datpri   d(8)    ,;              
              datpdv   d(8)    ,;              
              brnal    c(6)    ,;                                 
              mp       c(2)    ,;                                               
              mtr      n(5)    ,;              
              dok      c(3)    ,;      
              dev      c(3)    ,;                            
              devkurs  n(18,6) ,;                            
              devdug   n(18,6) ,;                                          
              devpot   n(18,6) ,;     
              idul      c(18),;                 
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif



if !file('knjiza.dbf')
  * wait windows ' sablon za knjizenje analitika '
   create table knjiza(;
                konto     c(10)   ,;                
                sifra     c(5)   ,;
                brrac     c(20)   ,;
                dug       n(18,2),;
                pot       n(18,2),; 
                devdug    n(18,2),;
                devpot    n(18,2),; 
                dev       c(03),;
                devkurs   n(18,6),; 
                brnal     c(6)   ,;
                datdok    d(8)   ,;
                datpri    d(8)   ,;
                datpdv    d(8)   ,;
                valuta    d(8)   ,;
                grupa     c(3)   ,;
                brkal     c(6)   ,;                
                dok       c(3)   ,;
                mtr       n(5)   ,;  
                fvrsta    c(3)   ,;
                SN        c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif



if !file('knjizr.dbf')
  * wait windows ' sablon za knjizenje knjige rashoda '
   create table knjizr(;
                datdok    d(8)   ,;                
                datpdv    d(8)   ,;                
                datpri    d(8)   ,;                
                opis      c(40)  ,;
                prenpor   n(18,2),;                
                placpor   n(18,2),;
                nabvred   n(18,2),;
                sopvred   n(18,2),;                
                marza     n(18,2),;
                porez     n(18,2),;
                malvred   n(18,2),;
                brkal     c(6)   ,;
                brnal     c(6)   ,;                
                dok       c(3)   ,;                
                proo      n(18,2),;
                uslp      n(18,2),;                
                ukprih    n(18,2),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif
     
if !file('knjizp.dbf')
   create table knjizp ;
               (datdok    d(8),;
                opis      c(20),;
                malpro    n(18,2),;
                malusl    n(18,2),;
                svega     n(18,2),;
                brnal     c(6),;
                dok       c(3),;
                oper      c(3),;
                sstrana   n(9,0),;
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif
     
    
     
if ! file("knjizv.dbf")
   create table knjizv(;
    vpdv      c(3),;
    datpdv     d(8),;
    datpri     d(8),;
    datdok     d(8),;
    brrac      c(20),;
    valuta     d(8),;
    sifra      c(5),;
    uknab      n(14,2),;
    osn18      n(14,2),;
    pdv18      n(14,2),;
    osn8       n(14,2),;
    pdv8       n(14,2),;
    osn5       n(14,2),;
    pdv5       n(14,2),;
    ukupno     n(14,2),;
    pdv        n(14,2),;
    pdvne      n(14,2),;
    grupa      c(1) ,;
    brnal      c(6),;
    dok        c(3),;
    mesto      c(4),;
    kurs       n(10,4),;
    kond1      c(10),;
    kond2      c(10),;
    konp1      c(10),;
    konp2      c(10),;
    ime        c(30),;
    napomena   c(60),;
    neoporez   n(14,2),;
    datum      d(8),;
    vreme      c(8),;
    konto      c(10),;
    arhiva    c(1),;
    arhiva2   c(1),;
                SN   c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif
     


if !file('tvpar.dbf')
   create table tvpar(;
                pomerac   n(1)   ,;      
                danval    n(2)   ,;          
                numfak    n(2)   ,;
                vrstakprn n(2)   ,;
                vrstafprn n(2)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('an0.dbf')
   create table an0 ;
               (sifra     c(5)     ,;
                naziv     c(40)    ,;              
                posta     c(5)     ,;
                mesto     c(35)    ,;    
                ulica     c(35)    ,;
                ulbroj    c(10)    ,;
                zirorac   c(25)    ,;
                zirorac2  c(25)    ,;
                zirorac3  c(25)    ,;
                zirorac4  c(25)    ,;
                zirorac5  c(25)    ,;
                zirorac6  c(25)    ,;
                telefon   c(25)    ,;
                telefon2  c(25)    ,;
                fax       c(25)    ,;
                fax2      c(25)    ,;                                            
                republika c(35)    ,;
                drzava    c(35)    ,;
                email     c(40)    ,;
                vebadresa c(40)    ,;
                lice1     c(30)    ,;
                tellice1  c(25)    ,;
                lice2     c(30)    ,;
                tellice2  c(25)    ,;
                lice3     c(30)    ,;
                tellice3  c(25)    ,;
                napomena  c(50)    ,;
                napomena2 c(50)    ,;
                napomena3 c(50)    ,;
                grupa     c(3)     ,;      
                grupa1    c(3)     ,;
                grupa2    c(3)     ,;
                grupa3    c(3)     ,;    
                grupa4    c(3)     ,;    
                grupa5    c(5)     ,;    
                pib       c(9)     ,; 
                pib2      c(5),;
                maticni   c(13),;  
                jmbg      c(13),;   
                pdv       c(20)    ,; 
                idbroj    c(10)    ,;
                mbr       n(6),;                
                naziv2    c(40),;              
                lkbr      c(10),;
                mestolk   c(25),;            
                iznos1    n(12,2)  ,;                
                iznos2    n(12,2)  ,;
                rabd      n(9,2)   ,;
                rabk      n(9,2)   ,;
                idrabk    c(3)     ,;
                porbr     c(10)    ,;
                gibr      c(10)    ,;
                gidat     d(8)     ,;
                ugovor    c(15)    ,;
                datum     d(8)     ,;
                osnovica  n(12,2)  ,;
                z1        n(12,2)  ,;
                z2        n(12,2)  ,;
                z3        n(12,2)  ,;                               
                z4        n(12,2)  ,;                 
                z5        n(12,2)  ,;
                z6        n(12,2)  ,;
                z7        n(12,2)  ,;
                z8        n(12,2)  ,;
                z9        n(12,2)  ,;
                z10       n(12,2)  ,;
                z11       n(12,2)  ,;
                z12       n(12,2)  ,;
                z13       n(12,2)  ,;
                valdan    n(3),;            
                valdand   n(3),;     
                valodjave n(3),;       
                staridug  n(18,2),;
                mesosnov  n(18,2),;
                meskurs   n(18,2),;
                mesecno   n(18,2),;
                zabrana   c(1),;      
                modelo    c(2),;
                pozivo    c(20),;      
                distribut c(01),;      
                brprofila n(01,0),;      
                ratakred  n(18,2),;
                datumsan  d(8),;
                datumsan2 d(8),;
                mesobav   n(12,2),;       
                preuzeto  n(12,2),;       
                datotvar  d(8),;       
                vpdv1     c(3),;
                pdvkon1   c(10),;       
                vpdv2     c(3),;
                pdvkon2   c(10),;       
                vpdv3     c(3),;
                pdvkon3   c(10),;    
                konsig    c(1),;
                konsdana  n(08),;  
                azirorac  c(25)    ,;
                azirorac2 c(25)    ,;
                azirorac3 c(25)    ,;
                azirorac4 c(25)    ,;
                azirorac5 c(25)    ,;
                azirorac6 c(25)    ,;
                nazbanke  c(25),;                
                bicbanke  c(25),;                                
                obvezpdv  c(1),;
                zabrana2  c(1),;
                kreditlim n(18,2),;                
                dok       c(03),;                
                povezanol c(1),;                
                putnik    c(3),;                   
                konto     c(10),;
                cenovnik  c(3),;
                siflin    n(9),;
                redlin    n(9),;    
                cnaziv     c(40)    ,;              
                cmesto     c(35)    ,;    
                culica     c(35)    ,;
                cnaziv2    c(40),;                              
                prezime    c(20),;                
                ime        c(20),;
                barkod     c(20),;                
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
endif


if !file('an0tdn.dbf')
   create table an0tdn ;
               (sifra     c(5)     ,;
                naziv     c(40)    ,;              
                posta     c(5)     ,;
                mesto     c(35)    ,;    
                pib       c(9)    ,;    
                zirorac   c(25)    ,;    
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('jnotdn.dbf')
   create table jnotdn ;
               (sifrao    c(10)     ,;
                nazivo    c(80)    ,;              
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('kontdn.dbf')
   create table kontdn ;
               (konto     c(10)     ,;
                naziv     c(40)    ,;              
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('an0mi.dbf')
   create table an0mi ;
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

if !file('an0mag.dbf')
   create table an0mag;
               (magsifra  c(3),;
                magnaz    c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('anal.dbf')
   create table anal (;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     dok       c(3  ),;
                     nacp      c(1  ),;
                     grupa     c(5  ),;
                     opis      c(20 ),;
                     zatvar    c(1  ),;
                     mp        c(2)  ,;                                               
                     mtr       n(5)  ,;              
                     sn        c(1  ),;
                     brnal     c(6  ),;
                     dev       c(3  ),;
                     devkurs   n(18,4),;
                     devdug    n(18,2),;
                     devpot    n(18,2),;
                     konto     c(10),;
                     pkonto    c(10),;
                     brkal     c(6  ),;
                     oper      c(2  ),;
                     kurs      n(18,4),;
                     datpri    d(8  ),;
                     datpdv    d(8  ),;
                     datum     d(8  ),;
                     vreme     c(8  ),;
                     saldo     n(18,2),;                     
                     rrec      n(10,0),;
                     devsaldo  n(18,2),;                     
                     idbroj    c(10)  ,;
                     naziv     c(30)    ,;              
                     posta     c(5)     ,;
                     mesto     c(25)    ,;                
                     ulica     c(25)    ,;
                     ulbroj    c(10)    ,;
                     zirorac   c(25)    ,;
                     telefon   c(25)    ,;
                     fax       c(25)    ,;
                     pib       c(09)    ,;
                     fpsifra   c(3),;
                     danazak   n(09),;
                     vanval    n(9),;
                     datupl    d(8),;
                     ddug      n(18,2),;
                     dpot      n(18,2),;
                     dsaldo    n(18,2),;    
                     dprocval  n(14,4),;                 
                     arhiva    c(1),;
                     arhiva2   c(1),;
                     fvrsta    c(3),;
                     grupa1    c(3),;
                     grupa2    c(3),;
                     grupa3    c(3),;
                     grupa4    c(3),;
                     grupa5    c(5),;
                     automnal  c(1),;
                     komproc   n(12,2),; 
                     komdana   n(10),; 
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('anmes.dbf')
   create table anmes (;
                     sifra     c(5),;
                     godina    c(4),;
                     mes1      n(14,2),;
                     mes2      n(14,2),;
                     mes3      n(14,2),;
                     mes4      n(14,2),;
                     mes5      n(14,2),;
                     mes6      n(14,2),;
                     mes7      n(14,2),;
                     mes8      n(14,2),;
                     mes9      n(14,2),;
                     mes10     n(14,2),;
                     mes11     n(14,2),;
                     mes12     n(14,2),;
                     svega     n(14,2),;
                     pgodina   c(4),;
                     pmes1     n(14,2),;
                     pmes2     n(14,2),;
                     pmes3     n(14,2),;
                     pmes4     n(14,2),;
                     pmes5     n(14,2),;
                     pmes6     n(14,2),;
                     pmes7     n(14,2),;
                     pmes8     n(14,2),;
                     pmes9     n(14,2),;
                     pmes10    n(14,2),;
                     pmes11    n(14,2),;
                     pmes12    n(14,2),;
                     psvega    n(14,2),;
                     proc1     n(12,3),;
                     proc2     n(12,3),;
                     proc3     n(12,3),;
                     proc4     n(12,3),;
                     proc5     n(12,3),;
                     proc6     n(12,3),;
                     proc7     n(12,3),;
                     proc8     n(12,3),;
                     proc9     n(12,3),;
                     proc10    n(12,3),;
                     proc11    n(12,3),;
                     proc12    n(12,3),;
                     procsvega n(12,3),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('ankursr.dbf')
   create table ankursr(;
                     konto     c(10),;
                     sifra     c(5),;
                     dev       c(3),;
                     devkurs   n(12,4),;
                     devdug    n(12,4),;
                     devpot    n(12,4),;
                     ndevkurs  n(12,4),;
                     brnal     c(06),;
                     datod     d(8),;
                     datdo     d(8),;
                     ndevdug   n(12,4),;
                     ndevpot   n(12,4),;
                     datdok    d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )
                  use
                      
endif





if !file('anpl.dbf')
 *  wait windows ' anal evidencija analitike '
   create table anpl (;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     saldo     n(18,2),;                    
                     dana      n(5),;
                     placanje  n(18,2),;                    
                     aauto     c(1),;
                     datpoc    d(8),;                    
                     datkra    d(8),;
                     banka     c(1),;
                     mp        c(2)  ,;                                               
                     mtr       n(5) ,;              
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif




if !file('kuf.dbf')
 *  knjiga ulaznih faktura '
   create table kuf(;
                   datdok    d(8)   ,;
                   sifra     c(5)   ,;
                   brkal     c(6)   ,;
                   brrac     c(20)  ,;
                   iznos     n(14,2),;
                   izjava    c(20)  ,;
                   opis      c(30)  ,;
                   dok       c(3)   ,;
                   aauto     c(1)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                   )
    use
endif                   


if !file('ankomp.dbf')
 *  wait windows ' anal evidencija analitike '
   create table ankomp (;
                     broj      n(6),;
                     sifra     c(5),;
                     datum     d(8),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     adatdok   d(8),;
                     avaluta   d(8),;
                     abrrac    c(20),;
                     adug      n(18,2),;
                     zatvar    c(1),;
                     arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('ankomp2.dbf')
 *  wait windows ' anal evidencija analitike '
   create table ankomp2 (;
                     sifra     c(5),;
                     naziv     c(40),;                     
                     dug       n(18,2),;
                     pot       n(18,2),;
                     razlika   n(18,2),;
                     dat0      d(8),;
                     dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif
             
             
if !file('anzast.dbf')
 *  wait windows ' anal evidencija analitike '
   create table anzast(;
                danas     d(8),;
                datdok    d(8),;
                dana      n(4),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif
             
        


if !file('genpar.dbf')
   create table genpar;
               (kplan     n(1),;
                tvunkol   n(1),;        
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('imenik.dbf')
   create table imenik;
               (sifra     n(4),;
                ime       c(30),;
                firma     c(30),;                
                mesto     c(25),;                
                adresa    c(30),;
                tel1      c(20),;
                tel2      c(20),;
                tel3      c(20),;
                tel4      c(20),;
                fax1      c(20),;
                fax2      c(20),;
                napomena  c(50),;
                zadpor    n(4),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('imenpor.dbf')
   create table imenpor;
               (sifra     n(4),;
                datum     d(8),;
                vreme     c(10),;                
                vrsta     c(10),; 
                por1      c(50),;                
                por2      c(50),;                
                por3      c(50),;                                
                por4      c(50),;                
                por5      c(50),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('putnal.dbf')
   create table putnal ;
             (putnal   n(4)   ,;
              datdok   d(8)   ,;
              datvrac  d(8)   ,;
              cilj     c(60) ,;
              svrha1   c(60) ,;              
              svrha2   c(60) ,;
              izvest1  c(60) ,;
              izvest2  c(60) ,;
              izvest3  c(60) ,;
              akontac  n(18,2),;
              vozilo   c(30) ,;
              racun1   n(18,2),;              
              brrac1   c(30) ,;
              racun2   n(18,2),;
              brrac2   c(30) ,;              
              racun3   n(18,2),;
              brrac3   c(30) ,;              
              racun4   n(18,2),;              
              brrac4   c(30) ,;              
              racun5   n(18,2),;
              brrac5   c(30) ,;
              svega    n(18,2) ,;
              zaisplat n(18,2) ,;
              napomena c(60),;                                                                                                  
              broj     n(4),;
              caspol   n(2),;
              casdol   n(2),;
              brdnev   n(6,2),;
              dnevnica n(12,2),;
              iznosdn  n(12,2),;
              trosak   n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif



if !file('firma.dbf')
   create table firma ;
               (fime      c(50)     ,;
                fime2     c(50)     ,;
                fbaza     c(20)     ,;
                fpos      c(5)      ,;
                fmes      c(25)     ,;
                ful       c(25)     ,;                
                fulbr     c(10)     ,;
                frepub    c(25)     ,;
                fdrzava   c(25)     ,;
                fziro     c(30)     ,;                
                fziro2    c(30)     ,;                
                fziro3    c(30)     ,;                
                fziro4    c(30)     ,;                
                fziro5    c(30)     ,;                
                fziro6    c(30)     ,;   
                fzirobol  c(30)     ,;   
                fzirodev  c(30)     ,;   
                fkonziro1 c(08)     ,;                
                fkonziro2 c(08)     ,;                
                fkonziro3 c(08)     ,;                
                fkonziro4 c(08)     ,;                
                fkonziro5 c(08)     ,;                
                fkonziro6 c(08)     ,;                
                fkonzirod c(08)     ,;                
                fkonzirob c(08)     ,;                
                fbanka    c(30)     ,;
                fbanka2   c(30)     ,;
                fbanka3   c(30)     ,;
                fbanka4   c(30)     ,;
                fbanka5   c(30)     ,;
                fbanka6   c(30)     ,;
                fbankab   c(30)     ,;
                fbankad   c(30)     ,;
                fbansif   c(8)      ,;
                fbansif2  c(8)      ,;
                fbansif3  c(8)      ,;
                fbansif4  c(8)      ,;
                fbansif5  c(8)      ,;
                fbansif6  c(8)      ,;
                fbansifb  c(8)      ,;
                fbansifd  c(8)      ,;
                ftel      c(20)     ,;
                ftel2     c(20)     ,;
                ftel3     c(20)     ,;
                ffax      c(20)     ,;
                ffax2     c(20)     ,;
                ffax3     c(20)     ,;
                femail    c(40)     ,;
                fveb      c(40)     ,;
                fsif      c(10)     ,;
                fnazd     c(30)     ,;
                fsdk      c(3)      ,;
                fmat      c(9)     ,;
                fpor      c(16)     ,;
                fdop      c(24)     ,;
                fvlast    c(30)     ,;
                fagenc    c(50)     ,;
                ffpaslrn  c(1)      ,;
                fops      c(30)     ,;
                fdat0     d(8)      ,;
                fdat1     d(8)      ,;
                fdatobr   d(8)      ,;
                fdatreg   d(8)      ,;
                fdatupis  d(8)      ,;
                fdatpdv   d(8)      ,;
                fregsoc   c(12)     ,;
                fregzdr   c(12)     ,;
                fregsud   c(20)     ,;
                fregnaz   c(30)     ,;
                fpibsav   c(09)     ,; 
                fjmbg1    c(13)     ,; 
                fmbsav    c(13)     ,; 
                fjmbg     c(13)     ,; 
                fjmbgkonbr c(25)     ,; 
                frep      c(3)      ,;
                fporrep   c(24)     ,;
                fosoba    c(27)     ,;
                fuplaceni c(20),;
                fupisani  c(20),;
                fnaznaka  c(20),;
                fswift    c(20),;
                fpdv      c(1),;
                foblik    c(20),;
                fzdravust c(40),;
                fprodc    c(1),;
                fzatvgod  c(1),;
                fzatvper  d(8),;  
                fbudzkor  c(2),;  
                kgotovina c(10),;  
                kcek      c(10),;  
                kvirman   c(10),;  
                kkartica  c(10),;  
                kostalo   c(10),;                                                                  
                SIFFIZLI  c(2),;                                                                                  
                fpumpe    c(1),;                                                                                  
                fsn       c(1),;                                                                                  
                oznakajp  c(4),;                                                                                  
                jbbk      c(5),;     
                fimec      c(50)     ,;                                                                                             
                fmesc      c(25)     ,;
                fulc       c(30)     ,;                
                frepubc    c(50)     ,;    
                fopsc      c(30)     ,;                            
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('virm.dbf')
   create table virm ;
               (stampa    c(1)      ,;
                vrsta     c(2)      ,;               
                zirorac   c(20)     ,;
                modelo    c(2)      ,;
                pozivo    c(25)     ,;                
                datdok    d(8)      ,;                
                dug       n(18,2)   ,;                
                sif1      c(3)      ,;                
                modelz    c(2)      ,;
                pozivz    c(25)     ,;                
                nazrac    c(70)     ,;                
                mesto     c(20)     ,;                
                svrha     c(70)     ,;                
                raz       c(1)      ,;                
                nazracz   c(70)     ,;                
                ziroracz  c(20)     ,;                 
                ukupno    n(18,2)   ,;                                               
                datval    d(8)      ,;                
                valuta    c(3)      ,;                
                plac      n(18,2)   ,;
                banka     c(1),; 
                sifra     c(5),;
                kontra    c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('uplatni.dbf')
   create table uplatni ;
               (stampa    c(1)      ,;
                vrsta     c(2)      ,;               
                modelo    c(2)      ,;
                pozivo    c(25)     ,;                
                datdok    d(8)      ,;                
                dug       n(18,2)   ,;                
                sif1      c(3)      ,;                
                nazrac    c(70)     ,;                
                svrha     c(70)     ,;                
                raz       c(1)      ,;                
                nazracz   c(70)     ,;                
                ziroracz  c(20)     ,;                 
                ukupno    n(18,2)   ,;                                               
                datval    d(8)      ,;                
                valuta    c(3)      ,;                
                plac      n(18,2)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('mtr.dbf')
   create table mtr ;
             (mtr       n(5)  ,;              
              naziv     c(30) ,;
              idbroj    c(11),;
              idprofc   c(02),;   
              idsektor  c(02),;
              idpodsek  c(03),;
              idlokac   c(02),;
              idlokacP  c(02),;
              isifra    c(05),;
              neprofit  c(01),;
              otr       c(01),;
              vsifra    c(04),;
              vozsifra  c(04),;
              komproc   n(12,2),; 
              komdana   n(10),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('ldgrupa.dbf')
   create table ldgrupa ;
             (grupa    n(4) ,;              
              naziv    c(30) ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('nalbroj.dbf')
   create table nalbroj ;
             (brnal    c(6)    ,;          
              datum    d(8)    ,;              
              vrnal    c(3)    ,;
              opis     c(20)    ,; 
              datod    d(8)    ,;              
              datdo    d(8)    ,;
              dug      n(18,2) ,;
              pot      n(18,2) ,;
              datknji  d(8)    ,;                            
              oper     c(2)    ,;   
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('aaan.dbf')
   create table aaan ;
             (sifprod  c(2)    ,;
              pnaziv   c(30)   ,;                                          
              dp       c(1)    ,;
              sifarnik c(2)    ,;
              konto    c(10)   ,;
              knjnal   c(1)    ,;
              zajedno  c(1)    ,;
              prikaz   c(1)    ,;
              devizno  c(1)    ,;              
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif
if !file('aanal.dbf')
   create table aanal ;
             (sifprod  c(2)    ,;
              pnaziv   c(30)   ,;                                          
              prikaz   c(1)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('aabl.dbf')
   create table aabl ;
             (sifprod  c(2)    ,;
              pnaziv   c(30)   ,;                                          
              konto    c(10)    ,;
              prikaz   c(1)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('aaka.dbf')
   create table aaka ;
             (sifprod  c(2)    ,;
              pnaziv   c(30)   ,;                                          
              konto    c(10)    ,;
              prikaz   c(1)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('aaplan.dbf')
   create table aaplan ;
             (sifprod  c(2)    ,;
              pnaziv   c(30)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('prenos.dbf')
 *  wait windows ' podaci za prenos '   
   create table prenos (;
                     putanja   c(40)  ,;
                     gk        c(1)  ,;
                     bl        c(1)  ,;                     
                     tv        c(1)  ,;
                     tm        c(1)  ,;
                     ld        c(1)  ,;
                     mesta     c(1)  ,;
                     ksema     c(1)  ,;
                     tarifa    c(1)  ,;
                     kalprn    c(1)  ,;
                     fakprn    c(1)  ,;
                     kon1      c(1)  ,;
                     kon2      c(1)  ,;
                     kon3      c(1)  ,;
                     kon4      c(1)  ,;
                     an        c(1)  ,;
                     ossr      c(1)  ,;
                     usl       c(1)  ,;
                     fir       c(1)  ,;                     
                     pro       c(1) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                     )
   endif

select 2
if !file('placpor.dbf')
   create table placpor ;
               (datdok    d(8)      ,;
                brnal     c(6)      ,;
                dok       c(3)      ,;
                mp        c(2)      ,;
                tarifa    c(6)      ,;
                procpor   n(09,2)   ,;
                porez     n(12,2)   ,;
                iskor     n(12,2)   ,;
                zir       c(22 )    ,;
                stopa     n(09,2)  ,;
                porez1    n(12,2)  ,;               
                porez2    n(12,2)  ,;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use
endif

if !file('aatv.dbf')
   create table aatv;
              (sifprod   c(2)  ,;
               pnaziv    c(50) ,;
               pmesto    c(18) ,;
               pul       c(25) ,;
               ptel      c(20) ,;
               konto     c(10)  ,;
               kontou    c(10),;
               kontopaz  c(10),;
               kontok    c(10),; 
               sifarnik  c(2)  ,;
               mp        c(2)  ,;
               tarifa    c(6)  ,; 
               fvrsta    c(3)  ,;
               danval    n(3)  ,; 
               pordn     c(1)  ,;
               prencen   c(1)  ,;
               nabcena   c(1),;
               knjnal    c(1),;
               pracenje  c(1),;
               unkol     c(1),;
               tnivel    c(1),;
               sifmag    c(3),;
               azuriraj  c(1),;
               korigujmc c(1),;
               mcmarza   c(1),;
               promkol   c(1),;
               rsifunos  n(1),; 
               fpvrstas  n(1),; 
               prikaz    c(1),; 
               verifikac c(1),; 
               psifarnik c(1),;
               kukalkp   c(1),;
               keukalkp  c(1),;
               flager    c(1),;
               ftputnik  c(1),;
               dok       c(3),;
               KEPUVP    c(1) ,;
               TMPPOREZ  c(1) ,;               
               KUPDV     c(1) ,;               
               nezajedno c(1) ,;                              
               sajtime   c(60) ,;               
               sajtput   c(60) ,;                                                            
               sajtkor   c(60) ,;                              
               sajtloz   c(60) ,;                                             
               sajtzaj   c(60) ,; 
               lokalput  c(60) ,;                                                                            
               gdeide    c(60) ,;                                                                            
               sifanal   c(2) ,;                                                            
               nemakasa  c(1) ,;                                                                           
               zirorac   c(25),;
               mestoi    c(40) ,;                                                                            
               preneto   c(1),;   
               idbr      n(11);                    
               )
     use
 endif
if !file('ldparam.dbf')
   create table ldparam ;
               (rednibr   n(08),; 
                mesec     n(2)   ,;
                nazmes    c(10)  ,;
                redispl   n(1)   ,;
                dana      n(8)   ,;
                cmes      n(8)   ,;
                cpraz     n(8)   ,;
                czakon    n(8)   ,;                
                procnoc   n(8,2) ,;
                procprod  n(8,2) ,;                
                procpraz  n(8,2) ,;
                procned   n(8,2) ,;                
                procmin   n(8,2) ,;
                procsus   n(8,2) ,;
                ekoefs    n(8,2),;         
                minnac    n(1) ,;
                procbol   n(8,2) ,;
                procplac  n(8,2) ,;                
                prosbruto n(18,2),;
                minimal   n(18,2),;
                ben1      n(8,2) ,;                
                ben2      n(8,2) ,;                                                                
                ben3      n(8,2) ,;                
                ben4      n(8,2) ,;                                                                                
                isplata   n(1)   ,;
                sisplata  n(1)   ,;                
                doppr1    n(8,2) ,;                                
                dopzr1    n(8,2) ,;                                
                dopnr1    n(8,2) ,;                                
                doppf1    n(8,2) ,;                                
                dopzf1    n(8,2) ,;                                
                dopnf1    n(8,2) ,;                                
                doppr2    n(8,2) ,;                                
                dopzr2    n(8,2) ,;                                
                dopnr2    n(8,2) ,;                                
                doppf2    n(8,2) ,;                                
                dopzf2    n(8,2) ,;                                
                dopnf2    n(8,2) ,;                                
                doppr3    n(8,2) ,;                                
                dopzr3    n(8,2) ,;                                
                dopnr3    n(8,2) ,;                                
                doppf3    n(8,2) ,;                                
                dopzf3    n(8,2) ,;                                
                dopnf3    n(8,2) ,;                                
                doppr4    n(8,2) ,;                                
                dopzr4    n(8,2) ,;                                
                dopnr4    n(8,2) ,;                                
                doppf4    n(8,2) ,;                                
                dopzf4    n(8,2) ,;                                
                dopnf4    n(8,2) ,;                                
                doppr5    n(8,2) ,;                                
                dopzr5    n(8,2) ,;                                
                dopnr5    n(8,2) ,;                                
                doppf5    n(8,2) ,;                                
                dopzf5    n(8,2) ,;                                
                dopnf5    n(8,2) ,;                                
                procpor   n(8,2) ,;                                
                s1        c(3)   ,; 
                sdin1     n(8,2) ,;
                s3        c(3)   ,; 
                sdin3     n(8,2) ,;
                s4        c(3)   ,; 
                sdin4     n(8,2) ,;
                s5        c(3)   ,; 
                sdin5     n(8,2) ,;
                s6        c(3)   ,; 
                sdin6     n(8,2) ,;
                s71       c(3)   ,; 
                sdin71    n(8,2) ,;
                s72       c(3)   ,; 
                sdin72    n(8,2) ,;
                s8        c(3)   ,; 
                sdin8     n(8,2) ,;
                komoraj   n(9,3) ,;                                
                komoras   n(9,3) ,;                                
                komorar   n(9,3) ,;
                smesec    n(2)   ,;
                snazmes   c(10)  ,;
                sredispl  n(1)   ,;                                          
                cenarada  n(18,6),;                
                kd1       c(3)   ,;                             
                kd4       c(5)   ,;                             
                kd9       c(3)   ,;                             
                kd12      c(7)   ,;                             
                kd20      c(2)   ,;                             
                kd22      c(2)   ,;                             
                kd24      c(1)   ,;                                                             
                kd25      c(2)   ,;                             
                kd27      c(1)   ,;                                                             
                kd28      c(1)   ,;                                                                                                                            
                dat1      d(8)   ,;
                dat2      d(8)   ,;
                dat3      d(8)   ,;
                dat4      d(8)   ,;                                
                godina    c(4)   ,;
                nazp1     c(10)  ,;                
                nazp2     c(10)  ,;                
                nazp3     c(10)  ,;                
                nazp4     c(10)  ,;                
                nazp5     c(10)  ,;                                
                nazp5ter   c(10)  ,;                                                
                nazo1     c(10)  ,;                
                nazo2     c(10)  ,;                
                nazo3     c(10)  ,;     
                nazo4     c(10)  ,;                
                nazo5     c(10)  ,;                
                nazo6     c(10)  ,;     
                neoporez  n(12,2),;  
                neoporezp n(12,2),;  
                decimale  c(1),;
                aktivrac  n(1),;
                datpocdel d(8),;
                brzap0    n(4),;
                brzap1    n(4),;
                brzap2    n(4),;                             
                srazpor   c(1),;                             
                dinsat    n(12,2),;                             
                tosat     n(12,2),;                             
                regsat    n(12,2),;                             
                konacna   c(1),;  
                vrstaplate c(1),;                    
                arhiva    c(1),;
                arhiva2   c(1),;
                datod     d(8)   ,;
                datdo     d(8)   ,;
                solporod1 n(12,2),;  
                solpordo1 n(12,2),;                  
                solproc1  n(12,2),;
                solporod2 n(12,2),;  
                solpordo2 n(12,2),;                  
                solproc2  n(12,2),;
                bkproc    n(12,2),;                
                bkzastita n(12,2),;
                bknacin   c(1),;                
                nakpos    c(1),;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('cekovi.dbf')
   create table cekovi;
               (brspec    n(5)      ,;
                sifra     c(5)      ,;               
                brcek     c(16)     ,;
                datdok    d(8)      ,;
                partija   c(24)     ,;                
                dug       n(18,2)   ,;                
                datreal   d(8)      ,;
                eskont    c(1)      ,; 
                sifrat    c(5)      ,;               
                nazivt    c(40)     ,;               
                mestot    c(35)     ,;               
                ziroract  c(25)     ,;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('plan.dbf')
   create table plan;
             (konto     c(10)    ,;                   
              kontop    c(10)    ,;                   
              mtr       n(5)    ,; 
              vrsta     c(1)    ,;                   
              plan      n(18,2) ,;              
              dana      n(18,2) ,;              
              realizac  n(18,2) ,;              
              ostvareno n(18,2) ,;              
              realproc  n(9,3)  ,;              
              realdproc n(9,3)  ,;              
              k1        c(1)    ,;              
              k2        c(2)    ,;              
              k3        c(3)    ,;              
              k4        c(4)    ,;              
              k5        c(5)    ,;              
              k6        c(6)    ,;              
              dat0      d(8)    ,;
              dat1      d(8)    ,;
              konmtr    c(13),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('izpromet.dbf')
   create table izpromet ;
             (konto    c(10)    ,; 
              mtr      n(5)    ,;                 
              dok      c(3)    ,;
              poc      n(18,2) ,;
              dug      n(18,2) ,;
              pot      n(18,2) ,;
              saldo    n(18,2) ,;
              promet   n(18,2) ,;
              dat0     d(8)    ,;
              dat1     d(8)    ,;
              datdok   d(8)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
     use
endif
if !file('izobrt.dbf')
   create table izobrt ;
             (konto    c(10)    ,;
              mtr      n(5),;                    
              dug      n(18,2) ,;
              pot      n(18,2) ,;
              dat0     d(8)    ,;
              dat1     d(8)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
     use
endif
if !file('izgot.dbf')
   create table izgot ;
             (konto    c(10)    ,;                   
              mtr      n(5)    ,; 
              dug      n(18,2) ,;
              pot      n(18,2) ,;
              saldo    n(18,2) ,;
              dat0     d(8)    ,;
              dat1     d(8)    ,;
              k1       c(1)    ,;
              k2       c(2)    ,;
              k3       c(3)    ,; 
              naziv    c(50)   ,;  
                preneto   c(1),;   
                idbr      n(11);                    
              )
     use
endif
if !file('aizgot.dbf')
   create table aizgot ;
             (mkonzr1  c(10)    ,;                   
              mkonzr2  c(10)    ,;
              mkonzr3  c(10)    ,;
              mkonzr4  c(10)    ,;
              mkonzr5  c(10)    ,;
              mkonzr6  c(10)    ,;
              mkonzr7  c(10)    ,;
              mkonzr8  c(10)    ,;
              mkonzr9  c(10)    ,;
              mkonzr10 c(10)    ,;
              mkonzr11 c(10)    ,;
              mkonzr12 c(10)    ,;
              mkonzr13 c(10)    ,;
              mkonzr14 c(10)    ,;
              mkonzr15 c(10)    ,;
              mkonzr16 c(10)    ,;
              mkonzr17 c(10)    ,;
              mkonzr18 c(10)    ,;
              mkonzr19 c(10)    ,;
              mkonzr20 c(10)    ,;
              mtr      n(5)    ,;
              dat0     d(8)    ,;
              dat1     d(8)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
     use
endif

if !file('izplan.dbf')
   create table izplan ;
             (konto    c(10)    ,; 
              mtr      n(5)    ,;                 
              dok      c(3)    ,;
              vrsta    c(1)    ,;
              plangod  n(18,2) ,;
              planper  n(18,2) ,;
              realplan n(18,2) ,;
              razlika  n(18,2) ,;
              procplan n(09,3) ,;
              planmes  n(18,2) ,;  
              mesec1   n(18,2) ,;
              procm1   n(09,3) ,;
              mesec2   n(18,2) ,;
              procm2   n(09,3) ,;
              mesec3   n(18,2) ,;
              procm3   n(09,3) ,;
              mesec4   n(18,2) ,;
              procm4   n(09,3) ,;
              mesec5   n(18,2) ,;
              procm5   n(09,3) ,;
              mesec6   n(18,2) ,;
              procm6   n(09,3) ,;
              mesec7   n(18,2) ,;
              procm7   n(09,3) ,;
              mesec8   n(18,2) ,;
              procm8   n(09,3) ,;
              mesec9   n(18,2) ,;
              procm9   n(09,3) ,;
              mesec10  n(18,2) ,;
              procm10  n(09,3) ,;
              mesec11  n(18,2) ,;
              procm11  n(09,3) ,;
              mesec12  n(18,2) ,;
              procm12  n(09,3) ,;
              dat0     d(8)    ,;
              dat1     d(8)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
     use
endif
if !file('izplan1.dbf')
   create table izplan1 ;
             (dat0     d(8)    ,;
              dat1     d(8)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )
     use
endif


select 2
if !file('kastop.dbf')
   create table kastop;
         (;
          dat0      d(8) ,;
          dat1      d(8) ,;
          stopa     n(18,8) ,;
          koef      n(18,8) ,;
          period    n(3) ,;
          metoda    c(1) ,;                    
          preneto   c(1),;   
          idbr      n(11);                    
          )
       use   
   endif
if !file('kakoef.dbf')
   create table kakoef;
         (;
          datum     d(8) ,;
          stopa     n(18,8) ,;
          koef      n(18,8) ,;
          period    n(3) ,;
          metoda    c(1) ,;          
          preneto   c(1),;   
          idbr      n(11);                    
          )
       use   
   endif

if !file('kamate.dbf')
   create table kamate;
         (;
          rbr       c(4),;
          sifra     c(5),;
          datpoc    d(8),;
          datkra    d(8),;
          dana      n(4),;
          stopa     n(18,8),;
          period    n(3),;
          metoda    c(1) ,;          
          koef      n(18,8),;
          sosnovica n(18,4),;
          dug       n(18,2),;
          pot       n(18,2),;
          osnovica  n(18,4),;
          kamata    n(18,6),;
          datum     d(8),;
          datdok    d(8),;
          vazi      c(1),;
          brrac     c(20),;
          ansif     n(2),;
          preneto   c(1),;   
          idbr      n(11);                    
          )
       use
   endif
if !file('kamobrac.dbf')
   create table kamobrac;
         (;
          dat0      d(8) ,;
          dat1      d(8) ,;
          rednal    c(2) ,;
          konto     c(10) ,;          
          sifra     c(5) ,;  
                preneto   c(1),;   
                idbr      n(11);                    
          )
       use   
   endif
if !file('kamkn.dbf')
   create table kamkn(;
   brnal      c(6) ,;
   branal     n(2),;
   datdok     d(8),;
   valuta     d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('ldrad.dbf')
*   wait windows ' evidencija radnika '   
   create table ldrad ;
               (broj       n(4)      ,;
                ime_prez   c(30)     ,;
                vrstaid    c(1)     ,;
                prebival   c(3)     ,;                
                maticnibr  c(13)     ,;
                katalog    c(1)      ,;
                vrstaprim  c(2)      ,;
                oznvrprih  c(3)      ,;
                oznolaks   c(2)      ,;
                oznben     c(1)      ,;
                startbod   n(18,6)   ,;
                staz       n(10)     ,;                
                vrsta      c(1)      ,;
                grupa      n(4)      ,;
                grupa1     n(4)      ,;
                stepen     c(3)      ,;
                benproc    n(9,4)    ,;  
                mfp3proc   n(9,2)   ,;
                mfp6       n(12,2)   ,;
                mfp7       n(12,2)   ,;
                mfp8nepun  c(1)   ,;
                mfp9najosn c(1)   ,;                
                mfp10dvez  c(1)   ,;                
                sifra      c(5)      ,;                                
                partija    c(20)     ,;                                
                samsif     n(4)      ,;                                
                samoproc   n(8,4)    ,;                                
                prevoz     c(1)      ,;
                brisanje   c(1)      ,;
                pj         c(2)      ,;
                procumanj  n(09,4),;
                umanjenje  c(02),; 
                porumanj   n(09,4),;
                dopumanj   n(09,4),; 
                pioumanjr  n(09,4),; 
                pioumanjf  n(09,4),;     
                prezime    c(20),;
                ime        c(20),; 
                mp         c(2)      ,;
                posta      c(5)     ,;
                mesto      c(25)    ,;
                adresa     c(40)     ,;
                telefon    c(20)     ,;  
                evidbroj   c(8)      ,;
                fondz      n(10,2)   ,;
                kasa       n(12,2)   ,;
                kasarata   n(12,2)   ,;                
                sind1proc  n(12,4)   ,;                
                sind2proc  n(12,4)   ,;
                solproc    n(12,4)   ,;                                                
                dnevnica   n(12,4)   ,;                                                                
                alimproc   n(12,4)   ,;                                
                datmin     d(8)      ,;
                dan        c(2)      ,;
                mesec      c(2)      ,;
                godina     c(4)      ,; 
                mtr        n(5)      ,;
                m4mes      c(02),;
                m4dan      c(02),; 
                topli      c(1),;
                ropnr      c(1),;   
                datnezap   d(8),;
                datugovor  d(8),; 
                datpri     d(8),;
                datzasniv  d(8),;
                ugovdat0   d(8),;
                ugovdat1   d(8),;
                proddat0   d(8),;
                proddat1   d(8),;
                priprav    c(1),;
                zadaci     c(60),;
                ocena      c(1),;
                porolaks   c(1),;
                roditelj   c(20),;
                kolkor     n(12,2),;
                dinsat1    n(12,2),;
                dinsat2    n(12,2),;
                dinsat3    n(12,2),;
                dinsatsve  n(12,2),;
                cassat1    n(12,2),;
                cassat2    n(12,2),;
                cassat3    n(12,2),;
                cassatsve  n(12,2),;
                lbobroj    c(11),;
                zkbroj     c(11),;
                stimin     n(09,2),; 
                stimgod    n(09,2),; 
                stim1      n(09,2),; 
                stim2      n(09,2),; 
                stim3      n(09,2),; 
                destim1    n(09,2),; 
                destim2    n(09,2),; 
                destim3    n(09,2),; 
                rmesto     c(40),;
                datosig0   d(8),;
                datosig1   d(8),;  
                skosprema  c(15),;
                napomena   c(60),;
                osnovosig  c(10),;  
                m4grad     c(02),;  
                regsoc     c(10),;
                pripug     c(20),;
                pripdat    d(8),;
                radnomes   c(30),; 
                obucbrnr   c(2),;
                obucpp     c(2),;
                sanitarni  d(8),;  
                bolovanje  c(02),; 
                goduk      n(9,0),;
                godiskor   n(9,0),;
                godneiskor n(9,0),;
                idbroj    c(11),;
                idprofc   c(02),;   
                idsektor  c(02),;
                idpodsek  c(03),;
                idlokac   c(02),;
                idlokacP  c(02),;
                dok       c(3),;
                napomena2 c(60),;
                napomena3 c(60),;
                napomena4 c(60),;
                pol        c(1),;                                
                drzava     c(3),;                                                
                opstina    c(3),;
                opstinar   c(3),;                                   
                sprema     c(3),;                
                vrstazap   c(2),;
                tipsluzb   c(4),;   
                platnagr   c(3),;                                
                godnapred  c(4),;
                grnamest    c(4),;                
                sifrazanim c(8),;
                procangaz  c(3),;
                stazjubil  n(12,2),;                 
                benstaz    n(12,2),;                                 
                minproc    n(12,2),;                                 
                koef       n(12,3),;
                koefdod    n(12,3),;                
                koefukup   n(12,3),;                
                osnovica   n(12,3),;                                
                osnovbruto n(12,3),;                                                
                procuvec   n(12,3),;                                                                
                kosovo     n(12,3),;
                datzapos   d(8),;                                                                                                
                datotkaz   d(8),;                                                                                                                
                sifraorg   c(10),;
                izvorfin   c(3),;
                grupavirm c(2),; 
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
endif

if !file('ldradvr.dbf')
*   wait windows ' evidencija radnika '   
   create table ldradvr ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                maticnibr c(13)     ,;
                datpoc    d(8)      ,;
                vremepoc  c(8)      ,;
                datkraj   d(8)      ,;
                vremekraj c(8)      ,;
                sati      n(12),;
                minuti    n(12),;
                sekundi   n(12),;
                radio     n(18,8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldradvre.dbf')
*   wait windows ' evidencija radnika '   
   create table ldradvre ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                datum     d(8)      ,;
                pocsat    n(6)      ,;
                zadsat    n(6)      ,;
                sati      n(6),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ld.dbf')
 *  wait windows ' glavna tabela plate '
   create table ld ;
               (broj      n(4)      ,;
                sifraprih c(9) ,;               
                ime_prez  c(30)     ,;
                dana      n(10,2)   ,;                
                casvr     n(10,2)   ,;
                casuc     n(10,2)   ,;
                casnoc    n(10,2)   ,;
                casprod   n(10,2)   ,;
                caspraz   n(10,2)   ,;
                casned    n(10,2)   ,;
                casbol    n(10,2)   ,;
                casbol2   n(10,2)   ,;
                cas3bol   n(10,2),;
                cas4bol   n(10,2),;   
                casplac   n(10,2)   ,;
                casplac2  n(10,2)   ,;                
                casgod    n(10,2)   ,;
                casvv     n(10,2)   ,;
                casdor    n(10,2)   ,;
                casradnap n(10,2)   ,;
                casneplac n(10,2)   ,;
                ctop      n(10,2),;
                cter      n(10,2)   ,;
                cslput    n(10,2)   ,;
                csusp     n(10,2)   ,;
                czastoj   n(10,2)   ,;
                cas1      n(10,2)   ,;
                cas2      n(10,2)   ,;
                cas3      n(10,2)   ,;
                casuk     n(10,2)   ,;
                dinvr     n(12,2)   ,;
                dinuc     n(12,2)   ,;
                dinmin    n(12,2)   ,;                
                dinnoc    n(12,2)   ,;
                dinprod   n(12,2)   ,;
                dinpraz   n(12,2)   ,;
                dinned    n(12,2)   ,;
                dinbol    n(12,2)   ,;
                dinbol2   n(12,2)   ,;
                din3bol   n(12,2)   ,;
                din4bol   n(12,2)   ,;
                dinprip   n(12,2)   ,;
                dinplac   n(12,2)   ,;
                dinplac2  n(12,2)   ,;
                dingod    n(12,2)   ,;
                dinvv     n(12,2)   ,;                
                dindor    n(12,2)   ,;
                dinradnap n(12,2)   ,;
                dinkor    n(12,2)   ,;
                dinsl     n(12,2)   ,;
                dinsusp   n(12,2)   ,;
                dinzastoj n(12,2)   ,;
                dinpausal n(12,2)   ,;
                dinlic    n(12,2)   ,;
                dinkol    n(12,2)   ,;
                dinsz     n(12,2)   ,;
                dtop      n(12,2)   ,;
                kolstim   n(12,2)   ,;
                indstim   n(12,2)   ,;
                kolkor    n(12,2)   ,;
                stimsz    n(12,2)   ,;
                din1      n(12,2)   ,;
                din2      n(12,2)   ,;
                din3      n(12,2)   ,;
                fiksna    n(12,2)   ,;   
                pausal    n(12,2)   ,;   
                stim1proc n(8,2)    ,;                                
                stim2proc n(8,2)    ,;                                
                stim3proc n(8,2)    ,;                                                                
                stim1     n(12,2)   ,;
                stim2     n(12,2)   ,;
                stim3     n(12,2)   ,;
                topli     n(12,2)   ,;
                regres    n(12,2)   ,;                
                terenski  n(12,2)   ,;                
                ldodaci   n(12,2)   ,;                                                
                naknade   n(12,2)   ,;                
                dinuk     n(12,2)   ,;
                bruto     n(12,2)   ,;                
                porez     n(12,2)   ,;                
                dopsocr   n(12,2)   ,;                
                doppr     n(12,2)   ,;                
                dopzr     n(12,2)   ,;                
                dopnr     n(12,2)   ,;                                                
                doppf     n(12,2)   ,;                
                dopzf     n(12,2)   ,;                
                dopnf     n(12,2)   ,;                                                
                dopsocf   n(12,2)   ,;                                
                doppru    n(12,2)   ,;                
                dopzru    n(12,2)   ,;                
                dopnru    n(12,2)   ,;                                                
                doppfu    n(12,2)   ,;                
                dopzfu    n(12,2)   ,;                
                dopnfu    n(12,2)   ,;                                                
                dopsocs   n(12,2)   ,;                                
                doppfs    n(12,2)   ,;                
                dopzfs    n(12,2)   ,;                
                dopnfs    n(12,2)   ,;                                                
                doppfr    n(12,2)   ,;                
                dopzfr    n(12,2)   ,;                
                dopnfr    n(12,2)   ,;                                                
                benproc   n(8,2)    ,;
                bendin    n(8,2)    ,;                
                neto      n(12,2)   ,;                
                krediti   n(12,2)   ,;                
                kreditia  n(12,2)   ,;                
                akontac   n(12,2)   ,;                                                
                prevoz    n(12,2)   ,;                
                aliment   n(12,2)   ,;                
                kasa      n(12,2)   ,;                                                
                kasarata  n(12,2)   ,;                
                samodopr  n(12,2)   ,;                
                sindikat1 n(12,2)   ,;                
                sindikat2 n(12,2)   ,;                                
                solidarn  n(12,2)   ,;                                
                obustto   n(12,2)   ,;                                
                obust1    n(12,2)   ,;                                
                obust2    n(12,2)   ,;                                                
                obust3    n(12,2)   ,;                                                
                obust4    n(12,2)   ,;                                
                obust5    n(12,2)   ,;                                                
                obust6    n(12,2)   ,;                                                
                ukobust   n(12,2)   ,;  
                zaisplatu n(12,2)   ,;
                unetic    c(1)      ,;
                cenarada  n(18,6)   ,;                
                propisana n(12,2)   ,;
                osnovica  n(12,2)   ,;                
                skala     n(1)      ,;                                
                mesec     n(2)      ,;
                nazmes    c(10)     ,;
                dotacija  n(12,2)   ,;                
                cassus    n(10,2)   ,;                                
                dinsus    n(12,2)   ,; 
                evidbroj  c(8)      ,;                                         
                grupa     n(4)      ,;
                mtr       n(5)      ,;
                samsif    n(4)      ,;                  
                datum     d(8)      ,;  
                vrsta     c(1)      ,;
                procbol   n(9,0)    ,;   
                piobol    n(12,2),;
                dreg      n(12,2),;
                procumanj n(9,4),;
                br        c(4),;  
                dopsoc    n(12,2),;
                fdopsoc   n(12,2),;
                fpensoc   n(12,2),;
                fzdrsoc   n(12,2),;
                fnezsoc   n(12,2),;
                pensoc    n(12,2),;
                zdrsoc    n(12,2),;
                nezsoc    n(12,2),;
                osnovdop  n(12,2),;
                propisdop n(12,2),;
                din2bol   n(12,2),;
                brutold   n(12,2),;
                netold    n(12,2),;
                sinddin   n(12,2),;
                sind2din  n(12,2),;
                din2plac  n(12,2),;
                samodin   n(12,2),;
                zaisplat  n(12,2),;
                cas2bol   n(10,2)   ,;
                cas2plac  n(10,2)   ,;
                ostalo1   n(12,2)   ,;                                
                ostalo2   n(12,2)   ,;                                                
                ostalo3   n(12,2)   ,;                                                
                akont     n(12,2)   ,;                                
                vrboda    n(12,2),;
                umanjenje c(02),; 
                porumanj  n(09,4),;
                dopumanj  n(09,4),; 
                pioumanjr n(09,4),; 
                pioumanjf n(09,4),;                 
                porezs    n(12,2)   ,;   
                porezu    n(12,2),;                                
                poroslob  n(12,2),;                                
                poroslob1 n(12,2),;                                
                poroslob2 n(12,2),;                                
                poroslob3 n(12,2),;                                
                poroslob4 n(12,2),;                                
                prestopa1 n(12,2),;
                prepor1   n(12,2),;
                prebruto1 n(12,2),;
                prestopa2 n(12,2),;
                prepor2   n(12,2),;
                prebruto2 n(12,2),;
                prestopa3 n(12,2),;
                prepor3   n(12,2),;
                prebruto3 n(12,2),;
                preneto1  n(12,2),;
                preneto2  n(12,2),;
                preneto3  n(12,2),;
                netosve   n(12,2),;
                netoprev  n(12,2),;
                komorajd  n(12,2) ,;                                
                komorasd  n(12,2) ,;                                
                komorard  n(12,2) ,;
                dat1      d(8)   ,;
                dat2      d(8)   ,;
                dat3      d(8)   ,;
                dat4      d(8)   ,;                                
                godina    c(4)   ,;
                arhiva    c(1),;
                arhiva2   c(1),;
                opis1     c(60),;
                opis2     c(60),;
                brobrac   n(02),;
                doposlob  n(12,2),;      
                piooslobr n(12,2),;                      
                piooslobf n(12,2),;  
                osnovp1   n(12,2)   ,;                
                osnovp2   n(12,2)   ,;                
                osnovp3   n(12,2)   ,;                
                osnovp4   n(12,2)   ,;                                
                osnsoc1   n(12,2)   ,;                
                doppr1    n(12,2)   ,;                
                dopzr1    n(12,2)   ,;                
                dopnr1    n(12,2)   ,;                                                
                doppf1    n(12,2)   ,;                
                dopzf1    n(12,2)   ,;                
                dopnf1    n(12,2)   ,;                                                
                osnsoc2   n(12,2)   ,;                
                doppr2    n(12,2)   ,;                
                dopzr2    n(12,2)   ,;                
                dopnr2    n(12,2)   ,;                                                
                doppf2    n(12,2)   ,;                
                dopzf2    n(12,2)   ,;                
                dopnf2    n(12,2)   ,;                                                
                osnsoc3   n(12,2)   ,;                
                doppr3    n(12,2)   ,;                
                dopzr3    n(12,2)   ,;                
                dopnr3    n(12,2)   ,;                                                
                doppf3    n(12,2)   ,;                
                dopzf3    n(12,2)   ,;                
                dopnf3    n(12,2)   ,;                                                
                bendin1   n(12,2)   ,;
                bendin2   n(12,2)   ,;
                bendin3   n(12,2)   ,;
                m4grad    c(02),;
                regsoc    c(10),;   
                isplata   n(1),;   
                maticnibr c(13),;  
                idbroj    c(11),;
                dok       c(3),; 
                grupa1    n(4)      ,;
                netoost   n(12,2)   ,;
                solpor    n(12,2)   ,;
                neto2     n(12,2)   ,;                
                REDISPL   n(1)   ,;                                
                bkumanj   n(12,2)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif

if !file('ldsamod.dbf')
*   wait windows ' evidencija samodopirnosa '   
   create table ldsamod ;
               (samsif    n(4)      ,;
                samonaz   c(25)     ,;                                
                samoproc  n(8,4)    ,; 
                zirorac   c(20)     ,;                 
                samodop   n(12,2)   ,;                                                
                sam1      n(12,2)   ,; 
                sam2      n(12,2)   ,; 
                sam3      n(12,2)   ,; 
                sam4      n(12,2)   ,; 
                mesec     n(2),;  
                isplata   n(1),;                  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldprev.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldprev ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                dana      n(9,1)   ,;                
                karta     n(12,2)   ,;                                
                prevoz    n(12,2)   ,;                
                neoporez  n(12,2)   ,;                
                oporez    n(12,2)   ,;                                
                STOPA     n(12,2)   ,;                                
                POREZ     n(12,2)   ,;                                                
                UKUPPREV  n(12,2)   ,;                                                                
                datum     d(8)      ,;
                grupa     n(4),;  
                mesec     n(2),;  
                isplata   n(1),;  
                vrsta     c(1),;  
                NAZmes    C(10),;    
                sifraprih c(9) ,;                                             
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif

if !file('ldprevP.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldprevP ;
               (dana      n(9,1)   ,;                
                karta     n(12,2)   ,;                                
                prevoz    n(12,2)   ,;                
                neoporez  n(12,2)   ,;                
                datum     d(8)      ,;
                mesec     n(2),;  
                NAZmes    C(10),;                  
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif


if !file('ldalati.dbf')
*   wait windows ' evidencija samodopirnosa '   
   create table ldalati ;
               (svrbod     n(16,6)   ,;
                sabol      c(1),;
                sakor      c(1),;
                saprebac   n(12,6),;
                saobustave c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldtop.dbf')
*   wait windows ' evidencija samodopirnosa '   
   create table ldtop ;
               (restoran  n(12,2)   ,;                                                
                koefb     n(12,6)   ,; 
                rbruto    n(12,2)   ,; 
                ctop      n(12,4)   ,; 
                topli     n(12,2)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldpod.dbf')
  * wait windows ' podaci o platama '   
   create table ldpod ;
               (kod       c(7)      ,;
                opis      c(27)     ,;
                s1a       n(12,2)   ,;
                sv1a      n(12,2)   ,;
                s1b       n(12,2)   ,;
                sv1b      n(12,2)   ,;
                s1c       n(12,2)   ,;
                sv1c      n(12,2)   ,;
                s1u       n(12,2)   ,;
                sv1u      n(12,2)   ,;
                s2a       n(12,2)   ,;
                sv2a      n(12,2)   ,;
                s2b       n(12,2)   ,;
                sv2b      n(12,2)   ,;
                s2c       n(12,2)   ,;
                sv2c      n(12,2)   ,;
                s2u       n(12,2)   ,;
                sv2u      n(12,2)   ,;
                s3a       n(12,2)   ,;
                sv3a      n(12,2)   ,;
                s3b       n(12,2)   ,;
                sv3b      n(12,2)   ,;
                s3c       n(12,2)   ,;
                sv3c      n(12,2)   ,;
                s3u       n(12,2)   ,;
                sv3u      n(12,2)   ,;
                s4a       n(12,2)   ,;
                sv4a      n(12,2)   ,;
                s4b       n(12,2)   ,;
                sv4b      n(12,2)   ,;
                s4c       n(12,2)   ,;
                sv4c      n(12,2)   ,;
                s4u       n(12,2)   ,;
                sv4u      n(12,2)   ,;
                su        n(12,2)   ,;
                svu       n(12,2)  ,;
                mesec     n(2),;  
                isplata   n(1),;                  
                vrsta     c(1),;                  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldopj.dbf')
   *wait windows ' obrazac opj '   
   create table ldopj ;
               (kod       c(5)      ,;
                opis      c(37)     ,;
                zaposl    n(10)     ,;
                zarada    n(12,2)   ,;                
                porez     n(12,2)   ,;                
                fond      n(12,2)   ,;                
                zaisplat  n(12,2)   ,;
                rlini     c(1)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldopjn.dbf')
   *wait windows ' obrazac opj '   
   create table ldopjn ;
               (kod       c(5)      ,;
                opis      c(70)     ,;
                zaposl    n(4)     ,;
                iznos     n(12,2)   ,;                
                rlini     c(1)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('ldopj1.dbf')
 *  wait windows ' obrazac opj-1 '   
   create table ldopj1 ;
               (rbr       c(2)      ,;
                opis      c(24)     ,;
                radnici   n(3)      ,;
                neoporez  n(12,2)   ,;                
                isplaceno n(12,2)   ,;                
                zaisplatu n(12,2)   ,;                
                svega     n(12,2)   ,;
                netoopor  n(12,2)   ,;
                brutoopor n(12,2)   ,;
                porez     n(12,2)   ,;                                
                period    c(8)      ,;
                podatak   c(1)      ,;                
                rlini     c(1)      ,;
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldob.dbf')
   create table ldob;
               (zirorac    n(2)   ,;
                sif1       c(3),;
                modelo    c(2),;
                pozivo    c(20),;      
                prevoz1    n(12,2)   ,;                
                aliment1   n(12,2)   ,;                
                kasa1      n(12,2)   ,;                                                
                kasarata1  n(12,2)   ,;                
                samodopr1  n(12,2)   ,;                
                sindikat11 n(12,2)   ,;                
                sindikat21 n(12,2)   ,;                                
                solidarn1  n(12,2)   ,;                                
                obustto1   n(12,2)   ,;                                
                obust11    n(12,2)   ,;                                
                obust21    n(12,2)   ,;                                                
                obust31    n(12,2)   ,;                                                
                obust41    n(12,2)   ,;                                
                obust51    n(12,2)   ,;                                                
                obust61    n(12,2)   ,;
                prevoz2    n(12,2)   ,;                
                aliment2   n(12,2)   ,;                
                kasa2      n(12,2)   ,;                                                
                kasarata2  n(12,2)   ,;                
                samodopr2  n(12,2)   ,;                
                sindikat12 n(12,2)   ,;                
                sindikat22 n(12,2)   ,;                                
                solidarn2  n(12,2)   ,;                                
                obustto2   n(12,2)   ,;                                
                obust12    n(12,2)   ,;                                
                obust22    n(12,2)   ,;                                                
                obust32    n(12,2)   ,;                                                
                obust42    n(12,2)   ,;                                
                obust52    n(12,2)   ,;                                                
                obust62    n(12,2)   ,;
                prevoz3    n(12,2)   ,;                
                aliment3   n(12,2)   ,;                
                kasa3      n(12,2)   ,;                                                
                kasarata3  n(12,2)   ,;                
                samodopr3  n(12,2)   ,;                
                sindikat13 n(12,2)   ,;                
                sindikat23 n(12,2)   ,;                                
                solidarn3  n(12,2)   ,;                                
                obustto3   n(12,2)   ,;                                
                obust13    n(12,2)   ,;                                
                obust23    n(12,2)   ,;                                                
                obust33    n(12,2)   ,;                                                
                obust43    n(12,2)   ,;                                
                obust53    n(12,2)   ,;                                                
                obust63    n(12,2)   ,;
                prevoz4    n(12,2)   ,;                
                aliment4   n(12,2)   ,;                
                kasa4      n(12,2)   ,;                                                
                kasarata4  n(12,2)   ,;                
                samodopr4  n(12,2)   ,;                
                sindikat14 n(12,2)   ,;                
                sindikat24 n(12,2)   ,;                                
                solidarn4  n(12,2)   ,;                                
                obustto4   n(12,2)   ,;                                
                obust14    n(12,2)   ,;                                
                obust24    n(12,2)   ,;                                                
                obust34    n(12,2)   ,;                                                
                obust44    n(12,2)   ,;                                
                obust54    n(12,2)   ,;                                                
                obust64    n(12,2)   ,;
                prevozu    n(12,2)   ,;                
                alimentu   n(12,2)   ,;                
                kasau      n(12,2)   ,;                                                
                kasaratau  n(12,2)   ,;                
                samodopru  n(12,2)   ,;                
                sindikat1u n(12,2)   ,;                
                sindikat2u n(12,2)   ,;                                
                solidarnu  n(12,2)   ,;                                
                obusttou   n(12,2)   ,;                                
                obust1u    n(12,2)   ,;                                
                obust2u    n(12,2)   ,;                                                
                obust3u    n(12,2)   ,;                                                
                obust4u    n(12,2)   ,;                                
                obust5u    n(12,2)   ,;                                                
                obust6u    n(12,2)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )   
   use
endif


if !file('ldod.dbf')
  * wait windows ' obrazac od '   
   create table ldod;
               (kod       c(7)      ,;
                opis      c(27)     ,;
                aop       c(2)      ,;
                sk1       n(12,2)   ,;
                sk2       n(12,2)   ,;
                sk3       n(12,2)   ,;
                sk4       n(12,2)   ,;
                sk5       n(12,2)   ,;
                sk6       n(12,2)   ,;
                sk7       n(12,2)   ,;
                sk8       n(12,2)   ,;
                sk0       n(12,2)   ,;
                lini      c(1)      ,;
                rlini     c(1)      ,;
                plini     c(1)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldrek.dbf')
  * wait windows ' obrazac rekapitulacija '   
   create table ldrek ;
               (kod       c(7)      ,;
                opis      c(27)     ,;
                pre       n(12,2)   ,;                
                sada      n(12,2)   ,;                
                razlika   n(12,2)   ,;                
                rlini     c(1)      ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldod1.dbf')
  * wait windows ' obrazac od1 '   
   create table ldod1 ;
               (kod       c(4)      ,;
                opis      c(33)     ,;
                porodilje n(12,2)   ,;                
                bolovanje n(12,2)   ,;                
                invalidi  n(12,2)   ,;                
                rlini     c(1)     ,;                 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldopj2.dbf')
  * wait windows ' obrazac opj2 '   
   create table ldopj2 ;
               (broj      N(4),;
                sifraprih c(9) ,;               
                grupa     n(4),; 
                datdok    d(8)      ,;
                bruto     n(12,2)   ,;                
                neto      n(12,2)   ,;                
                pr_norm   n(08,2)   ,; 
                normirtr  n(12,2)   ,;                               
                snormirtr n(12,2)   ,;                               
                oporezivo n(12,2)   ,;                               
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;                               
                pr_pio    n(08,2)   ,; 
                pio       n(12,2)   ,;                               
                pr_zdr    n(08,2)   ,; 
                zdr       n(12,2)   ,;                               
                cneto     n(12,2)   ,;  
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif




if !file('ldopj3.dbf')
  * wait windows ' obrazac opj3 '   
   create table ldopj3 ;
               (broj      N(4),;
                sifraprih  c(9) ,;                
                grupa     n(4),; 
                datdok    d(8)      ,;
                kambruto  n(12,2)   ,;                
                kamproc   n(08,2),;                   
                kamporez  n(12,2),;                   
                kamneto   n(12,2),;                   
                divispl   n(12,2),;                   
                divumanj  n(12,2),;                   
                divoporez n(12,2),;                   
                divoporez2 n(12,2),;                   
                divproc   n(08,2),;                   
                divporez  n(12,2),;                   
                divneto   n(12,2),;   
                bruto     n(12,2)   ,;                
                pr_norm   n(08,2)   ,; 
                normirtr  n(12,2)   ,;                               
                snormirtr n(12,2)   ,;                               
                oporezivo n(12,2)   ,;                               
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;                               
                cneto     n(12,2)   ,;                               
                invisplac n(12,2),;                   
                invoporez n(12,2),;                   
                invporez  n(12,2),;                   
                invproc   n(08,2),;                   
                invneto   n(12,2),;                   
                doboporez n(12,2),;                   
                dobproc   n(08,2),;                   
                dobporez  n(12,2),;                   
                dobneto   n(12,2),;                   
                vlaoporez n(12,2),;                   
                vlaproc   n(08,2),;                   
                vlaporez  n(12,2),;                   
                vlaneto   n(12,2),;                   
                ukupno    n(12,2),;  
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use              
endif


if !file('ldopj4.dbf')
  * wait windows ' obrazac opj4 '   
   create table ldopj4 ;
               (broj       N(4),;
                sifraprih  c(9) ,;                
                grupa      n(4),; 
                datdok     d(8)      ,;
                abruto     n(12,2)   ,;                
                apr_norm   n(08,2)   ,; 
                anormirtr  n(12,2)   ,;                               
                asnormirtr n(12,2)   ,;                               
                aoporezivo n(12,2)   ,;                               
                apr_doh    n(08,2)   ,; 
                apordoh    n(12,2)   ,;                               
                acneto     n(12,2)   ,;
                ukporez    n(12,2),; 
                bruto     n(12,2)   ,;                
                pr_norm   n(08,2)   ,; 
                normirtr  n(12,2)   ,;                               
                snormirtr n(12,2)   ,;                               
                oporezivo n(12,2)   ,;                               
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;                               
                cneto     n(12,2)   ,;       
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldopj5.dbf')
  * wait windows ' obrazac opj5 '   
   create table ldopj5 ;
               (broj      N(4),;
                sifraprih  c(9) ,;                
                grupa     n(4),; 
                datdok    d(8)      ,;
                bruto     n(12,2)   ,;                
                neoporez  n(12,2)   ,;                                
                neto      n(12,2)   ,;                
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;                               
                cneto     n(12,2)   ,;                               
                bruto2    n(12,2)   ,;                
                uplacprem2 n(12,2)   ,;                                
                oporezivo2 n(12,2)   ,;                                                
                pr_doh2   n(08,2)   ,; 
                pordoh2   n(12,2)   ,;                               
                cneto2    n(12,2) ,; 
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldopj6.dbf')
  * wait windows ' obrazac opj6 '   
   create table ldopj6 ;
               (broj      N(4),;
                sifraprih  c(9) ,;                
                grupa     n(4),; 
                datdok    d(8)      ,;
                bruto     n(12,2)   ,;                
                pr_norm   n(08,2)   ,; 
                normirtr  n(12,2)   ,;                               
                snormirtr n(12,2)   ,;                               
                oporezivo n(12,2)   ,;                               
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;                               
                pr_pio    n(08,2)   ,; 
                pio       n(12,2)   ,;                               
                pr_zdr    n(08,2)   ,; 
                zdr       n(12,2)   ,;                             
                cneto     n(12,2)   ,;                               
                neto      n(12,2)   ,;                               
                pr_pio2   n(08,2)   ,; 
                pio2      n(12,2)   ,;                               
                pr_zdr2   n(08,2)   ,; 
                zdr2      n(12,2)   ,;                            
                prevoz    n(12,2),;
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('ldopj7.dbf')
  * wait windows ' obrazac opj7 '   
   create table ldopj7 ;
               (broj      N(4),;
                sifraprih  c(9) ,;                
                grupa     n(4),; 
                datdok    d(8)      ,;
                neto      n(12,2)   ,;                
                pr_norm   n(08,2)   ,; 
                normirtr  n(12,2)   ,;                               
                oporezivo n(12,2)   ,;                               
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;                               
                pr_umanj  n(08,2)   ,; 
                umanjenje n(12,2)   ,;                               
                porupl    n(12,2)   ,;                               
                osnovdop  n(12,2)   ,;                               
                pr_pio    n(08,2)   ,; 
                pio       n(12,2)   ,;                               
                cneto     n(12,2)   ,;                               
                pr_pio2   n(08,2)   ,; 
                pio2      n(12,2)   ,;                               
                pr_zdr    n(08,2)   ,; 
                zdr       n(12,2)   ,;    
                ime_prez  c(30),;    
                maticnibr c(13),;    
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                brnal     c(6)      ,;                
                pocnal    c(2)      ,;                                
                sifra     c(5)      ,;                                                
                DUG       N(12,2)   ,;                               
                RAZLIKA   N(12,2)   ,;                                               
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldopj8.dbf')
   create table ldopj8 ;
               (broj      N(4),;
                sifraprih  c(9) ,;                
                grupa     n(4),; 
                datdok    d(8)      ,;
                neoporez  n(12,2)   ,;
                net1      n(12,2)      ,;                               
                net2      n(12,2)      ,;                               
                noporez   n(12,2)   ,;                               
                oporez    n(12,2)   ,;                                               
                n2oporez  n(12,2)   ,;                                               
                pr_norm   n(08,2)   ,; 
                normirtr  n(12,2)   ,;                               
                n3oporez  n(12,2)   ,;                               
                pr_doh    n(08,2)   ,; 
                pordoh    n(12,2)   ,;    
                zaisplatu n(12,2)   ,;
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(10)     ,;
                arhiva    c(1)     ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if ! file("ldod1n.dbf")
   create table ldod1n;
               (kod       c(7)      ,;
                opis      c(36)     ,;
                porodilje n(12,2)   ,;                
                bolovanje n(12,2)   ,;                
                invalidi  n(12,2)   ,;                
                rlini     c(1)      ,;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldodn.dbf')
  * wait windows ' obrazac od '   
   create table ldodn;
               (kod       c(7)      ,;
                opis      c(62)     ,;
                aop       c(2)      ,;
                sk1       n(12,2)   ,;
                sk2       n(12,2)   ,;
                sk3       n(12,2)   ,;
                sk4       n(12,2)   ,;
                zirorac   c(16),;
                lini      c(1)      ,;
                rlini     c(1)      ,;
                plini     c(1)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldspis.dbf')
  * wait windows ' spiskovi za banke '   
   create table ldspis;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                partija   c(20)     ,;               
                iznos     n(12,2)   ,;
                sifra     c(5)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldkolona.dbf')
  * wait windows ' pregled jedne kolone '   
   create table ldkolona ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                iznos     n(12,3)   ,;
                tekst     c(80)     ,;
                datum     d(8)      ,;
                polje     c(20)     ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif




if !file('ldkred.dbf')
  * wait windows ' evidencija kredita '   
   create table ldkred ;
               (kredit    n(5)      ,;
                broj      n(4)      ,;               
                sifra     c(5)      ,;
                partija   c(20)     ,;
                iznos     n(12,2)   ,;                
                koliko    n(4)      ,;                
                prvarata  n(12,2)   ,;                
                ostalerate n(12,2)  ,;                
                zadobitak c(1)      ,;                
                aktivrata n(12,2)   ,;                                
                akontrata n(12,2)   ,;                                
                ostatak   n(12,2)   ,;  
                odbijeno  n(12,2)   ,;
                evidbroj  c(8)      ,;
                modelo    c(2)      ,;
                datdok    d(8)      ,;                
                grupa     n(4)      ,;                
                arhiva    c(1)      ,;                
                arhiva2   c(1)      ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldkredr.dbf')
   *wait windows ' otplate kredita '   
   create table ldkredr ;
               (kredit    n(5)      ,;
                broj      n(4)      ,;               
                sifra     c(5)      ,;
                datdok    d(8)      ,;                
                dug       n(14,2)   ,;                
                iznos     n(14,2)   ,;                
                saldo     n(14,2)   ,;      
                brnal     c(6)      ,;      
                dev       c(3)    ,;                            
                devkurs   n(18,6) ,;                            
                devdug    n(18,6) ,;                                          
                devpot    n(18,6) ,;     
                devsaldo  n(18,6) ,;     
                mesec     n(2)      ,;                                
                arhiva    c(1)      ,; 
                arhiva2   c(1)      ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldvirm.dbf')
   *wait windows ' evidencija virmana '   
   create table ldvirm ;
               (stampa    c(1)      ,;
                vrsta     c(2)      ,;               
                zirorac   c(20)     ,;
                modelo    c(2)      ,;
                pozivo    c(25)     ,;                
                datdok    d(8)      ,;                
                dug       n(18,2)   ,;                
                sif1      c(3)      ,;                
                modelz    c(2)      ,;
                pozivz    c(25)     ,;                
                nazrac    c(70)     ,;                
                svrha     c(70)     ,;                
                raz       c(1)      ,;                
                nazracz   c(70)     ,;                
                ziroracz  c(20)     ,;                                
                ukupno    n(18,2)   ,;                
                datval    d(8)      ,;                
                valuta    c(3)      ,;                
                plac      n(18,2)   ,;   
                mesto     c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif




if !file('l2virm.dbf')
   *wait windows ' podaci za popunu virmana '   
   create table l2virm ;
               (kod       c(7)     ,;
                vrsta     c(2)     ,;              
                modelo    c(2)     ,;              
                pozivo    c(25)    ,;              
                sif1      c(3)     ,;              
                modelz    c(2)     ,;              
                pozivz    c(25)    ,;              
                zir1      c(3)    ,;                                                              
                zir2      c(9)     ,;              
                zirkont   c(2)     ,;              
                zirmod    c(2)     ,;
                zirorac   c(20)    ,;              
                raz       c(1)     ,;              
                nazrac    c(70)    ,;              
                svrha     c(70)    ,;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('l2virm0.dbf')
   *wait windows ' podaci za popunu virmana '   
   create table l2virm0 ;
               (lvsif     n(2)     ,;
                kod       c(7)     ,;
                vrsta     c(2)     ,;              
                modelo    c(2)     ,;              
                pozivo    c(25)    ,;              
                sif1      c(3)     ,;              
                modelz    c(2)     ,;              
                pozivz    c(25)    ,;              
                zir1      c(3)    ,;                                                              
                zir2      c(9)     ,;              
                zirkont   c(2)     ,;              
                zirmod    c(2)     ,;
                zirorac   c(20)    ,;              
                raz       c(1)     ,;              
                nazrac    c(70)    ,;              
                svrha     c(70)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldnz1.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldnz1 ;
               (br        c(2)     ,;
                ime_prez  c(30)    ,;              
                bruto     n(12,2)  ,;
                pdete     n(12,2)  ,;
                oposto    n(12,2)  ,;
                tposto    n(12,2)  ,;
                sposto    n(12,2)  ,;                                                                
                osnovp    n(12,2)  ,;
                porez     n(12,2)  ,;
                zaisplat  n(12,2)  ,;
                dop       n(12,2)  ,;
                obaveze   n(12,2)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldz1.dbf')
   *wait windows ' ldz1-zahtev za umanjenje poreza za porodilje '   
   create table ldz1 ;
               (br        c(2)     ,;
                opis      c(59)    ,;              
                iznos     n(12,2)  ,;
                podatak   c(1)     ,;                
                rlini     c(1)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldbol.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldbol ;
               (br        c(2)     ,;
                ime_prez  c(30)    ,;              
                pol       c(1),;
                prvaispl  c(2),;
                dod       d(8),;
                ddo       d(8),;
                danbol    n(4),;
                dannes    n(4),;
                danpro    n(4),;
                danneg    n(4),;
                dantru    n(4),;
                dankrv    n(4),;
                bruto     n(12,2)  ,;
                porez     n(12,2)  ,;
                doppio    n(12,2)  ,;
                dopnez    n(12,2)  ,;
                zaisplat  n(12,2)  ,;
                svega     n(12,2)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
                
if !file('ldboln.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldboln ;
               (br        c(2)     ,;
                ime_prez  c(30)    ,;              
                pol       c(1),;
                prvaispl  c(2),;
                dod       d(8),;
                ddo       d(8),;
                povrad    n(4),;
                povdan    n(4),;
                povsif    n(4),;
                bolrad    n(4),;
                boldan    n(4),;
                bolsif    n(4),;
                izorad    n(4),;
                izodan    n(4),;
                izosif    n(4),;
                ukrad     n(4),;
                ukdan     n(4),;
                uksif     n(4),;
                negrad    n(4),;
                negdan    n(4),;
                negsif    n(4),;
                bruto100  n(12,2)  ,;
                bruto     n(12,2)  ,;
                porez     n(12,2)  ,;
                doppio    n(12,2)  ,;
                dopzdr    n(12,2)  ,;
                dopnez    n(12,2)  ,;
                doppiof   n(12,2)  ,;
                dopzdrf   n(12,2)  ,;
                dopnezf   n(12,2)  ,;
                zaisplat  n(12,2)  ,;
                svega     n(12,2)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldinzs.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldinzs ;
               (redni     n(4),;
                ime_prez  c(30)    ,;              
                maticnibr c(13),;
                bruto     n(14,0),;
                doppf     n(12,0)   ,;                
                dopzf     n(12,0)   ,;                
                dopnf     n(12,0)   ,;                                                
                dopsocf   n(12,0)   ,;                                
                doppfu    n(12,0)   ,;                
                dopzfu    n(12,0)   ,;                
                dopnfu    n(12,0)   ,;                                                
                doppfr    n(12,0)   ,;                
                dopzfr    n(12,0)   ,;                
                dopnfr    n(12,0)  ,;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldzo22.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldzo22;
               (br        c(2)     ,;
                prezime   c(20)    ,;              
                ime       c(20)    ,;              
                roditelj  c(20)    ,;              
                maticnibr c(13),; 
                dod       d(8),;
                ddo       d(8),;
                casovi    n(12,2),;
                iznos     n(12,2),;
                necasovi  n(12,2),;
                radnovre  c(10),;
                radnovre2 c(10),;
                napomena1 c(50),;
                napomena2 c(50),;
                napomena3 c(50),;
                napomena4 c(50),;
                datum     d(8),;
                iznoscas  n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldzo24.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldzo24;
               (mesec2    c(20)     ,;
                mesec3    c(20)    ,;              
                ukizn12   n(12,2)    ,;   
                ukizn13   n(12,2)    ,;   
                ukcas22   n(12,2)    ,;   
                ukcas23   n(12,2),;
                pros32    n(12,2),;
                pros33    n(12,2),;
                porast    n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldzospec.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldzospec;
               (povreda   n(12,2)    ,;   
                trudnoca  n(12,2)    ,;   
                negadet   n(12,2)    ,;   
                ostalo    n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldpotvr.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldpotvr ;
               (br        c(2)     ,;
                ime_prez  c(30)    ,;              
                maticnibr c(13),;
                mesec     c(10),;
                bruto     n(12,2)  ,;
                bruto2    n(12,2)  ,;
                datispl   d(8)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('dkrediti.dbf')
  * wait windows ' evidencija kredita '   
   create table dkrediti ;
               (brrac     c(20)     ,;
                datdok    d(8)      ,;
                sifra     c(5)      ,;
                maticnibr c(13)     ,;
                ime_prez  c(25)     ,; 
                partija   c(20)     ,;
                iznos     n(12,2)   ,;                
                brrata    n(4)      ,; 
                prvarata  n(12,2)   ,;                
                ostalerate n(12,2)  ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                 )
   use
endif
if !file('ldslobs.dbf')
 *  wait windows ' slobodan spisak '
   create table ldslobs ;
               (casvr     n(10,2)   ,;
                casuc     n(10,2)   ,;
                casnoc    n(10,2)   ,;
                casprod   n(10,2)   ,;
                caspraz   n(10,2)   ,;
                casned    n(10,2)   ,;
                casbol    n(10,2)   ,;
                casbol2   n(10,2)   ,;
                casplac   n(10,2)   ,;
                casplac2  n(10,2)   ,;                
                casgod    n(10,2)   ,;
                casvv     n(10,2)   ,;
                casdor    n(10,2)   ,;
                casradnap n(10,2)   ,;
                cas1      n(10,2)   ,;
                cas2      n(10,2)   ,;
                cas3      n(10,2)   ,;
                casuk     n(10,2)   ,;
                dinvr     n(12,2)   ,;
                dinuc     n(12,2)   ,;
                dinmin    n(12,2)   ,;                
                dinnoc    n(12,2)   ,;
                dinprod   n(12,2)   ,;
                dinpraz   n(12,2)   ,;
                dinned    n(12,2)   ,;
                dinbol    n(12,2)   ,;
                dinbol2   n(12,2)   ,;
                dinplac   n(12,2)   ,;
                dinplac2  n(12,2)   ,;
                dingod    n(12,2)   ,;
                dinvv     n(12,2)   ,;                
                dindor    n(12,2)   ,;
                dinradnap n(12,2)   ,;
                din1      n(12,2)   ,;
                din2      n(12,2)   ,;
                din3      n(12,2)   ,;
                fiksna    n(12,2)   ,;                
                stim1     n(12,2)   ,;
                stim2     n(12,2)   ,;
                stim3     n(12,2)   ,;
                topli     n(12,2)   ,;
                regres    n(12,2)   ,;                
                terenski  n(12,2)   ,;                
                ldodaci    n(12,2)   ,;                                                
                naknade   n(12,2)   ,;                
                dinuk     n(12,2)   ,;
                bruto     n(12,2)   ,;                
                porez     n(12,2)   ,;                
                dopsocr   n(12,2)   ,;                
                doppr     n(12,2)   ,;                
                dopzr     n(12,2)   ,;                
                dopnr     n(12,2)   ,;                                                
                doppf     n(12,2)   ,;                
                dopzf     n(12,2)   ,;                
                dopnf     n(12,2)   ,;                                                
                dopsocf   n(12,2)   ,;                                
                bendin    n(8,2)    ,;                
                neto      n(12,2)   ,;                
                krediti   n(12,2)   ,;                
                akontac   n(12,2)   ,;                                                
                prevoz    n(12,2)   ,;                
                aliment   n(12,2)   ,;                
                kasa      n(12,2)   ,;                                                
                kasarata  n(12,2)   ,;                
                samodopr  n(12,2)   ,;                
                sindikat1 n(12,2)   ,;                
                sindikat2 n(12,2)   ,;                                
                solidarn  n(12,2)   ,;                                
                obust1    n(12,2)   ,;                                
                obust2    n(12,2)   ,;                                                
                obust3    n(12,2)   ,;                                                
                ukobust   n(12,2)   ,;  
                zaisplatu n(12,2)   ,;
                propisana n(12,2)   ,;
                osnovica  n(12,2)   ,;                
                dotacija  n(12,2)   ,;                
                cassus    n(10,2)   ,;                                
                dinsus    n(12,2)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldrad0.dbf')
*   wait windows ' evidencija radnika za pp ld opj '   
   create table ldrad0 ;
                (broj      n(4)      ,;
                ime_prez   c(30)     ,;
                vrstaid    c(1)     ,;
                prebival   c(3)     ,;                
                maticnibr  c(13)     ,;
                katalog    c(1)      ,;
                vrstaprim  c(2)      ,;
                oznvrprih  c(3)      ,;
                oznolaks   c(2)      ,;
                oznben     c(1)      ,;
                mfp1       n(18,2)   ,;
                mfp2       n(18,2)   ,;
                mfp3proc   n(12,2)   ,;
                mfp4       n(18,2)   ,;
                mfp5       n(18,2)   ,;
                mfp6       n(18,2)   ,;
                mfp7       n(12,2)   ,;
                mfp8nepun  c(1)   ,;
                mfp9najosn c(1)   ,;                
                mfp10dvez  c(1)   ,;                
                mfp11neop  n(18,2)   ,;                
                mp         c(2)      ,;
                mesto      c(25)     ,;                
                adresa     c(40)     ,;
                sifra      c(5)      ,;                                
                partija    c(20)     ,;                                
                kategor    c(15),; 
                sifosnov   c(2) ,; 
                osnov      c(20),;
                grupavirm  c(2),; 
                prezime    c(20),;
                ime        c(20),;
                izvorfin   c(3),;                 
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
ENDIF



if !file('ldvirm6.dbf')
   *wait windows ' evidencija virmana '   
   create table ldvirm6 ;
               (grupavirm c(2) ,;    
                kod       c(1) ,; 
                sif1      c(3) ,; 
                modelz    c(2) ,;
                pozivz    c(25),;                
                nazracz   c(70),;                
                ziroracz  c(20),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldopj6p1.dbf')
   *wait windows ' evidencija virmana '   
   create table ldopj6p1 ;
               (grupavirm c(2) ,;    
                kod       c(1) ,; 
                sif1      c(3) ,; 
                modelz    c(2) ,;
                pozivz    c(25),;                
                nazracz   c(70),;                
                ziroracz  c(20),;                                
                datdok    d(8) ,; 
                dug       n(18,2),;
                pozivo    c(25),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldopj6p3.dbf')
   *wait windows ' evidencija virmana '   
   create table ldopj6p3 ;
               (usluge    n(14,2) ,;    
                porez     n(14,2) ,;    
                pio       n(14,2) ,;    
                zdr       n(14,2) ,;
                neto      n(14,2) ,;
                Cneto     n(14,2) ,;                
                UMANJENJE n(14,2) ,;                                                
                PORUPL    n(14,2) ,;                                
                zusl      c(25)   ,;
                zporez    c(25)   ,;
                zpio      c(25),;
                zzdr      c(25),;
                mp        c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )   
   use
endif
if !file('lddunk.dbf')
*   wait windows ' dopirnosi po osnovu ugovorene naknade dun/k '   
   create table lddunk ;
               (grupa     n(4),;
                rbr       n(4)      ,;
                maticnibr c(13)     ,;
                ime_prez  c(30)     ,;
                kategor   c(15)     ,;
                sifosnov  c(2)     ,;
                osnovica  n(14,2)   ,;
                iznos     n(14,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldosnov.dbf')
   create table ldosnov;
               (sifosnov c(2),;
                osnov    c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldkateg.dbf')
   create table ldkateg;
               (kategor  c(15),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldsp01.dbf')
*   wait windows ' spisak za postu '   
   create table ldsp01 ;
               (ppolje    c(120)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldpotv.dbf')
   * wait windows ' potvrda radnicima '   
   create table ldpotv ;
               (mesec     n(2),;
                prikaz    c(1),;
                lin       c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldpotv2.dbf')
   * wait windows ' potvrda radnicima '   
   create table ldpotv2 ;
               (text1     c(50),;
                text2     c(50),;
                text3     c(50),;
                text4     c(50),;
                text5     c(50),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldm4pod.dbf')
*   wait windows ' evidencija radnika za pp ld opj '   
   create table ldm4pod;
               (k1        c(1),;
                godina    c(4),;
                mfrolna   c(4),;
                mfpozic   c(4),; 
                pib       c(9),;
                regbroj   c(10),;
                delatnost c(6),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldizvn.dbf')
*   wait windows ' evidencija radnika za pp ld opj '   
   create table ldizvn;
               (broj      n(4),;
                mesec     n(3),;
                meseci    n(12),;
                dana      n(12),;
                casmes    n(12),;
                casuk     n(12),;
                casbol    n(12),;
                brutom4   n(14,2),;
                pensoc    n(14,2),;
                bolm4     n(14,2),;
                penbol    n(14,2),;
                brutold   n(12,2),;
                brutobol  n(12,2),;
                bendop    n(14,2),;
                datum     d(8),;
                mtr       c(2),;
                nazmes    c(20),;
                bosnzames n(12,2),;
                bosnumes  n(12,2),;
                m4grad    c(02),;
                regsoc    c(10),;
                maticnibr c(13),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('ldosn.dbf')
   *----osnovice za obracun m4----------------
   create table ldosn;
               (sstepen   c(4),;
                m1        n(12,2),;
                m2        n(12,2),;
                m3        n(12,2),;
                m4        n(12,2),;
                m5        n(12,2),;
                m6        n(12,2),;
                m7        n(12,2),;
                m8        n(12,2),;
                m9        n(12,2),;
                m10       n(12,2),;
                m11       n(12,2),;
                m12       n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldm4dat.dbf')
   *----osnovice za obracun m4----------------
   create table ldm4dat;
               (mes       n(3),;
                dat       d(8),;
                cas       n(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldppp.dbf')
   create table ldppp ;
               (broj      n(4)      ,;
                sifraprih c(9) ,;                              
                ime_prez  c(30)     ,;
                maticnibr c(13)     ,;
                brutold   n(14,2)   ,;
                porez     n(14,2)   ,;
                dopsoc    n(14,2)   ,;
                pensoc    n(14,2)   ,;
                zdrsoc    n(14,2)   ,;
                nezsoc    n(14,2)   ,;
                adresa    c(40)     ,;
                naziv     c(30)     ,;
                fadresa   c(40)     ,;
                pib       c(9)      ,;
                oporezivo n(14,2)   ,;
                pordobit  n(14,2)   ,;
                stopadop  n(10,4)   ,;
                stopapio  n(10,4)   ,;
                stopazdr  n(10,4)   ,;
                stopanez  n(10,4)   ,;
                radnik    c(1)      ,;
                prezime    c(20),;
                ime        c(20),;
                mesec     n(2),;
                ukbrutold n(14,2)   ,;
                neto      n(14,2)  ,; 
                OBRAZAC   c(10),;     
                procpor   n(14,2)  ,;                               
                dopsocf   n(12,2)   ,;                                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('ldopnr.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldopnr ;
               (br        c(2)     ,;
                ime_prez  c(30)    ,;              
                maticnibr c(13)     ,;
                adresa    c(40)     ,;
                datnezap  d(8),;
                datugovor d(8),; 
                datpri    d(8),;
                datzasniv d(8),;
                porolaks  c(1),;
                sime_prez c(30),; 
                smaticni  c(13),;
                datgub    d(8),;
                razlog    c(40),;
                datuplpor d(80),;
                iznos     n(12,2),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldprosz.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldprosz ;
               (mesec     n(4)      ,;
                vazi      c(1),; 
                casuk     n(12,2)   ,;
                dinuk     n(12,2)   ,;
                dincas    n(12,2)   ,;
                casmes    n(12,2)   ,;
                dinefekt  n(12,2),;
                indeks    n(09,2),;
                radnika   n(06,0),; 
                putanja   c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
                ) 
   use
endif                   


if !file('lddd0.dbf')
*   wait windows ' evidencija samodopirnosa '   
   create table lddd0 ;
               (redni      n(06)   ,;
                mesec      c(2),;
                nazmes     c(12),;
                godina     c(04),;
                arhiva     c(1),;
                arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('lddd.dbf')
*   wait windows ' evidencija radnika '   
   create table lddd ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                grupa     n(4)      ,;
                casuk     n(9,1)    ,;
                casvr     n(9,1)    ,;
                efektbod  n(9,0)    ,;
                ostvarb   n(9,0)    ,;
                obuka     n(9,0)    ,;
                procbezz  n(9,2)    ,;
                procbezuk n(9,2) ,;
                zastoj    n(9,2)    ,;
                zastojuc  n(9,2)    ,;
                procsaz   n(9,2)    ,;
                stimin    n(09,2),; 
                stimgod   n(09,2),; 
                stim      n(09,2),; 
                destim    n(09,2),; 
                ukstim    n(09,2),; 
                dstimin   n(09,2),; 
                dstimgod  n(09,2),; 
                dstim     n(09,2),; 
                ddestim   n(09,2),; 
                dukstim   n(09,2),; 
                ostvarbs  n(9,0)    ,;
                ostvarbsu n(9,0)    ,;
                casgod    n(9,1)    ,;
                casbol    n(9,1)    ,;
                caspraz   n(9,1)    ,;
                casprod   n(9,1)    ,;
                casnoc    n(9,1)    ,;
                casned    n(9,1)    ,;
                casplac   n(9,1)    ,;
                casplac2  n(9,1)    ,;
                caspauza  n(9,1)    ,;
                cassve    n(9,1)    ,;
                mesec     n(2)    ,;
                isplata   n(1)    ,;
                vrsta     c(1)    ,;
                arhiva    c(01),;
                arhiva2   c(01),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldGOD0.dbf')
   create table ldgod0( ;
        BROJ        N(4), ;
        IME_PREZ    C(30), ;
        CASUK       N(14,2), ;
        DINUK       N(14,2), ;
        POSATU      N(14,2), ;
        preneto     c(1),;   
        idbr        n(11);  
       )
   USE
endif          

if !file('pronorma.dbf')
   *wait windows ' normativi'
   create table pronorma(;
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   psif      c(5)   ,;
   msif      c(5)   ,;
   pmsif     c(5)   ,;
   asif      c(5)   ,;
   ldsif     c(5)   ,;
   dirsif    c(5)   ,;
   opssif    c(5)   ,;
   kol       n(18,6),;
   cena      n(18,3),;
   iznos     n(18,3),;
   grupa     c(3)   ,;
   rcena     n(18,3),; 
   ssif      c(5),;
   msifnaz   c(30),;   
   jed       c(3),;
   opis      c(20),;
   nivo      c(2),;
   barkod    c(20),;
   nazkons   c(10),;
   proiz     c(1),;
   uds       c(1),;
   dzi       c(5),;
   tpp       c(5),;  
   rnal      c(12)   ,;
   kolr      n(18,6),;
   dat0      d(8),;                                          
   dat1      d(8),;
   dcena     n(18,3),; 
   diznos    n(18,3),;
   zadcena   n(18,3),; 
   zadiznos  n(18,3),;
   drcena    n(18,3),; 
   driznos   n(18,3),;
   zadrcena  n(18,3),; 
   zadriznos n(18,3),;
   pomopis   c(60),;
   koefic    n(18,6),;
   idrmesto  c(15),;
   idalat    c(15),;
   vremepr   n(12,4),;
   vremekom  n(12,4),;
   rmesto    c(06),;
   srrada    c(06),;
   tvkol     n(18,6),;
   tvcena    n(18,3),;
   tviznos   n(18,3),;
   nastanju  n(18,3),;
   potrebno  n(18,3),;   
   razlika   n(18,3),;
   pnastanju n(18,2),;
   ppotrebno n(18,2),;   
   prazlika  n(18,2),;
   proscena  n(18,3),; 
   prosvred  n(18,3),;
   ssif2     c(20),;
   msifnaz2  c(99),;   
   datdok    d(8),; 
   URADJENO  n(18,6),;     
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('pronrop.dbf')
   *wait windows ' normativi'
   create table pronrop(;
   opis      c(60)  ,;
   normativ  c(5)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif


if !file('pronormp.dbf')
   *wait windows ' normativi'
   create table pronormp(;
   normativ  c(5)   ,;
   psif      c(5)   ,;
   msif      c(5)   ,;
   pmsif     c(5)   ,;
   asif      c(5)   ,;
   ldsif     c(5)   ,;
   dirsif    c(5)   ,;
   opssif    c(5)   ,;
   kol       n(18,6),;
   cena      n(18,3),;
   iznos     n(18,3),;
   grupa     c(3)   ,;
   rcena     n(18,3),; 
   ssif      c(5),;
   msifnaz   c(30),;   
   jed       c(3),;
   opis      c(20),;
   nivo      c(2),;
   barkod    c(20),;
   nazkons   c(10),;
   proiz     c(1),;
   uds       c(1),;
   dzi       c(5),;
   tpp       c(5),;  
   rnal      c(12)   ,;
   kolr      n(18,6),;
   dat0      d(8),;                                          
   dat1      d(8),;
   dcena     n(18,3),; 
   diznos    n(18,3),;
   zadcena   n(18,3),; 
   zadiznos  n(18,3),;
   drcena    n(18,3),; 
   driznos   n(18,3),;
   zadrcena  n(18,3),; 
   zadriznos n(18,3),;
   pomopis   c(60),;
   koefic    n(18,6),;
   idrmesto  c(15),;
   idalat    c(15),;
   vremepr   n(12,4),;
   vremekom  n(12,4),;
   rmesto    c(06),;
   srrada    c(06),;
   arhiva    c(01),;
   arhiva2   c(01),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('pronropp.dbf')
   *wait windows ' normativi'
   create table pronropp(;
   opis      c(60)  ,;
   normativ  c(5)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif



if !file('propar.dbf')
   create table propar(;
   maggot    c(2),;
   fpgot     c(3),;
   maggotf   c(2),;
   fpgotf    c(3),;
   magpolu   c(2),;
   fppolu    c(3),;
   magmat    c(2),;
   fpmat     c(3),;
   magpmat   c(2),;
   fppmat    c(3),;
   magamb    c(2),;
   fpamb     c(3),;
   kgot      c(1),;
   kgotf     c(1),;
   kpolu     c(1),;
   kmat      c(1),;
   kpmat     c(1),;
   kamb      c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif



if !file('pronal.dbf')
   *wait windows ' normativi'
   create table pronal(;
   rnal      c(12)   ,;
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   psif      c(5)   ,;
   msif      c(5)   ,;
   pmsif     c(5)   ,;
   asif      c(5)   ,;
   ldsif     c(5)   ,;
   dirsif    c(5)   ,;
   opssif    c(5)   ,;
   kol       n(18,6),;
   cena      n(18,3),;
   iznos     n(18,3),;
   grupa     c(3)   ,;
   rcena     n(18,3),; 
   msifnaz   c(30)  ,;                    
   kolrob    n(18,3),;
   dat0      d(8),;                                          
   dat1      d(8),;
   jed       c(3),;
   opis      c(20),;
   ssif      c(5),;
   barkod    c(20),;
   pomopis   c(60),;
   arhiva    c(01),;
   arhiva2   c(01),;
   preneto   c(1),;   
   idbr      n(11);                    
   )              
   use
endif

if !file('pronalp.dbf')
   *wait windows ' normativi'
   create table pronalp(;
   rnal      c(12)   ,;
   normativ  c(5)   ,;
   psif      c(5)   ,;
   msif      c(5)   ,;
   pmsif     c(5)   ,;
   asif      c(5)   ,;
   ldsif     c(5)   ,;
   dirsif    c(5)   ,;
   opssif    c(5)   ,;
   kol       n(18,6),;
   cena      n(18,3),;
   iznos     n(18,3),;
   grupa     c(3)   ,;
   rcena     n(18,3),; 
   msifnaz   c(30)  ,;                    
   kolrob    n(18,3),;
   dat0      d(8),;                                          
   dat1      d(8),;
   jed       c(3),;
   opis      c(20),;
   ssif      c(5),;
   barkod    c(20),;
   pomopis   c(60),;
   arhiva    c(1),;
   arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif


if !file('pronaln.dbf')
   *wait windows ' normativi'
   create table pronaln(;
   rnal      c(12)   ,;
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   kol       n(18,6),;
   rcena     n(18,3),;
   dat0      d(8),;                                          
   dat1      d(8),;
   datzavr   d(8),;
   svenorma  n(18,2),;
   sveplan   n(18,2),;  
   razlika   n(18,2),;
   dok       c(03),;
   matdok    c(03),;
   faktura   c(1),;
   barkod    c(20),;
   dcena     n(18,3),; 
   diznos    n(18,3),;
   zadcena   n(18,3),; 
   zadiznos  n(18,3),;
   drcena    n(18,3),; 
   driznos   n(18,3),;
   zadrcena  n(18,3),; 
   zadriznos n(18,3),;
   pomopis   c(60),;
   tvkol     n(18,6),;
   tvcena    n(18,3),;
   tviznos   n(18,3),;     
   msifnaz   c(30),;     
   arhiva    c(1),;
   arhiva2   c(1),;
   URADJENO  n(18,6),;
   preneto   c(1),;   
   idbr      n(11);                    
   )
   use
endif

if !file('pronlop.dbf')
   *wait windows ' normativi'
   create table pronlop(;
   opis      c(60)  ,;
   rnal      c(12)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if !file('pronalnp.dbf')
   *wait windows ' normativi'
   create table pronalnp(;
   rnal      c(12)   ,;
   normativ  c(5)   ,;
   psif      c(5)   ,;
   kol       n(18,6),;
   rcena     n(18,3),;
   dat0      d(8),;                                          
   dat1      d(8),;
   svenorma  n(18,2),;
   sveplan   n(18,2),;  
   razlika   n(18,2),;
   dok       c(03),;
   faktura   c(1),;
   barkod    c(20),;
   pomopis   c(60),;
   arhiva    c(1),;
   arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if !file('pronlopp.dbf')
   *wait windows ' normativi'
   create table pronlopp(;
   opis      c(60)  ,;
   rnal      c(12)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if !file('pronora.dbf')
   *wait windows ' normativi'
   create table pronora(;
   rabat     n(6)   ,;
   prodcena  n(12,2),; 
   pldobit   n(12,2),;
   profit    n(8,2) ,;           
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   naz       c(30)  ,;
   cenak     n(12,2),;
   plcena    n(12,2),;
   dobit     n(12,2),;
   proizcena n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif



if !file('prorad.dbf')
   *wait windows ' normativi'
   create table prorad(;
   ldsif     c(5)   ,;
   naz       c(30)  ,;
   barkod    c(20),;
   jed       c(3)   ,;
   cena      n(18,3),;
   dcena     n(18,3),;
   koefic    n(18,6),;
   idrmesto  c(15),;
   idalat    c(15),;
   vremepr   n(12,4),;
   vremekom  n(12,4),;
   rmesto    c(06),;
   srrada    c(06),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif
if !file('proradop.dbf')
   *wait windows ' normativi'
   create table proradop(;
   opis      c(60)  ,;
   ldsif     c(5)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif
if !file('prodir.dbf')
   *wait windows ' normativi'
   create table prodir(;
   dirsif    c(5)   ,;
   naz       c(30)  ,;
   barkod    c(20),;
   jed       c(3)   ,;
   cena      n(18,3),;
   dcena     n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif
if !file('proops.dbf')
   *wait windows ' normativi'
   create table proops(;
   opssif    c(5)   ,;
   naz       c(30)  ,;
   barkod    c(20),;
   jed       c(3)   ,;
   cena      n(18,3),;
   dcena     n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif
if ! file('propar2.dbf')
   create table propar2(;
   rmalvel   c(1)   ,;
   rkal      c(1)   ,;
   rfak      c(1)  ,;
   rtre      c(1)  ,;
   robjek    n(2)  ,;
   rffak     c(3)  ,;
   rfkal     c(3)  ,;
   rsema     c(4)  ,;
   rnova     c(1)  ,;
   rzmat9    c(2)  ,;
   rzpmat9   c(2)  ,;
   rzamb9    c(2)  ,;
   rzmat     c(2)  ,;
   rzpmat    c(2)  ,;
   rzamb     c(2)  ,;
   rmdkon    c(10)  ,;
   rmpkon    c(10)  ,;
   rpmdkon   c(10)  ,;
   rpmpkon   c(10)  ,;
   radkon    c(10)  ,;
   rapkon    c(10)  ,;
   rmdkon9   c(10)  ,;
   rmpkon9   c(10)  ,;
   rpmdkon9  c(10)  ,;
   rpmpkon9  c(10)  ,;  
   radkon9   c(10)  ,;
   rapkon9   c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if ! file('prock.dbf')
   create table prock(;
   rsif      c(5)   ,;
   naz       c(30)   ,;
   kpnedkol  n(18,3),;
   kpnedproc n(18,3),;
   kpnedkol2 n(18,3),;
   kolpoc    n(18,3),;
   kolulaz   n(18,3),;
   kolizlaz  n(18,3),;
   kolstanje n(18,3),;
   kznedkol  n(18,3),;
   kznedproc n(18,3),;
   kznedkol2 n(18,3),;
   proizved  n(18,3),;
   vrpoc     n(18,3),;
   vrpocned  n(18,3),;
   vrulaz    n(18,3),;
   vrizlaz   n(18,3),;
   vrstanje  n(18,3),;
   planizlaz n(18,3),;
   prosizlaz n(18,3),;
   procpro   n(18,3),;
   trosve    n(18,3),;
   trosost   n(18,3),;
   trospro   n(18,3),;
   uktros    n(18,3),;
   cenakost  n(18,3),;
   zalihe    n(18,3),;
   kol       n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif   

if ! file('procktr.dbf')
   create table procktr(;
   trosve    n(18,3),;
   trosost   n(18,3),;
   trospro   n(18,3),;
   vriz      n(18,3),;
   brkal     c(06),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif   




if ! file('prock0.dbf')
   create table prock0(;
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   naz       c(30)   ,;
   psif      c(05)   ,;
   msif      c(05)   ,;
   pmsif     c(05)   ,;
   asif      c(05)   ,;
   kpolizlaz n(18,3),;
   prospolu  n(18,3),;
   planpolu  n(18,3),;
   kmatizlaz n(18,3),;
   prosmat   n(18,3),;
   planmat   n(18,3),;
   kpmaizlaz n(18,3),;
   prospma   n(18,3),;
   planpma   n(18,3),;
   kambizlaz n(18,3),;
   prosamb   n(18,3),;
   planamb   n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif   


if !file('proplan.dbf')
   create table proplan(;
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   kol       n(18,6),;
   rcena     n(18,3),;
   zadcena   n(18,3),; 
   zadiznos  n(18,3),;
   dcena     n(18,3),; 
   diznos    n(18,3),;
   rnal      c(12)   ,;
   dat0      d(8),;                                          
   dat1      d(8),;
   datzavr   d(8),;
   arhiva    c(1),;
   arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('pronalv.dbf')
   *wait windows ' normativi'
   create table pronalv(;
   rnal      c(12)   ,;
   datdok    d(8)   ,;
   broj      n(4)   ,;
   casefe    n(12,2),;
   casrez    n(12,2),;
   casuk     n(12,2),;
   startbod  n(18,6),;
   cenarada  n(12,4),;
   dinefe    n(12,2),;
   dinrez    n(12,2),;
   dinuk     n(12,2),;
   koefns    n(12,4),;
   brutons   n(12,4),;
   ime_prez  c(30) ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif


if !file('pronalvc.dbf')
   *wait windows ' normativi'
   create table pronalvc(;
   dat0      d(8)   ,;
   dat1      d(8)   ,;
   cenarada  n(12,4),;
   koefns    n(12,4),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif


if !file('pronalm.dbf')
   *wait windows ' normativi'
   create table pronalm(;
   rnal      c(12)   ,;
   datdok    d(8)   ,;
   broj      n(4)   ,;
   kol       n(12,2),;
   cena      n(12,2),;
   iznos     n(12,2),;
   naz       c(30),;
   arhiva    c(1),;
   arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if !file('pronalm0.dbf')
   *wait windows ' normativi'
   create table pronalm0(;
   broj      n(4)   ,;
   naz       c(30),;
   cena      n(12,2),;
   arhiva    c(1),;
   arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if !file('prozah.dbf')
   *wait windows ' normativi'
   create table prozah(;
   brkal     c(6)   ,;
   rnal      c(12)   ,;
   rsif      c(5),;
   kol       n(18,2),;
   velcena   n(18,2),;
   velvred   n(18,2),;
   tarifa    c(06),;
   procpor   n(09,2),;
   porez     n(18,2),;
   fakvred   n(18,2),;
   brrac     c(20),;
   sifra     c(5),;
   NAZIV     c(40),;
   datdok    d(8),;
   valuta    d(8),;
   datzah    d(8),;
   datugovor d(8),;
   datispor  d(8),;
   datponude d(8),; 
   fpsifrap  c(3),;
   datav1    d(8),;
   racav1    c(20),;   
   procav1   n(10,2),;
   osnav1    n(18,2),;
   porav1    n(18,2),;   
   dinav1    n(18,2),;
   datavupl1 d(8),;
   datav2    d(8),;
   racav2    c(20),;   
   procav2   n(10,2),;
   osnav2    n(18,2),;
   porav2    n(18,2),;   
   dinav2    n(18,2),;
   datavupl2 d(8),;
   datav3    d(8),;
   racav3    c(20),;   
   procav3   n(10,2),;
   osnav3    n(18,2),;
   porav3    n(18,2),;   
   dinav3    n(18,2),;
   datavupl3 d(8),;
   datav4    d(8),;
   racav4    c(20),;   
   procav4   n(10,2),;
   osnav4    n(18,2),;
   porav4    n(18,2),;   
   dinav4    n(18,2),;
   datavupl4 d(8),;
   datav5    d(8),;
   racav5    c(20),;   
   procav5   n(10,2),;
   osnav5    n(18,2),;
   porav5    n(18,2),;   
   dinav5    n(18,2),;
   datavupl5 d(8),;
   procav    n(10,2),;
   osnav     n(18,2),;
   porav     n(18,2),;
   dinav     n(18,2),;
   fpsifraa  c(3),;
   duzina    c(20),;
   tip       c(20),;
   boja      c(20),;
   garancija c(20),;
   opis1     c(60),;
   opis2     c(60),;
   opis3     c(60),;
   opis4     c(60),;
   opis5     c(60),;
   dat0      d(8),;                                          
   dat1      d(8),;
   rnalzavr  c(1),;
   datzavr   d(8),;
   normativ  c(5)   ,;
   brkalr    c(6),;
   fpsifra   c(3),;
   gardat    d(8),;    
   psif      c(5)   ,;
   msif      c(5)   ,;
   pmsif     c(5)   ,;
   asif      c(5)   ,;
   ldsif     c(5)   ,;
   dirsif    c(5)   ,;
   opssif    c(5)   ,;
   cena      n(18,3),;
   iznos     n(18,3),;
   grupa     c(3)   ,;
   rcena     n(18,3),; 
   msifnaz   c(30)  ,;                    
   kolrob    n(18,3),;
   jed       c(3),;
   opis      c(20),;
   ssif      c(5),;
   barkod    c(20),;
   pomopis   c(60),;
   datispor2 d(8),;
   prenos    c(1),;
   vpmp      c(1),;   
   arhiva    c(1),;
   arhiva2   c(1),;
   koli      n(18,2),;   
   preneto   c(1),;   
   idbr      n(11);                    
   )              
   use
endif


if ! file('procknal.dbf')
   create table procknal(;
   rnal      c(12)   ,;
   rsif      c(5)   ,;
   naz       c(30)   ,;
   pocKOL    n(18,3),;
   kol       n(18,3),;
   koli      n(18,3),;
   kolst     n(18,3),;
   dinpoc    n(18,2),;
   dinpolu   n(18,2),;
   dinmat    n(18,2),;
   dinamb    n(18,2),;
   casrad    n(18,2),;
   dinrad    n(18,2),;
   prockljuc n(14,4),;
   dinamort  n(18,2),;
   dindirtr  n(18,2),;
   dinopsti  n(18,2),;
   ukupnitr  n(18,2),;
   cenakost  n(18,2),;
   vredzal   n(18,2),;
   proizved  n(18,2),;
   prodato   n(18,2),;
   proczav   n(18,4),;
   konto     c(10),;
   datdok    d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif   


if ! file('procknr.dbf')
   create table procknr(;
   dinrad    n(18,2),;
   dinamort  n(18,2),;
   dindir    n(18,2),;
   dinopsti  n(18,2),;
   darad     c(1),;
   daamort   c(1),;
   dadir     c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif   


if !file('provmat.dbf')
   *wait windows ' normativi'
   create table provmat(;
   rnal      c(12)   ,;
   normativ  c(5)   ,;
   rsif      c(5)   ,;
   msif      c(5)   ,;
   kolnal    n(18,6),;
   kolnorma  n(18,6),;
   kolsve    n(18,6),;
   dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif


if !file('recsobe.dbf')
   create table recsobe  ;
               (recsif    c(3)      ,; 
                oznaka    c(5)     ,;                                
                sprat     c(2)      ,; 
                kreveta   c(2)      ,;
                grupa     c(4)      ,;
                napomena1 c(20)     ,;
                napomena2 c(20)     ,;
                napomena3 c(20)     ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('recrez.dbf')
   create table recrez ;
               (recsif    c(3)      ,;
                rsifra    c(5)      ,; 
                datum     d(8)      ,;                                
                RSIF      c(5)      ,;        
                vrsta     c(5)      ,; 
                dorucak   c(1)      ,;
                rucak     c(1)      ,;
                vecera    c(1)      ,;
                napomena1 c(20)     ,;
                napomena2 c(20)     ,;
                napomena3 c(20),;
                sifra     c(5)      ,; 
                koli      n(12,2)    ,;
                MALCENA   n(14,2)    ,;
                MALVRED   n(14,2)    ,;                
                naziv     c(40)      ,; 
                ime       c(30)    ,; 
                maticnib  c(13)    ,;             
                lkbroj    c(30)    ,;   
                posta     c(5)     ,;
                mesto     c(25)    ,;                
                drzava    c(25)    ,;
                ulica     c(25)    ,;
                zirorac   c(25)    ,;
                telefon   c(25)    ,;
                arhiva    c(1),;                    
                arhiva2   c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('recvrsta.dbf')
   create table recvrsta ;
               (vrsta     c(5)       ,;
                opis      c(40)      ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('reccene.dbf')
   create table reccene ;
               (RSIF      C(5)       ,;
                MALcena   n(12,2)    ,;
                NAZ       c(30)      ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('recan0.dbf')
 *  wait windows ' an0 sifarnik poslovnih partnera '   
   create table recan0 ;
               (rsifra    c(5)     ,;
                ime       c(30)    ,; 
                maticnib  c(13)    ,;             
                lkbroj    c(30)    ,;   
                posta     c(5)     ,;
                mesto     c(25)    ,;                
                drzava    c(25)    ,;
                ulica     c(25)    ,;
                zirorac   c(25)    ,;
                telefon   c(25)    ,;
                napomena  c(50)    ,;
                napomena2 c(50)    ,;
                napomena3 c(50)    ,;
                grupa1    c(3)     ,;
                grupa2    c(3)     ,;
                grupa3    c(3)     ,;                
                pib       c(9)     ,; 
                idbroj    c(20)    ,;
                sifra     c(5)     ,;
                naziv     c(40)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('recrez1.dbf')
   create table recrez1 ;
               (recsif    c(3)      ,;
                rsifra    c(5)      ,; 
                datumOD   d(8)      ,;                                
                datumDO   d(8)      ,;                                
                RSIF      c(5)      ,;        
                napomena1 c(20)     ,;
                napomena2 c(20)     ,;
                napomena3 c(20),;
                sifra     c(5)      ,; 
                VRSTA     c(5)      ,; 
                arhiva    c(1),;                    
                arhiva2   c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('st0.dbf')
   create table st0 ;
               (maticnibr c(13) ,;
                dosije    c(10),; 
                prezime   c(18)    ,;              
                ime       c(15)    ,;                
                roditelj  c(15)     ,;
                datrodj   d(8)    ,;
                mestorodj c(25)    ,;
                opstinaro c(25)    ,;
                republika c(20)    ,;
                drzava    c(20)    ,;
                adrmesto  c(25)    ,;
                adrulica  c(25)    ,;
                adrdrzava c(20)    ,;
                skolavrs  c(25)    ,;
                skolased  c(25)    ,;
                spremavrs c(25)    ,;
                spremastr c(25)    ,;
                godinapre c(10)    ,;
                resenje   c(40)    ,;
                datdipl   d(8)    ,;
                prosek    n(10,3)  ,;
                pohvale1  c(50)    ,;
                pohvale2  c(50)    ,;
                discip1   c(50)     ,;
                discip2   c(50)     ,;
                dipldel   c(10)     ,;                
                diplomad  d(8)      ,;                
                diplomai  d(8)      ,;
                napomena1 c(50)   ,;
                napomena2 c(50)   ,;
                napomena3 c(50)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('stpred.dbf')
   create table stpred ;
               (sifpred   c(3)     ,;
                predmet   c(60)     ,;
                godina    n(1)    ,;              
                sifprof   c(4),; 
                profesor  c(25)    ,;                
                vrsta     c(20)    ,;               
                semestar  n(5)    ,;
                sifsmer   c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )

   use
endif
if !file('stisp.dbf')
   create table stisp ;
               (redbrisp  n(8),;    
                datpolag  d(8) ,;
                sifpred   c(3) ,;              
                sifsmer   c(3),;                
                dosije    c(10),; 
                ocena     n(5),;
                sifprof   c(4),;
                prijpla   n(6),;
                polapla   n(6),;
                nisupla   n(6),;
                polopla   n(6),;
                prijnpla  n(6),;
                polanpla  n(6),;
                nisunpla  n(6),;
                polonpla  n(6),;
                svega     n(6),;
                odlozeno  c(10),;
                napomena  c(50),;
                preneto   c(1),;   
                idbr      n(11);                    
                )

   use
endif
if !file('stupis.dbf')
   create table stupis ;
               (maticnibr c(13)     ,;
                dosije    c(10),; 
                godina    n(4)      ,;
                sifsmer   c(03)     ,;
                datupis   d(8)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )

   use
endif
if !file('stsem.dbf')
   create table stsem ;
               (sifsem    c(3)     ,;
                semestar  n(2)     ,;
                godina    n(4)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )

   use
endif
if !file('stsmer.dbf')
   create table stsmer ;
               (sifsmer   c(3)     ,;
                smer      c(20)    ,;
                rang1     n(5)    ,;
                rang2     n(5)    ,;
                rang3     n(5)    ,;
                rangiran1 c(20)    ,;
                rangiran2 c(20)    ,;
                rangiran3 c(20)    ,;
                sifpred1  c(3)   ,;
                predmet1  c(25)  ,;
                sifpred2  c(3)   ,;
                predmet2  c(25)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )

   use
endif
if !file('stusem.dbf')
   create table stusem ;
               (dosije    c(10),; 
                sifsem    c(3)     ,;
                datum     d(8)    ,;              
                datovere  d(8)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )

   use
endif
if !file('stprof.dbf')
   create table stprof ;
               (sifprof   c(4)      ,;
                ime_prez  c(30)     ,;
                maticnibr c(13)     ,;
                mp        c(2)      ,;
                adresa    c(40)     ,;
                sifra     c(5)      ,;                                
                partija   c(20)     ,;                                
                kategor   c(15),; 
                sifosnov  c(2) ,; 
                osnov     c(20),;
                grupavirm c(2),;    
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('stpri.dbf')
   create table stpri;
               (maticnibr c(13) ,;
                prezime   c(18)    ,;              
                ime       c(15)    ,;                
                roditelj  c(15)     ,;
                datrodj   d(8)    ,;
                mestorodj c(25)    ,;
                opstinaro c(25)    ,;
                republika c(20)    ,;
                drzava    c(20)    ,;
                adrmesto  c(25)    ,;
                adrulica  c(25)    ,;
                adrdrzava c(20)    ,;
                skolavrs  c(25)    ,;
                skolased  c(25)    ,;
                spremavrs c(25)    ,;
                spremastr c(25)    ,;
                godinapre c(10)    ,;
                resenje   c(40)    ,;
                datpri    d(8)     ,;
                sifsmer   c(3)     ,;
                god1      n(10,2)  ,;
                god2      n(10,2)  ,;
                god3      n(10,2)  ,;
                god4      n(10,2)  ,;
                koef      n(9,2)   ,;
                prosek1   n(10,2)  ,;
                prijem1   n(10,2)  ,;
                prijem2   n(10,2)  ,;
                prosek2   n(10,2)  ,;
                prosek    n(10,2)  ,;
                mesto     n(6),;
                mesto2    n(6),;                
                rang1     n(6),; 
                rangiran  c(20),;
                napomena1 c(50)   ,;
                napomena2 c(50)   ,;
                napomena3 c(50)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('strang.dbf')
   create table strang;
               (rangiran  c(20) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('bp0.dbf')
   create table bp0(;
                sifra     c(5) ,;
                rezer     c(5) ,;
                roba      c(20) ,;
                agregat   c(10) ,;
                cena      n(12,2) ,;
                numrez    n(02) ,;                
                poc       n(12,0) ,;
                kraj      n(12,0) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if ! file("bpi.dbf")
   create table bpi(;
                redni     n(03,0),; 
                datdok    d(8),; 
                sifra     c(5) ,;
                pocetno   n(12,2) ,;
                brojac    n(12,2),;
                prenos    n(12,2),;
                izlaz     n(12,2),;
                cena      n(12,2) ,;
                iznos     n(12,2) ,;
                pocrez    n(12,2) ,;
                rezulaz   n(12,2),;
                rezizlaz  n(12,2) ,;
                rezstanje n(12,2) ,;
                rezer     c(5) ,;
                roba      c(20) ,;
                agregat   c(10) ,;
                numrez    n(02) ,;
                arhiva    c(1) ,;
                arhiva2   c(1) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if ! file("bpdin.dbf")
   create table bpdin(;
                redni     n(03,0),; 
                datdok    d(8),; 
                kredit    n(12,2),;
                licno     n(12,2),;
                cekovi    n(12,2),;
                gotovina  n(12,2),;
                svega     n(12,2),;
                arhiva    c(1) ,;
                arhiva2   c(1) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if ! file("tekst.dbf")
   create table tekst(sifra     n(4),;
                    tekst      c(90),;  
                preneto   c(1),;   
                idbr      n(11);                    
                   )
   use
endif

if ! file('asnalg.dbf')
   create table asnalg(;
                      brkal      c(6),;
                      sifravoz   c(5),;
                      napomena1  c(60),;
                      napomena2  c(60),;
                      napomena3  c(60),;
                      napomena4  c(60),;
                      napomena5  c(60),;
                      marka      c(30),;                      
                      tip        c(30),;                      
                      gorivo     c(15),;
                      vrstamot   c(30),;
                      model      c(30),;
                      regbr      c(14),;
                      god        c(4),;
                      sasija     c(20),;
                      motor      c(20),;
                      kilometar  c(9),;
                      kupljeno   c(2),;
                      ugaranciji c(2),;           
                      sifra      c(5),;
                      datdok     d(8),;
                      rokzav     d(8),;
                      datzav     d(8),;
                      opprvapom  c(1) ,;
                      opsajla    c(1) ,;
                      opdizalica c(1) ,;
                      optrokut   c(1) ,;
                      opsijalice c(1) ,;
                      opponovo   c(1) ,;
                      opost1     c(1) ,;
                      opost2     c(1) ,;
                      opost3     c(1) ,;
                      opost4     c(1) ,;    
                      opgorivo   c(6) ,;                                                                                                                                                                                                                            
                      opgarknjiz c(20) ,;                                                                                                                                                                                                                            
                      arhiva     c(1) ,;
                      arhiva2    c(1) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif

if ! file('asvozila.dbf')
   create table asvozila(;
                      sifravoz   c(5),;
                      marka      c(30),;                      
                      tip        c(30),;                      
                      gorivo     c(15),;
                      vrstamot   c(30),;
                      model      c(30),;
                      regbr      c(14),;
                      god        c(4),;
                      sasija     c(20),;
                      motor      c(20),;
                      kilometar  c(9),;
                      kupljeno   c(2),;
                      ugaranciji c(2),;                      
                      sifra      c(5),;
                      datdok     d(8),;
                      arhiva    c(1) ,;
                      arhiva2   c(1) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif

if ! file('asneisp.dbf')
   create table asneisp(;
                      sifneisp    c(5),;
                      opisneisp   c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif

if ! file('asnal.dbf')
   create table asnal(;
                      brkal      c(6),;
                      rsif       c(5),;
                      naz        c(30),;
                      sifneisp   c(5),;
                      opisneisp  c(30),;                      
                      nateret    c(2),;                      
                      izvodjac   c(2),;
                      kol        n(14,2),;
                      cena       n(14,2),;                      
                      iznos      n(14,2),;                                            
                      procuvec   n(09,2),;                                            
                      uvecanje   n(14,2),;                                                                  
                      procumanj  n(09,2),;                                            
                      umanjenje  n(14,2),;                                                                  
                      svega      n(14,2),;                                                                                        
                      tarifa     c(6),;                                                                                        
                      procpor    n(09,2),;                                            
                      porez      n(09,2),;                                            
                      malvred    n(14,2),;                                            
                      malcena    n(14,2),;                                                                  
                      datdok     d(8),;
                      barkod     c(20),; 
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif

if ! file('deklarac.dbf')
   create table deklarac(;
                katbroj   c(12),;                     
                godiste   c(04),;
                uvoznik   c(20),;
                zproizv   c(20),;
                proizv    c(20),;
                pakuje    c(20),;
                zemljauv  c(20),;                      
                rok       d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('planme.dbf')
   create table planme;
             (konto     c(10)    ,;                   
              grupa     c(3)    ,; 
              dugpot    c(1),;  
              godplan   n(18,2),;
              m01n      n(18,2) ,;    
              m02n      n(18,2) ,;    
              m03n      n(18,2) ,;    
              m04n      n(18,2) ,;    
              m05n      n(18,2) ,;    
              m06n      n(18,2) ,;    
              m07n      n(18,2) ,;    
              m08n      n(18,2) ,;    
              m09n      n(18,2) ,;    
              m10n      n(18,2) ,;    
              m11n      n(18,2) ,;    
              m12n      n(18,2) ,;    
              godn      n(18,2) ,;    
              m01s      n(18,2) ,;    
              m02s      n(18,2) ,;    
              m03s      n(18,2) ,;    
              m04s      n(18,2) ,;    
              m05s      n(18,2) ,;    
              m06s      n(18,2) ,;    
              m07s      n(18,2) ,;    
              m08s      n(18,2) ,;    
              m09s      n(18,2) ,;    
              m10s      n(18,2) ,;    
              m11s      n(18,2) ,;    
              m12s      n(18,2) ,;    
              gods      n(18,2) ,;    
              dat0      d(8),;
              dat1      d(8),;
              naziv     c(40),;
              gnaz      c(40),; 
              mp        c(2)    ,;                                               
              mtr       n(5)    ,;              
              dok       c(3)    ,;                            
              dev       c(3)    ,;                            
              devkurs   n(18,6) ,;                            
              kurs      n(18,6) ,;                                                        
              kontos    c(10)    ,;                   
              trendproc n(09,3),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('plandat.dbf')
   create table plandat ;
             (dat0      d(8),;
              dat1      d(8),;
              putanja   c(60),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('nalpldat.dbf')
   create table nalpldat ;
             (dat0      d(8),;
              dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('plangru.dbf')
   create table plangru;
             (konto     c(10),; 
              grupa     c(3)    ,; 
              dugpot    c(1),;  
              gnaz      c(40),; 
              godplan   n(12,0),; 
              planirano n(12,0),;
              ostvareno n(12,0),;
              procgod   n(08,2),; 
              procplan  n(08,2),;
              procper   n(08,2),;
              ostvarpre n(12,0),;
              procpre   n(08,2),;
              mesecpre  n(12,0),;
              mesecsad  n(12,0),;
              mesproc   n(08,2),;
              mesecstar n(12,0),;
              procstar  n(08,2),;
              strugod   n(08,2),;
              struost   n(08,2),;
              strupre   n(08,2),;
              trendproc n(09,3),;
              korigplan n(12,0),;
              strukor   n(08,2),;
              linplan   n(12,0),;              
              prockor   n(08,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use    
endif

if !file('plangru0.dbf')
   create table plangru0;
             (konto     c(10),; 
              grupa     c(3)    ,; 
              dugpot    c(1),;  
              gnaz      c(40),; 
              godplan   n(12,0),; 
              ostvarpre n(12,0),;               
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use    
endif



if !file('nalplobr.dbf')
   create table nalplobr;
             (k2        c(2)    ,; 
              dugpot    c(1),;  
              gnaz      c(45),; 
              dug       n(12,0),; 
              pot       n(12,0),;
              saldo     n(12,0),;
              dat0      d(8),;
              dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use    
endif




if !file('planodlp.dbf')
   create table planodlp;
             (konto     c(10)    ,;                   
              dug       n(18,2),;
              pot       n(18,2),;
              saldo     n(18,2),;
              autounos  c(1),;
              datdok    d(8),;
              valuta    d(8),;
              analsint  c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use
endif              
             

if !file('robfre.dbf')
   create table robfre;
             (rsif      c(5),;
              naz       c(30),;
              persve    n(14,0)    ,;                   
              per01     n(14,0)    ,;                   
              per02     n(14,0)    ,;                   
              per03     n(14,0)    ,;                   
              per04     n(14,0)    ,;                   
              per05     n(14,0)    ,;                   
              per06     n(14,0)    ,;                   
              per07     n(14,0)    ,;                   
              per08     n(14,0)    ,;                   
              per09     n(14,0)    ,;                   
              per10     n(14,0)    ,;                   
              per11     n(14,0)    ,;                   
              per12     n(14,0)    ,;                  
              fresve    n(12,0)    ,;                  
              fre01     n(12,0)    ,;                  
              fre02     n(12,0)    ,;                  
              fre03     n(12,0)    ,;                  
              fre04     n(12,0)    ,;                  
              fre05     n(12,0)    ,;                  
              fre06     n(12,0)    ,;                  
              fre07     n(12,0)    ,;                  
              fre08     n(12,0)    ,;                  
              fre09     n(12,0)    ,;                  
              fre10     n(12,0)    ,;                  
              fre11     n(12,0)    ,;                  
              fre12     n(12,0)    ,; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use
endif              

if !file('nalgru.dbf')
   create table nalgru;
             (konto     c(10),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use
endif              

if ! file("kasaput.dbf")
   create table kasaput(;
                putanja      c(70),;
                rezervac     c(1),;
                diskont      c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("snimiput.dbf")
   create table snimiput(;
                putanja      c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("novaput.dbf")
   create table novaput(;
    putanja      c(70),;
    podaci       c(1),;
    manalit      c(1),;
    msifar       c(1),;
    msifrob      c(1),;
    gradovi     c(1),;
    stovar      c(1),;
    radnje      c(1),;
    kplan       c(1),;
    ld          c(1),;
    ossr        c(1),;
    sgk         c(1),;
    san         c(1),;
    svel         c(1),;
    smal         c(1),;
    normativ     c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if ! file("kabkon.dbf")
   create table kabkon(;
    redni      n(06),;
    sifra      c(05),;
    datdok     d(08),;
    vreme      c(08),;
    vrsta      c(03),;
    ime        c(30),;
    telefon    c(25),;
    ponuda     c(1),;
    brpon      c(6),;
    profaktura c(1),;
    brpro      c(6),;
    radninal   c(1),;
    brrad      c(6),;
    racun      c(1),;
    brfak      c(6),;
    napomena1  c(50),;
    napomena2  c(50),;
    napomena3  c(50),;
    napomena4  c(50),;
    napomena5  c(50),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if ! file("kabvrsta.dbf")
   create table kabvrsta(;
    vrsta      c(03),;
    nazvrsta   c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("kabdob0.dbf")
   create table kabdob0(;
    dobsif     c(15),;
    dobnum     n(03),;
    duzina     n(9,2),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if ! file("kabdob.dbf")
   create table kabdob;
   (brkal      c(6),;
    brdok      c(20),;
    vrpos      c(3),; 
    datdok     d(8),;
    dobsif     c(15),;
    rsif       c(5),;
    kol        n(12,2),;
    koli       n(12,2),;
    kolst      n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("kabvrpos.dbf")
   create table kabvrpos;
   (vrpos      c(3),; 
    vrnaz   c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("anpar.dbf")
   create table anpar;
   (knjan     c(1),;
    vrnal     c(3),;
    konto     c(10),;
    kplans    c(1),;
    kondopu   c(1),;   
    ktkr      c(1),;   
    kanautoz  c(1),;   
    knacin    c(1),;       
    preneto   c(1),;   
    idbr      n(11);                    
    )
   use
endif


if !file('analb.dbf')
 *  wait windows ' anal evidencija analitike '
   create table analb (;
                     sifra     c(5),;
                     uplata    n(18,2),;
                     dev       c(3  ),;
                     devkurs   n(18,4),;
                     duplata   n(18,2),;
                     grupa     c(3  ),;
                     mp        c(2)  ,;                                               
                     mtr       n(5)  ,;
                     opis      c(20) ,;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;              
                     brnal     c(6),;
                     dok       c(3),;
                     zatvar    c(1  ),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     devdug    n(18,2),;
                     devpot    n(18,2),;
                     konto     c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('nalpril.dbf')
 *  wait windows ' anal evidencija analitike '
   create table nalpril(;
                     konto     c(10),;
                     sifra     c(5),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     dugpre    n(18,2),;
                     potpre    n(18,2),;
                     naziv     c(30),;
                     brrac     c(20),;
                     pauto     c(1),;
                     opis      c(30),;
                     dat0      d(8),;
                     dat1      d(8),;
                     k1        c(1),; 
                     k2        c(2),; 
                     k3        c(3),; 
                     grupa     c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('nalpril0.dbf')
 *  wait windows ' anal evidencija analitike '
   create table nalpril0(;
                     konto     c(10),;
                     dp        c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('robnar.dbf')
  * wait windows ' roba '
   create table robnar;
               (rsif      c(5)   ,;
                naz       c(30),;
                ulaz      n(18,3),;
                izlaz     n(18,3),;
                stanje    n(18,3),;
                proizv    c(5),;
                naruciti  n(18,3),;
                minimum   n(18,3),;
                optimum   n(18,3),;
                maximum   n(18,3),;
                velcena   n(14,5),;
                malcena   n(14,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                jed       c(10),;
                barkod    c(20),;
                zadnab    n(14,5),;
                zadnabm   n(14,5),;
                sifra     c(5)     ,;
                naziv     c(40)    ,;              
                posta     c(5)     ,;
                mesto     c(35)    ,;    
                ulica     c(35)    ,;
                ulbroj    c(10)    ,;
                datdok    d(8),;
                podnaziv  c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('tmkom.dbf')
  * wait windows ' fakg  '
   create table tmkom;
               (rsif      c(5),;        
                koli      n(18,3),;
                datdok    d(8),;
                naz       c(30),;
                malcena   n(18,2),;
                malvred   n(18,2),;
                brkal     c(6),;
                sifra     c(5),;
                naziv     c(30),; 
                brfak     c(6),;
                fvrsta    c(3),;
                brnal     c(6),;
                brrac     c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif




if !file('ppdg1.dbf')
   create table ppdg1;
     (kod       c(6),;
      maticnibr c(13),;
      ime       c(30),;
      opstina   c(25),;
      mesto     c(25),;
      ulica     c(25),;
      kucbr     c(3),;
      kucbrs    c(1),;
      sprat     c(2),;
      brstana   c(3),;
      brstanas  c(1),;
      telefon   c(10),;
      pib       c(9),;
      matbroj   c(8),;
      fime      c(40),;
      fime2     c(40),;
      fopst     c(25),;
      fmes      c(25),;
      ful       c(25),;
      fulbr     c(3),;
      fulbr2    c(1),;
      fsprat    c(2),;
      fbrstana  c(3),;
      fbrstanas c(1),;
      ftel      c(10),;
      ffax      c(10),;
      femail    c(40),;
      fsif      c(5),;
      fnazd     c(40),;
      fdatupis  d(8),;
      fdatpdv   d(8),;
      fjmbg     c(13),;       
      fbmes1    c(25),;
      fbnaz1    c(25),;
      fbziro1   c(25),;
      fbmes2    c(25),;
      fbnaz2    c(25),;
      fbziro2   c(25),;
      fbmes3    c(25),;
      fbnaz3    c(25),;
      fbziro3   c(25),;
      fbmes4    c(25),;
      fbnaz4    c(25),;
      fbziro4   c(25),;
      fbmes5    c(25),;
      fbnaz5    c(25),;
      fbziro5   c(25),;
      fbmes6    c(25),;
      fbnaz6    c(25),;
      fbziro6   c(25),;
      fizdv1    c(25),;
      fizul1    c(25),;
      fizdat1   d(8 ),;
      fizdv2    c(25),;
      fizul2    c(25),;
      fizdat2   d(8 ),;
      fizdv3    c(25),;
      fizul3    c(25),;
      fizdat3   d(8),;
      fizdv4    c(25),;
      fizul4    c(25),;
      fizdat4   d(8),;
      fizdv5    c(25),;
      fizul5    c(25),;
      fizdat5   d(8),;
      promet    n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
      use
   endif

if !file('ppdg1a.dbf')
   create table ppdg1a;
  (akod       c(2),;
   bkod       c(4),;
   ckod       c(6),;
   opis       c(40),;
   iznos      n(12),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('ppdg1b.dbf')
   create table ppdg1b;
  (bkod       c(6),;
   opis       c(80),;
   iznos      n(12,0),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif
if !file('ppdg1c.dbf')
   create table ppdg1c;
  (akod       c(2),;
   bkod       c(4),;
   ckod       c(6),;
   opis       c(50),;
   iznos      n(12,0),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
endif
if !file('ppdg2.dbf')
   create table ppdg2;
  (kod        c(6 ),;
   maticnibr  c(13),;
   ime        c(30),;
   opstina    c(25),;
   mesto      c(25),;
   ulica      c(25),;
   kucbr      c(3 ),;
   kucbrs     c(1 ),;
   sprat      c(2 ),;
   brstana    c(3 ),;
   brstanas   c(1 ),;
   telefon    c(10),;
   vrstanep   c(20),;
   fopst      c(25),;
   fmes       c(25),;
   ful        c(25),;
   fulbr      c(3 ),;
   fulbr2     c(1 ),;
   fsprat     c(2 ),;
   fbrstana   c(3 ),;
   fbrstanas  c(1 ),;
   povrs      c(10),;
   povrs2     c(10),;
   osnov      c(15),;
   ugovor     c(15),;
   period     c(15),;
   jmbg       c(13),;
   ime2       c(30),;
   pib        c(13),;
   firma      c(30),;
   zakup      n(12),;
   obaveze    n(12),;
   bruto      n(12),;
   ntros1     c(30),;
   tros1      n(12),;
   ntros2     c(30),;
   tros2      n(12),;
   ntros3     c(30),;
   tros3      n(12),;
   ntros4     c(30),;
   tros4      n(12),;
   ntros5     c(30),;
   tros5      n(12),;
   ukuptros   n(12),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif
if !file('ppdg3.dbf')
   create table ppdg3;
  (kod        c(6 ),;
   maticnibr  c(13),;
   ime        c(30),;
   opstina    c(25),;
   mesto      c(25),;
   ulica      c(25),;
   kucbr      c(3 ),;
   kucbrs     c(1 ),;
   sprat      c(2 ),;
   brstana    c(3 ),;
   brstanas   c(1 ),;
   telefon    c(10),;
   pib        c(13),;
   firma      c(30),;
   prodcena   n(12),;
   datprod    d(8 ),;
   nabcena    n(12),;
   datstic    d(8 ),;
   amort      n(12),;
   dinstan    n(12),;
   datstan    d(8 ),;
   dinstan2   n(12),;
   datstan2   d(8 ),;
   prodgrad   n(12),;
   datpgrad   d(8 ),;
   nabgrad    n(12),;
   datngrad   d(8 ),;
   prodinte   n(12),;
   datpinte   d(8 ),;
   nabinte    n(12),;
   datninte   d(8 ),;
   produdel   n(12),;
   datpudel   d(8 ),;
   nabudel    n(12),;
   datnudel   d(8 ),;
   kapitgub   n(12),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
endif
if !file('ppdg4.dbf')
   create table ppdg4;
  (kod        c(6),;
   maticnibr  c(13),;
   ime        c(30),;
   opstina    c(25),;
   mesto      c(25),;
   ulica      c(25),;
   kucbr      c(3 ),;
   kucbrs     c(1 ),;
   sprat      c(2 ),;
   brstana    c(3 ),;
   brstanas   c(1 ),;
   telefon    c(10),;
   vrstapok   c(20),;
   osnov      c(15),;
   ugovor     c(15),;
   period     c(15),;
   jmbg       c(13),;
   ime2       c(30),;
   pib        c(13),;
   firma      c(30),;
   vrsta1     c(30),;
   iznos1     n(12),;
   vrsta2     c(30),;
   iznos2     n(12),;
   vrsta3     c(30),;
   iznos3     n(12),;
   vrsta4     c(30),;
   iznos4     n(12),;
   vrsta5     c(30),;
   iznos5     n(12),;
   zakup      n(12),;
   obaveze    n(12),;
   bruto      n(12),;
   drugipr    n(12),;
   ntros1     c(30),;
   tros1      n(12),;
   ntros2     c(30),;
   tros2      n(12),;
   ntros3     c(30),;
   tros3      n(12),;
   ntros4     c(30),;
   tros4      n(12),;
   ntros5     c(30),;
   tros5      n(12),;
   ukuptros   n(12),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
endif
if !file('ppdg5.dbf')
   create table ppdg5;
  (kod        c(6 ),;
   maticnibr  c(13),;
   ime        c(30),;
   opstina    c(25),;
   mesto      c(25),;
   ulica      c(25),;
   kucbr      c(3 ),;
   kucbrs     c(1 ),;
   sprat      c(2 ),;
   brstana    c(3 ),;
   brstanas   c(1 ),;
   telefon    c(10),;
   zanimanje  c(25),;
   cime1      c(30),;
   srod1      c(20),;
   mbrod1     c(13),;
   cime2      c(30),;
   srod2      c(20),;
   mbrod2     c(13),;
   cime3      c(30),;
   srod3      c(20),;
   mbrod3     c(13),;
   cime4      c(30),;
   srod4      c(20),;
   mbrod4     c(13),;
   cime5      c(30),;
   srod5      c(20),;
   mbrod5     c(13),;
   a001       n(12,0),;
   a002       n(12,0),;
   a003       n(12,0),;
   a004       n(12,0),;
   a005       n(12,0),;
   a006       n(12,0),;
   a007       n(12,0),;
   a008       n(12,0),;
   a009       n(12,0),;
   a010       n(12,0),;
   a011       n(12,0),;
   a012       n(12,0),;
   a013       n(12,0),;
   a014       n(12,0),;
   a015       n(12,0),;
   a016       n(12,0),;
   a017       n(12,0),;
   a018       n(12,0),;
   a019       n(12,0),;
   a020       n(12,0),;
   a021       n(12,0),;
   a022       n(12,0),;
   a023       n(12,0),;
   a024       n(12,0),;
   a025       n(12,0),;
   a026       n(12,0),;
   a027       n(12,0),;
   a028       n(12,0),;
   a029       n(12,0),;
   a030       n(12,0),;
   a031       n(12,0),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('ppdg2R.dbf')
   create table ppdg2R;
  (kod        c(6 ),;
   maticnibr  c(13),;
   ime        c(30),;
   opstina    c(25),;
   mesto      c(25),;
   ulica      c(25),;
   kucbr      c(3 ),;
   kucbrs     c(1 ),;
   sprat      c(2 ),;
   brstana    c(3 ),;
   brstanas   c(1 ),;
   telefon    c(10),;
   email      c(30),;   
   zanimanje  c(25),;
   cime1      c(30),;
   srod1      c(20),;
   mbrod1     c(13),;
   cime2      c(30),;
   srod2      c(20),;
   mbrod2     c(13),;
   cime3      c(30),;
   srod3      c(20),;
   mbrod3     c(13),;
   cime4      c(30),;
   srod4      c(20),;
   mbrod4     c(13),;
   cime5      c(30),;
   srod5      c(20),;
   mbrod5     c(13),;
   a001       n(12,0),;
   a002       n(12,0),;
   a003       n(12,0),;
   a004       n(12,0),;
   a005       n(12,0),;
   a006       n(12,0),;
   a007       n(12,0),;
   a008       n(12,0),;
   a009       n(12,0),;
   a010       n(12,0),;
   a011       n(12,0),;
   a012       n(12,0),;
   a013       n(12,0),;
   a014       n(12,0),;
   a015       n(12,0),;
   a016       n(12,0),;
   a017       n(12,0),;
   a018       n(12,0),;
   a019       n(12,0),;
   a020       n(12,0),;
   a021       n(12,0),;
   a022       n(12,0),;
   a023       n(12,0),;
   a024       n(12,0),;
   a025       n(12,0),;
   a026       n(12,0),;
   a027       n(12,0),;
   a028       n(12,0),;
   a029       n(12,0),;
   a030       n(12,0),;
   a031       n(12,0),;
   a032       n(12,0),;
   a033       n(12,0),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif




if !file('eppdv.dbf')
   create table eppdv;
  (kod        c(6 ),;
   pib        c(9 ),;
   maticnibr  c(13),;
   firmamat   c(8 ),;
   fime       c(40),;
   fime2      c(60),;
   ime        c(30),;
   fopst      c(25),;
   fmes       c(25),;
   ful        c(25),;
   fulbr      c(3 ),;
   fulbr2     c(1 ),;
   fsprat     c(2 ),;
   fbrstana   c(3 ),;
   fbrstanas  c(1 ),;
   ftel       c(20),;
   ffax       c(20),;
   femail     c(50),;
   fsif       c(5 ),;
   fnazd      c(30),;
   fproc      c(3 ),;
   fsif2      c(5 ),;
   fnazd2     c(20),;
   fproc2     c(3 ),;
   fsif3      c(5 ),;
   fnazd3     c(20),;
   fproc3     c(3 ),;
   datpoc     d(8 ),;
   prometpre  c(12),;
   prometpos  c(12),;
   fbmes1     c(25),;
   fbnaz1     c(25),;
   fbziro1    c(25),;
   povpibf1   c(09),;
   povstr1    c(01),;
   povproc1   c(03),;
   povpibf2   c(09),;
   povstr2    c(01),;
   povproc2   c(03),;
   povpibf3   c(09),;
   povstr3    c(01),;
   povproc3   c(03),;
   povpibf4   c(09),;
   povstr4    c(01),;
   povproc4   c(03),;
   povpibf5   c(09),;
   povstr5    c(01),;
   povproc5   c(03),;
   pofmb1     c(13),;
   pofnemam1  c(01),;
   pofproc1   c(03),;
   pofmb2     c(13),;
   pofnemam2  c(01),;
   pofproc2   c(03),;
   pofmb3     c(13),;
   pofnemam3  c(01),;
   pofproc3   c(03),;
   pofmb4     c(13),;
   pofnemam4  c(01),;
   pofproc4   c(03),;
   pofmb5     c(13),;
   pofnemam5  c(01),;
   pofproc5   c(03),;
   pibsavet   c(09),;
   mbrsavet   c(13),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
endif

if !file('obrerp.dbf')
   create table obrerp;
  (kod        c(6 ),;
   pib        c(9 ),;
   maticnibr  c(13),;
   firmamat   c(8 ),;
   fime       c(40),;
   fime2      c(60),;
   ime        c(30),;
   fopst      c(25),;
   fmes       c(25),;
   ful        c(25),;
   fulbr      c(3 ),;
   fulbr2     c(1 ),;
   fsprat     c(2 ),;
   fbrstana   c(3 ),;
   fbrstanas  c(1 ),;
   ftel       c(20),;
   ffax       c(20),;
   femail     c(50),;
   fsif       c(5 ),;
   fnazd      c(30),;
   fproc      c(3 ),;
   fsif2      c(5 ),;
   fnazd2     c(20),;
   fproc2     c(3 ),;
   fsif3      c(5 ),;
   fnazd3     c(20),;
   fproc3     c(3 ),;
   datpoc     d(8 ),;
   prometpre  c(12),;
   prometpos  c(12),;
   fbmes1     c(25),;
   fbnaz1     c(25),;
   fbziro1    c(25),;
   povpibf1   c(09),;
   povstr1    c(01),;
   povproc1   c(03),;
   povpibf2   c(09),;
   povstr2    c(01),;
   povproc2   c(03),;
   povpibf3   c(09),;
   povstr3    c(01),;
   povproc3   c(03),;
   povpibf4   c(09),;
   povstr4    c(01),;
   povproc4   c(03),;
   povpibf5   c(09),;
   povstr5    c(01),;
   povproc5   c(03),;
   pofmb1     c(13),;
   pofnemam1  c(01),;
   pofproc1   c(03),;
   pofmb2     c(13),;
   pofnemam2  c(01),;
   pofproc2   c(03),;
   pofmb3     c(13),;
   pofnemam3  c(01),;
   pofproc3   c(03),;
   pofmb4     c(13),;
   pofnemam4  c(01),;
   pofproc4   c(03),;
   pofmb5     c(13),;
   pofnemam5  c(01),;
   pofproc5   c(03),;
   pibsavet   c(09),;
   mbrsavet   c(13),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
endif


if !file('tmput.dbf')
   create table tmput ;
              (putanja   c(70),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif




if !file('trgan.dbf')
   create table trgan;
               (opis      c(10)  ,;
                iznos     n(18,2),;
                velvred   n(18,2),;
                nvelvred  n(18,2),;
                fvelvred  n(18,2),;
                marza     n(18,2),;
                nmarza    n(18,2),;
                fmarza    n(18,2),;
                rabat     n(18,2),;
                frabat    n(18,2),;
                zavisni   n(18,2),;
                zavisnin  n(18,2),;
                zavisnic  n(18,2),;
                zavisc2   n(18,2),;
                trdob     n(18,2),;
                trdobn    n(18,2),;
                zaokruz   n(18,2),;
                nabvred   n(18,2),;
                fnabvred  n(18,2),;
                porez     n(18,2),;
                nporez    n(18,2),;
                fporez    n(18,2),;
                malvred   n(18,2),;
                nmalvred  n(18,2),;
                fmalvred  n(18,2),;
                poljdin   n(18,2),;
                cardin    n(18,2),;
                akcvred   n(18,2),;
                fakcvred  n(18,2),;
                placpor   n(18,2),;
                placporz  n(18,2),;
                placporu  n(18,2),;
                placporc  n(18,2),;
                placpord  n(18,2),;
                datpoc    d(8),;
                datkraj   d(8),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;
                podrsif   c(5),;
                proizv    c(5),;
                magacin   n(02,0),;
                tarifa    c(6),;
                interna   c(1),;
                prenos    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('trgsla.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table trgsla ;
             (brnal     c(6)    ,;  
              datdok    d(8),;         
              opis      c(5),;                               
              konto     c(10),; 
              gkdug     n(18,2) ,;                                                        
              gkpot     n(18,2) ,;                                                        
              vpdug     n(18,2) ,;                                                        
              vppot     n(18,2) ,;                                                        
              andug     n(18,2) ,;                                                        
              anpot     n(18,2) ,;                                                        
              tmdug     n(18,2) ,;                                                        
              tmpot     n(18,2) ,;                                                        
              pdvdug    n(18,2) ,;                                                        
              pdvpot    n(18,2) ,;                                                        
              an0dug    n(18,2) ,;                                                        
              an0pot    n(18,2) ,;                                                        
              tm0dug    n(18,2) ,;                                                        
              tm0pot    n(18,2) ,;                                                        
              pdv0dug   n(18,2) ,;                                                        
              pdv0pot   n(18,2) ,;  
              datpri    d(8),;
              datpdv    d(8),;
              datprv    d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif



if !file('vozila.dbf')
   create table vozila ;
               (vsifra    c(4)     ,;
                regbroj   c(12)    ,;
                naziv     c(30)    ,;              
                nosivost  n(12,2),; 
                god       c(4),;
                mtr       n(5),;    
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('vozaci.dbf')
   create table vozaci ;
               (ssifra    c(4)     ,;
                naziv     c(30)    ,;              
                broj      n(4)     ,;
                ime_prez  c(30)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('voztr0.dbf')
   create table voztr0 ;
               (msifra    c(4)     ,;
                naziv     c(30)    ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('voznal.dbf')
   create table voznal ;
               (nsifra    c(4)     ,;
                datdok    d(8)     ,;    
                sifra     c(4)     ,;
                tura      c(50)    ,;
                trosak    n(12,2)  ,;
                prihod    n(12,2)  ,;
                razlika   n(12,2)  ,;
                napomena  c(60)    ,;
                datvrac   d(8)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('voztros.dbf')
   create table voztros ;
               (msifra    c(4)     ,;
                datdok    d(8)     ,; 
                kolicina  n(12,3)  ,;
                cena      n(12,3)  ,; 
                iznos     n(12,2)  ,;
                vsifra    c(4)     ,;
                ssifra    c(4)     ,; 
                nsifra    c(4)     ,;              
                kilomet   n(12)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('vozgor.dbf')
   create table vozgor ;
               (nalog     c(8)     ,; 
                datdok    d(8)     ,; 
                relacija  c(40)    ,; 
                kolicina  n(12,3)  ,;
                vsifra    c(4)     ,;
                ssifra    c(4)     ,; 
                kilomet   n(12)    ,;
                presao    n(12)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('vozizv.dbf')
   create table vozizv ;
               (msifra    c(4)     ,;
                datdok    d(8)     ,; 
                kolicina  n(12,3)  ,;
                cena      n(12,3)  ,; 
                iznos     n(12,2)  ,;
                vsifra    c(4)     ,;
                ssifra    c(4)     ,; 
                nsifra    c(4)     ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('vozmapa.dbf')
   create table vozmapa ;
               (sifra     c(5)  ,; 
                datdok    d(8),;
                mesec     c(2)     ,;
                mapa      n(6)     ,; 
                iznos     n(12,2)  ,;
                vozilo    c(20)     ,;
                straniuc  n(12,2)     ,; 
                dosmesec  c(2),;              
                brrac     c(20),;
                datrac    d(8),;
                firma     c(40)  ,;
                oper      c(2),;
                kurs      n(18,4),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),; 
                arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('kazb.dbf')
  * wait windows ' kal  '
   create table kazb;
                (brkal      c(6) ,;
                iznos      n(18,3),;
                velvred18  n(18,3),;
                velvred8   n(18,3),;
                velvred    n(18,3),;
                marza      n(18,3),;
                rabat      n(18,3),;
                zavisni    n(18,3),;
                zavisnin   n(18,3),;
                zavisnic   n(18,3),;
                zavisc2    n(18,3),;
                zavisc3    n(18,3),;
                porkorekc  n(18,3),;
                trdob      n(18,3),;
                trdobn     n(18,3),;
                zaokruz    n(14,2),;
                nabvred    n(18,3),;
                porez18    n(18,3),;
                porez8     n(18,3),;
                porez      n(18,3),;
                malvred18  n(18,3),;
                malvred8   n(18,3),;
                malvred    n(18,3),;
                poljdin    n(18,3),;
                cardin     n(18,3),;
                akcvred    n(18,3),;
                placpor18  n(18,3),;
                placpor8   n(18,3),;
                placpor    n(18,3),;
                placporz18 n(18,3),;
                placporz8  n(18,3),;
                placporz   n(18,3),;
                placporu18 n(18,3),;
                placporu8  n(18,3),;
                placporu   n(18,3),;
                placporc18 n(18,3),;
                placporc8  n(18,3),;
                placporc   n(18,3),;
                placpord18 n(18,3),;
                placpord8  n(18,3),;
                placpord   n(18,3),;
                marzakor   n(18,3),;
                fvrsta    c(3)  ,;
                sifra     c(5) ,;
                brrac     c(20) ,;
                datdok    d(8)  ,;
                valuta    d(8)  ,;
                dokum     c(20),;
                uc        c(1),;
                pv1       d(8),;
                prdin1    n(14,2),;
                pv2       d(8),;
                prdin2    n(14,2),;
                pv3       d(8),;
                prdin3    n(14,2),;
                pv4       d(8),;
                prdin4    n(14,2),;
                pv5       d(8),;
                prdin5    n(14,2),;
                pv6       d(8),;
                prdin6    n(14,2),;
                pv7       d(8),;
                prdin7    n(14,2),;
                pv8       d(8),;
                prdin8    n(14,2),;
                pv9       d(8),;
                prdin9    n(14,2),;
                pv10      d(8),;
                prdin10   n(14,2),;
                pv11      d(8),;
                prdin11   n(14,2),;
                pv12      d(8),;
                prdin12   n(14,2),;
                rnal      c(12),; 
                pbrkal    c(6),; 
                pdok      c(3),; 
                nobrkal   c(6),; 
                interna   c(1),;
                prenos    c(1),;
                vpdv      c(3),;
                dev       c(3),;
                devkurs   n(18,6),;
                devizna   c(1),;
                dug       n(18,2),;
                ocarina   n(18,2),;
                oporez    n(18,2),;
                por18     n(18,2),;
                por8      n(18,2),;
                neporez   n(18,2),;
                vrsta     c(01),;
                sema      c(04),;
                naziv     c(30),;
                fnaz      c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use                
                
endif



if !file('fazb.dbf')
  * wait windows ' kal  '
   create table fazb;
               (brkal      c(6) ,;
                izni       n(18,3),;
                velvred18  n(18,3),;
                velvred8   n(18,3),;
                velvred    n(18,3),;
                marza      n(18,3),;
                rabat      n(18,3),;
                rabat2     n(18,3),;
                porez18    n(18,3),;
                porez8     n(18,3),;
                porez      n(18,3),;
                malvred18  n(18,3),;
                malvred8   n(18,3),;
                malvred    n(18,3),;
                garancija  c(20),;
                gardan     c(04),;
                valdan     c(03),;
                valdan1    c(03),;
                valdan2    c(03),;
                valdan3    c(03),;
                valdan4    c(03),;
                valdan5    c(03),;
                uc         c(1),;
                pbrkal     c(6),; 
                pdok       c(3),; 
                interna    c(1),;
                prenos     c(1),;
                vpdv       c(3),;
                dev        c(3),;
                devkurs    n(18,6),;
                devizna    c(1),;
                vrsta      c(01),;
                sema       c(04),;
                fnaz       c(30),;
                brnal      c(6),;
                fvrsta     c(3),;
                sifra      c(5),;
                brrac      c(20),;
                datdok     d(8),;
                valuta     d(8),;
                otpbr      c(20),;
                otpdat     d(8),;
                porbr      c(20),;
                pordat     d(8),;
                pr1        n(3),;
                pv1        d(8),;
                prdin1     n(14,2),;
                pr2        n(3),;
                pv2        d(8),;
                prdin2     n(14,2),;
                pr3        n(3),;
                pv3        d(8),;
                prdin3     n(14,2),;
                pr4        n(3),;
                pv4        d(8),;
                prdin4     n(14,2),;
                pr5        n(3),;
                pv5        d(8),;
                prdin5     n(14,2),;
                pr6        n(3),;
                pv6        d(8),;
                prdin6     n(14,2),;
                pr7        n(3),;
                pv7        d(8),;
                prdin7     n(14,2),;
                pr8        n(3),;
                pv8        d(8),;
                prdin8     n(14,2),;
                pr9        n(3),;
                pv9        d(8),;
                prdin9     n(14,2),;
                pr10       n(3),;
                pv10       d(8),;
                prdin10    n(14,2),;
                pr11       n(3),;
                pv11       d(8),;
                prdin11    n(14,2),;
                pr12       n(3),;
                pv12       d(8),;
                prdin12    n(14,2),;
                rnal       c(12),; 
                putnik     c(3),;
                tovarni    c(10),;
                nacin      c(10),;
                ja         c(1),;
                otprema    c(20),; 
                vozilo     c(20),; 
                vozac      c(30),; 
                cmr        c(20),; 
                kasa       c(1),; 
                kes        n(14,2),;
                kartica    n(14,2),;
                cek        n(14,2),;
                virman     n(14,2),;
                avans      n(14,2),;
                avbrrac    c(20,0),;
                avdatdok   d(8),;
                avans18    n(14,2),;
                avans8     n(14,2),;
                avansp18   n(14,2),;
                avansp8    n(14,2),;
                napomenag  c(80),;
                napomenad  c(80),;
                relacod    c(30),;
                relacdo    c(30),;
                datum      d(8),;
                vreme      c(8),;
                model      c(30),; 
                opdv       c(1),;
                idkartice  c(20),;
                mtr       n(5),;
                naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use                
endif


if !file('vir0.dbf')
 *  wait windows ' evidencija virmana '   
   create table vir0 ;
               (redbroj   n(10),;
                datdok    d(8)      ,;                
                ziroracz  c(18)     ,;                
                nazracz   c(35)     ,;                
                mestoracz c(20)     ,;                
                ukupno    c(15)   ,;                                               
                uknaloga  c(5)     ,;                                               
                sifval    c(3)      ,;                
                osoba     c(27)     ,;                
                tel1      c(11)      ,;                
                tel2      c(11)      ,;                
                fax       c(11)      ,;                
                email     c(22)      ,;                
                poreklo   c(1)      ,;                
                tipsloga  c(1)      ,;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('vir0e.dbf')
 *  wait windows ' evidencija virmana '   
   create table vir0e ;
               (redbroj   n(10),;
                zirorac   c(18)     ,;
                nazrac    c(35)     ,;                
                mestorac  c(20)     ,;                
                nacin     c(1),;   
                modelz    c(2)      ,;
                pozivz    c(20)     ,;                
                sif1      c(3)      ,;                
                svrha     c(35)     ,;                
                dug       n(14,2)   ,;                
                tdug      c(13)     ,;                
                modelo    c(2)      ,;
                pozivo    c(20)     ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldkon00.dbf')
 *  wait windows ' evidencija virmana '   
   create table ldkon00 ;
               (vrsta   c(1),;
                kod     c(7),;
                opis    c(27),;
                konto   c(10),;
                kontop  c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif   

if !file('ldkon.dbf')
 *  wait windows ' evidencija virmana '   
   create table ldkon ;
               (vrsta   c(1),;
                kod     c(7),;
                opis    c(27),;
                konto   c(10),;
                kontop  c(10),;
                iznos   n(12,2),;
                datdok  d(8),;
                brnal   c(6),;
                mp      c(2),; 
                mtr     n(5),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif   

if !file('kalgu.dbf')
 *  wait windows ' evidencija virmana '   
   create table kalgu;
               (brkal     c(6),;
                oblik     c(20),;
                paritet   c(40),;
                posrednik c(5),;
                procprov  n(10,5),;
                rokplac   d(8),;
                nacinnap  c(30),;
                brres     c(30),;
                datres    d(8),;
                ispostava c(30),;
                carispr   c(10),;
                cardat    d(8),;
                bran      n(3),;
                bran2     n(3),;
                dev       c(3),;
                arhiva    c(1),; 
                arhiva2   c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('kaluv.dbf')
 *  wait windows ' evidencija virmana '   
   create table kaluv;
               (brkal     c(6),;
                oblik     c(20),;
                paritet   c(40),;
                posrednik c(5),;
                nazposred c(45),;
                procprov  n(10,5),;
                rokplac   d(8),;
                nacinnap  c(30),;
                brres     c(30),;
                datres    d(8),;
                ispostava c(30),;
                carispr   c(10),;
                cardat    d(8),;
                bran      n(3),;
                bran2     n(3),;
                dev       c(3),;
                grupa     c(2),;
                grupanaz  c(40),;
                kurs      n(18,5),;
                redbr     c(5),; 
                tarozn    c(15,0),;                
                rsif      c(5),;
                kol       n(18,3),;
                devcena   n(18,4),;
                devvred   n(18,2),;
                brnal     c(6),;
                placdat   d(8),;
                placdev   n(18,2),;
                placdin   n(18,2),;
                placopis  c(20),;
                pravdat   d(8),;
                pravdev   n(18,2),;
                pravdin   n(18,2),;
                pravopis  c(20),;
                arhiva    c(1),; 
                arhiva2   c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if ! file("helpn.dbf")
   create table helpn(tekst    c(90),;
                      fname    c(40),;
                      fred     n(6),;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif
    

if !file('robcene.dbf')
  * wait windows ' roba '
   create table robcene;
               (rsif      c(5)   ,;
                kol       n(18,3),;
                velcena   n(14,5),;
                malcena   n(14,5),;
                naz       c(30),;
                cendat    d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
endif
if !file('robcene0.dbf')
  * wait windows ' roba '
   create table robcene0;
               (cenime    c(8)   ,;
                cendat    d(8)   ,;
                dok       c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
endif

if !file('nalpep.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalpep ;
             (konto    c(10)    ,;                   
              dug      n(18,2) ,;                   
              pot      n(18,2) ,;                   
              opis     c(30)   ,;    
              sifra    c(5),;
              naziv    c(40)   ,;    
              brrac    c(20),;
              datdok   d(8)    ,;              
              valuta   d(8),;
              brnal    c(6)    ,;                                 
              pozivz   c(30),; 
              pozivp   c(30),; 
              mp       c(2)    ,;                                               
              mtr      n(5)    ,;              
              dok      c(3)    ,; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if ! file("nalpep00.dbf")
   create table nalpep00(;
    putanja      c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("nalpep01.dbf")
   create table nalpep01(;
             datum    c(8)    ,; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if ! file("nalpep02.dbf")
   create table nalpep02(;
              racund   c(18)    ,;                   
              naziv    c(55)    ,;                   
              prazn01  c(01)    ,;                   
              modelz   c(02),;
              pozivz   c(20),;
              sif1     c(03),;
              svrha    c(35),;
              iznos    c(13),;
              dp       c(1),;
              racunp   c(18),;
              modelp   c(02),;
              pozivp   c(20),;
              datvre   c(08),;
              prazno2  c(24),;
              dug      n(18,2),;
              pot      n(18,2),;
              racunp2  c(18),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if ! file("nalpep03.dbf")
   create table nalpep03(;
              racund   c(18)  ,;                   
              dp       c(1)   ,;
              prazn01  c(1)  ,;                   
              datum    c(08),;
              prazno5  c(02),;
              naziv    c(36)    ,;                   
              prazno4  c(26),;
              iznos    c(13),;
              prazn02  c(6)    ,;                   
              modelz   c(02),;
              pozivz   c(22),;
              modelp   c(02),;
              pozivp   c(22),;
              svrha    c(46)    ,;                   
              prazn03  c(52)    ,;                   
              dug      n(18,2),;
              pot      n(18,2),;
              racunp2  c(18),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if ! file("nalpixml.dbf")
   create table nalpixml(;
              stavka   c(128)  ,;                   
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif



if !file('znbil.dbf')
   create table znbil ;
              (aop      c(3)   ,;              
               konta    c(16)  ,;
               napomena n(04)  ,;
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(57),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('znbiln.dbf')
   create table znbiln ;
              (aop      c(4)   ,;              
               konta    c(20)  ,;
               napomena n(04)  ,;
               neto     n(12,0),;
               preth    n(12,0),;
               prethp   n(12,0),;               
               opis     c(65),;
               rlini    c(1),;
               skrac    c(1),;
               plan     n(12,0),;               
               procena  n(12,0),;
               plan1    n(12,0),;               
               plan2    n(12,0),;               
               plan3    n(12,0),;               
               plan4    n(12,0),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('znostrez.dbf')
   create table znostrez;
              (aop      c(4)   ,;              
               konta    c(20)  ,;
               napomena n(04)  ,;
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(65),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif



if !file('zntok.dbf')
   create table zntok ;
              (aop      c(3)   ,;              
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(70),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('zntokn.dbf')
   create table zntokn ;
              (aop      c(4)   ,;              
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(70),;
               rlini    c(1),;
               plan     n(12,0),;               
               procena  n(12,0),;
               plan1    n(12,0),;               
               plan2    n(12,0),;               
               plan3    n(12,0),;               
               plan4    n(12,0),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('znkapN.dbf')
   create table znkapN ;
              (redbr    c(4)  ,;              
               opis     c(50)  ,;
               aop03    c(4),;
               K30      n(09,0),;
               aop04    c(4),;
               K31      n(09,0),;
               aop05    c(4),;               
               K32      n(09,0),;
               aop06    c(4),;               
               K35      n(09,0),;
               aop07    c(4),;               
               K047     n(09,0),;
               aop08    c(4),;               
               K34      n(09,0),;
               aop09    c(4),;               
               K330     n(09,0),;
               aop10    c(4),;               
               K331     n(09,0),;
               aop11    c(4),;               
               K332     n(09,0),;
               aop12    c(4),;               
               K333     n(09,0),;
               aop13    c(4),;               
               K334     n(09,0),;
               aop14    c(4),;               
               K336     n(09,0),;               
               aop15    c(4),;               
               K337     n(09,0),;               
               aop16    c(4),;               
               KUKUP    n(09,0),;                                             
               aop17    c(4),;                                             
               KGUBITAK n(09,0),;                                             
               kod      c(2),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('znkap.dbf')
   create table znkap ;
              (opis     c(41)  ,;              
               aop1     c(3),;      
               a2       n(09,0),;
               aop2     c(3),;      
               a3       n(09,0),;
               aop3     c(3),;      
               a4       n(09,0),;
               aop4     c(3),;      
               a5       n(09,0),;
               aop5     c(3),;      
               a6       n(09,0),;
               aop6     c(3),;      
               a7       n(09,0),;
               aop7     c(3),;      
               a8       n(09,0),;
               aop8     c(3),;      
               a9       n(09,0),;
               aop9     c(3),;      
               a10      n(09,0),;
               aop10    c(3),;      
               a11      n(09,0),;
               aop11    c(3),;      
               a12      n(09,0),;
               aop12    c(3),;      
               a13      n(09,0),;
               aop13    c(3),;      
               a14      n(09,0),;
               kod      c(03),;
               rlini    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znkap4a.dbf')
   create table znkap4a ;
              (konta    c(11)  ,;              
               opis     c(41),;
               aop1     c(04),;
               din1     n(09,0),;
               aop2     c(04),;
               din2     n(09,0),;
               aop3     c(04),;
               din3     n(09,0),;
               aop4     c(04),;
               din4     n(09,0),;
               rlini    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znkap2.dbf')
   create table znkap2 ;
              (opis     c(41)  ,;              
               aop1     c(4),;      
               a2       n(09,0),;
               aop2     c(4),;      
               a3       n(09,0),;
               aop3     c(4),;      
               a4       n(09,0),;
               aop4     c(4),;      
               a5       n(09,0),;
               aop5     c(4),;      
               a6       n(09,0),;
               aop6     c(4),;      
               a7       n(09,0),;
               aop7     c(4),;      
               a8       n(09,0),;
               aop8     c(4),;      
               a9       n(09,0),;
               aop9     c(4),;      
               a10      n(09,0),;
               aop10    c(4),;      
               a11      n(09,0),;
               aop11    c(4),;      
               a12      n(09,0),;
               kod      c(03),;
               rlini    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znkapn2.dbf')
   create table znkapn2 ;
              (opis     c(41)  ,;              
               aop1     c(4),;      
               a2       n(09,0),;
               aop2     c(4),;      
               a3       n(09,0),;
               aop3     c(4),;      
               a4       n(09,0),;
               aop4     c(4),;      
               a5       n(09,0),;
               aop5     c(4),;      
               a6       n(09,0),;
               aop6     c(4),;      
               a7       n(09,0),;
               aop7     c(4),;      
               a8       n(09,0),;
               aop8     c(4),;      
               a9       n(09,0),;
               aop9     c(4),;      
               a10      n(09,0),;
               aop10    c(4),;      
               a11      n(09,0),;
               aop11    c(4),;      
               a12      n(09,0),;
               aop12    c(4),;      
               a13      n(09,0),;
               aop13    c(4),;      
               a14      n(09,0),;
               kod      c(03),;
               rlini    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znkap4aN.dbf')
   create table znkap4aN ;
              (konta    c(11)  ,;              
               opis     c(41),;
               aop1     c(04),;
               din1     n(09,0),;
               aop2     c(03),;
               din2     n(09,0),;
               aop3     c(04),;
               din3     n(09,0),;
               aop4     c(04),;
               din4     n(09,0),;
               rlini    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('znkplan.dbf')
   create table znkplan ;
              (skonto   c(10)  ,;              
               nkonto   c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znkplanN.dbf')
   create table znkplanN ;
              (skonto   c(10)  ,;              
               nkonto   c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('znk0.dbf')
   create table znk0 ;
              (konto    c(10)  ,;              
               skonto   c(10),;
               nkonto   c(10),;
               dug      n(18,2),;
               pot      n(18,2),;
               saldo    n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znk0N.dbf')
   create table znk0N ;
              (konto    c(10)  ,;              
               skonto   c(10),;
               nkonto   c(10),;
               dug      n(18,2),;
               pot      n(18,2),;
               saldo    n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif



if !file('znstat.dbf')
   create table znstat ;
              (aop      c(3)   ,;              
               konta    c(16)  ,;
               bruto    n(12,0),;
               ispravka n(12,0),;
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(80),;
               grupa    c(1),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('znstatn.dbf')
   create table znstatn ;
              (aop      c(4)   ,;              
               konta    c(16)  ,;
               bruto    n(12,0),;
               ispravka n(12,0),;
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(80),;
               grupa    c(1),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('znstatd.dbf')
   create table znstatd ;
              (aop      c(4)   ,;              
               konta    c(16)  ,;
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(80),;
               grupa    c(1),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('prenpod.dbf')
   create table prenpod;
               (pdisk      c(1),;
                pfolder    c(80),;   
                preporti   c(1),;
                pforme     c(1),;
                plabele    c(1),;                
                pslike     c(1),;
                pdodaci    c(1),;
                pprg       c(1),;   
                ptxt       c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('pdv00.dbf')
   create table pdv00;
               (dat0       d(8),;
                dat1       d(8),;
                bezosnsa   n(14),;
                bezosnbe   n(14),;
                opstanab   n(14),;
                opstapor   n(14),;
                posebnab   n(14),;
                posebpor   n(14),;
                sveganab   n(14),;
                svegapor   n(14),;
                puvozpro   n(14),;
                puvozpor   n(14),;
                ppoljpro   n(14),;
                ppoljpor   n(14),;
                postapro   n(14),;
                postapor   n(14),;
                psveganak  n(14),;
                psvegapor  n(14),;
                porez      n(14),;
                povracaj   c(2),;     
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if ! file("pdvu.dbf")
   create table pdvu;
    (vpdv      c(3),;
    datpdv     d(8),;
    datpri     d(8),;
    datdok     d(8),;
    brrac      c(20),;
    valuta     d(8),;
    sifra      c(5),;
    sn         c(1),;
    uknab      n(14,2),;
    osn18      n(14,2),;
    pdv18      n(14,2),;
    osn8       n(14,2),;
    pdv8       n(14,2),;
    osn5       n(14,2),;
    pdv5       n(14,2),;
    neoporez   n(14,2),;
    brnal      c(6),;
    dok        c(3),;
    ukupno     n(14,2),;
    pdv        n(14,2),;
    pdvne      n(14,2),;
    pdvavans   n(14,2),;
    osnuvoz    n(14,2),;
    pdvuvoz    n(14,2),;
    osnsruvoz  n(14,2),;
    osnapkm    n(14,2),;    
    pdvapkm    n(14,2),;    
    osnnekret  n(14,2),;    
    osnossrost n(14,2),;    
    pdvsvega   n(14,2),;
    pdvproc    n(18,6),;
    pdvmoze    n(14,2),;
    pdvnemoze  n(14,2),;
    porper     c(8),;
    konto      c(10),;
    grupa      c(1) ,;
    mesto      c(4),;
    mtr        c(2),;
    dev        c(3)    ,;                            
    devkurs    n(18,6) ,;                            
    devdug     n(18,6) ,;   
    devpot     n(18,6),;                                           
    kurs       n(10,4),;
    ime        c(30),;
    proc18     n(9,2),;    
    proc8      n(9,2),;        
    procpolj   n(9,2),;            
    napomena   c(80),;
    napomena2  c(80),;
    kontoa     c(10),;    
    datum      d(8),;
    vreme      c(8),;
    arhiva     c(1),; 
    arhiva2    c(1),; 
    automnal   c(1),; 
    ops        c(1),; 
    uplac      n(14,2),;
    pdvdeo     n(14,2),;
    preneto    c(1),;   
    idbr       n(11);                    
    )
   use
endif


if ! file("pdvi.dbf")
   create table pdvi;
   (vpdv       c(3),;
    datpdv     d(8),;
    datpri     d(8),;
    datdok     d(8),;
    brrac      c(20),;
    valuta     d(8),;
    sifra      c(5),;
    sn         c(5),;
    ukprod     n(14,2),;
    osn18      n(14,2),;
    pdv18      n(14,2),;
    osn8       n(14,2),;
    pdv8       n(14,2),;
    brnal      c(6),;
    dok        c(3),;
    ukupno     n(14,2),;
    pdv        n(14,2),;
    osn0       n(16,2),;
    osnizvoz   n(16,2),;
    osnkonzul  n(16,2),;
    osndonac   n(16,2),;
    osnapkm    n(16,2),;
    osnpdvne   n(16,2),;
    osnpdvnebu n(16,2),;
    pdvavans   n(14,2),;
    pdvsopstv  n(14,2),;
    pdvmanjak  n(14,2),;
    pdvrastur  n(14,2),;
    porper     c(8),;
    konto      c(10),;
    grupa      c(1),;
    mesto      c(4),;
    dev        c(3)    ,;                            
    devkurs    n(18,6) ,;                            
    devdug     n(18,6) ,;   
    devpot     n(18,6),;                                           
    kurs       n(10,4),;
    mtr        c(2) ,;
    ime        c(30),;
    proc18     n(9,2),;    
    proc8      n(9,2),;         
    napomena   c(80),;
    napomena2  c(80),;
    kontoa     c(10),;        
    datum      d(8),;
    vreme      c(8),;
    arhiva    c(1),; 
    arhiva2   c(1),; 
    automnal   c(1),; 
    uplac      n(14,2),;
    pdvdeo     n(14,2),;
    ops        c(1),;     
    preneto   c(1),;   
    idbr      n(11);                    
    )
    use
endif


if !file("pdvkon.dbf")
   create table pdvkon;
  (vpdv       c( 3),;
   grupa      c( 1),;
   ppdv       c(1),;
   opdv       c(1),;
   opis       c(40),;
   kond1      c(10),;
   kond2      c(10),;
   konp1      c(10),;
   konp2      c(10),;
   osn18      n(12,2),;    
   pdv18      n(12,2),;     
   osn8       n(12,2),;     
   pdv8       n(12,2),;     
   osn5       n(12,2),;     
   pdv5       n(12,2),;     
   osn18p     n(12,2),;    
   pdv18p     n(12,2),;     
   osn8p      n(12,2),;     
   pdv8p      n(12,2),;        
   osn5p      n(12,2),;     
   pdv5p      n(12,2),;     
   arhiva    c(1),; 
   arhiva2   c(1),; 
   preneto   c(1),;   
   idbr      n(11);                    
   )
   use
endif

if !file("pdvus.dbf")
   create table pdvus;
                (vpdv       c( 3),;
                 pdv18      n(14,2),;
                 pdv8       n(14,2),;
                 pdv5       n(14,2),;
                 pdv        n(14,2),;
                 brnal      c(6),;
                 konto      c(10),;
                 pdvgk      n(14,2),;
                 dat0       d(8),;
                 dat1       d(8),;
                 datDOK     d(8),;
                 arhiva    c(1),; 
                 arhiva2   c(1),; 
                 preneto   c(1),;   
                 idbr      n(11);                    
                 )
   use
endif




if ! file("pdvsve.dbf")
   create table pdvsve;
    (period     n(02),;
     mesec      n(02),;
     ukprod     n(14,2),;
     iukupno    n(14,2),;
     ipdv       n(14,2),;
     uknab      n(14,2),;
     ukupno     n(14,2),;
     pdv        n(14,2),;
     razlika    n(14,2),;
     saldo      n(14,2),;
     preneto   c(1),;   
     idbr      n(11);                    
     )
   use
endif

if ! file("osvrsta.dbf")
   create table osvrsta;
     (vrsta     c(4),;
      naziv     c(40),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif
if ! file("ososnk.dbf")
   create table ososnk;
     (osnovkor  c(4),;
      naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif
if ! file("osizvorf.dbf")
   create table osizvorf;
     (izvor     c(4),;
      naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif

if ! file("os0.dbf")
   create table os0;
     (osifra    c(4),;
      naz       c(40),;
      datnab    d(8),;
      brnal     c(5),;      
      datprod   d(8),;
      brnalp    c(5),;      
      sifra     c(5),;
      naziv     c(30),;
      brrac     c(20),;
      valuta    d(8),;
      devkurs   n(18,6),;
      devdin    n(18,4),;
      godpro    n(4),;
      OSDANE    c(1),;
      konto     c(10),;
      vrsta     c(4),; 
      adresa    c(30),;      
      mestoL     c(30),;
      listnepo  c(30),;
      katasto   c(30),;            
      knjigov   n(18,2),;      
      datproc   d(8),;
      dathip    d(8),;       
      hippover  c(30),;
      osnovhip  c(30),;      
      obezbdug  c(30),;            
      redhip    c(30),;                  
      povrsina  n(12,3),;
      povobj    n(12,3),;      
      proizv    c(30),;
      lokacija  c(30),;
      strukt1   c(30),;
      strukt2   c(30),;
      parcela   c(30),;
      isprave1  c(30),;
      isprave2  c(30),;
      isprave3  c(30),;
      osnovkor  c(4),;
      izvor     c(4),;
      nacinstic c(40),;
      rashod    c(30),; 
      kom       n(12,2),;
      cena      n(12,2),;      
      stopaot   n(9,3),;
      stopaot2  n(9,3),;
      mp        c(2),;
      mesto     c(4),;
      mtr       n(5),;
      nomenkl   c(20),;
      invbroj   c(20),;
      nab0      n(18,2),;
      isp0      n(18,2),;
      sad0      n(18,2),;
      procena   n(18,2),;
      razlproc  n(18,2),;      
      nab02     n(18,2),;
      isp02     n(18,2),;
      sad02     n(18,2),;
      ag        c(1),;
      agpod     c(2),;
      procgod   n(6),;
      grupa     c(4),;
      oper      c(3),;
      preneto   c(1),;   
      idbr      n(11);
      )
   use
endif

if ! file("os.dbf")
   create table os;
     (osifra    c(4),;
      naz       c(40),; 
      stopaot   n(9,3),;
      stopaot2  n(9,3),;
      nab0      n(18,2),;
      isp0      n(18,2),;
      sad0      n(18,2),;
      procena   n(18,2),;
      razlproc  n(18,2),;
      nab02     n(18,2),;
      isp02     n(18,2),;
      sad02     n(18,2),;
      brmes     n(2),;
      datum0    d(8),;
      datum1    d(8),;
      amort     n(18,2),;
      amort2    n(18,2),;
      ispam     n(18,2),;
      nab       n(18,2),;
      isp       n(18,2),;
      sad       n(18,2),;
      nab2      n(18,2),;
      isp2      n(18,2),;
      sad2      n(18,2),;
      invbroj   c(20),;
      mesto     c(4),;
      mtr       n(5),;
      konto     c(10),;
      ag        c(1),;
      agpod     c(2),;
      procgod   n(06),;
      grupa     c(4),;
      datnab    d(8),;
      godpro    n(4),;
      datobr    d(8),;
      datprod   d(8),;
      oper      c(3),;
      kurs      n(18,4),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
      use
endif

if ! file("ospodaci.dbf")
   create table ospodaci;
     (edat0     d(8),;
      edat1     d(8),;
      emes      n(2),;
      brnal     c(6),;
      datdok    d(8),;
      konam     c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
      use
endif

if ! file("osag.dbf")
   create table osag;
     (ag        c(1),;
      agstopa   n(09,3),;
      opis      c(20),;
      vrsta     c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif

if ! file("osagpod.dbf")
   create table osagpod;
     (agpod     c(2),;
      ag        c(1),;
      opis      c(40),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif
if ! file("ospopis.dbf")
   create table ospopis;
     (mesto     c(4),;
      mtr       n(5),;
      konto     c(10),;
      ag        c(1),;
      agpod     c(2),;
      procgod   n(06),;
      grupa     c(4),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif

if ! file("osoa.dbf")
   create table osoa;
     (ag        c(1),;
      pocetno   n(14,2),;     
      nabavka   n(14,2),;     
      prodaja   n(14,2),;     
      neotpis   n(14,2),;     
      agstopa   n(09,3),;
      amort2    n(14,2),;
      sad2      n(14,2),;
                preneto   c(1),;   
                idbr      n(11);                    
      )
   use
endif
*--------------otkup mleka------------------------

if !file('ml0.dbf')
   create table ml0 ;
               (sifra     c(5)     ,;
                naziv     c(40)    ,;              
                maticnibr c(13)    ,; 
                brgazd    c(12)    ,;
                posta     c(5)     ,;
                mesto     c(25)    ,;    
                omsif     c(5),;
                ulica     c(35)    ,;
                ulbroj    c(10)    ,;
                zirorac   c(25)    ,;
                telefon   c(25)    ,;
                napomena  c(50)    ,;
                grupa1    c(3)     ,;
                grupa2    c(3)     ,;
                grupa3    c(3)     ,;                
                ugovor    c(15)    ,;
                pib       c(9)     ,; 
                grla      n(8)     ,; 
                ommes     c(25),; 
                redbr     c(5),;
                opstina   c(25),;
                cenovnik  n(05,0) ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('mleko.dbf')
   create table mleko ;
               (sifra     c(5)     ,;
                datdok    d(8)    ,;              
                kol       n(12,2) ,; 
                mlm       n(10,2) ,;
                ukmlm     n(12,2),;
                cenamlm   n(10,2),;
                iznos     n(12,2) ,; 
                procvoda  n(12,2) ,; 
                voda      n(12,2) ,; 
                procstim  n(12,2) ,; 
                stimulac  n(12,2) ,; 
                saldo     n(12,2) ,;                    
                procpor   n(09,2),;
                porez     n(12,2),;
                svega     n(12,2),;
                troskovi  n(12,2) ,;                    
                ZAISPLATU n(12,2),;
                dinprem   n(12,2) ,;    
                premija   n(12,2) ,;    
                Dst0500   n(12,2),;
                Dst1000   n(12,2),;
                Dst1500   n(12,2),;
                Dst2000   n(12,2),;
                st0500    n(12,2),;
                st1000    n(12,2),;
                st1500    n(12,2),;
                st2000    n(12,2),;
                omsif     c(5)     ,;                
                vazi      c(1),;
                nevazi    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('mlmesta.dbf')
   create table mlmesta ;
               (posta     c(5)     ,;
                mesto     c(25)    ,;    
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('mlomes.dbf')
   create table mlomes ;
               (omsif     c(5)     ,;
                ommes     c(25)   ,;    
                vrsta     c(1)   ,;    
                premija   n(10,4),;   
                cenovnik  n(05,0) ,;                
                preneto   c(1),;   
                idbr      n(11);    
                )
   use
endif

if !file('mlopm.dbf')
   create table mlopm ;
               (rbr       c(5)     ,;
                korisnik  c(25)   ,;    
                litrav    n(10)   ,;    
                litruk    n(10)   ,;
                litbrd    n(10)   ,;    
                litbuk    n(10)   ,;
                mlmrav    n(10,2)   ,;    
                mlmruk    n(10,2)   ,;
                mlmbrd    n(10)   ,;    
                mlmbuk    n(10)   ,;
                premlrav  n(10,2) ,;    
                premlbrd  n(10,2) ,;
                premrav   n(12,2) ,;    
                prembrd   n(12,2) ,;
                premsvega n(12,2) ,;
                ukmlmrav  n(10,2)   ,;    
                ukmlmbrd  n(10,2)   ,;
                spectez   n(12,2) ,; 
                procdes   n(12,2),;
                destim    n(12,2),;
                procvoda  n(12,2) ,; 
                voda      n(12,2) ,; 
                dstuk     n(12,2),;
                marza     n(12,2) ,; 
                saldo     n(12,2) ,;                    
                procpor   n(09,2),;
                porez     n(12,2),;
                svega     n(12,2),;                
                troskovi  n(12,2),;                
                zaisplatu n(12,2),;                
                omsif     c(5)    ,;
                ommes     c(25)   ,;    
                vrsta     c(1)    ,;    
                premija   n(10,4),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('mlgazd.dbf')
   create table mlgazd ;
               (sifra     c(5)     ,;
                naziv     c(40)    ,;              
                maticnibr c(13)    ,; 
                brgazd    c(12)    ,;
                posta     c(5)     ,;
                mesto     c(25)    ,;    
                ulica     c(35)    ,;
                ulbroj    c(10)    ,;
                kol       n(12,2) ,; 
                premija   n(12,2) ,;    
                ukmlm     n(12,2) ,;
                grla      n(8)  ,; 
                redbr     c(5),;
                opstina   c(25),;
                ommes     c(25),;
                cenovnik  n(05,0) ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('mlcene.dbf')
   create table mlcene ;
               (cenovnik  n(05,0) ,;
                dat0      d(8)    ,;              
                dat1      d(8)    ,;              
                c30       n(09,2),;
                c31       n(09,2),;
                c32       n(09,2),;
                c33       n(09,2),;
                c34       n(09,2),;
                c35       n(09,2),;
                c36       n(09,2),;
                c37       n(09,2),;
                c38       n(09,2),;
                c39       n(09,2),;
                c40       n(09,2),;
                c41       n(09,2),;
                c42       n(09,2),;
                c43       n(09,2),;
                c44       n(09,2),;
                c45       n(09,2),;
                procpor   n(09,2),;
                dinpremr  n(09,2),;
                dinpremb  n(09,2),;
                st300500  n(09,2),;
                st310500  n(09,2),;
                st320500  n(09,2),;
                st330500  n(09,2),;
                st340500  n(09,2),;
                st350500  n(09,2),;
                st360500  n(09,2),;
                st370500  n(09,2),;
                st380500  n(09,2),;
                st390500  n(09,2),;
                st400500  n(09,2),;
                st410500  n(09,2),;
                st420500  n(09,2),;
                st430500  n(09,2),;
                st440500  n(09,2),;
                st450500  n(09,2),;
                st301000  n(09,2),;
                st311000  n(09,2),;
                st321000  n(09,2),;
                st331000  n(09,2),;
                st341000  n(09,2),;
                st351000  n(09,2),;
                st361000  n(09,2),;
                st371000  n(09,2),;
                st381000  n(09,2),;
                st391000  n(09,2),;
                st401000  n(09,2),;
                st411000  n(09,2),;
                st421000  n(09,2),;
                st431000  n(09,2),;
                st441000  n(09,2),;
                st451000  n(09,2),;
                st301500  n(09,2),;
                st311500  n(09,2),;
                st321500  n(09,2),;
                st331500  n(09,2),;
                st341500  n(09,2),;
                st351500  n(09,2),;
                st361500  n(09,2),;
                st371500  n(09,2),;
                st381500  n(09,2),;
                st391500  n(09,2),;
                st401500  n(09,2),;
                st411500  n(09,2),;
                st421500  n(09,2),;
                st431500  n(09,2),;
                st441500  n(09,2),;
                st451500  n(09,2),;
                st302000  n(09,2),;
                st312000  n(09,2),;
                st322000  n(09,2),;
                st332000  n(09,2),;
                st342000  n(09,2),;
                st352000  n(09,2),;
                st362000  n(09,2),;
                st372000  n(09,2),;
                st382000  n(09,2),;
                st392000  n(09,2),;
                st402000  n(09,2),;
                st412000  n(09,2),;
                st422000  n(09,2),;
                st432000  n(09,2),;
                st442000  n(09,2),;
                st452000  n(09,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('mlekoR.dbf')
   create table mlekoR ;
               (omsif     c(5)   ,;       
                datdok    d(8)   ,;              
                dokument  c(20)  ,;                              
                kol       n(12,2) ,; 
                mlm       n(10,2) ,;
                ukmlm     n(12,2),;
                cenamlm   n(10,2),;
                iznos     n(12,2) ,; 
                procvoda  n(12,2) ,; 
                voda      n(12,2) ,; 
                svega     n(12,2) ,; 
                proczar   n(12,2) ,;    
                zarada    n(12,2) ,; 
                proctros  n(12,2) ,;    
                troskovi  n(12,2) ,;                    
                saldo     n(12,2) ,;                    
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('znkplan.dbf')
   create table znkplan ;
               (skonto    c(10)     ,;
                nkonto    c(10)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif                     


if !file('znk0.dbf')
   create table znk0 ;
               (konto     c(10)     ,;
                skonto    c(10)    ,;
                nkonto    c(10)    ,;
                dug       n(18,2),;  
                pot       n(18,2),;  
                saldo     n(18,2),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif                     

if !file('znk0p.dbf')
   create table znk0p ;
               (konto     c(10)     ,;
                skonto    c(10)    ,;
                nkonto    c(10)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif                     

if !file('znk0pN.dbf')
   create table znk0pN ;
               (konto     c(10)     ,;
                skonto    c(10)    ,;
                nkonto    c(10)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif                     

if !file('zlato.dbf')
   create table zlato ;
               (datdok    d(8)    ,;
                brkal     c(6)    ,; 
                opis      c(30)   ,;
                otkol     n(12,2) ,;
                otprer    n(12,2) ,;
                otnab     n(12,2) ,;
                proikom   n(12,2) ,;
                proigram  n(12,2) ,;
                prodkom   n(12,2) ,;
                prodgram  n(12,2) ,;
                prodvred  n(12,2) ,;
                zamdkom   n(12,2) ,;
                zamdgram  n(12,2) ,;
                zamplom   n(12,2) ,;
                zamusl    n(12,2) ,;
                usluget   n(12,2) ,;
                zalkom    n(12,2) ,;
                zalgram   n(12,2) ,;
                zalstanje n(12,2) ,;
                primedba  c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif                     

if !file('znlogkon.dbf')
   create table znlogkon ;
              (aop      c(3)   ,;              
               bruto    n(12,0),;
               ispravka n(12,0),;
               neto     n(12,0),;
               preth    n(12,0),;
               netoa    c(30),;
               preta    c(30),;
               formula  c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znlogn.dbf')
   create table znlogn ;
              (aop      c(4)   ,;              
               bruto    n(12,0),;
               ispravka n(12,0),;
               neto     n(12,0),;
               preth    n(12,0),;
               prethp   n(12,0),;               
               netoa    c(30),;
               preta    c(30),;
               formula  c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('znlogtab.dbf')
   create table znlogtab;
              (aop      c(3)   ,;              
               formula  c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif



if !file('znlogko2.dbf')
   create table znlogko2 ;
              (aop      c(3)   ,;              
               bruto    n(12,0),;
               ispravka n(12,0),;
               neto     n(12,0),;
               preth    n(12,0),;
               netoa    c(30),;
               preta    c(30),;
               formula  c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('znlogta2.dbf')
   create table znlogta2;
              (aop      c(4)   ,;              
               formula  c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znlogtan.dbf')
   create table znlogtan;
              (aop      c(4)   ,;              
               formula  c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if ! file("art.dbf")
   create table art(;
    art_id     c(20),;
    bar_code   c(24),;
    quick_code c(16),;
    tax_id     c(1),;
    plu_naziv  c(32),;
    dept_id    c(3),;
    cena       n(10,2),;
    kol_ulaz   n(10,3),;
    je_otvoren c(1),;
    je_deckol  c(1),;
    je_amba    c(1),;
    amba_id    c(20),;
    update_typ c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
    use
endif    

if ! file("bon.dbf")
   create table bon(;
    art_id     c(20),;
    kolicina   n(10,3),;
    cena       n(10,2),;
    prc_popust n(06,2),;
    usr_id     c(4),;
                preneto   c(1),;   
                idbr      n(11);                    
     )
   use
endif

if ! file("pay.dbf")
   create table pay(;
    pay_1      n(10,2),;
    pay_2      n(10,2),;
    pay_3      n(10,2),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
    use
endif

if ! file("txt.dbf")
   create table txt(;
    tekst      c(40),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if ! file("cmd.dbf")
   create table cmd(;
    komanda    c(3),;
    tekst      c(40),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if ! file("opnr.dbf")
   create table opnr(;
    brzap1     n(4),;
    brzap2     n(4),;
    brzap3     n(4),;
    broj       n(4)      ,;
    ime_prez   c(30)     ,;
    adresa     c(40)     ,;
    maticnibr  c(13)     ,;
    mp         c(2)      ,;
    dat1       d(8)      ,;
    dat2       d(8)      ,;
    dat3       d(8)      ,;
    period1    c(10)     ,;
    period2    c(10)     ,;
    ime_prez2  c(30)     ,;
    maticnibr2 c(13)     ,;
    datgub     d(8)      ,;
    razlog     c(20)     ,;
    datupl     d(8)      ,;
    iznosupl   n(12,2)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if !file('banke.dbf')
 *  wait windows ' podaci o firmi '   
   create table banke(;
                fziro     c(30)     ,;                
                fziro2    c(30)     ,;                
                fziro3    c(30)     ,;                
                fziro4    c(30)     ,;                
                fziro5    c(30)     ,;                
                fziro6    c(30)     ,;                
                fbanka    c(30)     ,;
                fbanka2   c(30)     ,;
                fbanka3   c(30)     ,;
                fbanka4   c(30)     ,;
                fbanka5   c(30)     ,;
                fbanka6   c(30)     ,;
                fkonziro1 c(08)     ,;                
                fkonziro2 c(08)     ,;                
                fkonziro3 c(08)     ,;                
                fkonziro4 c(08)     ,;                
                fkonziro5 c(08)     ,;                
                fkonziro6 c(08)     ,;                
                fiznos1   n(18,2),;
                fiznos2   n(18,2),;
                fiznos3   n(18,2),;
                fiznos4   n(18,2),;
                fiznos5   n(18,2),;
                fiznos6   n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pazari.dbf')
   create table pazari ;
               (pas      c(2),;
                korisnik c(20),;
                kes       n(14,2),;
                kartica   n(14,2),;
                cek       n(14,2),;
                svega     n(14,2),;
                malvred   n(14,2),;
                datdok    d(8),;
                vreme     c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use                      
endif



if !file('artpr.dbf')
  * wait windows ' roba '
   create table artpr;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                koli      n(18,3),;
                malcena   n(14,2),;
                malvred   n(12,2),;
                pas       c(2),;
                dat0      d(8),;
                sat0      c(2),;
                min0      c(2),;
                dat1      d(8),;
                sat1      c(2),;
                min1      c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if ! file("kalput.dbf")
   create table kalput(;
    putanja      c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif





if !file('carev.dbf')
  * wait windows ' roba '
   create table carev;
               (brkal     c(6)   ,;
                datdok    d(8),; 
                clprijave c(6),; 
                dokument  c(10),; 
                brnaimen  c(5),; 
                brutokol  n(10,2),;
                brutotez  n(10,2),;
                nerazokol n(10,2),;
                neraztez  n(10,2),;
                prsif     c(5),;
                dineuro   n(9,4),;
                razduz    c(10),;
                datizdav  d(8),;
                napomena  c(25),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('carev3.dbf')
  * wait windows ' roba '
   create table carev3;
               (brkal     c(6)   ,;
                datdok    d(8),; 
                dokument  c(20),; 
                brnaimen  c(5),; 
                kolkol    n(10,2),;
                brutokol  n(10,2),;
                vrstarobe c(30),;
                vrednost  n(12,2),;
                ocarinj   c(20),;
                rkolkol   n(10,2),;
                rbrutokol n(10,2),;
                rvrednost n(12,2),;
                nkolkol   n(10,2),;
                nbrutokol n(10,2),;
                nvrednost n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('carrob.dbf')
  * wait windows ' roba '
   create table carrob;
               (prsif     c(5)   ,;
                naziv     c(30),;
                podnaziv  c(20),;
                kol       n(18,3),;
                velcena   n(14,5),;
                dcena     n(14,5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('fakpaz.dbf')
  * wait windows ' roba '
   create table fakpaz;
               (datdok    d(8)   ,;
                malvred   n(18,2),;
                vredprod  n(18,2),;
                razlika   n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('trgpar.dbf')
  * wait windows ' roba '
   create table trgpar;
               (pkgk       c(1)   ,;
                pkan       c(1)   ,;
                pktm       c(1)   ,;
                pkkp       c(1)   ,;
                pkpdv      c(1)   ,;
                pngk       c(1)   ,;
                pntm       c(1)   ,;
                pnkp       c(1)   ,;
                pfgk       c(1)   ,;
                pfan       c(1)   ,;
                pftm       c(1)   ,;
                pfkp       c(1)   ,;
                pfkpo      c(1)   ,;
                pfpdv      c(1)   ,;
                dok        c(3),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('recnik.dbf')
  * wait windows ' roba '
   create table recnik;
               (element    c(40)   ,;
                objekat    c(40)   ,;
                jezik0     c(40)   ,;
                jezik1     c(40)   ,;
                jezik2     c(40)   ,;
                jezik3     c(40)   ,;
                jezik4     c(40)   ,;
                jezik5     c(40)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('putnici.dbf')
  * wait windows ' roba '
   create table putnici;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                proc1      n(10,2) ,;
                proc2      n(10,2) ,;
                dat0       d(8) ,;
                dat1       d(8) ,;
                osnov1     n(12,2) ,;
                osnov2     n(12,2) ,;
                iznos1     n(12,2),;
                iznos2     n(12,2),;
                dana1      n(06),;
                procumanj1 n(10,2),;
                dana2      n(06),;
                procumanj2 n(10,2),;
                dana3      n(06),;
                procumanj3 n(10,2),;
                dana4      n(06),;
                procumanj4 n(10,2),;
                brisanje   c(01),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('putn2.dbf')
  * wait windows ' roba '
   create table putn2;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                fiksno     n(12,2) ,;
                zarada     n(12,2) ,;
                zarada2    n(12,2) ,;
                bonuskol   n(12,2) ,;
                bonuskup   n(12,2) ,;
                bonusakc   n(12,2) ,;
                bonusakc2   n(12,2) ,;
                bonusakc3   n(12,2) ,;
                polje9     n(12,2) ,;
                polje10    n(12,2) ,;                
                troskovi   n(12,2) ,;
                ostalo     n(12,2) ,;
                ostalo2    n(12,2) ,;
                kasnjenje  n(12,2) ,;
                polje1     n(12,2) ,;
                polje2     n(12,2) ,;
                polje3     n(12,2) ,;
                polje4     n(12,2) ,;
                polje5     n(12,2) ,;
                bonusgr    n(12,2) ,;                
                svega      n(12,2) ,;
                troszaisp  n(12,2) ,;
                isplaceno  n(12,2) ,;
                zaisplat   n(12,2) ,;
                dat0       d(8) ,;
                dat1       d(8) ,;
                osnov1     n(12,2) ,;
                kupotvor   n(12,0),;                                    
                grupa      c(3),;   
                preneto    c(1),;   
                idbr       n(11);                    
                )
         use
     endif
if !file('putn2po.dbf')
  * wait windows ' roba '
   create table putn2po;
               (polje1i    C(10) ,;
                polje1iZ   C(1) ,;
                polje2i    C(10) ,;
                polje2iZ   C(1) ,;
                polje3i    C(10) ,;
                polje3iZ   C(1) ,;
                polje4i    C(10) ,;
                polje4iZ   C(1) ,;
                polje5i    C(10) ,;
                polje5iZ   C(1) ,;
                polje6i    C(10) ,;
                polje6iZ   C(1) ,;
                polje7i    C(10) ,;
                polje7iZ   C(1) ,;
                polje8i    C(10) ,;
                polje8iZ   C(1) ,;
                polje9i    C(10) ,;
                polje9iZ   C(1) ,;
                polje10i    C(10) ,;
                polje10iZ   C(1) ,;
                preneto    c(1),;   
                idbr       n(11);                    
                )
         use
     endif


if !file('putn3.dbf')
  * wait windows ' roba '
   create table putn3;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                plan       n(12,2) ,;
                fiksno     n(12,2) ,;
                bonus1     n(12,2) ,;
                bonusdin1  n(12,2) ,;
                bonus2     n(12,2) ,;                
                bonusdin2  n(12,2) ,;
                bonus3     n(12,2) ,;                
                bonusdin3  n(12,2) ,;
                dat0       d(8) ,;
                dat1       d(8) ,;
                preneto    c(1),;   
                idbr       n(11);                    
                )
         use
     endif


if !file('putn4.dbf')
  * wait windows ' roba '
   create table putn4;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                velvred    n(14,2) ,;
                plasman    n(10,0) ,;
                prodmesta  n(10,0) ,;
                kupaca     n(10,0) ,;                
                ukpromet   n(14,2) ,;
                bongrupa   n(14,2),;
                bonusreal  n(14,2),;
                bonusplasm n(14,2),;
                ukbonusgr  n(14,2), ;               
                GRUPA      C(3),;
                real1      n(14,2),;
                bonus1     n(14,2),;
                real2      n(14,2),;
                bonus2     n(14,2),;
                real3      n(14,2),;
                bonus3     n(14,2),;
                bonusneg   n(14,2),;
                realizac   n(14,2),;
                procreal   n(14,2),;      
                dat0       d(8) ,;
                dat1       d(8) ,;
                preneto    c(1),;   
                idbr       n(11);                    
                )
         use
     endif


if !file('prorj.dbf')
  * wait windows ' roba '
   create table prorj;
               (rjsifra     c(3)  ,;
                naziv      c(30)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('prorob.dbf')
  * wait windows ' roba '
   create table prorob;
               (rsif       c(5)   ,;
                naz        c(30)  ,;
                velcena    n(12,2),;
                cenak      n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('prorn.dbf')
  * wait windows ' roba '
   create table prorn;
               (radnal     c(6),;
                rjsifra    c(3) ,;
                rsif       c(5) ,;
                kol        n(12,4),; 
                cena       n(12,4),; 
                iznos      n(12,4),;
                ugovor     c(20),;
                sifra      c(5),;
                datdok     d(8),;
                datpoc     d(8),;
                datkraj    d(8),;  
                gotovo     c(1),;
                datisp     d(8),;
                magacin    n(2),;
                arhiva     c(1),;
                arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('hepon.dbf')
  * wait windows ' fak  '
   create table hepon;
               (naz       c(30),;
                brkal     c(6),;    
                dimenzija c(20),;    
                rsif      c(5),;       
                brcen     n(06,0),;
                koli      n(18,3),;
                orijent   c(1),;
                krila1    c(1),;
                krila2    c(1),;
                klizna    c(1),;
                harmo     c(1),;
                naststok  c(1),;
                nadsvetla c(1),;
                otvorp2   c(1)   ,;
                otvorp3   c(1),;
                staklo    c(1),;
                resetka   c(1),;
                okov      c(1),;
                bravaul   c(1),;
                bravakup  c(1),;
                ventil    c(1),;
                prag      c(1),;
                gravura   c(1),;
                vanstand  c(1),;
                montaza   c(1),;
                transport c(1),;
                puboja    c(1),;
                ostalo1   c(1),;
                ostalo2   c(1),;
                ostalo3   c(1),;
                ckrila1    n(12,2),;
                ckrila2    n(12,2),;
                cklizna    n(12,2),;
                charmo     n(12,2),;
                cnaststok  n(12,2),;
                cnadsvetla n(12,2),;
                cotvorp2   n(12,2)   ,;
                cotvorp3   n(12,2),;
                cstaklo    n(12,2),;
                cresetka   n(12,2),;
                cokov      n(12,2),;
                cbravaul   n(12,2),;
                cbravakup  n(12,2),;
                cventil    n(12,2)   ,;
                cprag      n(12,2),;
                cgravura   n(12,2),;
                cvanstand  n(12,2),;
                cmontaza   n(12,2),;
                ctransport n(12,2),;
                cpuboja    n(12,2),;
                costalo1   n(12,2),;
                costalo2   n(12,2),;
                costalo3   n(12,2),;
                cena       n(12,2),;
                svega      n(12,2),;
                procpor    n(09,2),;
                porez      n(12,2),;
                kurs       n(12,4),;
                ukupno     n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('heponc.dbf')
  * wait windows ' fak  '
   create table heponc;
               (brcen     n(06,0),;
                ckrila1    n(12,2),;
                ckrila2    n(12,2),;
                cklizna    n(12,2),;
                charmo     n(12,2),;
                cnaststok  n(12,2),;
                cnadsvetla n(12,2),;
                cotvorp2   n(12,2)   ,;
                cotvorp3   n(12,2),;
                cstaklo    n(12,2),;
                cresetka   n(12,2),;
                cokov      n(12,2),;
                cbravaul   n(12,2),;
                cbravakup  n(12,2),;
                cventil    n(12,2)   ,;
                cprag      n(12,2),;
                cgravura   n(12,2),;
                cvanstand  n(12,2),;
                cmontaza   n(12,2),;
                ctransport n(12,2),;
                cpuboja    n(12,2),;
                costalo1   n(12,2),;
                costalo2   n(12,2),;
                costalo3   n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif
if !file('hepong.dbf')
  * wait windows ' fakg  '
   create table hepong;
               (rsif      c(5),;        
                brkal     c(6),;
                brrac     c(20),;
                datdok    d(8),;
                sifra     c(5),;
                placanje  c(30),;
                rok       c(30),;
                montaza   c(30),;
                boja      c(20),;
                napomena1 c(30),;
                napomena2 c(30),;
                napomena3 c(30),;
                arhiva     c(1),;
                arhiva2    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif



if !file('anposl.dbf')
   create table anposl;
               (datdok    d(8),;
                rsif      c(5),;
                naz       c(30),;
                kol       n(14,3),;
                cena      n(12,2),;
                dug       n(12,2),;
                pot       n(12,2),;
                saldo     n(12,2),;
                opis      c(20),;
                brrac     c(20),;
                valuta    d(8),;
                brkal     c(6),;
                brnal     c(6),;
                sifra     c(5),;
                kurs      n(18,4),;
                konto     c(10),; 
                preneto   c(1),;   
                idbr      n(11);                    
                ) 
   use
endif

if !file('ci01.dbf')
   create table ci01;
               (brojdozv  c(10),;
                datumsla  d(08),;
                dat0      d(08),;
                dat1      d(08),;
                naziv     c(30),;
                pib       c(09),;
                matbr     c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                ) 
   use
endif

if ! file('ci02.dbf')
   create table ci02;
                (sifra     c(05),;
                 naziv     c(30),;
                 pib       c(09),;
                 datum     d(08),;
                preneto   c(1),;   
                idbr      n(11);                    
                ) 
   use
endif

if ! file('ci03.dbf')
   create table ci03;
                (sifra     c(05),;
                naziv     c(30),;
                pib       c(09),;
                civrsta   c(05),;
                cigoznaka c(15),;
                rsif      c(03),;
                jed       c(03),;
                pocetno   n(12,2),;
                kol       n(12,2),;
                koli      n(12,2),;
                prodato   n(12,2),;
                zalihe    n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                ) 
   use
endif


if !file('tmanal.dbf')
  * wait windows ' trgovacka knjiga '   
   create table tmanal ;
               (uknab     n(18,2),;
                vredprod  n(18,2),;
                uplaceno  n(18,2),;
                usluge    n(18,2),;
                vrsta     c(1),;
                procmar   n(18,8),;                
                marza     n(18,2),;                
                realmar   n(18,2),;                
                datod     d(08),;                
                datdo     d(08),;                
                dana      n(06),;
                ostdana   n(06),; 
                procdana  n(09,4),;                
                procdanao n(09,4),;                
                procenul  n(18,2),;                
                proceniz  n(18,2),;                
                procenma  n(18,2),;    
                procenus  n(18,2),;            
                ukupul    n(18,2),;                
                ukupiz    n(18,2),;                
                ukupma    n(18,2),;
                ukupus    n(18,2),;
                dnevzal   n(18,2),;                
                koefobrta n(18,4),;                
                trendproc n(09,4),;                
                trprocus  n(09,4),;                
                tprocenul n(18,2),;                
                tproceniz n(18,2),;                
                tprocenma n(18,2),;                
                tprocenus n(18,2),;                
                tukupul   n(18,2),;                
                tukupiz   n(18,2),;                
                tukupma   n(18,2),;                
                tukupus   n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif



if !file('kpo.dbf')
  * wait windows ' trgovacka knjiga '   
   create table kpo ;
               (datdok    d(8),;
                opis      c(20),;
                malpro    n(18,2),;
                malusl    n(18,2),;
                svega     n(18,2),;
                brnal     c(6),;
                dok       c(3),;
                oper      c(3),;
                sstrana   n(9,0),;
                arhiva    c(1),;
                arhiva2   c(1),;
                automnal  c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('znbil01.dbf')
   create table znbil01 ;
              (aop      c(3)   ,;
               opis     c(77),;
               neto     n(12,0),;
               prneto   n(09,2),;
               preth    n(12,0),;
               prpreth  n(09,2),;
               grupa    n(4),;
               redni    c(8),;
               veceod   n(12),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znbil02.dbf')
   create table znbil02 ;
              (redni    c(8),;
               opis     c(77),;
               neto     n(12,0),;
               preth    n(12,0),;
               standar  n(03),;
               znak     c(1),;
               prneto   n(09,2),;
               prpreth  n(09,2),;
               grupa    n(4),;
               naslov   n(1),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif


if !file('znbil01N.dbf')
   create table znbil01N ;
              (aop      c(3)   ,;
               opis     c(77),;
               neto     n(12,0),;
               prneto   n(09,2),;
               preth    n(12,0),;
               prpreth  n(09,2),;
               grupa    n(4),;
               redni    c(8),;
               veceod   n(12),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('znbil02N.dbf')
   create table znbil02N ;
              (redni    c(8),;
               opis     c(77),;
               neto     n(12,0),;
               preth    n(12,0),;
               standar  n(03),;
               znak     c(1),;
               prneto   n(09,2),;
               prpreth  n(09,2),;
               grupa    n(4),;
               naslov   n(1),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif


if !file('robgru.dbf')
   create table robgru ;
              (grupa    c(3)   ,;              
               grupan   c(20),;
               prockalo  n(09,4),;  
               kol       n(14,2),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif
if !file('robgru1.dbf')
   create table robgru1 ;
              (grupa1   c(3)   ,;              
               grupan1  c(20),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('robgru2.dbf')
   create table robgru2 ;
              (grupa2   c(3)   ,;              
               grupan2  c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('robgru3.dbf')
   create table robgru3 ;
              (grupa3    c(3)   ,;              
               grupan3   c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('robgru4.dbf')
   create table robgru4 ;
              (grupa4    c(3)   ,;              
               grupan4   c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('robgru5.dbf')
   create table robgru5 ;
              (grupa5    c(3)   ,;              
               grupan5   c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('robgru0.dbf')
   create table robgru0 ;
              (grupa     c(3)   ,;              
               grupa1    c(3)   ,;                            
               grupan    c(20),;
               prockalo  n(09,4),;  
               kol       n(14,2),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('robgrum0.dbf')
   create table robgrum0 ;
              (grupa     c(3)   ,;              
               grupa1    c(3)   ,;                            
               grupa2    c(3)   ,;                            
               grupa3    c(3)   ,;                            
               grupa4    c(3)   ,;                                                          
               grupa5    c(3)   ,;                            
               maksmarmp n(10,2),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('tmkoml.dbf')
   create table tmkoml;
              (rsif      c(5)   ,;              
               naz       c(30)  ,;              
               sifra     c(5),; 
               brrac     c(20),;
               datdok    d(8),;
               brkal     c(6),;
               kol       n(18,3),;
               kolp      n(18,3),;
               kolu      n(18,3),;
               koli      n(18,3),;
               kolst     n(18,3),;
               cena      n(18,3),;
               ulaz      n(18,2),;
               povrac    n(18,2),;
               ukulaz    n(18,2),;
               izlaz     n(18,2),;
               svega     n(18,2),;
               malcena   n(18,3),;
               mulaz     n(18,2),;
               mpovrac   n(18,2),;
               mukulaz   n(18,2),;
               mizlaz    n(18,2),;
               msvega    n(18,2),;
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
    use
endif               


if !file('planmei.dbf')
   create table planmei;
             (grupa     c(3)    ,; 
              konto     c(10)    ,;                   
              dugpot    c(1),;  
              planpre   n(12,0),; 
              plansad   n(12,0),;
              ostvardo  n(12,0) ,;   
              procost   n(09,2) ,;   
              izmenjen  n(12,0) ,;   
              korigovan n(12,0),;
              procreb   n(09,2) ,;   
              osnovna   n(12,0) ,;    
              sporedna  n(12,0) ,;    
              dotirana  n(12,0) ,;    
              ukupno    n(12,0) ,;    
              razlika   n(12,0) ,;    
              dat0      d(8),;
              dat1      d(8),;
              naziv     c(40),;
              gnaz      c(40),; 
              mp        c(2)    ,;                                               
              mtr       n(5)    ,;              
              dok       c(3)    ,;                            
              dev       c(3)    ,;                            
              devkurs   n(18,6) ,;                            
              kurs      n(18,6) ,;                                                        
              kontos    c(10)    ,;                   
              trendproc n(09,3),;
              plan      n(12,0),;
              nosnovna  n(12,0) ,;    
              nsporedna n(12,0) ,;    
              ndotirana n(12,0) ,;    
              ntrend    n(09,3),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('plandati.dbf')
   create table plandati ;
             (dat0      d(8),;
              dat1      d(8),;
              putanja   c(60),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('plangrui.dbf')
   create table plangrui;
             (grupa     c(3)    ,; 
              dugpot    c(1),;  
              gnaz      c(40),; 
              planpre   n(12,0),; 
              plansad   n(12,0),;
              ostvardo  n(12,0),;
              trendproc n(09,3),;
              korigplan n(12,0),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use    
endif


if ! file("tmppren.dbf")
   create table tmppren;
             (konto     c(10)  ,; 
              oznaka    c(10),;  
              dps       c(01),; 
              dug       n(12,2),; 
              pot       n(12,2),;
              opis      c(20,0),;
              datdok    d(08,0),;
              brnal     c(06,0),;
              dok       c(03,0),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
          use    
endif


if !file('ldinv.dbf')
   create table ldinv ;
               (br         c(2)     ,;
                ime_prez   c(30)    ,;              
                maticnibr  c(13)     ,;
                casovi     n(4),;
                nak2003    n(12,2),;
                pros2002   n(12,2),;
                procuskl   n(08,2),;
                uskladj    n(12,2),;
                neuskladj  n(12,2),;
                uskladj2   n(12,2),;
                ostvarcas  n(4),;
                neto       n(12,2)  ,;
                porez      n(12,2)  ,;
                dopzdr     n(12,2)  ,;
                svega     n(12,2)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldakput.dbf')
   create table ldakput ;
             (put        c(70),; 
              mesec      c(2),;              
              preneto    c(1),;   
              idbr       n(11);                    
             )
   use
endif


if !file('greske.dbf')
   create table greske ;
             (datum     d(08),;
              vreme     c(10),;
              brojgre   c(10),; 
              poruka    c(70),;
              poruka2   c(70),;
              linija    c(70),; 
              linija2   c(70),; 
              brlinije  c(06),;              
              nazprog   c(20),; 
              predlog   c(70),;
              predlog2  c(70),;
              operater  c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
             )
   use
endif


if !file('ldoz07.dbf')
   create table ldoz07 ;
             (broj      n(4) ,;
              ime_prez  c(30),;
              maticnibr c(13),;
              lbobroj   c(11),;
              zkbroj    c(11),; 
              mes1      n(02),;
              mesec1    c(10),;
              casuc1    n(09),;  
              staz1     n(10),;
              procmin1  n(09,2),;
              dinuc1    n(12,2),;
              dinmin1   n(12,2),;
              dinuk1    n(12,2),;
              mes2      n(02),;
              mesec2    c(10),;
              casuc2    n(09),;  
              staz2     n(10),;
              procmin2  n(09,2),;
              dinuc2    n(12,2),;
              dinmin2   n(12,2),;
              dinuk2    n(12,2),;
              mes3      n(02),;
              mesec3    c(10),;              
              casuc3    n(09),;  
              staz3     n(10),;
              procmin3  n(09,2),;
              dinuc3    n(12,2),;
              dinmin3   n(12,2),;
              dinuk3    n(12,2),;
              casuk     n(09),;
              dinuk     n(12,2),;
              proscas   n(09),;
              prosdin   n(12,2),;
              staz      n(12,2),;
              dincas    n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('ldoz08.dbf')
   create table ldoz08 ;
             (k1zarada  n(12,2),;
              k1sati    n(12,2),;
              k1posatu  n(12,2),;
              k1mogsati n(12,2),;
              k1prosmes n(12,2),;
              k1pzarada n(12,2),;
              k2zarada  n(12,2),;
              k2sati    n(12,2),;
              k2posatu  n(12,2),;
              k2mogsati n(12,2),;
              k2prosmes n(12,2),;
              k2pzarada n(12,2),;
              koef      n(12,4),;    
              mesec1    c(30),;    
              mesec2    c(30),;    
                preneto   c(1),;   
                idbr      n(11);                    
              )
              
   use
endif

if !file('ldoz09.dbf')
   create table ldoz09 ;
             (k1zarada  n(12,2),;
              k1sati    n(12,2),;
              k1posatu  n(12,2),;
              k1mogsati n(12,2),;
              k1prosmes n(12,2),;
              k1pzarada n(12,2),;
              k2zarada  n(12,2),;
              k2sati    n(12,2),;
              k2posatu  n(12,2),;
              k2mogsati n(12,2),;
              k2prosmes n(12,2),;
              k2pzarada n(12,2),;
              koef      n(12,4),;    
              mesec1    c(30),;    
              mesec2    c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
              
   use
endif


if !file('ldoz10.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldoz10 ;
               (br        c(2)     ,;
                ime_prez  c(30)    ,;              
                pol       c(1),;
                prvaispl  c(2),;
                dod       d(8),;
                ddo       d(8),;
                bolest    n(4),; 
                povrad    n(4),;
                profbol   n(4),;
                nega      n(4),;
                izolac    n(4),;
                davalac   n(4),;
                trudnoca  n(4),;
                bruto     n(12,2)  ,;
                dopr      n(12,2)  ,;
                dopf      n(12,2)  ,;
                porez     n(12,2),;
                zaisplat  n(12,2)  ,;
                svega     n(12,2)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldizjdop.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldizjdop ;
               (tekst1    c(70)     ,;
                tekst2    c(70)     ,;
                tekst3    c(70)     ,;
                tekst4    c(70)     ,;
                tekst5    c(70)     ,;
                tekst6    c(70)     ,;
                tekst7    c(70)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('ldporpot.dbf')
   create table ldporpot ;
             (broj      n(4) ,;
              ime_prez  c(30),;
              mes       n(02),;
              mesec     c(10),;
              raddin    n(12,2),;
              radkoef   n(12,4),;
              firdin    n(12,2),;
              firkoef   n(12,4),;
              maticnibr c(13),;
              lbobroj   c(11),;
              zkbroj    c(11),; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('ldporp12.dbf')
   create table ldporp12 ;
             (broj      n(4) ,;
              ime_prez  c(30),;
              mes       n(02),;
              mesec     c(20),;
              bruto     n(14,2),;
              neto      n(14,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('ldporsta.dbf')
   create table ldporsta ;
             (broj      n(4) ,;
              ime_prez  c(30),;
              god       n(02),;
              meseci    n(02),;
              dana      n(02),;
              procvr    n(03),;
              oddat     d(8),;
              dodat     d(8),;
              oddatnega d(8),;
              dodatnega d(8),;
              datpos    d(8),;
              datzahtev d(8),;
              datdozna  d(8),;
              zcnaziv   c(40),;
              zcmesto   c(40),;
              izvodmk   c(30),;
              izvodmes  c(30),;
              deteime   c(30),;
              deterodj  d(8),;
              detered   c(02),;
              nazsuda   c(50),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('aatvprof.dbf')
  * wait windows ' izbor magacina '
   create table aatvprof;
              (sifprod    c(2)  ,;
               robno      c(1)  ,;
               pnaziv     c(50) ,;
               konto      c(10) ,;
               sifarnik   c(2)  ,;
               dok        c(3)  ,;
               izni       n(18,2),;
               velvred    n(18,2),;
               marza      n(18,2),;
               rabat      n(18,2),;
               profit     n(18,2),;
               strup      n(09,2),;
               troskovid  n(18,2),;
               troskoviz  n(18,2),;
               troskovi   n(18,2),;
               strut      n(09,2),;
               zarada     n(18,2),;
               struz      n(09,2),;
               uknab      n(18,2),;
               osn18      n(18,2),;
               pdv18      n(18,2),;
               osn8       n(18,2),;
               pdv8       n(18,2),;
               osn5       n(18,2),;
               pdv5       n(18,2),;
               raznab     n(18,2),;
               ukprod     n(18,2),;
               osn18p     n(18,2),;
               pdv18p     n(18,2),;
               osn8p      n(18,2),;
               pdv8p      n(18,2),;
               razprod    n(18,2),;
               placpor    n(18,2),;
               obrpor     n(18,2),;
               ukzaduz    n(18,2),;
               ukpor18    n(18,2),;
               ukpor8     n(18,2),;
               netozaduz  n(18,2),;
               ukmarza    n(18,2),;
               marproc    n(12,5),;
               ukprodv    n(18,2),;
               ukrpor18   n(18,2),;
               ukrpor8    n(18,2),;
               netoprod   n(18,2),;
               realmarza  n(18,2),;
               zaradaz    n(18,2),;
               troskoviz2 n(18,2),;
               brnal      c(6),;    
               ukzad      n(18,2),;
               vredprod   n(18,2),;
               zalihe     n(18,2),;
               dat0       d(8),;
               dat1       d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif

if !file('aatvpor.dbf')
  * wait windows ' izbor magacina '
   create table aatvpor;
              (sifprod    c(2)  ,;
               robno      c(1)  ,;
               pnaziv     c(50) ,;
               konto      c(10) ,;
               sifarnik   c(2)  ,;
               dok        c(3)  ,;
               uknab      n(18,2),;
               osn18      n(18,2),;
               pdv18      n(18,2),;
               osn8       n(18,2),;
               pdv8       n(18,2),;
               osn5       n(18,2),;
               pdv5       n(18,2),;
               raznab     n(18,2),;               
               ukprod     n(18,2),;
               osn18p     n(18,2),;
               pdv18p     n(18,2),;
               osn8p      n(18,2),;
               pdv8p      n(18,2),;
               razprod    n(18,2),;
               brnal      c(6),;    
               dat0       d(8),;
               dat1       d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif


if !file('aatvserv.dbf')
  * wait windows ' izbor magacina '
   create table aatvserv;
              (sifprod    c(2)  ,;
               robno      c(1)  ,;
               pnaziv     c(50) ,;
               konto      c(10) ,;
               sifarnik   c(2)  ,;
               dok        c(3)  ,;
               imakal     c(1),;
               imafak     c(1),;
               imaniv     c(1),;
               dat0       d(8),;
               dat1       d(8),;
               kontok     c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif


if !file('aatvpl.dbf')
  * wait windows ' izbor magacina '
   create table aatvpl;
              (sifprod   c(2)  ,;
               pnaziv    c(50) ,;
               dok       c(3)  ,;
               planprih  n(18,2),;
               plandobit n(18,2),;
               ostvareno n(18,2),;
               marza     n(18,2),;
               dirtr     n(18,2),;
               plate     n(18,2),;
               opstitr   n(18,2),;
               ukupnitr  n(18,2),;
               dobit     n(18,2),;
               struostv1 n(12,4),;
               strumar1  n(12,4),;
               sifarnik  c(2)  ,;
               dat0      d(8),;
               dat1      d(8),;
               konto     c(10) ,;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif

if !file('aatvpl0.dbf')
  * wait windows ' izbor magacina '
   create table aatvpl0;
              (sifprod   c(2)  ,;
               pnaziv    c(50) ,;
               dok       c(3)  ,;
               planpri1  n(18,2),;
               plandob1  n(18,2),;
               planpri2  n(18,2),;
               plandob2  n(18,2),;
               planpri3  n(18,2),;
               plandob3  n(18,2),;
               planpri4  n(18,2),;
               plandob4  n(18,2),;
               planpri5  n(18,2),;
               plandob5  n(18,2),;
               planpri6  n(18,2),;
               plandob6  n(18,2),;
               planpri7  n(18,2),;
               plandob7  n(18,2),;
               planpri8  n(18,2),;
               plandob8  n(18,2),;
               planpri9  n(18,2),;
               plandob9  n(18,2),;
               planpri10 n(18,2),;
               plandob10 n(18,2),;
               planpri11 n(18,2),;
               plandob11 n(18,2),;
               planpri12 n(18,2),;
               plandob12 n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif



if !file('prorun.dbf')
   *wait windows ' normativi'
   create table prorun(;
   rnal      c(12)  ,;
   dat1      d(8),;
   broj      n(4),;
   ldsif     c(5)   ,;
   kol0      n(18,6),;
   cena      n(18,6),;
   iznos     n(18,2),;
   oper     c(2)    ,;
   datum    d(8)    ,;                                                                      
   vreme    c(10),;
   arhiva   c(1),; 
   arhiva2  c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif



if !file('prorun00.dbf')
   create table prorun00(;
   rnal      c(12)  ,;
   normativ  c(5),;
   dat0      d(8),; 
   dat1      d(8),;
   rsif      c(5),;
   naziv     c(30)  ,;
   ldsif     c(5),;
   naz       c(30)  ,;
   kolp      n(18,3),;
   kol0      n(18,3),;
   kolraz    n(18,3),;
   proczav   n(09,3),;
   broj      n(4),;
   cena      n(18,6),;
   iznos     n(18,2),;
   adat0     d(8),; 
   adat1     d(8),;
   kol       n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif



if !file('analdo.dbf')
   create table analdo (;
                     sifra     c(5),;
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


if !file('ronar.dbf')
  * wait windows ' roba '
   create table ronar;
               (rsif      c(5)   ,;
                naz       c(30),;
                novo      c(1),;
                ulaz      n(09),;
                izlaz     n(09),;
                stanje    n(09),;
                vpkol     n(09),;
                naruciti  n(09),;
                kol01     n(09),;
                kol02     n(09),;
                kol03     n(09),;
                kol04     n(09),;
                kol05     n(09),;
                kol06     n(09),;
                kol07     n(09),;
                kol08     n(09),;
                kol09     n(09),;
                kol10     n(09),;
                kol11     n(09),;
                kol12     n(09),;
                prviul    d(8),;
                zadiz     d(8),;
                danaprod  n(09),;
                mesecno   n(11,2),;
                sifra     c(05),;
                podnaziv  c(20),;
                grupa     c(03),;
                interno   c(1),;
                zadul     d(8),;
                zadkol    n(09),; 
                zadcena   n(12,2),; 
                barkod    c(20),;   
                podrsif   c(5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('ronari.dbf')
  * wait windows ' roba '
   create table ronari;
               (rsif      c(5)   ,;
                grupa     c(03),;
                naz       c(30),;
                stanje    n(09),;
                zadul     d(8),;
                zadkol    n(09),; 
                zadcena   n(12,2),; 
                ulaz      n(09),;
                izlaz     n(09),;
                naruciti  n(09),;
                kol15     n(09),;
                kol30     n(09),;
                kol60     n(09),;
                podnaziv  c(20),;
                prviul    d(8),;
                zadiz     d(8),;
                danaprod  n(09),;
                vredul    n(12,2),;
                vrediz    n(12,2),;
                vredulp   n(12,2),;
                vredizp   n(12,2),;
                fakturna  n(12,2),;
                sifra     c(05),;
                procul    n(12,2),; 
                prociz    n(12,2),; 
                procsal   n(12,2),; 
                proculp   n(12,2),; 
                procizp   n(12,2),; 
                procsalp  n(12,2),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('ronarpov.dbf')
  * wait windows ' roba '
   create table ronarpov;
               (rsif      c(5)   ,;
                grupa     c(03),;
                naz       c(30),;
                podnaziv  c(20),;
                ulaz1e    n(12,2),;                
                izlaz1e   n(12,2),;
                stanje1   n(12,2),;
                ulaz2e    n(12,2),;                
                izlaz2e   n(12,2),;
                stanje2   n(12,2),;
                ukulaze   n(12,2),;
                ukizlaze  n(12,2),;
                stanjeuke n(12,2),;
                ulaz1i    n(12,2),;
                izlaz1i   n(12,2),;
                ulaz2i    n(12,2),;
                izlaz2i   n(12,2),;
                ukulaz    n(12,2),;
                ukizlaz   n(12,2),;
                stanjeuk  n(12,2),;
                naruciti  n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('ronarpv0.dbf')
  * wait windows ' roba '
   create table ronarpv0;
               (mag       c(2)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif



if !file('fakko.dbf')
  * wait windows ' fak  '
   create table fakko;
               (brodob    n(09),;
                sifra     c(5),;       
                datdok    d(8),;
                velvred   n(18,2),;
                procod    n(18,4),;
                osnovica  n(18,2),;
                tarifa    c(6)   ,;
                procpor   n(10,4),;
                porez     n(18,2),;
                ukupno    n(18,2),;
                dat0      d(8),;       
                dat1      d(8),;
                brrac     c(20),; 
                model     c(25),;    
                brnal     c(6),;    
                dok       c(3),;    
                fpsifra   c(3),;     
                arhiva    c(1),;     
                arhiva2   c(1),;     
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif





if !file('tmsve.dbf')
   create table tmsve ;
               (pnaziv    c(50)      ,;
                pocetno   n(18,2),;
                uknab     n(18,2),;
                vredprod  n(18,2),;
                ukmarza   n(18,2),;
                osn18     n(18,2),;
                pdv18     n(18,2),;
                osn8      n(18,2),;
                pdv8      n(18,2),;
                poljdin   n(18,2),;
                osn0      n(18,2),;
                pdv0      n(18,2),;
                rosn18    n(18,2),;
                rpdv18    n(18,2),;
                rosn8     n(18,2),;
                rpdv8     n(18,2),;
                rosn0     n(18,2),;
                ukprod    n(18,2),;
                razlika   n(18,2),;
                rmarza    n(18,2),;
                uplaceno  n(18,2),;
                usluge    n(18,2),;
                gotovina  n(18,2),;
                cekovi    n(18,2),;
                kartica   n(18,2),;
                ostalo    n(18,2),;
                dok       c(3),;
                dat0      d(8),;       
                dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif


if !file('tmsve0.dbf')
   create table tmsve0 ;
               (dok       c(3),;
                datdok    d(8),;       
                pnaziv    c(50),;
                uknab     n(18,2),;
                ukmarza   n(18,2),;
                ukup18    n(18,2),;
                ukup8     n(18,2),;
                ukup0     n(18,2),;
                osn18     n(18,2),;
                pdv18     n(18,2),;
                osn8      n(18,2),;
                pdv8      n(18,2),;
                ukprod    n(18,2),;
                sifprod   c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif

if !file('tmspren.dbf')
   create table tmspren ;
               (dok       c(3),;
                brkal     c(6),;
                brrac     c(20),;
                datdok    d(8),;
                prijemnab n(18,2),;
                prijemmal  n(18,2),;                
                prijemkol n(18,2),;
                slanjenab n(18,2),;
                slanjemal n(18,2),;                
                slanjekol n(18,2),;
                razlnab   n(18,2),;
                razlmal   n(18,2),;
                razlkol   n(18,2),;
                sifprod   c(2)  ,;
                dat0      d(8),;       
                dat1      d(8),;
                fvrsta    c(3),;
                pnaziv    c(50)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif

if !file('tabele.dbf')
   create table tabele(;
   ime       c(12)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif


if !file('calc.dbf')
   create table calc(;
   broj      n(12)  ,;
   znak      c(01)  ,;
   iznos     n(18,4) ,;
   saldo     n(18,4),;
   memori    n(18,4),;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif


if ! file('senalg.dbf')
   create table senalg(;
                      brkal      c(6),;
                      datdok     d(8),;
                      mesto      c(25),;
                      posvan     c(1),;
                      posgar     c(1),;
                      posmon     c(1),;
                      posost     c(1),;
                      uredjaj    c(60),;
                      idbroj     c(20),;               
                      sifrad1    n(04,0),;
                      ime_prez1  c(25),;
                      efevreme1  n(12,2),;
                      rezvreme1  n(12,2),;
                      sifrad2    n(04,0),;
                      ime_prez2  c(25),;
                      efevreme2  n(12,2),;
                      rezvreme2  n(12,2),;
                      sifrad3    n(04,0),;
                      ime_prez3  c(25),;
                      efevreme3  n(12,2),;
                      rezvreme3  n(12,2),;
                      sifrad4    n(04,0),;
                      ime_prez4  c(25),;
                      efevreme4  n(12,2),;
                      rezvreme4  n(12,2),;
                      sifrad5    n(04,0),;
                      ime_prez5  c(25),;
                      efevreme5  n(12,2),;
                      rezvreme5  n(12,2),;
                      sifrad6    n(04,0),;
                      ime_prez6  c(25),;
                      efevreme6  n(12,2),;
                      rezvreme6  n(12,2),;
                      sifrad7    n(04,0),;
                      ime_prez7  c(25),;
                      efevreme7  n(12,2),;
                      rezvreme7  n(12,2),;
                      sifrad8    n(04,0),;
                      ime_prez8  c(25),;
                      efevreme8  n(12,2),;
                      rezvreme8  n(12,2),;
                      sifrad9    n(04,0),;
                      ime_prez9  c(25),;
                      efevreme9  n(12,2),;
                      rezvreme9  n(12,2),;
                      sifrad10   n(04,0),;
                      ime_prez10 c(25),;
                      efevreme10 n(12,2),;
                      rezvreme10 n(12,2),;
                      efesati    n(12,2),;
                      efecena    n(12,2),;   
                      efevred    n(12,2),;
                      rezsati    n(12,2),;
                      rezcena    n(12,2),;   
                      rezvred    n(12,2),;
                      vozilo    c(20),; 
                      vozac     c(30),; 
                      relacod   c(30),;
                      relacdo   c(30),;
                      kvasati    n(12,2),;
                      kvacena    n(12,2),;   
                      kvavred    n(12,2),;
                      svega      n(12,2),;
                      brojkilo   n(12,2),;
                      cenakilo   n(12,2),;
                      iznoskilo  n(12,2),;
                      opisrad1   c(60),;
                      opisrad2   c(60),;
                      opisrad3   c(60),;
                      opisrad4   c(60),;
                      opisrad5   c(60),;
                      napizvodj1 c(60),;
                      napizvodj2 c(60),;
                      napizvodj3 c(60),;
                      napizvodj4 c(60),;
                      napizvodj5 c(60),;
                      napinvest1 c(60),;
                      napinvest2 c(60),;
                      napinvest3 c(60),;
                      napinvest4 c(60),;
                      napinvest5 c(60),;
                      sifra      c(5),;
                      rsif       c(5),;
                      arhiva     c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif

if ! file('senal.dbf')
   create table senal(;
                      brkal      c(6),;
                      rsif       c(5),;
                      kol        n(12,2),;
                      cena       n(12,2),;
                      iznos      n(12,2),; 
                      dangar     n(09,0),;
                      datdok     d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif


if ! file('separam.dbf')
   create table separam(;
                      brpar      c(2),;
                      efecena    n(12,2),;   
                      rezcena    n(12,2),;   
                      kvacena    n(12,2),;   
                      cenakilo   n(12,2),;   
                      rsif       c(5),;
                      dangar     n(09,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif

if ! file('serad.dbf')
   create table serad(;
                      brkal      c(6),;
                      datdok     d(8),;
                      uredjaj    c(60),;
                      sifrad     n(04,0),;
                      ime_prez   c(25),;
                      iznos      n(12,2),;
                      efevreme   n(12,2),;
                      efecena    n(12,2),;   
                      efevred    n(12,2),;
                      rezvreme   n(12,2),;
                      rezcena    n(12,2),;   
                      rezvred    n(12,2),;
                      kvasati    n(12,2),;
                      kvacena    n(12,2),;   
                      kvavred    n(12,2),;
                      svega      n(12,2),;
                      brojkilo   n(12,2),;
                      cenakilo   n(12,2),;
                      iznoskilo  n(12,2),;
                      sifra      c(5),;
                      rsif       c(5),;
                      dat0       d(8),;
                      dat1       d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                      )
   use
endif


if !file('robpcene.dbf')
  * wait windows ' kal  '
   create table robpcene;
               (naz       c(30),;
                rsif      c(5),;
                datdok    d(8),;
                nabcena   n(18,3),;
                sifra     c(5),;
                stopa     n(18,4),;
                kumulativ n(18,4),;
                podnaziv  c(20),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;
                podrsif   c(5),;
                proizv    c(5),;
                magacin   n(02,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('proscen.dbf')
   create table proscen ;
               (rrec      n(10),;
                rsif      c(5),; 
                kol       n(18,3)   ,;
                nabcena   n(18,4)   ,;                
                nabvred   n(18,4)   ,;                                
                koli      n(18,4)   ,;                
                cena      n(18,4)   ,; 
                izni      n(18,4)   ,;                               
                datdok    d(08)     ,;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('fakcmr.dbf')
   create table fakcmr;
               (rrec      n(10),;
                brrac     c(20),; 
                datdok    d(8),;
                devvred   n(12,2),;
                cmr       c(20),;
                dev       c(3),;
                devkurs   n(18,4),; 
                dinvred   n(12,2),;
                godina    n(04,0),;
                konto     c(10),;
                dok       c(3),;
                sifra     c(5),;
                naziv     c(40),;
                putanja   c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('fakcmr0.dbf')
   create table fakcmr0;
               (dat0      d(8),;
                dat1      d(8),;
                putanja   c(70),;
                godina    n(04,0),;
                konto     c(10),;
                magacin   c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
*----------------klanica-------------

if !file('klzap.dbf')
   create table klzap;
               (redni     c(04),;
                datdok    d(8),;
                vrsto     c(04),;
                brol      n(05,0),;
                kom       n(08,0),;
                kol       n(12,2),;
                cena      n(12,2),;
                iznos     n(12,2),;
                pproc     n(10,4),;
                meso      n(12,2),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('klsto.dbf')
   create table klsto;
               (vrsto     c(04),;
                naz       c(30),;
                cena      n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('klpro.dbf')
   create table klpro;
               (rbr       c(04),;
                redni     c(04),;
                psif      c(05),;
                kol       n(12,0),;
                izl       n(12,0),;
                hla       n(12,0),;
                raz       n(12,0),;
                cena      n(12,2),;
                iznos     n(12,2),;
                grupa     c(03),;
                brnal     c(06),;
                vrsto     c(04),;
                pproc     n(10,4),;
                datdok    d(08),;
                magacin   c(02),;
                arhiva    c(01),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('klpro0.dbf')
   create table klpro0;
               (rbr       c(04),;
                redni     c(04),;
                brnal     c(06),;
                vrsto     c(04),;
                magacin   c(02),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('klpolu.dbf')
   create table klpolu;
               (psif      c(05),;
                naz       c(30),;
                grupa     c(03),;
                cena      n(12,2),;
                jm        c(03),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('klrsif.dbf')
   create table klrsif;
               (rsif      c(05),;
                naz       c(30),;
                grupa     c(03),;
                cena      n(12,2),;
                jm        c(03),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('klnorma.dbf')
   create table klnorma;
               (rsif      c(05),;
                psif      c(05),;
                kol       n(18,6),;
                cena      n(12,2),;
                iznos     n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('klrsife.dbf')
   create table klrsife;
               (rsif      c(05),;
                brpri     c(06),;
                ulaz      n(12,0),;
                izlaz     n(12,0),;
                cena      n(12,2),;
                duguje    n(12,2),;
                potrazuje n(12,2),;
                brnal     c(06,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('klpolue.dbf')
   create table klpolue;
               (psif      c(05),;
                brpri     c(06),;
                ulaz      n(12,0),;
                izlaz     n(12,0),;
                cena      n(12,2),;
                duguje    n(12,2),;
                potrazuje n(12,2),;
                brnal     c(06,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('preuzpod.dbf')
   create table preuzpod(;
                gk        c(1),;  
                an        c(1),;  
                svean     c(1),;  
                pdvu      c(1),;  
                pdvi      c(1),;  
                brnal     c(6),;  
                putanja   c(80),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif                

if !file('provr.dbf')
   create table provr(;
                vrsta     c(1),;  
                brkal     c(6),;  
                rsif      c(5),;  
                kol       n(18,3),;  
                koli      n(18,3),;  
                nabcena   n(18,3),;  
                velcena   n(18,3),;  
                malcena   n(18,3),;  
                scena     n(18,3),;  
                datdok    d(8),;  
                kalzag    c(6),;  
                datzag    d(8),;  
                brkalg    c(6),;  
                brrac     c(20),;  
                polje     n(18,0),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif                


*if !file('pcid.dbf')
*   create table pcid;
*               (idul      c(18),;
*                ie        c(01),;
*                profcent  c(25),;
*                sektor    c(20),;
*                podsektor c(20),;
*                lokacija  c(20),;
*                prihrash  c(20),;
*               def       c(20);
*               )
*   use
*endif


if !file('pcprofc.dbf')
   create table pcprofc;
               (idprofc   c(02),;
                profcent  c(35),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pcsektor.dbf')
   create table pcsektor;
               (idsektor  c(02),;
                sektor    c(35),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pcpodsek.dbf')
   create table pcpodsek;
               (idpodsek  c(03),;
                podsektor c(35),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pclokac.dbf')
   create table pclokac;
               (idlokac   c(02),;
                lokacija  c(35),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pclokacP.dbf')
   create table pclokacP;
               (idlokacP  c(02),;
                lokacijaP c(35),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pcprenf.dbf')
   create table pcprenf;
               (podatak   c(90),;
                idmer     c(20),;
                protokol  c(20),;
                vozac     c(25),;
                lkbr      c(25),;
                regbroj   c(25),;                
                naziv     c(25),;                                
                sifra     c(5),;
                gradil    c(25),;
                tipmer    c(25),;
                idbroj    c(11),;
                idbroj2   c(11),;                
                merenjek  n(18,3),;                                
                naz       c(25),;                                
                rsif      c(5),;
                objekat   c(25),;
                brojvage  c(25),;                
                datmer1   d(8),;
                vrememer1 c(10),;                
                kolicina  n(18,3),;
                jed       c(10),;                
                napomena  c(60),;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pcprenpu.dbf')
   create table pcprenpu ;
             (putanja   c(60),; 
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif



if !file('prevev0.dbf')
   create table prevev0;
               (brkal     c(6),;       
                koli      n(18,3),;
                cena      n(18,5),;
                iznos     n(18,3),;
                datdok    d(8)   ,;
                sifra     c(05),;
                brrac     c(20),;
                vrsta     c(1),;
                opis      c(25),;
                relacija  c(40),; 
                km        n(12,0),;
                gorivo    n(12,2),;
                gume      n(12,2),;
                ostalo    n(12,2),;
                uktros    n(12,2),;
                razlika   n(12,2),;
                arhiva    c(01),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('komande.dbf')
   create table komande;
               (red       n(6),;       
                znak      c(1),;
                komanda   c(128),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif



     
if !file('putnob.dbf')
  * wait windows ' roba '
   create table putnob;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                brrac      c(20),;
                datdok     d(8),;
                valuta     d(8),;
                fakvred    n(12,2) ,;
                porez      n(12,2) ,;
                osnov1     n(12,2) ,;
                uplata     n(12,2),;
                datupl     d(8),;
                danak      n(12,2),;   
                proc1      n(10,2),;
                iznos1     n(12,2),;
                dana1      n(06),;
                procumanj1 n(10,2),;
                umanj1     n(12,2),;
                dana2      n(06),;
                procumanj2 n(10,2),;
                umanj2     n(12,2),;
                dana3      n(06),;
                procumanj3 n(10,2),;
                umanj3     n(12,2),;
                dana4      n(06),;
                procumanj4 n(10,2),;
                umanj4     n(12,2),;
                ukprocum   n(12,2),;
                iznosum    n(12,2),;
                zarada     n(12,2),;
                doval1     n(18,2),;
                doval2     n(18,2),;
                doval3     n(18,2),;
                doval4     n(18,2),;
                odoval1    n(18,2),;
                odoval2    n(18,2),;
                odoval3    n(18,2),;
                odoval4    n(18,2),;
                dat0       d(8) ,;
                dat1       d(8) ,;
                brkal      c(6),;
                danazak    n(12,2),;
                danamaks   n(12,2),;                
                sifra      c(5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('putno3.dbf')
  * wait windows ' roba '
   create table putno3;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                brrac      c(20),;
                datdok     d(8),;
                valuta     d(8),;
                fakvred    n(12,2) ,;
                porez      n(12,2) ,;
                osnov1     n(12,2) ,;
                proc1      n(10,2),;
                iznos1     n(12,2),;
                zarada     n(12,2),;
                dat0       d(8) ,;
                dat1       d(8) ,;
                brkal      c(6),;
                sifra      c(5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('putnobrs.dbf')
  * wait windows ' roba '
   create table putnobrs;
               (sifra      c(5),;
                brrac      c(20),;
                datdok     d(8),;
                valuta     d(8),;
                fakvred    n(12,2) ,;
                uplatarok  n(12,2),;
                uplatazak  n(12,2),;
                uplata     n(12,2),;
                datupl     d(8),;
                danazak    n(12),;
                komdana    n(12),;   
                mtr        n(5),;
                komproc    n(12,2),;
                zarada     n(12,2),;
                dat0       d(8) ,;
                dat1       d(8) ,;
                brkal      c(6),;
                putnik     c(3),;
                ime        c(30),;
                uplataKAS  n(12,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif



if !file('putnobra.dbf')
  * wait windows ' roba '
   create table putnobra;
               (putnik     c(3)    ,;
                ime        c(30)   ,;
                brrac      c(20),;
                datdok     d(8),;
                valuta     d(8),;
                rsif       c(5),;
                akcijaput  n(18,2),;
                osnov1     n(12,2) ,;
                zarada     n(12,2),;
                dat0       d(8) ,;
                dat1       d(8) ,;
                brkal      c(6),;
                sifra      c(5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif



if !file('pcev.dbf')
  * wait windows ' kal  '
   create table pcev;
               (naz       c(30),;
                brkal     c(6) ,;
                rsif      c(5),;
                kol       n(18,4),;
                velcena   n(18,5),;
                velvred   n(18,2),;
                koef      n(18,8),;
                kol2      n(18,4),;
                rabproc   n(12,2),;
                rabat     n(18,2),;
                tura      n(10,2),;
                kilometr  n(10,2),;
                kilometrp n(10,2),;
                tarifa    c(6),;
                procpor   n(12,2),;
                porez     n(18,2),;
                fakvred   n(12,2),;
                devcena   n(18,5),;
                devvred   n(18,3),;
                datdok    d(8),;
                sifra     c(5),;
                isifra    c(5),;
                idbroj    c(11),;                
                idbroji   c(11),;                
                konto     c(10),;                
                kontoi    c(10),;                
                idprofc   c(02),;   
                idsektor  c(02),;
                idpodsek  c(03),;
                idlokac   c(02),;
                idlokacP  c(02),;
                cena      n(18,5),;
                iznos     n(18,2),;
                ceni      n(18,5),;
                izni      n(18,2),;
                opsti     n(18,2),;
                pocsat    n(18,2),;
                zadsat    n(18,2),;
                sati      n(18,2),;
                proscena  n(18,3),;
                prosvred  n(18,2),;
                trebov    c(01),;
                koli      n(18,4),;
                opstigk   n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('pcevg.dbf')
  * wait windows ' kalg  '
   create table pcevg;
               (brkal     c(6) ,;
                protokol  n(12),; 
                fvrsta    c(3)  ,;
                ie        c(1),;    
                uliz      c(1),;
                pc1pr     c(1),;
                pc2pr     c(1),;
                sifra     c(5) ,;
                vsifra    c(4) ,;
                vozsifra  c(4),;  
                brprevoz  c(6),;  
                isifra    c(5) ,;
                idbroj    c(11),;
                idbroji   c(11),;
                konto     c(10),;                
                brrac     c(30) ,;
                datdok    d(8)  ,;
                valuta    d(8)  ,;
                dokum     c(30),;
                napomenag c(80),;
                napomenad c(80),;
                relacod   c(30),;
                relacdo   c(30),;
                interna   c(1),;
                prenos    c(1),;
                devizna   c(1),;
                arhiva    c(1),;
                dev       c(3),;
                devkurs   n(18,6),;
                idprofc   c(02),;   
                idsektor  c(02),;
                idpodsek  c(03),;
                idlokac   c(02),;
                idlokacP  c(02),;
                idprofci  c(02),;   
                idsektori c(02),;
                idpodseki c(03),;
                idlokaci  c(02),;
                idlokaciP c(02),;
                naziv     c(40),;
                nazivi    c(40),;
                vpdv      c(3),;
                ppdv      c(1),;
                opdv      c(1),;
                vrstapl   c(1),;
                neprofitu c(01),;
                neprofiti c(01),;
                otr       c(01),;
                vkonto    c(05),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )

          use
       endif


if !file('pcdef0.dbf')
   create table pcdef0;
               (idbroj    c(11),;
                idprofc   c(02),;   
                idsektor  c(02),;
                idpodsek  c(03),;
                idlokac   c(02),;
                idlokacP  c(02),;
                isifra    c(05),;
                neprofit  c(01),;
                otr       c(01),;
                vsifra    c(04),;
                vozsifra  c(04),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('pcvozila.dbf')
   create table pcvozila ;
               (vsifra    c(4)     ,;
                regbroj   c(25)    ,;
                vnaz      c(30)    ,;              
                nosivost  n(12,2),; 
                idbroj    c(11),;                
                vkonto    c(05),;
                preneto   c(1),;   
                idbr      n(11);                    
                )

          use
       endif

if !file('pcvozaci.dbf')
   create table pcvozaci ;
               (vozsifra  c(4)     ,;
                ime_prez  c(30)    ,;
                maticnib  c(13)     ,;
                lkbroj    c(10),;
                sup       c(20),;  
                sifra     c(05),;
                voznaz    c(40),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
    use
endif    


if !file('pcevizv.dbf')
  * wait windows ' kalg  '
   create table pcevizv;
               (brkal     c(6),;
                ie        c(1),;    
                uliz      c(1),;
                pc1pr     c(1),;
                pc2pr     c(1),;                
                idbroj    c(11),;
                idbroji   c(11),;
                rsif      c(5),;
                kol       n(18,4),;
                velcena   n(18,5),;
                velvred   n(18,2),;
                koef      n(18,8),;
                kol2      n(18,4),;
                rabproc   n(12,2),;
                rabat     n(18,2),;
                tura      n(10,2),;
                kilometr  n(10,2),;
                kilometrp n(10,2),;
                tarifa    c(6),;
                procpor   n(12,2),;
                porez     n(18,2),;
                fakvred   n(12,2),;                
                devcena   n(18,5),;
                devvred   n(18,3),;
                brprevoz  c(6),;
                fvrsta    c(3)  ,;
                sifra     c(5) ,;
                vsifra    c(4) ,;
                vozsifra  c(4),;  
                dat0      d(8)  ,;
                dat1      d(8)  ,;
                datdok    d(8)  ,;
                idprofc   c(02),;   
                idsektor  c(02),;
                idpodsek  c(03),;
                idlokac   c(02),;
                idlokacP  c(02),;
                isifra    c(5) ,;
                konto     c(10),;                
                idprofci  c(02),;   
                idsektori c(02),;
                idpodseki c(03),;
                idlokaci  c(02),;
                idlokaciP c(02),;
                protokol  n(12),;                 
                kolu      n(18,4),;
                koli      n(18,4),;
                kolst     n(18,4),;
                vredu     n(18,4),;
                vredi     n(18,4),;
                vredst    n(18,4),;
                opsti     n(18,2),;
                naziv     c(40),;
                nazivi    c(40),;
                vrstapl   c(1),;
                brrac     c(30),;
                dokum     c(30),;
                brprevoz2 c(6),;
                brrac2    c(30),;
                dokum2    c(30),;
                vredup    n(09,2),;
                vredip    n(09,2),;
                vredstp   n(09,2),;
                pocsat    n(18,2),;
                zadsat    n(18,2),;
                sati      n(18,2),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;                
                relacod   c(30),;
                relacdo   c(30),;
                neprofitu c(01),;
                neprofiti c(01),;
                otr       c(01),;
                vkonto    c(05),;
                proscena   n(18,5),;
                prosvred   n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )

          use
       endif

if !file('pcevput.dbf')
   create table pcevput ;
               (putanja   c(70)  ,;
                datum     d(8)   ,;
                nazdat1   c(8)   ,;              
                nazdat2   c(8)   ,;              
                dat0      d(8)   ,;
                dat1      d(8)   ,;
                dok       c(3)   ,;              
                oznaka    c(1)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )

          use
       endif



if !file('pufak.dbf')
  * wait windows ' fak  '
   create table pufak;
               (naz       c(30),;
                brkal     c(6),;       
                rsif      c(5),;       
                koli      n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,3),;
                rabproc   n(10,4),;
                rabat     n(18,3),;
                tarifa    c(6)   ,;
                procpor   n(10,4),;
                porez     n(18,3),;
                malcena   n(18,5),;
                malvred   n(18,3),;
                zaokruz   n(14,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('pufakg.dbf')
  * wait windows ' fakg  '
   create table pufakg;
               (rsif      c(5),;        
                brkal     c(6),;
                fvrsta    c(3),;
                sifra     c(5),;
                brrac     c(20),;
                datdok    d(8),;
                valuta    d(8),;
                putnik    c(3),;
                napomenag c(80),;
                napomenad c(80),;
                datum     d(8),;
                vreme     c(8),;
                model     c(30),; 
                vpdv      c(3),;
                opdv      c(1),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif
      
if !file('purob.dbf')
  * wait windows ' roba '
   create table purob;
               (rsif      c(5)   ,;
                naz       c(30),;
                kol       n(18,3),;
                velcena   n(14,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                jed       c(10),;
                barkod    c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif
      
if !file('irob.dbf')
  * wait windows ' roba '
   create table irob;
               (redbr     n(4),; 
                rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                kol       n(18,3),;
                velcena   n(14,5),;
                malcena   n(14,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                cena      n(14,5),;
                brkal     c(6),;
                brnal     c(6),;
                datdok    d(8),;
                zadnab    n(18,5),; 
                starifa   c(6),;
                sprocpor  n(10,4),;
                scena     n(14,5),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('vizitke.dbf')
  * wait windows ' roba '
   create table vizitke;
               (red1      c(60),; 
                red2      c(60),; 
                red3      c(60),; 
                red4      c(60),; 
                red5      c(60),; 
                red6      c(60),; 
                red7      c(60),; 
                red8      c(60),; 
                red9      c(60),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('vaga.dbf')
  * wait windows ' roba '
   create table vaga;
               (od        c(02),; 
                mereno    c(01),; 
                plu       c(05),; 
                kod       c(02),; 
                rsif      c(05),; 
                naz       c(30),; 
                cena      c(07),; 
                rok       c(03),;
                icode     c(05),; 
                name0     c(30),; 
                price     c(07),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif




if !file('pomat.dbf')
  * wait windows ' fak  '
   create table pomat;
               (naz       c(30),;
                brkal     c(6),;       
                rsif      c(5),;       
                koli      n(18,3),;
                datdok    d(8)   ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('pomatg.dbf')
  * wait windows ' fakg  '
   create table pomatg;
               (brkal     c(6),;
                fvrsta    c(3),;
                datdok    d(8),;
                rnal      c(12),; 
                pbrkal    c(6),;
                revers    c(1),;                  
                magacin   c(2),;                  
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif

if !file('anodob.dbf')
   create table anodob(;
                     redbr     c(5),;
                     sifra     c(5),;
                     datdok    d(8),;
                     datodob   d(8),;
                     osnov18   n(18,2),;
                     pdv18     n(18,2),;
                     osnov8    n(18,2),;
                     pdv8      n(18,2),;
                     osnov0    n(18,2),;
                     osnov     n(18,2),;
                     pdv       n(18,2),;
                     svega     n(18,2),;
                     brrac     c(20),;                
                     brnal     c(6  ),;
                     dok       c(3  ),;
                     konto     c(10),;
                     opis1     c(60),;
                     opis2     c(60),;
                     opis3     c(60),;
                     opis4     c(60),;
                     opis5     c(60),;
                     fpsifra   c(3),;                     
                     oper      c(2  ),;
                     datum     d(8  ),;
                     vreme     c(8  ),;
                     vrsta     c(1  ),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     promet    n(18,2),;
                     procprom  n(10,2),;
                     dat0      d(8),;
                     dat1      d(8),;
                     valuta    d(8),;
                     grupa1    c(3),;                     
                     arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('anodob00.dbf')
   create table anodob00(;
                     redbr     c(2),;
                     dat0      d(8),;
                     dat1      d(8),;
                     opis      c(40),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('putnic00.dbf')
   create table putnic00(;
                     redbr     c(2),;
                     dat0      d(8),;
                     dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('kasapl.dbf')
  * wait windows ' fakg  '
   create table kasapl;
               (brkal     c(6),;
                vrstapl   n(01,0),;
                iznosrac  n(14,2),;
                kes       n(14,2),;
                kartica   n(14,2),;
                cek       n(14,2),;
                dato      n(14,2),;
                kusur     n(14,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif

if !file('ankast.dbf')
   create table ankast;
         (;
          dana      n(8),;
          stopa1    n(18,8),;
          stopa2    n(18,8),;
                preneto   c(1),;   
                idbr      n(11);                    
          )
       use   
   endif


if !file('andospe.dbf')
   create table andospe (;
                     sifra     c(5),;
                     naziv     c(30)    ,;              
                     datdok    d(8),;
                     valuta    d(8),;
                     datupl    d(8),;
                     brrac     c(20),;
                     pot       n(18,2),;
                     vanval    n(18,2),;                     
                     danazak   n(09),;
                     dana      n(8),;
                     stopa1    n(18,8),;
                     kamata1   n(18,2),;
                     stopa2    n(18,8),;
                     kamata2   n(18,2),;
                     kamata    n(18,2),;
                     zatvar    c(01),;
                     dat0      d(8),;
                     dat1      d(8),;
                     dana0     n(8),;
                     dana1     n(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('artikli.dbf')
   create table artikli(;
                     descriptio c(50),;
                     price      n(20,5),;
                     max_value  n(20,5),;
                     vat_code   n(20,5),;
                     one_item   l(1),;
                     department n(20,5),;
                     mes_type   n(20,5),;
                     art_type   n(20,5),;
                     bar_code   c(20),;
                     inventary  n(20,5),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif
     
if !file('proverai.dbf')
   create table proverai(;
                tdbdata02   c(1),;
                tdbgk       c(1),;
                tdban       c(1),;
                tdbbl       c(1),;
                tdbhc       c(1),;
                tdbka       c(1),;
                tdbkl       c(1),;
                tdbld       c(1),;
                tdbos       c(1),;
                tdbpc       c(1),;
                tdbpro      c(1),;
                tdbrec      c(1),;
                tdbtm       c(1),;
                tdbto       c(1),;
                tdbts       c(1),;
                tdbtv       c(1),;
                tdbvb       c(1),;
                tdbvk       c(1),;
                tdbvoz      c(1),;
                tdbvp       c(1),;
                tdbvt       c(1),;
                tdbxml      c(1),;
                preneto     c(1),;   
                idbr        n(11);                    
                     )              
                use
             endif     


if !file('annap.dbf')
  * wait windows ' izbor magacina '
   create table annap;
              (sifprod   c(2)  ,;
               pnaziv    c(50) ,;
               konto     c(10)  ,;
               sifarnik  c(2)  ,;
               dok       c(3)  ,;
               pdug      n(18,2),;
               ppot      n(18,2),;
               psaldo    n(18,2),;
               dug       n(18,2),;
               pot       n(18,2),;
               saldo     n(18,2),;
               svega     n(18,2),;
               fak1      n(18,2),;
               fak2      n(18,2),;
               fak3      n(18,2),;
               fak4      n(18,2),;
               fak5      n(18,2),;
               fak6      n(18,2),;
               fak7      n(18,2),;
               fak8      n(18,2),;
               fak9      n(18,2),;
               fak10     n(18,2),;
               fak11     n(18,2),;
               fak12     n(18,2),;
               mes1      n(18,2),;
               mes2      n(18,2),;
               mes3      n(18,2),;
               mes4      n(18,2),;
               mes5      n(18,2),;
               mes6      n(18,2),;
               mes7      n(18,2),;
               mes8      n(18,2),;
               mes9      n(18,2),;
               mes10     n(18,2),;
               mes11     n(18,2),;
               mes12     n(18,2),;
               dat0      d(8),;
               dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif
 



if !file('roparg.dbf')
  * wait windows ' izbor magacina '
   create table roparg;
              (grupa1    c(3) ,;
               koli      n(18,3),;
               velvred   n(18,2),;
               koli01    n(18,3),;
               vred01    n(18,2),;
               koli02    n(18,3),;
               vred02    n(18,2),;
               koli03    n(18,3),;
               vred03    n(18,2),;
               koli04    n(18,3),;
               vred04    n(18,2),;
               koli05    n(18,3),;
               vred05    n(18,2),;
               koli06    n(18,3),;
               vred06    n(18,2),;
               koli07    n(18,3),;
               vred07    n(18,2),;
               koli08    n(18,3),;
               vred08    n(18,2),;
               koli09    n(18,3),;
               vred09    n(18,2),;
               koli10    n(18,3),;
               vred10    n(18,2),;
               koli11    n(18,3),;
               vred11    n(18,2),;
               koli12    n(18,3),;
               vred12    n(18,2),;
               dat0      d(8),;
               dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
     use
 endif 
 
if !file('reversi.dbf')
   create table reversi(;
                     polje    n(2),;
                     boja     c(1),;
                     zauzeto  c(1),;
                     poeni1   n(5),;
                     poeni2   n(5),;
                     igrac    n(1),;
                     s1       n(2),;
                     s2       n(2),;
                     s3       n(2),;
                     s4       n(2),;
                     red      n(2),;
                     kolona   n(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif     
 
if !file('an0mis.dbf')
   create table an0mis ;
               (misifra   c(5)     ,;
                sifra     c(5)     ,;
                rsif      c(5)     ,;
                kol       n(18,3)  ,;
                koli      n(18,3)  ,;
                stanje    n(18,3)  ,;
                dat0      d(8),;
                dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('analko.dbf')
 *  wait windows ' anal evidencija analitike '
   create table analko (;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     kurs      n(18,4),;
                     datum     d(8),;
                     danazak   n(12),;
                     ddug      n(18,2),;
                     dpot      n(18,2),;
                     dsaldo    n(18,2),;    
                     dprocval  n(14,4),;   
                     osnov18   n(18,2),;
                     pdv18     n(18,2),;         
                     opis1     c(60),;
                     opis2     c(60),;
                     opis3     c(60),;
                     opis4     c(60),;
                     opis5     c(60),;
                     fpsifra   c(03),; 
                     dat0      d(8),;
                     dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('analkot.dbf')
 *  wait windows ' anal evidencija analitike '
   create table analkot (;
                     opis1     c(60),;
                     opis2     c(60),;
                     opis3     c(60),;
                     opis4     c(60),;
                     opis5     c(60),;
                     fpsifra   c(03),; 
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('zatvper.dbf')
 *  wait windows ' anal evidencija analitike '
   create table zatvper(;
                     mesec     n(02),;
                     arhiva    c(01),; 
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif
             
if !file('ldradcl.dbf')
*   wait windows ' evidencija radnika '   
   create table ldradcl ;
               (cbroj     n(4)  ,;
                broj      n(4)  ,;
                cime_prez c(30) ,;
                cmaticni  c(13) ,;
                clbobroj  c(11) ,;
                cadresa   c(40) ,;
                csrodstvo c(10) ,;
                cnapomena c(40) ,;
                ime_prez  c(30) ,;
                maticni   c(13) ,;
                lbobroj   c(11) ,;
                adresa    c(40) ,;
                napomena  c(40) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif             

if !file('ldzzo01.dbf')
   * wait windows ' potvrda radnicima '   
   create table ldzzo01 ;
               (text1     c(70),;
                text2     c(70),;
                text3     c(70),;
                text4     c(70),;
                text5     c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
             
if !file('ldzzo02.dbf')
   * wait windows ' potvrda radnicima '   
   create table ldzzo02 ;
               (text1     c(70),;
                text2     c(70),;
                text3     c(70),;
                text4     c(70),;
                text5     c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('kalpregu.dbf')
  * wait windows ' kal  '
   create table kalpregu;
               (rsif      c(5),;
                podnaziv  c(20),;
                naz       c(30),;
                kol       n(18,3),;
                cena      n(18,3),;
                velvred   n(18,2),;
                proscenv  n(18,3),;
                prosvred  n(18,2),;
                kolulaz   n(18,3),;
                kolsve    n(18,3),;
                cenasve   n(18,3),;
                vredsve   n(18,3),;
                datdok    d(8),;
                brrac     c(20),;
                kolu      n(18,3),;
                koli      n(18,3),;
                devkurs   n(18,4),;
                devcena   n(18,4),;
                devvred   n(18,2),;
                sifra     c(5),;
                naziv     c(40),;
                interna   c(1),;
                prenos    c(1),;
                fvrsta    c(3),;
                redni     n(10),;
                brkal     c(6),;
                kolraz    n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('analupor.dbf')
 *  wait windows ' anal evidencija analitike '
   create table analupor (;
                     sifra     c(5),;
                     naziv     c(40),;
                     datdok    d(8),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     saldo     n(18,2),;
                     dug2      n(18,2),;
                     pot2      n(18,2),;
                     saldo2    n(18,2),;
                     razdug    n(18,2),;
                     razpot    n(18,2),;
                     razsaldo  n(18,2),;
                     valuta    d(8),;
                     brrac     c(20),;
                     opis      c(20 ),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('robkasap.dbf')
  * wait windows ' roba '
   create table robkasap;
               (rsif      c(5)   ,;
                naz       c(30),;
                malcena   n(12,2),;
                barkod    c(20),;
                naz1      c(30),;
                malcena1  n(12,2),;
                barkod1   c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif
          
 if !file('geneko.dbf')
  * wait windows ' roba '
   create table geneko;
               (redbr      n(12,2)   ,;
                barkod     c(20),;
                naziv      c(30),;
                cena       n(12,2),;
                kolnalager n(18,2),;
                kriticnako n(18,2),;
                porgrid    n(12,2),;
                odeljenjei n(12,2),;
                grupaid    n(12,2),;
                promet     n(12,2),;
                prodatkol  n(12,2),;
                status     c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif            
     
 if !file('ldarhpar.dbf')
  * wait windows ' roba '
   create table ldarhpar;
               (mesec      n(08)   ,;
                vrsta      c(01),;
                putanja    c(70),;
                godina     c(04),;
                preneto   c(1),;   
                idbr      n(11);                    
                )

         use
     endif                 

 if !file('blpopis.dbf')
  * wait windows ' roba '
   create table blpopis;
               (opis       c(50)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )

         use
     endif                 
     
if !file('anodpro.dbf')
   create table anodpro(;
      din0      n(12,2),;
      din1      n(12,2),;
      dinproc   n(10,2),;
                preneto   c(1),;   
                idbr      n(11);                    
      )              
   use
endif
     
if !file('anodtac.dbf')
   create table anodtac(;
      din0      n(12,2),;
      din1      n(12,2),;
      dinproc   n(10,2),;
                preneto   c(1),;   
                idbr      n(11);                    
      )              
   use
endif

if !file('anodgru0.dbf')
   create table anodgru0(;
      grupa5    c(3),;
      dinproc   n(10,2),;
                preneto   c(1),;   
                idbr      n(11);                    
      )              
   use
endif

if !file('anputg0.dbf')
   create table anputg0(;
      grupa     c(3),;
      dinproc   n(10,2),;
                preneto   c(1),;   
                idbr      n(11);                    
      )              
   use
endif


if !file('znxml.dbf')
   create table znxml(;
      poreklo   c(01),;
      delovodbr c(01),;
      vrstapos  c(03),;
      jmb       c(9),;
      posta     c(5),;
      mesto     c(30),;
      pib       c(09),;
      period    c(02),;
      godina    c(02),;
      kodeks_19 c(01),;
      kodeks_20 c(01),;
      kodeks_21 c(01),;
      kodeks_22 c(01),;
      kodeks_23 c(01),;
      kodeks_24 c(01),;
      kodeks_25 c(01),;
      kodeks_26 c(02),;
                preneto   c(1),;   
                idbr      n(11);                    
      )              
   use
endif


if !file('znxmlN.dbf')
   create table znxmlN(;
      poreklo   c(01),;
      delovodbr c(01),;
      vrstapos  c(03),;
      jmb       c(9),;
      posta     c(5),;
      mesto     c(30),;
      pib       c(09),;
      period    c(02),;
      godina    c(02),;
      kodeks_19 c(01),;
      kodeks_20 c(01),;
      kodeks_21 c(01),;
      kodeks_22 c(01),;
      kodeks_23 c(01),;
      kodeks_24 c(01),;
      kodeks_25 c(01),;
      kodeks_26 c(02),;
                preneto   c(1),;   
                idbr      n(11);                    
      )              
   use
endif

if !file('ldopj1n.dbf')
  * wait windows ' obrazac opj2 '   
   create table ldopj1n ;
               (broj      N(4),;
                sifraprih  c(9) ,;                
                redbr     n(8),; 
                grupa     n(8),;
                sifopis   c(2),;
                datdok    d(8)      ,;
                radnika   n(12)   ,;
                kol       n(12,2)   ,;
                neoporez  n(12,2)   ,;                
                imapravo  n(12,2)   ,;                
                sveneopor n(12,2)   ,;                
                svepravo  n(12,2)   ,;                
                isplaceno n(12,2)   ,;                
                zaisplatu n(12,2)   ,;                
                svega     n(12,2)   ,;
                netoopor  n(12,2)   ,;
                brutoopor n(12,2)   ,;
                porez     n(12,2)   ,;
                opis1     c(35),;
                opis2     c(35),;
                datispl   d(8)  ,;
                mesec     n(2)      ,;
                isplata   n(1)      ,;
                nazmes    c(15) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )                               
                use
endif        

if !file('ldopj1n0.dbf')
  * wait windows ' obrazac opj2 '   
   create table ldopj1n0 ;
               (sifopis   c(2),;
                opis1     c(35),;
                opis2     c(40),;
                radnika   n(12)   ,;
                neoporez  n(12,2)   ,;                
                pravo     n(12,2)   ,;                
                sveneopor n(12,2)   ,;                
                isplaceno n(12,2)   ,;                
                zaisplatu n(12,2)   ,;                
                svega     n(12,2)   ,;
                netoopor  n(12,2)   ,;
                brutoopor n(12,2)   ,;
                porez     n(12,2)  ,;
                datdok    d(8)  ,;
                datispl   d(8)  ,;
                nazmes    c(15) ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif        

if !file('anrasp.dbf')
   create table anrasp( ;
              brnal     c(6),;
              dug       n(10,2),;
              dana      n(03),;
              rata      n(03),;
              datdok    d(8),;
              sifra     c(5),;
              brnal1    c(6),;
              pr1       n(3),;
              pv1       n(3),;
              pdat1     d(8),;
              prdin1    n(14,2),;
              brnal2    c(6),;
              pr2       n(3),;
              pv2       n(3),;
              pdat2     d(8),;
              prdin2    n(14,2),;
              brnal3    c(6),;
              pr3       n(3),;
              pv3       n(3),;
              pdat3     d(8),;
              prdin3    n(14,2),;
              brnal4    c(6),;
              pr4       n(3),;
              pv4       n(3),;
              pdat4     d(8),;
              prdin4    n(14,2),;
              brnal5    c(6),;
              pr5       n(3),;
              pv5       n(3),;
              pdat5     d(8),;
              prdin5    n(14,2),;
              brnal6    c(6),;
              pr6       n(3),;
              pv6       n(3),;
              pdat6     d(8),;
              prdin6    n(14,2),;
              brnal7    c(6),;
              pr7       n(3),;
              pv7       n(3),;
              pdat7     d(8),;
              prdin7    n(14,2),;
              brnal8    c(6),;
              pr8       n(3),;
              pv8       n(3),;
              pdat8     d(8),;
              prdin8    n(14,2),;
              brnal9    c(6),;
              pr9       n(3),;
              pv9       n(3),;
              pdat9     d(8),;
              prdin9    n(14,2),;
              brnal10   c(6),;
              pr10      n(3),;
              pv10      n(3),;
              pdat10    d(8),;
              prdin10   n(14,2),;
              brnal11   c(6),;
              pr11      n(3),;
              pv11      n(3),;
              pdat11    d(8),;
              prdin11   n(14,2),;
              brnal12   c(6),;
              pr12      n(3),;
              pv12      n(3),;
              pdat12    d(8),;
              prdin12   n(14,2),;
              brnal13   c(6),;
              pr13      n(3),;
              pv13      n(3),;
              pdat13    d(8),;
              prdin13   n(14,2),;
              brnal14   c(6),;
              pr14      n(3),;
              pv14      n(3),;
              pdat14    d(8),;
              prdin14   n(14,2),;
              brnal15   c(6),;
              pr15      n(3),;
              pv15      n(3),;
              pdat15    d(8),;
              prdin15   n(14,2),;
              brnal16   c(6),;
              pr16      n(3),;
              pv16      n(3),;
              pdat16    d(8),;
              prdin16   n(14,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
           use   
endif


if !file('ldizrvre.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldizrvre ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                firma1    c(30)     ,;
                proc1     n(10,2)   ,;
                firma2    c(30)     ,;
                proc2     n(10,2)   ,;
                firma3    c(30)     ,;
                proc3     n(10,2)   ,;
                firma4    c(30)     ,;
                proc4     n(10,2)   ,;
                firma5    c(30)     ,;
                proc5     n(10,2)   ,;
                maticnibr c(13)     ,;
                posta     c(5)      ,;
                mesto     c(25)     ,;
                adresa    c(40)     ,;
                telefon   c(20)     ,;  
                datdok    d(8)     ,;  
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif


if !file('nalgk10.dbf')
   create table nalgk10 ;
             (konto    c(10)   ,;                   
              dug      n(18,2) ,;                   
              pot      n(18,2) ,;                   
              opis     c(30)   ,;                   
              datdok   d(8)    ,;              
              brnal    c(6)    ,;                                 
              arhiva   c(1)    ,;
              datum    d(8)    ,;                                                                      
              vreme    c(10)   ,;  
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('konto10.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table konto10 ;
              (konto    c(10)   ,;              
               naziv    c(70)  ,;
               k1       c(1),; 
               k2       c(2),; 
               k3       c(3),; 
               k4       c(4),; 
               k5       c(5),; 
               k6       c(6),; 
               kod      c(20)  ,;              
               nazkto4  c(45),;     
               skonto    c(10) ,;  
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif


if !file('pracenje.dbf')
   create table pracenje ;
              (opis     c(70)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif

if !file('delov.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table delov;
              (broj      c(5)   ,;              
               datpri    d(8),;
               sifra     c(05),;
               brrac     c(20),;
               opis      c(60),;
               datdok    d(8),;
               valuta    d(8),;
               vrsta     c(3),; 
               dok       c(3),;
               siflokac  c(3),;
               sifstatus c(1),;
               sifprim   c(4),;
               napomena  c(60),;
               napomena2 c(60),;
               napomena3 c(60),;
               napomena4 c(60),;
               napomena5 c(60),;
               siforgan  c(3),;
               putanja   c(60),;
               imefajla  c(60),;
               oper      c(2),;
               datum     d(8),;
               vreme     c(8),;
               arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('delvrsta.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table delvrsta;
              (vrsta     c(3),; 
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('dellokac.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table dellokac;
              (siflokac  c(3),; 
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('delstat.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table delstat;
              (sifstatus c(1),; 
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('delorgan.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table delorgan;
              (siforgan  c(3),; 
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('deldok.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table deldok;
              (dok       c(3),; 
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('delprim.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table delprim;
              (sifprim   c(4),; 
               naziv     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('ld0.dbf')
 *  wait windows ' glavna tabela plate '
   create table ld0 ;
               (brobrac   n(2)      ,;
                mesec     n(2)      ,;
                nazmes    c(10)     ,;
                vrsta     c(1)      ,;
                casuk     n(10,2)   ,;
                casbol    n(10,2)   ,;
                bruto     n(12,2)   ,;                
                porez     n(12,2)   ,;                
                dopsocr   n(12,2)   ,;                
                doppr     n(12,2)   ,;                
                dopzr     n(12,2)   ,;                
                dopnr     n(12,2)   ,;                                                
                dopsocf   n(12,2)   ,;                                
                doppf     n(12,2)   ,;                
                dopzf     n(12,2)   ,;                
                dopnf     n(12,2)   ,;                                                
                neto      n(12,2)   ,;                
                ukobust   n(12,2)   ,;  
                zaisplatu n(12,2)   ,;
                cenarada  n(18,6)   ,;                
                dat1      d(8)   ,;
                dat2      d(8)   ,;
                dat3      d(8)   ,;
                dat4      d(8)   ,;                                
                godina    c(4)   ,;
                ppopj1    c(12),;
                ppopj2    c(12),;
                ppopj3    c(12),;
                ppopj4    c(12),;
                ppod01     c(12),;
                ppod02     c(12),;
                ppod03     c(12),;
                ppod04     c(12),;
                ppod01v    c(12),;
                ppod02v    c(12),;
                ppod03v    c(12),;
                ppod04v    c(12),;
                ppod11     c(12),;
                ppod12     c(12),;
                ppod13     c(12),;
                ppod14     c(12),;
                opis1     c(60),;
                opis2     c(60),;
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif

if !file('ld0p.dbf')
 *  wait windows ' glavna tabela plate '
   create table ld0p ;
               (broj       n(4)      ,;
                ime_prez   c(30)     ,;
                maticnibr  c(13)     ,;
                godina    c(4)   ,;
                vrsta     c(1)      ,;
                brobrac   n(2)      ,;
                mesec     n(2)      ,;
                nazmes    c(10)     ,;
                casuk     n(10,2)   ,;
                casbol    n(10,2)   ,;
                bruto     n(12,2)   ,;                
                porez     n(12,2)   ,;                
                dopsocr   n(12,2)   ,;                
                doppr     n(12,2)   ,;                
                dopzr     n(12,2)   ,;                
                dopnr     n(12,2)   ,;                                                
                dopsocf   n(12,2)   ,;                                
                doppf     n(12,2)   ,;                
                dopzf     n(12,2)   ,;                
                dopnf     n(12,2)   ,;                                                
                neto      n(12,2)   ,;                
                ukobust   n(12,2)   ,;  
                zaisplatu n(12,2)   ,;
                cenarada  n(18,6)   ,;                
                dat1      d(8)   ,;
                dat2      d(8)   ,;
                dat3      d(8)   ,;
                dat4      d(8)   ,;                                
                ppopj1    c(12),;
                ppopj2    c(12),;
                ppopj3    c(12),;
                ppopj4    c(12),;
                ppod01     c(12),;
                ppod02     c(12),;
                ppod03     c(12),;
                ppod04     c(12),;
                ppod01v    c(12),;
                ppod02v    c(12),;
                ppod03v    c(12),;
                ppod04v    c(12),;
                ppod11     c(12),;
                ppod12     c(12),;
                ppod13     c(12),;
                ppod14     c(12),;
                opis1     c(60),;
                opis2     c(60),;
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif


if !file('tvprovpr.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table tvprovpr;
              (vrsta      c(1),; 
               preniz     c(1),;               
               brkal      c(6),; 
               pbrkal     c(6),;
               pdok       c(3),;
               brnal      c(6),;
               datdok     d(8),;
               izni       n(18,2),;
               ibrnal     c(6),;
               idatdok    d(8),;
               iznos      n(18,2),;
               razlika    n(18,2),;
               fvrsta     c(3),;
               sifra      c(5),;               
               dok        c(3),;                              
               preneto    c(1),;   
               idbr       n(11);                    
              )
   use
endif

if !file('tvprovko.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table tvprovko;
              (vrsta      c(1),; 
               brkal      c(6),; 
               pbrkal     c(6),;
               pdok       c(3),;
               rsif       c(5),;
               kol        n(18,3),;
               koli       n(18,3),;  
               kolraz     n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('tvprovna.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table tvprovna;
              (vrsta      c(1),; 
               brkal      c(6),; 
               brnal      c(6),;
               datdok     d(8),;
               sporno     c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('tvprovmv.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table tvprovmv;
              (vrsta      c(1),; 
               brkal      c(6),; 
               pbrkal     c(6),;
               datdok     d(8),;
               rsif       c(5),;
               kol        n(18,3),;
               iznos      n(18,2),;
               razlika    n(18,2),;
               fvrsta     c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('robfifo.dbf')
  * wait windows ' kal  '
   create table robfifo;
               (vrsta     c(1),;
                brkal     c(6) ,;
                datdok    d(8),;
                rsif      c(5),;
                podnaziv  c(20),;
                naz       c(30),;
                kol       n(18,4),;
                cena      n(18,5),;
                iznos     n(18,3),;
                koli      n(18,4),;
                cenai     n(18,5),;
                iznosi    n(18,3),;
                kolst     n(18,4),;
                stanje    n(18,3),;
                sifra     c(5),;
                naziv     c(40),;
                fvrsta    c(3),;
                fnaz      c(30),;
                ubrkal    c(6),;
                udatdok   d(8),;
                brrac     c(20),;
                usifra    c(5),;
                unaziv    c(40),;
                prenos    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('robfifos.dbf')
  * wait windows ' kal  '
   create table robfifos;
               (rsif      c(5),;
                podnaziv  c(20),;
                naz       c(30),;
                koldo     n(18,4),;
                kolido    n(18,4),;
                kolstdo   n(18,4),;
                kolod     n(18,4),;
                koliod    n(18,4),;
                kolstod   n(18,4),;
                ukulaz    n(18,4),;
                ukizlaz   n(18,4),;
                ukstanje  n(18,4),;
                zalihedo  n(18,4),;
                zaliheod  n(18,4),;
                datdok    d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif



if !file('ldprip.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldprip ;
               (broj      n(4)     ,;
                ime_prez  c(30)    ,;              
                casrad    n(4),;
                casbol    n(4),;
                neto      n(12,2)   ,;                
                netobol   n(12,2)   ,;                
                porez     n(12,2)   ,;                
                dopsocr   n(12,2)   ,;                
                ukupno    n(12,2)   ,;                
                nivo      c(70)   ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('tvprovfa.dbf')
  * wait windows ' fak  '
   create table tvprovfa;
               (brkal     c(6),;   
                datdok    d(8),;    
                rsif      c(5),;       
                koli      n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,3),;
                velvred2  n(18,3),;
                razlika   n(18,3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('anodgr.dbf')
  * wait windows ' fak  '
   create table anodgr;
               (redbr     c(6),; 
                sifra     c(05),;
                brrac     c(20),;
                datdok    d(8)   ,;
                dug       n(18,2)   ,;
                iznos     n(18,2)   ,;
                dinod     n(18,2),;
                osn18     n(18,2),;
                por18     n(18,2),;
                osn8      n(18,2),;
                por8      n(18,2),;
                osn0      n(18,2),;
                por0      n(18,2),;
                datplac   d(8)   ,;
                datodob   d(8)   ,;
                valuta    d(8)   ,;
                brkal     c(6),;       
                brnal     c(6),;       
                dok       c(3),;       
                konto     c(10),;
                opis1     c(60),;
                opis2     c(60),;
                opis3     c(60),;
                opis4     c(60),;
                opis5     c(60),;
                pot       n(18,2)   ,;
                fpsifra   c(3),;                     
                procod    n(10,2),;
                dat0      d(8),;
                dat1      d(8),;
                oper      c(2  ),;
                datum     d(8  ),;
                vreme     c(8  ),;
                arhiva    c(1),;
                zatvar    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('anput.dbf')
   create table anput(;
                     grupa     c(3),;
                     sifra     c(5),;
                     brrac     c(20),;                
                     datdok    d(8),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     procnap   n(18,6),;
                     faktura   n(18,2),;
                     osnov     n(18,2),;
                     osnov18   n(18,2),;
                     pdv18     n(18,2),;
                     osnov8    n(18,2),;
                     pdv8      n(18,2),;
                     osnov0    n(18,2),;
                     pdv       n(18,2),;
                     svega     n(18,2),;
                     dok       c(3  ),;
                     konto     c(10),;
                     vrsta     c(1  ),;
                     promet    n(18,2),;
                     procprom  n(10,2),;
                     dat0      d(8),;
                     dat1      d(8),;
                     valuta    d(8),;
                     brnal     c(6),;
                     oper      c(2  ),;
                     datum     d(8  ),;
                     vreme     c(8  ),;
                     arhiva    c(1),;
                     zatvar    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('anputt.dbf')
 *  wait windows ' anal evidencija analitike '
   create table anputt (;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     dok       c(3  ),;
                     zatvar    c(1  ),;
                     danazak   n(09),;
                     vanval    n(9),;
                     datupl    d(8),;
                     grupa     c(3),;                                                                      
                     grupa1    c(3),;
                     grupa2    c(3),;
                     grupa3    c(3),;
                     grupa4    c(3),;
                     grupa5    c(5),;
                     dat0      d(8),;
                     dat1      d(8),;
                     arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('anputo.dbf')
   create table anputo(;
                     sifra     c(5),;
                     brrac     c(20),;                
                     datdok    d(8),;
                     valuta    d(8),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     svega     n(18,2),;
                     grupa     c(3),;
                     konto     c(10),;
                     dat0      d(8),;
                     dat1      d(8),;
                     arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif



if !file('faktr.dbf')
  * wait windows ' fakg  '
   create table faktr;
               (sifra     c(5),;
                rsif      c(5),;        
                koli      n(18,2),; 
                velcena   n(18,2),; 
                rezervac  c(1),;
                diskont   c(1),;
                putnik    c(3),;
                redbr     n(5,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif





if !file('ktabele.dbf')
  * wait windows ' kal  '
   create table ktabele;
               (brnal     c(6),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('fakteks.dbf')
  * wait windows ' fak  '
   create table fakteks;
               (redbr     n(5,0),;
                rsif      c(5),;       
                naz       c(40),; 
                koli      n(18,3),;
                velcena   n(18,5),;
                velvred   n(18,2),;
                rezervac  c(1),;
                diskont   c(1),;
                putnik    c(3),;
                sifra     c(5),;
                naziv     c(40),;
                datdok    d(8),;
                imetxt    c(20),;  
                brisanje  c(1),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('fakteks0.dbf')
  * wait windows ' fak  '
   create table fakteks0;
               (imetxt    c(20),;  
                brisanje  c(1),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif
if !file('boje0.dbf')
   create table boje0 ;
               (boja1poz1   n(3),;
                boja1poz2   n(3),;
                boja1poz3   n(3),;
                boja1slo1   n(3),;
                boja1slo2   n(3),;
                boja1slo3   n(3),;
                boja2poz1   n(3),;
                boja2poz2   n(3),;
                boja2poz3   n(3),;
                boja2slo1   n(3),;
                boja2slo2   n(3),;
                boja2slo3   n(3),;
                boja3poz1   n(3),;
                boja3poz2   n(3),;
                boja3poz3   n(3),;
                boja3slo1   n(3),;
                boja3slo2   n(3),;
                boja3slo3   n(3),;
                boja4poz1   n(3),;
                boja4poz2   n(3),;
                boja4poz3   n(3),;
                boja4slo1   n(3),;
                boja4slo2   n(3),;
                boja4slo3   n(3),;
                boja5poz1   n(3),;
                boja5poz2   n(3),;
                boja5poz3   n(3),;
                boja5slo1   n(3),;
                boja5slo2   n(3),;
                boja5slo3   n(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
       use              
endif


if !file('faktu.dbf')
  * wait windows ' fak  '
   create table faktu;
               (naz       c(30),;
                brkal     c(6),;       
                rsif      c(5),;       
                koli      n(18,3),;
                izdato    n(18,3),;
                datdok    d(8),;
                verifikac c(1),; 
                utovarni  c(1),; 
                sifra     c(5),;
                naziv     c(40),;
                datrok    d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if ! file("pdvper.dbf")
   create table pdvper;
    (redni     n(2),; 
     dat0      d(8),;
     dat1      d(8),;
     pocmes    n(2),;
     zadmes    n(2),;
     aktivan   c(1),;   
     zatvoren  c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif

if !file('kasarf.dbf')
  * wait windows ' roba '
   create table kasarf;
               (datum     d(8),;
                vreme     c(10),;               
                brkal     c(6),;
                rsif      c(5),;
                naz       c(30),;
                podnaziv  c(20),;
                kol       n(18,3),;
                malcena   n(14,5),;
                tarifa    c(6),;
                procpor   n(10,4),;
                Starifa    c(6),;
                Sprocpor   n(10,4),;
                jed       c(10),;
                barkod    c(20),;
                grupa     c(3),;
                vrsta     c(1),;
                nazskr    c(18),;
                datdok    d(8),;                
                brnal     c(6),;                                
                SEMA      c(4),;                                                
                scena     n(14,2),;
                siznos    n(14,2),;
                vrstarobe c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('komkir.dbf')
   create table komkir;
               (redbr     n(6),;
                brkal     c(6) ,;
                datdok    d(8),;
                sifra     c(5),;
                kol       n(18,3),;
                iznosu    n(18,2),;
                iznos     n(18,2),;
                iznospre  n(18,2),;
                ukupno    n(18,2),;
                veza      c(20),;
                opis      c(20),;
                brojdok   c(20),;
                datdokaza d(8),;
                vrstarobe c(25),;
                jed       c(10),;
                placeno   n(18,2),;
                izvod     c(20),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('konsig.dbf')
  * wait windows ' fakg  '
   create table konsig;
               (naz       c(30),;
                podnaziv  c(20),;       
                rsif      c(5),;       
                koli      n(18,3),;
                cena      n(18,3),;
                iznos     n(18,2),;
                rabproc   n(10,4),;
                rabat     n(18,3),;
                tarifa    c(6)   ,;
                procpor   n(10,4),;
                porez     n(18,2),;
                velcena   n(18,3),;
                velvred   n(18,2),;
                malcena   n(18,5),;
                malvred   n(18,2),;
                osn18     n(18,2),;
                pdv18     n(18,2),;
                osn8      n(18,2),;
                pdv8      n(18,2),;
                osn0      n(18,2),;
                sifra     c(5),;
                brrac     c(20),;
                datdok    d(8),;
                valuta    d(8),;
                dat0      d(8),;
                dat1      d(8),;
                konsdana  n(9,0),;
                brkal     c(6),;                
                brnal     c(6),;
                sema      c(4),;
                interna   c(1),;
                prenos    c(1),;
                intprenos c(1),;
                opdv      c(1),;                
                vpdv      c(3),;
                rednibr   n(10),;
                fvrsta    c(3),;                
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif

if !file('osnovna.dbf')
   create table osnovna;
               (skurs     n(18,6),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif





if !file('ispisgk.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table ispisgk ;
             (konto     c(10)    ,;                   
              naziv     c(50)    ,;
              datum     d(8)    ,;                                                                      
              datdok    d(8)    ,;              
              brdok     c(30)   ,;                   
              oznaka    c(3)    ,;                
              opis      c(50)   ,;                   
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              napomena1 c(80)  ,;
              napomena2 c(80)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
              )                
   use
endif


if ! file('ispispu.dbf')
   create table ispispu;
   (porper     c(8),;
    datum      d(8),;
    datpri     d(8),;
    brrac      c(30),;
    datdok     d(8),;
    naziv      c(50),;
    pib        c(13),;
    osn18      n(16,2),;
    pdv18      n(16,2),;
    osn8       n(16,2),;
    pdv8       n(16,2),;
    pdvavans   n(16,2),;
    osn5       n(16,2),;
    pdv5       n(16,2),;
    osnuvoz    n(16,2),;
    pdvuvoz    n(16,2),;
    osnsruvoz  n(16,2),;
    osnapkm    n(16,2),;    
    pdvapkm    n(16,2),;    
    osnnekret  n(16,2),;    
    osnossrost n(16,2),;    
    neoporez   n(16,2),;
    pdvsvega   n(16,2),;
    pdv        n(16,2),;
    pdvne      n(16,2),;
    napomena   c(80)  ,;
    napomena2  c(80)  ,;
    sifra      c(5),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if ! file('ispispi.dbf')
   create table ispispi;
   (porper     c(8),;
    datpri     d(8),;
    brrac      c(30),;
    datdok     d(8),;
    naziv      c(50),;
    pib        c(13),;
    osn0       n(16,2),;
    osnizvoz   n(16,2),;
    osnkonzul  n(16,2),;
    osndonac   n(16,2),;
    osnapkm    n(16,2),;
    osnpdvne   n(16,2),;
    osnpdvnebu n(16,2),;
    osn18      n(14,2),;
    pdv18      n(14,2),;
    osn8       n(14,2),;
    pdv8       n(14,2),;
    pdvavans   n(14,2),;
    pdvsopstv  n(14,2),;
    pdvmanjak  n(14,2),;
    pdvrastur  n(14,2),;
    napomena   c(80),;
    napomena2  c(80),;
    sifra      c(5),;  
                preneto   c(1),;   
                idbr      n(11);                    
    )
    use
endif


if !file('fakpoti.dbf')
  * wait windows ' podnozje fakture '
   create table fakpoti;
               (fpsifra   c(3),;
                txt1      c(120)      ,;
                txt2      c(120)      ,;
                txt3      c(120)      ,;
                txt4      c(120)      ,;
                txt5      c(120)      ,;
                txt6      c(120)      ,;
                txt7      c(120)      ,;
                txt8      c(120)      ,;
                txt9      c(120)      ,;
                txt10     c(120)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
use
endif



if !file('fakamb.dbf')
  * wait windows ' podnozje fakture '
   create table fakamb;
               (amb101      c(5),;
                amb1n01     c(15),;
                ambkol101   n(12,0),;
                amb201      c(5),;
                amb2n01     c(15),;
                ambkol01    n(12,0),;
                amb102      c(5),;
                amb1n02     c(15),;
                ambkol102   n(12,0),;
                amb202      c(5),;
                amb2n02     c(15),;
                ambkol02    n(12,0),;
                amb103      c(5),;
                amb1n03     c(15),;
                ambkol103   n(12,0),;
                amb203      c(5),;
                amb2n03     c(15),;
                ambkol03    n(12,0),;
                amb104      c(5),;
                amb1n04     c(15),;
                ambkol104   n(12,0),;
                amb204      c(5),;
                amb2n04     c(15),;
                ambkol04    n(12,0),;
                amb105      c(5),;
                amb1n05     c(15),;
                ambkol105   n(12,0),;
                amb205      c(5),;
                amb2n05     c(15),;
                ambkol05    n(12,0),;
                amb106      c(5),;
                amb1n06     c(15),;
                ambkol106   n(12,0),;
                amb206      c(5),;
                amb2n06     c(15),;
                ambkol06    n(12,0),;
                amb107      c(5),;
                amb1n07     c(15),;
                ambkol107   n(12,0),;
                amb207      c(5),;
                amb2n07     c(15),;
                ambkol07    n(12,0),;
                amb108      c(5),;
                amb1n08     c(15),;
                ambkol108   n(12,0),;
                amb208      c(5),;
                amb2n08     c(15),;
                ambkol08    n(12,0),;
                amb109      c(5),;
                amb1n09     c(15),;
                ambkol109   n(12,0),;
                amb209      c(5),;
                amb2n09     c(15),;
                ambkol09    n(12,0),;
                amb110      c(5),;
                amb1n10     c(15),;
                ambkol110   n(12,0),;
                amb210      c(5),;
                amb2n10     c(15),;
                ambkol10    n(12,0),;
                amb111      c(5),;
                amb1n11     c(15),;
                ambkol111   n(12,0),;
                amb211      c(5),;
                amb2n11     c(15),;
                ambkol11    n(12,0),;
                amb112      c(5),;
                amb1n12     c(15),;
                ambkol112   n(12,0),;
                amb212      c(5),;
                amb2n12     c(15),;
                ambkol12    n(12,0),;
                amb113      c(5),;
                amb1n13     c(15),;
                ambkol113   n(12,0),;
                amb213      c(5),;
                amb2n13     c(15),;
                ambkol13    n(12,0),;
                amb114      c(5),;
                amb1n14     c(15),;
                ambkol114   n(12,0),;
                amb214      c(5),;
                amb2n14     c(15),;
                ambkol14    n(12,0),;
                amb115      c(5),;
                amb1n15     c(15),;
                ambkol115   n(12,0),;
                amb215      c(5),;
                amb2n15     c(15),;
                ambkol15    n(12,0),;
                amb116      c(5),;
                amb1n16     c(15),;
                ambkol116   n(12,0),;
                amb216      c(5),;
                amb2n16     c(15),;
                ambkol16    n(12,0),;
                amb117      c(5),;
                amb1n17     c(15),;
                ambkol117   n(12,0),;
                amb217      c(5),;
                amb2n17     c(15),;
                ambkol17    n(12,0),;
                amb118      c(5),;
                amb1n18     c(15),;
                ambkol118   n(12,0),;
                amb218      c(5),;
                amb2n18     c(15),;
                ambkol18    n(12,0),;
                amb119      c(5),;
                amb1n19     c(15),;
                ambkol119   n(12,0),;
                amb219      c(5),;
                amb2n19     c(15),;
                ambkol19    n(12,0),;
                amb120      c(5),;
                amb1n20     c(15),;
                ambkol120   n(12,0),;
                amb220      c(5),;
                amb2n20     c(15),;
                ambkol20    n(12,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
use
endif

if !file('pronalbr.dbf')
   *wait windows ' normativi'
   create table pronalbr(;
   rnal     c(12)   ,;
   oper     c(2)    ,;                                                        
   datum    d(8)    ,;                                                                      
   vreme    c(10)   ,;                                                                      
   arhiva   c(1)    ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif




if !file('pcevgk.dbf')
  * wait windows ' kal  '
   create table pcevgk;
               (mtr       n(5),;     
                konto     c(10),;                
                dug       n(18,2),;
                pot       n(18,2),;
                datdok    d(8),;
                naz       c(30),;
                brkal     c(6) ,;
                rsif      c(5),;
                kol       n(18,4),;
                velcena   n(18,5),;
                velvred   n(18,2),;
                idbroj    c(11),;                
                idbroji   c(11),;                
                opsti     n(18,2),;
                opstigk   n(18,2),;
                ie        c(1),;    
                uliz      c(1),;
                naziv     c(60),;
                nazkto    c(60),;
                koli      n(18,4),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
          use
       endif

if !file('start.dbf')
  * wait windows ' kal  '
   create table start;
               (datdok    d(8),;
                datrok    d(8),;
                pristup   c(04),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('ldinv2.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldinv2 ;
               (tekst1    c(70)     ,;
                tekst2    c(70)     ,;
                tekst3    c(70)     ,;
                tekst4    c(70)     ,;
                tekst5    c(70)     ,;
                tekst6    c(70)     ,;
                tekst7    c(70)     ,;
                tekst8    c(70)     ,;
                tekst9    c(70)     ,;
                tekst10   c(70)     ,;
                tekst11   c(70)     ,;
                tekst12   c(70)     ,;
                tekst13   c(70)     ,;
                tekst14   c(70)     ,;
                tekst15   c(70)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldinv3.dbf')
   *wait windows ' ldnz1-spisak naknada za porodilje '   
   create table ldinv3 ;
               (tekst1    c(70)     ,;
                tekst2    c(70)     ,;
                tekst3    c(70)     ,;
                tekst4    c(70)     ,;
                tekst5    c(70)     ,;
                tekst6    c(70)     ,;
                tekst7    c(70)     ,;
                tekst8    c(70)     ,;
                tekst9    c(70)     ,;
                tekst10   c(70)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldiosi.dbf')
   create table ldiosi;
               (mesec      n(2)      ,;
                nazmes     c(10)     ,;
                datdok     d(8)     ,;
                ukzapos    n(5,0),;
                brojinval  n(5,0),;
                ukinval    n(5),;
                brojfinans n(5),;
                dinfinans  n(14,0),;
                brojinvalu n(5),;
                dinugov    n(14,0),; 
                brojugov   c(10),;
                datugov    d(8),;
                brojinvalp n(5),;
                dinpenal   n(14,0),; 
                datuplatep d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('clhcrnal.dbf')
   *wait windows ' normativi'
   create table clhcrnal(;
   rnal       c(12),;
   datdok     d(8),;
   sesija     c(3),; 
   normativ   c(5)   ,;
   rsif       c(5)   ,;
   msif       c(5)   ,;
   pmsif      c(5)   ,;
   asif       c(5)   ,;
   kol        n(18,6),;
   dozkol     n(18,6),;
   serija     c(10),;
   tempkuv    c(10),;
   tempdesump c(10),;
   suvamat    c(10),;
   phvred     n(12,2),;
   datpak     d(8),;
   roktraj    d(8),;
   dimamb     c(20),;
   kolzapak   n(12,2),;
   kolproiz   n(12,2),;
   datpoc     d(8),;
   datkraj    d(8),;
   grupa      c(3),;
   msifnaz    c(30),;
   opis       c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('clhcizv.dbf')
   *wait windows ' normativi'
   create table clhcizv(;
   brkal      c(6),;
   rnal       c(12),;
   datdok     d(8),;
   smena      c(1),;
   rsif       c(5)   ,;
   sifpak     c(5)   ,;
   kolzapak   n(12,2),;
   kolproiz   n(12,2),;
   istocspak  c(3),;
   sifrad1    n(4),;
   sifrad2    n(4),;
   sifrad3    n(4),;
   sifrad4    n(4),;
   sifrad5    n(4),;
   sifrad6    n(4),;
   sifrad7    n(4),;
   sifrad8    n(4),;
   sifrad9    n(4),;
   sifrad10   n(4),;
   napomena1  c(70),;
   napomena2  c(70),;
   napomena3  c(70),;
   ime_prez1  c(30),;  
   ime_prez2  c(30),;  
   ime_prez3  c(30),;  
   ime_prez4  c(30),;  
   ime_prez5  c(30),;  
   ime_prez6  c(30),;  
   ime_prez7  c(30),;  
   ime_prez8  c(30),;  
   ime_prez9  c(30),;  
   ime_prez10 c(30),;  
   naz        c(30),;
   kol        n(18,6),;
   dimamb     c(20),;
   grupa      c(3),;
   msifnaz    c(30),;
   opis       c(20),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('clhcpak.dbf')
   *wait windows ' normativi'
   create table clhcpak(;
   sifpak     c(5)   ,;
   nazpak     c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('clhcidk.dbf')
   *wait windows ' normativi'
   create table clhcidk(;
   brkal      c(6),;
   rsif       c(5)   ,;
   naz        c(30),;
   datdok     d(8),;
   rnal       c(12),;
   sesija     c(3),; 
   datpak     d(8),;
   roktraj    d(8),;
   dokument   c(20),; 
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('sveslag.dbf')
   *wait windows ' normativi'
   create table sveslag(;
   konto      c(10)   ,;
   vrsta      c(3),;
   datdok     d(8),;
   brnal      c(6),;
   dok        c(3),;
   robno      n(18,2),;
   gknjiga    n(18,2),;
   razlika    n(18,2),;
   brkal      c(6),;
   sifarnik   c(2),;
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('sveslnal.dbf')
   *wait windows ' normativi'
   create table sveslnal(;
   vrsta      c(3),;
   datdok     d(8),;
   brkal      c(6),;
   dok        c(3),;
   brnal      c(6),;
   nbrnal     c(6),;
   vrnal      c(3),;
   znakovi    n(1),;              
   pocsif     c(3),; 
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif

if !file('rnalsal.dbf')
  * wait windows ' fak  '
   create table rnalsal;
               (rnal      c(12),;       
                koli      n(18,3),;
                velvred   n(18,3),;
                zadvred   n(18,3),;
                prosvred  n(18,5),;
                kolnal    n(18,3),;
                cenak     n(18,3),;
                rsif      c(5),;       
                naz       c(30),;
                dat0      d(8),;
                dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif
     
if !file('linkput.dbf')
  * wait windows ' fak  '
   create table linkput;
               (putanja   c(120),;       
                nazivprg  c(120),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif     



if !file('tvparrev.dbf')
 *  wait windows ' an0 sifarnik poslovnih partnera '   
   create table tvparrev ;
               (dok       c(3)     ,;
                dok1      c(3)     ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('tvreze.dbf')
 *  wait windows ' an0 sifarnik poslovnih partnera '   
   create table tvreze ;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                ulaz      n(18,4),;
                izlaz     n(18,4),;
                kolrez    n(18,4),;                
                stanje    n(18,4),;                
                dcena     n(18,5),;
                jed       c(10),;
                barkod    c(20),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;
                zadnab    n(18,5),;
                naz2      c(99),;
                dat0      d(8) ,;             
                dat1      d(8) ,; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('tmkol.dbf')
  * wait windows ' trgovacka knjiga '   
   create table tmkol ;
               (datdok    d(8)      ,;
                opis      c(60),;
                iznos     n(18,2),;
                redni     n(14),;
                sstrana   n(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif

if !file('grupkalo.dbf')
  * wait windows ' roba '
   create table grupkalo;
               (naz       c(30),;
                grupa     c(3),;
                prockalo  n(09,4),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('aapr.dbf')
  * wait windows ' izbor magacina '
   create table aapr;
              (sifprod   c(2)  ,;
               pnaziv    c(50) ,;
               maggot    c(2),;
               fpgot     c(3),;
               maggotf   c(2),;
               fpgotf    c(3),;
               magpolu   c(2),;
               fppolu    c(3),;
               magmat    c(2),;
               fpmat     c(3),;
               magpmat   c(2),;
               fppmat    c(3),;
               magamb    c(2),;
               fpamb     c(3),;
               kgot      c(1),;
               kgotf     c(1),;
               kpolu     c(1),;
               kmat      c(1),;
               kpmat     c(1),;
               kamb      c(1),;
               konto     c(10),;
               prikaz    c(1),; 
                preneto   c(1),;   
                idbr      n(11);                    
   )
   use
endif               


if !file("pdvknji.dbf")
   create table pdvknji;
             (konto     c(10)    ,;                   
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              opis      c(30)   ,;                   
              datdok    d(8)    ,;              
              brnal     c(6)    ,;                                 
              dok       c(3)    ,;                            
              datpdv    d(8)    ,;                                                                      
              vpdv      c( 3),;
              dat0      d(8),;              
              dat1      d(8),;
                preneto   c(1),;   
                idbr      n(11);                    
              )                            
   use
endif


if !file('konsigp.dbf')
  * wait windows ' fakg  '
   create table konsigp;
               (dat0      d(8) ,; 
                dat1      d(8) ,; 
                datdok    d(8) ,; 
                dana      n(9,0) ,; 
                magacin   c(2),;      
                fvrsta    c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
               )
         use
      endif

if !file('anprovz.dbf')
 *  wait windows ' anal evidencija analitike '
   create table anprovz;
                    (sifprod   c(2),;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     konto     c(10),;
                     brnal     c(6),;
                     zatvar    c(1),;
                     pnaziv    c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('findtab.dbf')
   create table findtab(;
   ime       c(12)  ,;
   rednibroj n(12)  ,;
   polje     c(10)  ,;
   podatak   c(80)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
   )              
   use
endif

if !file('anprovz.dbf')
 *  wait windows ' anal evidencija analitike '
   create table anprovz;
                    (sifprod   c(2),;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     konto     c(10),;
                     brnal     c(6),;
                     zatvar    c(1),;
                     pnaziv    c(30),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif

if !file('putar.dbf')
*   wait windows ' mtr mesta troskova '   
   create table putar ;
             (redbr    c(6)   ,;
              putnal   n(4)   ,;
              datdok   d(8)   ,;
              vreme    c(10)  ,;              
              sifrel   c(6)   ,;
              relacija c(60)  ,;              
              iznos    n(18,2),;              
              grupa    c(3)  ,;                            
              kol      n(12)  ,; 
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('putar0.dbf')
*   wait windows ' mtr mesta troskova '   
   create table putar0 ;
             (sifrel   c(6)   ,;
              relacija c(60)  ,;              
              iznos    n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('ldzsd.dbf')
   create table ldzsd ;
               (redni      n(4),;
                ime_prez   c(30)    ,;              
                maticnibr  c(13),;
                datzapos   d(8),;
                bruto      n(14,0),;
                doppf      n(12,0)   ,;                
                doppfr     n(12,0)   ,;                
                doppuk     n(12,0)   ,;                
                datotkaz   d(8),;
                dopdug     n(12,0),;                
                brojzap0   n(09,0),;                
                brojzap1   n(09,0),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('ldzsp.dbf')
   create table ldzsp ;
               (redni      n(4),;
                ime_prez   c(30)    ,;              
                maticnibr  c(13),;
                porumanj   n(09,4),;
                datzapos   d(8),;
                bruto      n(14,0),;
                pordoh     n(12,2),;
                porezu     n(12,2),;
                porezupl   n(12,2),;
                porezsub   n(12,2),;                
                datotkaz   d(8),;
                pordug     n(12,0),;                
                brojzap0   n(09,0),;                
                brojzap1   n(09,0),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('aatvpak.dbf')
  * wait windows ' izbor magacina '
   create table aatvpak;
              (sifprod   c(2)  ,;
               naztab    c(4)  ,; 
               sime      c(10)  ,;
               nime      c(10)  ,;
               pnaziv    c(30) ,;
               sifarnik  c(2)  ,;
               gsifarnik c(1),;
               psifarnik c(1),;
               nezajedno c(1),;               
               prikaz    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
               )
     use
 endif

if !file('tabstru.dbf')
   create table tabstru;
               (naziv     c(10),; 
                tip       c(1)   ,;
                duzina    n(3),;
                decimala  n(2),;
                imetab    c(8),;                
                preneto   c(1),;   
                idbr      n(11);     
                )
         use
     endif

if !file('mtabele.dbf')
   create table mtabele;
               (imetab    c(8),;                
                putanja   c(60),; 
                sifarnik  c(1),;                    
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('stabele.dbf')
   create table stabele;
               (imetabs   c(8),;                
                imetabl   c(8),;                               
                putanja   c(60),; 
                counts    n(12),;                
                countl    n(12),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('ftabele.dbf')
   create table ftabele;
               (imetab    c(12),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif


if !file('pazarbg.dbf')
   create table pazarbg;
               (art       c(15),;                
                naziv     c(80),; 
                izlaz1    n(16,3),;   
                cenamp    n(18,4),;
                pot       n(18,2),;                    
                datum     d(8),;
                tarifa    c(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('tab00.dbf')
   create table tab00;
               (imetab    c(8),;                
                imetab0   c(8),;                
                putanja   c(60),; 
                sifarnik  c(1),;                    
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('sqlpar.dbf')
   create table sqlpar;
               (fpossif   c(1),;
                fserver   c(1),;
                flokalni  c(1),;
                fdata01   c(1),;
                tserver   c(60),;
                tbaza     c(40),;
                tkorisnik c(40),;
                tlozinka  c(20),;
                tdriver   c(40),;
                lserver   c(60),;
                lbaza     c(40),;
                lkorisnik c(40),;
                llozinka  c(20),;
                ldriver   c(40),;
                putanja   c(60),; 
                port      c(6),; 
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('sqlpar2.dbf')
   create table sqlpar2;
               (fdata01   c(1);
                )
         use
     endif

if !file('stopapor.dbf')
   create table stopapor;
               (ostopa       c(2),;
                nstopa       c(2),;               
                pstopa       n(9,2),;                               
                sostopa      c(2),;
                snstopa      c(2),;               
                spstopa      n(9,2),;                               
                vaziod       d(8),;                  
                preneto      c(1),;   
                idbr         n(11);
                )
         use
     endif




if !file('nalpdefk.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalpdefk ;
             (sifprod   c(2),;
              konto     c(10)  ,;                   
              pnaziv    c(30)   ,;                                          
              devizno   c(1)    ,;
              sifarnik  c(2)    ,;
              dok       c(3),;
              vrsta     c(2),;
              imetabele c(8),;
              dp        c(1)    ,;
              preneto   c(1),;   
              idbr      n(11);                    
              )                
   use
endif


if !file('nalprnal.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalprnal ;
             (brnal     c(6)    ,;                                 
              datdok    d(8)    ,;              
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              opis      c(30)   ,;                   
              dok       c(3)    ,;                            
              mp        c(2)    ,;                                               
              mtr       n(5)    ,;              
              automnal  c(1)    ,;
              vrnal     c(3)    ,;
              naziv     c(30)   ,;                                          
              obl       c(1)    ,;
              period    n(2)    ,;
              naldok    c(1)    ,;                                        
              znakovi   n(1)    ,;              
              pocsif    c(3)    ,; 
              nauto     c(1)    ,;
              konto     c(10)   ,; 
              saldo     n(18,2) ,;                   
              datknji   d(8)    ,;   
              oper      c(2)    ,;   
              preneto   c(1)    ,;   
              idbr      n(11);                    
              )                
   use
endif

if !file('nalprkon.dbf')
 *  wait windows ' nalp izrada naloga za knjizenje '   
   create table nalprkon ;
             (konto     c(10)   ,; 
              dug       n(18,2) ,;                   
              pot       n(18,2) ,;                   
              saldo     n(18,2) ,;                   
              naziv     c(60)   ,;                                          
              preneto   c(1)    ,;   
              idbr      n(11);                    
              )                
   use
endif


if !file('robprsve.dbf')
  * wait windows ' roba '
   create table robprsve;
               (rsif      c(5)   ,;
                naz       c(30),;
                malcena   n(18,5),;
                kol1      n(18,3),;
                kol2      n(18,3),;
                kol3      n(18,3),;
                kol4      n(18,3),;
                kol5      n(18,3),;
                kol6      n(18,3),;
                kol7      n(18,3),;
                kol8      n(18,3),;
                kol9      n(18,3),;
                kol10     n(18,3),;
                kol11     n(18,3),;
                kol12     n(18,3),;
                kol13     n(18,3),;
                kol14     n(18,3),;
                kol15     n(18,3),;
                kol16     n(18,3),;
                kol17     n(18,3),;
                kol18     n(18,3),;
                kol19     n(18,3),;
                kol20     n(18,3),;
                kol21     n(18,3),;
                kol22     n(18,3),;
                kol23     n(18,3),;
                kol24     n(18,3),;
                kol25     n(18,3),;
                kol26     n(18,3),;
                kol27     n(18,3),;
                kol28     n(18,3),;
                kol29     n(18,3),;
                kol30     n(18,3),;
                kol31     n(18,3),;
                kol32     n(18,3),;
                kol33     n(18,3),;
                kol34     n(18,3),;
                kol35     n(18,3),;
                kol36     n(18,3),;
                kol37     n(18,3),;
                kol38     n(18,3),;
                kol39     n(18,3),;
                kol40     n(18,3),;
                kolsve    n(18,3),;
                grupa     c(3),;
                grupa1    c(3),;
                grupa2    c(3),;
                grupa3    c(3),;
                grupa4    c(3),;
                grupa5    c(3),;
                sifra     c(5),;
                dok       c(3),;
                proizv    c(5),;
                podrob    c(5),;
                podnaziv  c(20),;
                DAT0      D(8),;
                DAT1      D(8),;
                datdok    d(8),;
                mesec     C(2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('tmpKOL.dbf')
  * wait windows ' pp knjiga poreza  '
   create table tmpKOL;
               (datdok    d(8)    ,;
                opis      c(40)    ,;
                IZNOS     N(18,2),;
                brkal     c(6)    ,;
                brfak     c(6)    ,;
                brnal     c(6)    ,;
                dok       c(3)    ,;
                konto     c(10),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
           use     
        endif

if !file('fakuni.dbf')
  * wait windows ' fak  '
   create table fakuni;
               (dok       c(3),; 
                brpri     c(6),;                      
                brtre     c(6),;       
                rsif      c(5),;       
                podnaziv  c(20),;                       
                naz       c(30),;
                kol       n(18,3),;
                koli      n(18,3),;
                cena      n(18,5),;
                dug       n(18,3),;
                pot       n(18,3),;
                saldo     n(18,3),;
                datdok    d(8)   ,;
                brnal     c(06),;     
                rnal      c(12),; 
                mtr       n(5),;   
                brkal     c(6),;                       
                datod     d(8)   ,;                           
                datdo     d(8)   ,;                           
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file("pdvigk.dbf")
   create table pdvigk;
                (vpdv       c( 3),;
                 dok        c(10),;
                 konto      c(10),;
                 ukprod     n(18,2),;
                 osn18      n(18,2),;
                 osn8       n(18,2),;
                 osn0       n(18,2),;
                 ukosn      n(18,2),;                 
                 pdv18      n(18,2),;
                 pdv8       n(18,2),;
                 pdv        n(18,2),;
                 osngk      n(18,2),;
                 pdvgk      n(18,2),;
                 brnal      c(6),;
                 dat0       d(8),;
                 dat1       d(8),;
                 datDOK     d(8),;
                 preneto    c(1),;   
                 idbr       n(11);                    
                 )
   use
endif

if !file("kaltrn.dbf")
   create table kaltrn;
                (rsif       c(5),;
                 naz        c(30),;
                 kol        n(18,3),;                 
                 cena       n(18,2),;
                 barkod     c(20),;
                 sif_mat    c(8),;
                 naziv      c(30),;
                 jm         c(10),;
                 tarifa     c(6),;
                 pr_cena    n(18,2),;
                 ident      c(20),;
                 dana       n(3),;
        preneto   c(1),;   
        idbr      n(11);
                 )
   use
endif


if !file('putsve.dbf')
   create table putsve(;
      Putnik     c(3)    ,;
      ime        c(30)   ,;
      redbr      c(2),;
      dat0       d(8),;
      dat1       d(8),;
      plan       n(12,2) ,;
      fakvred    n(12,2) ,;
      razlika    n(12,2) ,;
      zarada0    n(12,2),;      
      kupotvor   n(12,0),;                                             
      bonuskup   n(12,2) ,;
      bonuskol   n(12,2) ,;
      bonusakc   n(12,2) ,;
      bonusakc2  n(12,2) ,;
      bonusakc3  n(12,2) ,;            
      kasnjenje  n(12,2) ,;
      provizija  n(12,2) ,;   
      uplata     n(12,2),;
      iznos1     n(12,2),;
      iznosum    n(12,2),;
      fiksno     n(12,2) ,;
      zarada     n(12,2) ,;
      zarada2    n(12,2) ,;
      troskovi   n(12,2) ,;
      ostalo     n(12,2) ,;
      ostalo2    n(12,2) ,;
      svega      n(12,2) ,;
      osnov1     n(12,2) ,;   
	  polje9     n(12,2) ,;
      polje10    n(12,2) ,;                
      preneto   c(1),;   
      idbr      n(11);                    
      )
     use
ENDIF

if !file('pravitab.dbf')
   create table pravitab(;
      redni      n(10,0),;   
      imetab     c(8),;
      ime        c(10),;
      tip        c(1),;
      duzina     c(3),;
      decimala   c(2),;
      indeks     c(30),;      
        preneto   c(1),;   
        idbr      n(11);
      )
     use
ENDIF


if ! file("unior.dbf")
   create table unior;
   (vpdv       c(3),;
    kontoa     c(10),;
    konto      c(10),;
    brnal      c(6),;
    datslanja  d(8),;
    datpdv     d(8),;
    datdok     d(8),;
    brrac      c(20),;
    valuta     d(8),;
    sifra      c(5),;
    ukprod     n(14,2),;
    osn18      n(14,2),;
    pdv18      n(14,2),;
    osn8       n(14,2),;
    pdv8       n(14,2),;
    ukupno     n(14,2),;
    pdv        n(14,2),;
    osn0       n(16,2),;
    dok        c(3),;
    dev        c(3)    ,;                            
    devkurs    n(18,6) ,;                            
    devdug     n(18,6) ,;   
    devpot     n(18,6),;                                           
    kurs       n(10,4),;
    arhiva     c(1),;
    naziv      c(40),;
    pib        c(9),;
    pogon      c(1),;
    povezanol  c(1),;
    vrstaf     c(1),;
    preneto    c(1),;   
    numred     c(20),;       
    idbr       n(11);                    
    )
    use
ENDIF


if ! file("uniorkon.dbf")
   create table uniorkon;
   (vpdv       c(3),;
    kontoa     c(10),;
    konto      c(10),;
    pogon      c(1),;
    povezanol  c(1),;
    vrstaf     c(1),;
    preneto    c(1),;   
    numred     c(20),;           
    idbr       n(11);                    
    )
    use
endif

if !file('robpored.dbf')
   create table robpored;
               (rsif      c(5)   ,;
                naz       c(30),;
                velcena   n(18,5),;
                malcena   n(18,5),;
                tarifa    c(6),;
                barkod    c(20),;
                brsif     c(5)   ,;
                bnaz      c(30),;
                bvelcena  n(18,5),;
                bmalcena  n(18,5),;
                btarifa   c(6),;
                bbarkod   c(20),;
                ssif      c(5) ,;
                nsif      c(5) ,;               
                tabela1   c(8),;
                tabela2   c(8),;      
        preneto   c(1),;   
        idbr      n(11);
    )
    use
endif

if !file('aatvOTP.dbf')
  * wait windows ' izbor magacina '
   create table aatvOTP;
              (dok        c(3)  ,;
               grupa      c(3)  ,;
               grupa1     c(3)  ,;
               brkal      c(6)  ,;
               rsif       c(5)  ,;
               prockalo   n(12,3),;
               koldoz     n(12,3),;
               nabvred    n(18,2),;
               marza      n(18,2),;
               velvred    n(18,2),;
               porez      n(18,2),;
               malvred    n(18,2),;               
               dat0       d(8),;
               dat1       d(8),;
               sifprod    c(2)  ,;
               pnaziv     c(20) ,;
               sifarnik   c(2)  ,;
               fvrsta     c(3),;   
               preneto    c(1),;   
               idbr       n(11);                    
               )
     use
 endif

 if !file('kasafs.dbf')
  * wait windows ' roba '
   create table kasafs;
               (datum     d(08),;
                vreme     c(10),;
                brkal     c(6),;
        preneto   c(1),;   
        idbr      n(11);
                )
                
         use
     endif

if !file('komandle.dbf')
  * wait windows ' kursna lista '   
   create table komandle;
               (ime       c(128),;
                duzina    n(14,0),;                                   
                datum     d(8),;                   
                vreme     c(10),;                                   
                atribut   c(5),;                                                   
                oznaceno  c(1),;                                                                   
                dodatno   c(10),;                                                                                   
                preneto    c(1),;   
                idbr      n(11);                    
                )            
   use
endif

if !file('komanddl.dbf')
  * wait windows ' kursna lista '   
   create table komanddl;
               (imediskale  c(1),;
                opis        c(40),;   
                preneto     c(1),;   
                idbr        n(11);                    
                )            
   use
endif

if !file('komanddd.dbf')
  * wait windows ' kursna lista '   
   create table komanddd;
               (imediskade c(1),;
                opis       c(40),;   
                preneto    c(1),;   
                idbr       n(11);                    
                )            
   use
endif


if !file('komandde.dbf')
  * wait windows ' kursna lista '   
   create table komandde;
               (ime       c(128),;
                duzina    n(14,0),;                   
                datum     d(8),;                   
                vreme     c(10),;                                   
                atribut   c(5),;  
                oznaceno  c(1),;                                                                                    
                dodatno   c(10),;                                                                                                                                                   
                preneto    c(1),;   
                idbr      n(11);                    
                )            
   use
endif

if !file('komander.dbf')
  * wait windows ' kursna lista '   
   create table komander;
               (imediskale c(1),;
                imediskade c(1),;
                aktdirle   c(60),;
                aktdirde   c(60),;
                filterle   c(10),;                
                filterde   c(10),;                                
                sortle     c(1),;                
                sortde     c(1),;                                
                preneto    c(1),;   
                idbr       n(11);                    
                )            
   use
endif

if !file('ftppre.dbf')
   create table ftppre;
               (red       n(6),;       
                znak      c(1),;
                datoteka  c(128),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('ftppri.dbf')
   create table ftppri;
               (red       n(6),;       
                znak      c(1),;
                datoteka  c(128),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     ENDIF
if !file('ftpput.dbf')
   create table ftpput;
               (sajtime   c(60) ,;               
                sajtput   c(60) ,;                                                            
                sajtkor   c(40) ,;                              
                sajtloz   c(60) ,;                                             
                lokalput  c(60) ,;                                                                            
                gdeide    c(60) ,;                                                                            
                imesla    c(8) ,;                                                                                            
                imepri    c(8) ,;
                dok       c(3) ,;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     ENDIF
if !file('ftpobj.dbf')
   create table ftpobj;
               (sifprod   c(2),; 
                opis      c(30),;
                dok       c(3),;       
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     ENDIF


if !file('ftpcitaj.dbf')
   create table ftpcitaj;
               (pocetak   c(128) ,;               
                datoteka  c(128) ,;                                                            
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     ENDIF

if !file('ftpuzmi.dbf')
   create table ftpuzmi;
               (dok       c(3),;
                znak      c(1),;
                nacin     c(1),;                
                datoteka  c(128),;
                dat0      d(8),;
                dat1      d(8),;
                kljuc     c(8),;
                uslov     c(20),;
                tip       c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('ftpsalji.dbf')
   create table ftpsalji;
               (dok       c(3),;
                znak      c(1),;
                nacin     c(1),;                                
                datoteka  c(128),;
                dat0      d(8),;
                dat1      d(8),;
                kljuc     c(8),;
                uslov     c(20),;
                tip       c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('putbonus.dbf')
   create table putbonus(;
      broj0      n(9,0),;
      broj1      n(9,0),;
      bonuskup   n(14,2),;
      preneto   c(1),;   
      idbr      n(11);                    
      )              
   use
endif

if !file('putbonGR.dbf')
   create table putbonGR(;
      GRUPA      C(3),;
      real1      n(14,2),;
      bonus1     n(14,2),;
      real2      n(14,2),;
      bonus2     n(14,2),;
      real3      n(14,2),;
      bonus3     n(14,2),;
      bonusneg   n(14,2),;
      realizac   n(14,2),;
      procreal   n(14,2),;      
      plasman1   n(14,2),;
      plasman2   n(14,2),;
      plasman3   n(14,2),;
      preneto    c(1),;   
      idbr       n(11);                    
      )              
   use
endif

if !file('an0fizli.dbf')
   create table an0fizli(;
        FLSIFRA   C(5), ;
        JMBG      C(13), ;
        IME_prez  C(30), ;
        MESTO     C(30), ;
        ulica     C(30), ;
        pib2      C(5), ;
        grupa1    C(3), ;        
        SIFKUP    C(5), ;
        DOZLIMIT  N(10,2), ;
        BRRATA    N(2), ;
        TIPGAR    C(1), ;
        TELefon   C(15), ;
        SIFPOSL   C(2), ;
        SIFFIL    C(2), ;
        MOBTEL    C(15),;
        datum     d(8),;        
        preneto   c(1),;   
        idbr      n(11);                    
        )
        USE
endif     

if !file('ldos.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldos ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                datod     d(8),;
                datdo     d(8),;
                bruto     n(12,2)   ,;                
                doppr     n(12,2)   ,;                
                dopzr     n(12,2)   ,;                
                dopnr     n(12,2)   ,;                                                
                doppf     n(12,2)   ,;                
                bendin    n(12,2)   ,;                
                dopzf     n(12,2)   ,;                
                dopnf     n(12,2)   ,;                                                
                opstina   c(3)      ,;                                                                
                mp        c(2)      ,; 
                mesec     n(2)      ,;
                nazmes    c(10)     ,;
                isplata   n(1),;   
                maticnibr c(13),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif


if !file('ldos1.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldos1 ;
               (broj      n(4)      ,;
                ime_prez  c(30)     ,;
                datod     d(8),;
                datdo     d(8),;
                bruto     n(12,2)   ,;                
                doppr     n(12,2)   ,;                
                dopzr     n(12,2)   ,;                
                dopnr     n(12,2)   ,;                                                
                doppf     n(12,2)   ,;                
                dopzf     n(12,2)   ,;                
                dopnf     n(12,2)   ,;                                                
                opstina   c(3)      ,;                                                                
                mp        c(2)      ,; 
                mesec     n(2)      ,;
                nazmes    c(10)     ,;
                isplata   n(1),;   
                maticnibr c(13),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )                
   use
endif

if !file('ldizvjp.dbf')
 *  wait windows ' glavna tabela plate '
   create table ldizvjp ;
               (broj       n(4)      ,;
                ime        c(20),; 
                prezime    c(20),;
                maticnibr  c(13),;  
                rmesto     c(40),;
                skosprema  c(15),;       
                zarada     n(12,2)   ,;                                         
                uvecana    n(12,2)   ,;                                                         
                varijabil  n(12,2)   ,;                                                                         
                netold     n(12,2)   ,;                                
                bruto      n(12,2)   ,;                
                mesec      n(2)      ,;
                nazmes     c(10)     ,;
                isplata    n(1),;   
                preneto    c(1),;   
                idbr       n(11);                    
                )                
   use
endif

if !file('pazars.dbf')
  * wait windows ' trgovacka knjiga '   
   create table pazars ;
               (brojdnev  c(5)      ,;
                datdok    d(8)      ,;
                gotovina  n(18,2),;
                cekovi    n(18,2),;
                kartica   n(18,2),;
                virman    n(18,2),;
                ostalo    n(18,2),;
                vredprod  n(18,2),;                                              
                ispravka  n(18,2),;                                
                dnevnipaz n(18,2),;                                
                kamata    n(18,2),;                              
                kreditnap n(18,2),;                                
                novac     n(18,2),;
                cekovinap n(18,2),;
                kreditodl n(18,2),;                                                
                cekoviodl n(18,2),;
                papiri    n(18,2),;
                dok       c(3),;
                opis      c(60),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif

if ! file("aflput.dbf")
   create table aflput(;
    putanja      c(70),;
        preneto   c(1),;   
        idbr      n(11);
    )
   use
endif

if !file('kasarv.dbf')
  * wait windows ' fakg  '
   create table kasarv;
               (FLSIFRA   c(5),;
                malvred   n(14,2),;
                dana      n(12,0),;      
                rata      n(12,0),;
                sada      c(1),;
                dinsada   n(14,2),;      
                kredit    n(14,2),;      
                pr1       n(3),;
                pv1       d(8),;
                prdin1    n(14,2),;
                pr2       n(3),;
                pv2       d(8),;
                prdin2    n(14,2),;
                pr3       n(3),;
                pv3       d(8),;
                prdin3    n(14,2),;
                pr4       n(3),;
                pv4       d(8),;
                prdin4    n(14,2),;
                pr5       n(3),;
                pv5       d(8),;
                prdin5    n(14,2),;
                pr6       n(3),;
                pv6       d(8),;
                prdin6    n(14,2),;
                pr7       n(3),;
                pv7       d(8),;
                prdin7    n(14,2),;
                pr8       n(3),;
                pv8       d(8),;
                prdin8    n(14,2),;
                pr9       n(3),;
                pv9       d(8),;
                prdin9    n(14,2),;
                pr10      n(3),;
                pv10      d(8),;
                prdin10   n(14,2),;
                pr11      n(3),;
                pv11      d(8),;
                prdin11   n(14,2),;
                pr12      n(3),;
                pv12      d(8),;
                prdin12   n(14,2),;
                kes       n(14,2),;
                kartica   n(14,2),;
                cek       n(14,2),;
                virman    n(14,2),;
                datdok    d(8),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      ENDIF
      
      
if !file('kasakr.dbf')
  * wait windows ' fakg  '
   create table kasakr;
               (brkred    c(6),;
                FLSIFRA   c(5),;
                datdok    d(8),;
                malvred   n(14,2),;
                kamproc   n(10,2),;                
                kamata    n(14,2),;                                
                ukupno    n(14,2),;
                dana      n(12,0),;      
                rata      n(12,0),;
                sada      c(1),;
                dinsada   n(14,2),;      
                kredit    n(14,2),;   
                dok       c(5),;                   
                pr1       n(3),;
                pv1       d(8),;
                prdin1    n(14,2),;
                pr2       n(3),;
                pv2       d(8),;
                prdin2    n(14,2),;
                pr3       n(3),;
                pv3       d(8),;
                prdin3    n(14,2),;
                pr4       n(3),;
                pv4       d(8),;
                prdin4    n(14,2),;
                pr5       n(3),;
                pv5       d(8),;
                prdin5    n(14,2),;
                pr6       n(3),;
                pv6       d(8),;
                prdin6    n(14,2),;
                pr7       n(3),;
                pv7       d(8),;
                prdin7    n(14,2),;
                pr8       n(3),;
                pv8       d(8),;
                prdin8    n(14,2),;
                pr9       n(3),;
                pv9       d(8),;
                prdin9    n(14,2),;
                pr10      n(3),;
                pv10      d(8),;
                prdin10   n(14,2),;
                pr11      n(3),;
                pv11      d(8),;
                prdin11   n(14,2),;
                pr12      n(3),;
                pv12      d(8),;
                prdin12   n(14,2),;
                kes       n(14,2),;
                kartica   n(14,2),;
                cek       n(14,2),;
                virman    n(14,2),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;   
                arhiva2   c(1),;                                   
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif      


if !file('PODSET.dbf')
  * wait windows ' fakg  '
   create table PODSET;
               (datdok    d(8),;
                tekst1    c(60),;
                tekst2    c(60),;
                tekst3    c(60),;
                tekst4    c(60),;
                tekst5    c(60),;
                tekst6    c(60),;
                tekst7    c(60),;
                tekst8    c(60),;
                tekst9    c(60),;
                tekst10   c(60),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;   
                arhiva2   c(1),;                                   
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif      

if !file('licenca.dbf')
  * wait windows ' fakg  '
   create table licenca;
               (datum     d(8),;
                firma     c(60),;
                pib       c(13),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif      

  if !file('kasatreb.dbf')
  * wait windows ' fak  '
   create table kasatreb;
               (ime       c(20),;
        preneto   c(1),;   
        idbr      n(11);
                )
        use
     endif      

*-----------------
if !file("pdvsn.dbf")
   create table pdvsn;
    (datdok     d(8),;
    datPDV      d(8),;    
    brrac      c(20),;
    sifra      c(5),;
    sn         c(1),;
    uknab      n(14,2),;
    ukprod     n(14,2),;    
    brnal      c(6),;
    dok        c(3),;
    ukupno     n(14,2),;
    pdv        n(14,2),;
    konto      c(10),;
    kontoa     c(10),;   
    uplac      n(14,2),;
    pdvdeo     n(14,2),;
    preneto    c(1),;   
    idbr       n(11);                    
    )
   use
endif

if ! file("PDVGKKON.dbf")
   create table PDVGKKON;
             (konto     c(10)  ,; 
              preneto   c(1),;   
              idbr      n(11);                    
              )
          use    
endif

if ! file("PDVGKDUG.dbf")
   create table PDVGKDUG;
             (konto     c(10)  ,; 
              opis      c(30)   ,;                   
              dug       n(12,2),; 
              datdok    d(08,0),;
              brnal     c(06,0),;
              dok       c(03,0),;
              naziv    c(70)  ,;
              preneto   c(1),;   
              idbr      n(11);                    
              )
          use    
endif
if ! file("kasadrop.dbf")
   create table kasadrop(;
        POSRACUN    C(20), ;
        ART         C(15), ;
        NAZIV       C(80), ;
        IZLAZ1      N(16,3), ;
        CENAMP      N(18,4), ;
        POT         N(18,2), ;
        DATUM       D, ;
        TARIFA      C(3),;
        preneto   c(1),;   
        idbr      n(11);
              )
          use    
endif



if !file('sqlup.dbf')
  * wait windows ' trgovacka knjiga '   
   create table sqlup;
               (imetab    c(10),;
                upit1     c(100),;                              
                upit2     c(100),;                              
                upit3     c(100),;                              
                vrsta     c(2),;               
                operater  c(2),;               
                preneto   c(1),;   
                idbr      n(11);                    
                )
     use
  endif

close all tables
pop key



if !file('ldppodp.dbf')
  * wait windows ' obrazac opj5 '   
   create table ldppodp ;
               (broj      n(4),;
                grupa     n(4),; 
                datdok    d(8)      ,;
                zarada    n(12,2)   ,;                
                osnovica  n(12,2)   ,;                
                neto      n(12,2)   ,;                
                najniza   n(12,2)   ,;                
                najvisa   n(12,2)   ,;                
                procpio   n(12,2)   ,; 
                proczdr   n(12,2)   ,; 
                procnez   n(12,2)   ,; 
                dopsoc    n(12,2)   ,; 
                doppio    n(12,2)   ,; 
                dopzdr    n(12,2)   ,; 
                dopnez    n(12,2)   ,; 
                procben   n(12,2)   ,;
                dopben    n(12,2)   ,;
                ukupdop   n(12,2)   ,;
                procpor   n(12,2)   ,;                                
                porumanj  n(12,2)   ,;                                
                pordoh    n(12,2)   ,;                                                
                netold    n(12,2)   ,;                
                pzarada   n(12,2)   ,;                
                posnovica n(12,2)   ,;                                
                pneto      n(12,2)   ,;                
                pnajniza   n(12,2)   ,;                
                pnajvisa   n(12,2)   ,;                
                pdopsoc    n(12,2)   ,; 
                pdoppio    n(12,2)   ,; 
                pdopzdr    n(12,2)   ,; 
                pdopnez    n(12,2)   ,; 
                pdopben    n(12,2)   ,;
                pukupdop   n(12,2)   ,;
                pprocpor   n(12,2)   ,;                                
                pporumanj  n(12,2)   ,;                                
                ppordoh    n(12,2)   ,;                                                
                pnetold    n(12,2)   ,;                
                izarada    n(12,2)   ,;                
                iosnovica  n(12,2)   ,;                                
                ineto      n(12,2)   ,;                
                inajniza   n(12,2)   ,;                
                inajvisa   n(12,2)   ,;                
                idopsoc    n(12,2)   ,; 
                idoppio    n(12,2)   ,; 
                idopzdr    n(12,2)   ,; 
                idopnez    n(12,2)   ,; 
                idopben    n(12,2)   ,;
                iukupdop   n(12,2)   ,;
                iprocpor   n(12,2)   ,;                                
                iporumanj  n(12,2)   ,;                                
                ipordoh    n(12,2)   ,;                                                
                inetold    n(12,2)   ,;                
                mesec      n(2)   ,;
                nazmes     c(10)  ,;
                redispl    n(1)   ,;                
                Isplata    n(1)   ,;      
                sifraprih  c(9) ,;               
                arhiva     c(1),;                   
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
ENDIF


if !file('ldppodO.dbf')
  * wait windows ' obrazac opj5 '   
   create table ldppodO ;
               (broj      n(4),;
                grupa     n(4),; 
                datdok    d(8)      ,;
                najniza   n(12,2)   ,;                
                brojlica  n(12,2)   ,;                                
                osnovica  n(12,2)   ,;                
                procpio   n(12,2)   ,; 
                proczdr   n(12,2)   ,; 
                procnez   n(12,2)   ,; 
                dopsoc    n(12,2)   ,; 
                doppio    n(12,2)   ,; 
                dopzdr    n(12,2)   ,; 
                dopnez    n(12,2)   ,; 
                ukupdop   n(12,2)   ,;
                mesec     n(2)   ,;
                nazmes    c(10)  ,;
                Isplata    n(1)   ,;     
                sifraprih c(9) ,;       
                vrstaid    c(1)     ,;
                prebival   c(3)     ,;                
                maticnibr  c(13)     ,;
                prezime    c(20),;
                ime        c(20),;
                brojdana   n(2),;                
                arhiva     c(1),;                                   
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
ENDIF


if !file('ldppodso.dbf')
  * wait windows ' obrazac opj5 '   
   create table ldppodso ;
               (broj      n(4),;
                grupa     n(4),; 
                datdok    d(8)      ,;
                brutor1   n(12,0)   ,;                
                brutor2   n(12,0)   ,;                
                brutor3   n(12,0)   ,;                
                bruton1   n(12,0)   ,;                
                bruton2   n(12,0)   ,;                
                bruton3   n(12,0)   ,;                
                stopap1   n(12,2)   ,;                
                stopap2   n(12,2)   ,;                                
                stopap3   n(12,2)   ,;                
                porr1      n(12,2)   ,;                
                porr2      n(12,2)   ,;                
                porr3      n(12,2)   ,;                
                porn1      n(12,2)   ,;                
                porn2      n(12,2)   ,;                
                porn3      n(12,2)   ,;                
                brutoruk   n(12,0)   ,;                
                brutonuk   n(12,0)   ,;                
                porruk     n(12,0)   ,;                                
                pornuk     n(12,0)   ,;                                
                tromes     n(2)   ,;
                dokaz1     c(70)   ,;                
                dokaz2     c(70)   ,;
                dokaz3     c(70)   ,;
                napomena1  c(70)   ,;
                napomena2  c(70)   ,;
                napomena3  c(70)   ,;                                                
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
endif


if !file('robmas.dbf')
  * wait windows ' roba '
   create table robmas;
               (naz       c(30),;
                rsif      c(5),;
                datdok    d(8),;
                sati      n(18,2),;
                rnal      c(12),;
                satcena   n(18,2),;
                satvred   n(18,2),;
                kol       n(18,3),;
                nabcena   n(18,5),;
                nabvred   n(18,2),;                
                proslit   n(18,2),;                
                mesec     n(2,0),;
                nazmes    c(10),;                
                podnaziv  c(20),;
                BRKAL     c(6),;                
                arhiva    c(1),;                   
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
     endif

if !file('aarc0.dbf')
   create table aarc0 ;
             (sifprod  c(3)    ,;
              pnaziv   c(30)   ,;                                          
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif

if !file('aarc.dbf')
  * wait windows ' roba '
   create table aarc;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                nvelcena   n(18,5),;
                nmalcena   n(18,5),;
                velcena   n(18,5),;                
                rabproc   n(18,5),;
                grupa     c(3),;   
                tarifa    c(6),;
                procpor   n(14,4),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('aarc.dbf')
  * wait windows ' roba '
   create table aarc;
               (rsif      c(5)   ,;
                naz       c(30),;
                podnaziv  c(20),;
                nvelcena   n(18,5),;
                nmalcena   n(18,5),;
                velcena   n(18,5),;                
                rabproc   n(18,5),;
                grupa     c(3),;   
                tarifa    c(6),;
                procpor   n(14,4),;
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif


if !file('alinije.dbf')
   create table alinije ;
             (siflin    n(9)    ,;
              nazlin    c(30)   ,;                                          
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif


if !file('faktl.dbf')
  * wait windows ' fak  '
   create table faktl;
               (siflin    n(9),;
                redlin    n(9),;                
                sifra     c(5),;                      
                brkal     c(6),;       
                rsif      c(5),;       
                naz       c(30),;
                koligot   n(18,2),;                
                koli      n(18,2),;
                kolisve   n(18,2),;                
                procpor   n(6,0),;
                porez     n(10,2),;                
                malcena   n(18,3),;
                malvred   n(18,2),;
                rabproc   n(9,2),;                
                rabat     n(18,2),;                                
                velcena   n(18,3),;
                velvred   n(18,2),;
                magacin   n(02),;
                bruto     n(18,3),;
                neto      n(18,3),;
                datdok    d(8),;   
                grupar    c(3),;                                
                misifra   c(05),;      
                mimesto   c(60),;      
                vrsta     c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('konvertc.dbf')
  * wait windows ' fak  '
   create table konvertc;
               (imetab    c(60),;       
                imepolja  c(10),;       
                zaj       c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('konvcscx.dbf')
  * wait windows ' fak  '
   create table konvcscx;
               (imetab    c(60),;       
                imepolja  c(10),;       
                zaj       c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('kscx.dbf')
  * wait windows ' fak  '
   create table kscx;
               (imetab     c(20),;       
                kontrola   c(60),;                                                     
                imekontr   c(60),;                                                                     
                spodatak   c(128),;       
                npodatak   c(128),;                      
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif


if !file('pagin.dbf')
  * wait windows ' fak  '
   create table pagin;
               (redova     n(10),;       
                prikazr    n(10),;       
                brojstrana n(10),;       
                naredna    n(10),;       
                prethodna  n(10),;       
                strana     n(10),;       
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('FPRENG.dbf')
  * wait windows ' fak  '
   create table FPRENG;
               (DAT0       D(8),;       
                DAT1       D(8),;       
                FVRSTA1    C(3),;       
                FVRSTA2    C(3),;
                FVRSTA3    C(3),;
                FVRSTA4    C(3),;
                FVRSTA1K   C(3),;       
                FVRSTA2K   C(3),;
                FVRSTA3K   C(3),;
                FVRSTA4K   C(3),;
                dok        C(3),;                
                DATDOK     D(8),;       
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif
if !file('fstorot.dbf')
  * wait windows ' fak  '
   create table fstorot;
               (sifra      c(5),;       
                dat0       d(8),;       
                dat1       d(8),;       
                fvrsta1    c(3),;       
                fvrsta2    c(3),;
                fvrsta3    c(3),;
                fvrsta4    c(3),;
                fvrsta1k   c(3),;       
                fvrsta2k   c(3),;
                fvrsta3k   c(3),;
                fvrsta4k   c(3),;
                dok        c(3),;                
                datdok     d(8),;       
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif

if !file('konupor.dbf')
  * wait windows ' fak  '
   create table konupor;
               (skonto     c(10),;       
                deo        c(1),;
                sopis      c(60),;       
                konto      c(10),;       
                opis       c(60),;  
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     endif



if !file('konzam.dbf')
  * wait windows ' fak  '
   create table konzam;
               (skonto     c(10),;       
                deo        c(1),;
                konto      c(10),;       
                naziv    c(45)  ,;
                nazkto1  c(45)  ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
        use
     ENDIF
     
     
     
if !file('kon1n.dbf')
*   wait windows ' konto klasa '   
   create table kon1n ;
              (k1       c(1)   ,;              
               naziv    c(45)  ,;
               nazkto1  c(45)  ,;
               k1n      c(1)   ,;                             
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('kon2n.dbf')
 *  wait windows ' konto grupa '   
   create table kon2n ;
              (k2       c(2)   ,;              
               naziv    c(45)  ,;
               nazkto2  c(45)  ,;
               k2n      c(2)   ,;                             
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('kon3n.dbf')
*   wait windows ' konto grupa '   
   create table kon3n ;
              (k3       c(3)   ,;              
               naziv    c(55)  ,;
               nazkto3  c(45)  ,;
               k3n      c(3)   ,;                             
                preneto   c(1),;   
                idbr      n(11);                    
             )
   use
ENDIF

if !file('kon4n.dbf')
   create table kon4n ;
              (k4       c(4)   ,;              
               naziv    c(55)  ,;
               nazkto   c(45)  ,;
               k4n      c(4)   ,;                                            
                preneto   c(1),;   
                idbr      n(11);                    
             )
   use
endif
if !file('kon5n.dbf')
   create table kon5n ;
              (k5       c(5)   ,;              
               naziv    c(55)  ,;
               nazkto   c(45)  ,;
               k5n      c(5)   ,;                                            
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif
if !file('kon6n.dbf')
   create table kon6n ;
              (k6       c(6)   ,;              
               naziv    c(55)  ,;
               nazkto   c(45)  ,;
               k6n      c(6)   ,;                                            
                preneto   c(1),;   
                idbr      n(11);                    
              )
   use
endif

if !file('konton.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table konton ;
              (konto    c(10)   ,;              
               naziv    c(70)  ,;
               k1       c(1),; 
               k2       c(2),; 
               k3       c(3),; 
               k4       c(4),; 
               k5       c(5),; 
               k6       c(6),; 
               kod      c(20)  ,;              
               nazkto4  c(45),;     
               skonto    c(10),;              
               jed       c(10),;  
               konton    c(10)   ,;                                                        
                preneto   c(1),;   
                idbr      n(11);                    
               )
   use
endif
     

if !file('emailpar.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table emailpar ;
              (emailsalje c(40)   ,;              
               epass      c(40)    ,;                              
               eserver    c(40)    ,;
               eport      n(4)    ,;
               eautent    n(1)    ,; 
               essl       c(1)    ,;                             
               esubj      c(50)    ,;                                            
               preneto    c(1),;   
               idbr       n(11);                    
               )
   use
endif

if !file('emailpor.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table emailpor ;
              (sifmail    c(5)    ,;
               email      c(40)   ,;              
               poruka1    c(60)   ,;              
               poruka2    c(60)   ,;                            
               poruka3    c(60)   ,;              
               poruka4    c(60)   ,;              
               poruka5    c(60)   ,;              
               poruka6    c(60)   ,;              
               poruka7    c(60)   ,;
               poruka8    c(60)   ,;
               poruka9    c(60)   ,;
               poruka10    c(60)   ,;
               preneto    c(1),;   
               idbr       n(11);                    
               )
   use
endif
     

if !file('emailatt.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table emailatt ;
              (sifmail    c(5)    ,;
               znak      c(1),;
               datoteka  c(128),;
               preneto    c(1),;   
               idbr       n(11);                    
               )
   use
endif

if !file('email0.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table email0 ;
              (sifmail    c(5)    ,;
               sifra      c(5)    ,;              
               naziv      c(40)    ,;                             
               datum      d(8)   ,;                             
               vreme      c(10)   ,;                                            
               email      c(40)   ,;              
               poslato    c(10)   ,;
               preneto    c(1),;   
               idbr       n(11);                    
               )
   use
endif
     

if !file('putngr.dbf')
  * wait windows ' roba '
   create table putngr;
               (putnik     c(3)    ,;
                brkal      c(6),;   
                brrac      c(20),;   
                sifra      c(5),;   
                datdok     d(8),;   
                velvred    n(18,2),;   
                grupa      c(3),;   
                prodmesta  n(12,0),;   
                kupaca     n(12,0),;      
                misifra    c(05),;
                preneto    c(1),;   
                idbr       n(11);                    
                )
         use
     endif
     
*-----------------------------
if ! file("invest0.dbf")
   create table invest0;
     (osifra    c(4),;
      naz       c(40),;
      datodluke d(8),;
      datpoc    d(8),;
      datkraj   d(8),;      
      dineuro   n(18,2),;
      devkurs   n(18,6),;
      iznos     n(18,2),;
      vrsta     C(6),;
      izvorsop  n(18,2),;
      izvorsub  n(18,2),;      
      izvorkred n(18,2),;            
      izvormin  n(18,2),;            
      izvorost  n(18,2),;                  
      izvorukup n(18,2),;
      iznospoc  n(18,2),;
      konto     c(10),;      
      brodluke  c(20),;
      organ     c(20),;      
      napomena  c(60),;
      napomena2 c(60),;
      napomena3 c(60),;   
      oper      c(2  ),;
      datum     d(8  ),;
      vreme     c(8  ),;
      ARHIVA    c(1  ),;
      ZATVAR    c(1  ),;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if ! file("invest.dbf")
   create table invest;
     (osifra    c(4),;
      sifra     c(5),;
      datdok    d(8),;
      valuta    d(8),;
      brrac     c(20),;
      dug       n(18,2),;
      pot       n(18,2),;
      izvor     c(3),;
      brnal     c(6  ),;
      dev       c(3  ),;
      devkurs   n(18,4),;
      devdug    n(18,2),;
      devpot    n(18,2),;
      rnal      c(12),;       
      oper      c(2  ),;
      datum     d(8  ),;
      vreme     c(8  ),;
      ARHIVA    c(1  ),;
      ZATVAR    c(1  ),;      
      preneto   c(1),;   
      idbr      n(11);                    
      )              
      use
   endif

if ! file("investp.dbf")
   create table investp;
     (osifra    c(4),;
      sifra     c(5),;
      datdok    d(8),;
      valuta    d(8),;
      brrac     c(20),;
      dug       n(18,2),;
      pot       n(18,2),;
      izvor     c(3),;
      brnal     c(6  ),;
      dev       c(3  ),;
      devkurs   n(18,4),;
      devdug    n(18,2),;
      devpot    n(18,2),;
      rnal      c(12),;       
      oper      c(2  ),;
      datum     d(8  ),;
      vreme     c(8  ),;
      ARHIVA    c(1  ),;
      ZATVAR    c(1  ),;      
      preneto   c(1),;   
      idbr      n(11);                    
      )              
      use
   endif

*-------------------------
if !file('xmlpzar.dbf')
   create table xmlpzar;
               (jbkjs     c(5),;
                ispumes   c(2),;
                godina    c(4),;                
                datumsla  d(8),;
                funklas   c(3),;                
                izvorfin  c(3),;  
                ispzames   c(2),;
                ispzagod   c(4),;   
                sifraorg   c(6),;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
ENDIF



if !file('xmlszar.dbf')
   create table xmlSzar;
               (tagnivo   n(3),;
                tagime    c(60),;
                podatak   c(60),;                
                tagzav    c(1),;
                tabela    c(8),;                
                petlja    c(1),;                
                petljatab c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('xmlld.dbf')
   create table xmlld;
               (jbkjs      c(5),;
                funklas    c(3),;
                maticnibr  c(13),;                
                ime        c(20),;
                prezime    c(20),;                
                izvorfin   c(3),;                                
                sifraosnov c(3),;                                                
                iznos      c(20),;   
                polje      c(10),;                   
                ispzames   c(2),;
                ispzagod   c(4),;   
                sifraorg   c(6),;                                
                broj       n(4),;                                                
                vrednost   n(18,2),;   
                preneto    c(1),;                                                
                idbr       n(11);                    
                )
   use
ENDIF

if !file('xmlsld.dbf')
   create table xmlsld;
               (sifraosnov c(3),;                                                
                polje      c(10),;   
                koef       n(14,5),;   
                umanjenje  n(12,2),;                   
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
endif
**********************************

if !file('xmlpreg.dbf')
   create table xmlpreg;
               (jbkjs     c(5),;
                ispumes   c(2),;
                godina    c(4),;                
                datumsla  d(8),;
                funklas   c(3),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
ENDIF

if !file('xmlsreg.dbf')
   create table xmlsreg;
               (tagnivo   n(3),;
                tagime    c(60),;
                podatak   c(60),;                
                tagzav    c(1),;
                tabela    c(8),;                
                petlja    c(1),;                
                petljatab c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('xmlrad.dbf')
   create table xmlrad;
               (jbkjs      c(5),;
                funklas    c(3),;
                maticnibr  c(13),;                
                ime        c(20),;
                prezime    c(20),;                
                pol        c(1),;                                
                drzava     c(3),;                                                
                mesto      c(20),;   
                opstina    c(3),;
                opstinar   c(3),;                                   
                sprema     c(3),;                
                vrstazap   c(2),;
                tipsluzb   c(4),;   
                platnagr   c(3),;                                
                godnapred  c(4),;
                grnamest    c(4),;                
                sifrazanim c(8),;
                procangaz  c(3),;
                staz       n(12,0),;
                stazjubil  n(12,0),;                 
                benstaz    n(12,0),;                                 
                minproc    n(12,2),;                                 
                koef       n(12,3),;
                koefdod    n(12,3),;                
                koefukup   n(12,3),;                
                osnovica   n(12,3),;                                
                osnovbruto n(12,3),;                                                
                procuvec   n(12,3),;                                                                
                kosovo     n(12,3),;
                datzap     c(10),;                                                                                                
                datotkaz   c(10),;                                                                                                                
                sifraorg   c(10),;                                                                                                                
                broj       n(4),;                                                
                preneto    c(1),;                                                
                idbr       n(11);                    
                )
   use
ENDIF

if !file('xmlZARPR.dbf')
   create table xmlZARPR;
               (tabela    c(8),;
                isplata   n(1),;
                redispl   n(1),;
                mesec     n(2),;                
                tabela2   c(8),;                                
                izvorfin  C(3),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif



if !file('xmlpdv1.dbf')
   create table xmlpdv1;
               (dat0       d(8),;
                dat1       d(8),;
                datpri     d(8),;
                bezosnsa   n(14),;
                bezosnbe   n(14),;
                opstanab   n(14),;
                opstapor   n(14),;
                posebnab   n(14),;
                posebpor   n(14),;
                sveganab   n(14),;
                svegapor   n(14),;
                puvozpro   n(14),;
                puvozpor   n(14),;
                ppoljpro   n(14),;
                ppoljpor   n(14),;
                postapro   n(14),;
                postapor   n(14),;
                psveganak  n(14),;
                psvegapor  n(14),;
                porez      n(14),;
                povda      c(10),;
                povne      c(10),;
                periodpob  c(1),;  
                tippod     c(1),;                                
                izmenapr   c(1),;
                idizmene   c(12),; 
                naziv      c(60),;                   
                sediste    c(30),;
                pib        c(13),;
                telefon    c(30),;                   
                adresa     c(60),;
                maticni    c(13),;
                email      c(60),;               
                opstina    c(3),;
                oj         c(30),;
                dat01      c(10),;
                dat11      c(10),;
                datpri1    c(10),;
                odgovornol c(30),;
                preneto    c(1),;                
                idbr       n(11);                    
                )
   use
endif

if !file('xmlpdv2.dbf')
   create table xmlpdv2;
               (tagnivo   n(3),;
                tagime    c(60),;
                podatak   c(60),;                
                tagzav    c(1),;
                tabela    c(8),;                
                petlja    c(1),;                
                petljatab c(8),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif




**************************************


if !file('xm2pzar.dbf')
   create table xm2pzar;
               (deklarac   c(11),;
                vrstaprij  c(2),;
                godina     c(4),;                
                ispzames   c(2),;                
                konacna    c(10),;
                datumobav  d(8),;
                datumplac  d(8),;
                vrstaizm   c(1),;                
                identifik  c(20),;   
                brojres    c(20),;   
                osnov      c(20),;   
                tipisp     c(1),;   
                vrstaidisp c(1),;                   
                propisanao c(10),;
                pib        c(20),;                
                dana       c(2),;                                   
                brojzapos  c(4),;                   
                fondsati   c(3),;                   
                jmbgpodnos c(13),;                                   
                maticni    c(20),;                   
                naziv      c(60),;                   
                sediste    c(30),;
                telefon    c(30),;                   
                ulicaibr   c(60),;
                email      c(60),;               
                linkput    c(120),;
                linkput2   c(120),;                
                linkput3   c(120),;
                period     c(7),; 
                redispl    n(1),; 
                opstina    c(3),;
                preneto    c(1),;                
                idbr       n(11);                    
                )
   use
ENDIF

if !file('xm2ppodo.dbf')
   create table xm2ppodo;
               (deklarac   c(11),;
                vrstaprij  c(2),;
                OBRACPER   c(7),;                                
                godina     c(4),;                                                
                ispzames   c(2),;                                                
                datumobav  d(8),;                
                datumkam   d(8),;                                
                vrstaizm   c(1),;                
                jipd       c(10),;                                                
                tipisp     c(1),;   
                pib        c(20),;                                
                brojclan   c(3),;                
                jmbgpodnos c(13),;                                   
                maticni    c(20),;                   
                naziv      c(60),;                                                   
                sediste    c(3),;
                telefon    c(30),;                   
                ulicaibr   c(60),;
                email      c(60),;               
                preneto    c(1),;                
                idbr       n(11);                    
                )
   use
ENDIF


if !file('xm2szar.dbf')
   create table xm2szar;
               (tagnivo   n(3),;
                tagime    c(120),;
                podatak   c(20),;                
                tagzav    c(1),;
                tabela    c(8),;                
                petlja    c(1),;                
                petljatab c(8),;
                uslov1    c(30),;
                uslov2    c(30),;                
                uslov3    c(30),;                
                uslov4    c(30),;                
                uslov5    c(30),;                
                uslov6    c(30),;                
                uslov7    c(30),;                
                uslov8    c(30),;                
                uslov9    c(30),;                
                uslov10   c(30),;                
                uslov11   c(30),;                                                                                                                                                
                uslov12   c(30),;                                                                                                                                                
                podatak2  c(20),;                
                tagime2   c(120),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('xm2ld.dbf')
   create table xm2ld;
               (deklarac   c(11),;
                rednibroj  c(5),;
                prezime    c(20),;                
                ime        c(20),;
                vrstaid    c(1),;
                prebival   c(3) ,;                
                sifraprih  c(9) ,;
                maticnibr  c(13),;
                brojdana   c(3),;
                brojsati   c(6),;                
                fondsati   c(3),;                                
                bruto      c(20),;
                osnovicap  c(20),;
                porez      c(20),;
                osnovidop  c(20),;
                pio        c(20),;
                zdr        c(20),;                
                nez        c(20),;
                pioben     c(20),;
                mfp1       C(20)   ,;
                mfp2       C(20)   ,;
                mfp3proc   C(20)   ,;
                mfp4       C(20)   ,;
                mfp5       C(20)   ,;
                mfp6       C(20)   ,;
                mfp7       C(20)   ,;
                mfp8nepun  c(1)   ,;
                mfp9najosn c(1)   ,;                
                mfp10dvez  c(1)   ,;                
                mfp11neop  C(20)   ,;                               
                mfp12      C(20)   ,;                               
                kampor     c(20),;
                kampio     c(20),;
                kamzdr     c(20),;
                kamnez     c(20),;
                kamben     c(20),;   
                vrstaprij  c(2),;
                godina     c(4),;                
                ispzames   c(2),;                
                konacna    c(10),;
                datumobav  d(8),;
                datumplac  d(8),;
                datumobavc c(10),;
                datumplacc c(10),;
                vrstaizm   c(1),;                
                identifik  c(20),;   
                brojres    c(20),;   
                osnov      c(20),;   
                tipisp     c(1),;   
                vrstaidisp c(1),;                   
                najniza    c(10),;                
                pib        c(20),;                
                dana       c(2),;     
                brojzapos  c(4),;
                jmbgpodnos c(13),;                                   
                maticni    c(20),;                   
                naziv      c(60),;                   
                sediste    c(30),;
                telefon    c(30),;                   
                ulicaibr   c(60),;                   
                email      c(60),;               
                period     c(7),; 
                redispl    n(1),; 
                Nbruto      N(14,2),;
                Nosnovicap  N(14,2),;
                Nporez      N(14,2),;
                Nosnovidop  N(14,2),;
                Npio        N(14,2),;
                Nzdr        N(14,2),;                
                Nnez        N(14,2),;
                Npioben     N(14,2),;
                Nkampor     N(14,2),;
                Nkampio     N(14,2),;
                Nkamzdr     N(14,2),;
                Nkamnez     N(14,2),;
                Nkamben     N(14,2),;   
                pior        N(14,2),;
                zdrr        N(14,2),;                
                nezr        N(14,2),;
                piof        N(14,2),;
                zdrf        N(14,2),;                
                nezf        N(14,2),;
                opstina     c(3),;
                radnik      c(1),;
                mesto       c(25),;
                adresa      c(40),;
                preneto     c(1),;
                idbr        n(11);
                )
   use
ENDIF


if !file('xm2ZARPR.dbf')
   create table xm2ZARPR;
               (opis      c(30),;
                isplata   n(1),;
                mesec     n(2),;                
                tabela    c(8),;
                tabela2   c(8),;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('xmlu.dbf')
   create table xmlu;
               (tagime    c(120),;
                tagnivo   n(7),;               
                podatak   c(120),;
                polje     c(10),;
                tabela    c(8),;                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('xmlu0.dbf')
   create table xmlu0 ;
             (sifprod  c(4)    ,;
              pnaziv   c(30)   ,;                                          
              tabela   c(20)    ,;
              xmlnaz   c(40)    ,;              
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif


if !file('xm2nal0.dbf')
   create table xm2nal0 ;
             (polje1    c(240)   ,;                                          
              polje2    c(240)    ,;
              polje3    c(240)    ,;              
              polje4    c(240)    ,;              
              preneto   c(1),;   
              idbr      n(11);                    
              )
   use
endif


if !file('xm2nal.dbf')
 *  wait windows ' evidencija virmana '   
   create table xm2nal ;
               (svrha     c(16)     ,;                
                zirorac   c(20)     ,;
                modelo    c(2)      ,;
                pozivo    c(25)     ,;                
                datdok    d(8)      ,;                
                sif1      c(3)      ,;                
                datval    d(8)      ,;                
                valuta    c(3)      ,;                
                dug       n(18,2)   ,;                
                pib       c(13)     ,;                                
                stampa    c(1)      ,;
                vrsta     c(2)      ,;               
                nazrac    c(80)     ,;                                
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif


if !file('xmlpdvp.dbf')
   create table xmlpdvp;
               (naziv      c(60),;                   
                sediste    c(30),;
                pib        c(13),;
                telefon    c(30),;                   
                adresa     c(60),;
                maticni    c(13),;
                email      c(60),;               
                opstina    c(3),;
                oj         c(30),;
                odgovornol c(30),;
                povda      c(10),;
                povne      c(10),;
                periodpob  c(1),;  
                tippod     c(1),;                                
                izmenapr   c(1),;
                idizmene   c(12),; 
                preneto    c(1),;                
                idbr       n(11);                    
                )
   use
ENDIF

*------------------------
IF !FILE('OBRBU.DBF')
   CREATE TABLE OBRBU(;
      CIF1      N(12),;  
      CIF2      N(12),;  
      CIF3      N(12),;  
      CIF4      N(12),;  
      CIF5      N(12),;  
      CIF6      N(12),;  
      CIF7      N(12),;  
      CIF8      N(12),;  
      CIF9      N(12),;  
      CIF10     N(12),;  
      CIF11     N(12),;  
      CIF12     N(12),;                                                  
      preneto    c(1),;                
      idbr       n(11);                    
      )
   ENDIF              



   IF ! FILE("PB1.DBF")
      CREATE TABLE PB1(;
         OPIS      C(70),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              
   



   IF ! FILE("PB1A.DBF")
      CREATE TABLE PB1A(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              
   
   IF ! FILE("PB1A1.DBF")
      CREATE TABLE PB1A1(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              

   IF ! FILE("OBRPK.DBF")
      CREATE TABLE OBRPK(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              
   
   IF ! FILE("OBRPK1.DBF")
      CREATE TABLE OBRPK1(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              
   
   IF ! FILE("OBRSU.DBF")
      CREATE TABLE OBRSU(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              
   
  IF ! FILE("OBRSI.DBF")
      CREATE TABLE OBRSI(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              
   
  IF ! FILE("OBRIPD1.DBF")
      CREATE TABLE OBRIPD1(;
         PRIMALAC  C(35),;  
         kam       N(10),;
         STOPAkam  N(09,4),;
         kamIZNOS  N(10),;
         aut       N(10),;
         STOPAaut  N(09,4),;
         autIZNOS  N(10),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              

  IF ! FILE("OBRIPD.DBF")
      CREATE TABLE OBRIPD(;
         PRIMALAC  C(35),;  
         DOBIT     N(10),;
         STOPA     N(09,4),;
         IZNOS     N(10),;
         STOPA2    N(09,4),;
         IZNOS2    N(10),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              

 IF ! FILE("OBRPK2.DBF")
    USE obrpk IN 0
    SELECT obrpk
    COPY STRUCTURE TO obrpk2
    use
   ENDIF   

 IF ! FILE("OBRPK3.DBF")
    USE obrpk1 IN 0
    SELECT obrpk1
    COPY STRUCTURE TO obrpk3
    use
 ENDIF   

 IF ! FILE("OBRSU1.DBF")
    USE obrSU IN 0
    SELECT obrSU
    COPY STRUCTURE TO obrSU1
    use
 ENDIF   


 IF ! FILE("OBRSU3.DBF")
    USE obrSU IN 0
    SELECT obrSU
    COPY STRUCTURE TO obrSU3
    use
 ENDIF   

 IF ! FILE("PB2.DBF")
      CREATE TABLE PB2(;
         OPIS      C(70),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              


   IF ! FILE("PDPN.DBF")
      CREATE TABLE PDPN(;
         p41mes    C(30),;     
         p41adr    C(30),;     
         p41dat    d(8),;     
         p42mes    C(30),;     
         p42adr    C(30),;     
         p42dat    d(8),;     
         p43mes    C(30),;     
         p43adr    C(30),;     
         p43dat    d(8),;     
         p51       n(12),;
         p52       n(12),;
         p53       n(12),;
         p54       n(09,2),;
         p55       n(12),;
         p56       n(12),;
         p61       n(12),;
         p62       n(12),;
         p71       c(30),;
         p711      c(09),;
         p712      D(08),;
         p713      c(09),;
         p72       D(08),;
         p721      N(12),;
         p722      N(12),;
         p73       c(25),;
         p731      N(06),;
         p74       c(25),;
         p741      N(12),;
         p742      N(12),;
         p743      N(12),;
         p744      N(12),;
         p75       c(25),;
         p751      N(12),;
         p8        N(12),;
         p81       N(12),;
         p82       N(12),;
         p83       N(12),;
         p84       N(12),;
         p85       N(12),;
         p86       N(12),;
         p87       N(12),;
         p88       N(12),;
         p89       N(12),;
         p91       N(12),;
         p92       N(09,2),;
         p93       N(12),;
         p94       N(12),;
         p95       N(12),;
         p96       N(12),;
         p97       N(12),;
         p98       N(12),;
         p99       N(12),;
         p910      N(12),;
         p911      N(12),;
         p912      N(12),;                  
         p101      N(12),;
         p102      N(12),;
         p1021     N(12),;
         p1022     N(12),;
         p1023     N(12),;
         p103      N(12),;
         p104      N(12),;
         p105      N(12),;
         p106      N(12),;                  
         p111      C(20),;
         p112      N(12),;
         p113      N(09,2),;
         p114      N(12),;
         p115      N(12),;
         p1151     N(12),;
         p1152     N(12),;
         p116      N(12),;
         p117      N(12),;
         p118      N(12),;
         p121      C(40),;
         p122      C(9),;
         p123      N(12),;
         p124      N(12),;
         p131      D(08),;
         p132      C(30),;
         p133      D(08),;
         p134      C(20),;
         p135      C(20),;
         p136      C(20),;         
         p14A      C(80),;
         p14B      C(80),;
         p14C      C(80),;
         p14D      C(80),;
         p14E      C(80),;
         p14F      C(80),;
         p15A      C(80),;
         p15B      C(80),;
         p15C      C(80),;
         p15D      C(80),;
         p15E      C(80),;
         p15F      C(80),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              

   IF ! FILE("OBROK.DBF")
      CREATE TABLE OBROK(;
         OPIS      C(75),;  
         IZNOS     N(10),;
         kod       c(6),;
         MOZE      C(1),;
         RLINI     C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              

   IF ! FILE("OBRKONS.DBF")
      CREATE TABLE OBRKONS(;
         REDBR     C(5),; 
         SIFRA     C(5),;          
         pib       c(13),;
         oporezd   n(14,0),;
         gubitak   n(14,0),;
         OSNOVICA  n(14,0),;                  
         OSTATKAPD n(14,0),;                  
         POROSNKON n(14,0),;                  
         RASPOREDP n(14,0),;
         UMANJENJE n(14,0),;
         ZAUPLATU  n(14,0),;
         AKONTAC   n(14,0),;
         ARHIVA    C(1),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              


   IF ! FILE("PPDG1S.DBF")
      CREATE TABLE PPDG1S(;
         p41mes    C(30),;     
         p41adr    C(30),;     
         p41dat    d(8),;     
         p42mes    C(30),;     
         p42adr    C(30),;     
         p42dat    d(8),;     
         p43mes    C(30),;     
         p43adr    C(30),;     
         p43dat    d(8),;     
         p51       n(12),;
         p52       n(12),;
         p53       n(12),;
         p54       n(09,2),;
         p55       n(12),;
         p56       n(12),;
         p61       n(12),;
         p62       n(12),;
         p63       n(12),;
         p64       n(09,2),;
         p65       n(12),;
         p66       n(12),;
         p67       n(12),;                                             
         p671      n(12),;                                             
         p672      n(12),;                                             
         p673      n(12),;                                                      
         p71       n(12),;
         p72       n(12),;
         p8        N(12),;
         p81       N(12),;
         p82       N(12),;
         p83       N(12),;
         p84       N(12),;
         p91       N(12),;
         p92       N(09,2),;
         p93       N(12),;
         p94       N(12),;
         p95       N(12),;
         p96       N(12),;
         p97       N(12),;
         p98       N(12),;
         p99       N(12),;
         p910      N(12),;
         p101      N(12),;
         p102      N(12),;
         p1021     N(12),;
         p1022     N(12),;
         p1023     N(12),;
         p103      N(12),;
         p1031     N(12),;
         p1032     N(12),;
         p1033     N(12),;
         p104      N(12),;
         p1041     N(12),;
         p1042     N(12),;
         p1043     N(12),;
         p105      N(12),;
         p1051     N(12),;
         p1052     N(12),;
         p1053     N(12),;
         p111      N(12),;
         p112      N(12),;
         p1121     N(12),;
         p1122     N(12),;
         p113      N(09,2),;
         p114      N(12),;
         p115      N(12),;
         p116      N(12),;
         p117      N(12),;
         p118      N(12),;
         p1181     N(12),;
         p1182     N(12),;
         p1183     N(12),;         
         p119      N(12),;
         p1191     N(12),;
         p1192     N(12),;
         p1193     N(12),;         
         p121      C(30),;         
         p122      N(12),;         
         p123      N(09,2),;         
         p124      N(12),;         
         p125      N(12),;         
         p1251     N(12),;
         p1252     N(12),;
         p126      N(12),;
         p127      N(12),;
         p128      N(12),;
         p129      N(12),;
         p1210     N(12),;         
         p12101    N(12),;         
         p12102    N(12),;         
         p12103    N(12),;                  
         p1211     N(12),;         
         p12111    N(12),;         
         p12112    N(12),;         
         p12113    N(12),;                  
         p131      N(12),;
         p1321     N(12),;
         p1322     N(12),;
         p1323     N(12),;
         p1324     N(12),;
         p1325     N(12),;
         p1326     N(12),;
         p1331     N(12),;
         ppio      N(12,2),;
         pzdr      N(12,2),;
         pnez      N(12,2),;
         pmeseci   N(06),;
         p14A      C(80),;
         p14B      C(80),;
         p14C      C(80),;
         p14D      C(80),;
         p14E      C(80),;
         p14F      C(80),;
         p15A      C(80),;
         p15B      C(80),;
         p15C      C(80),;
         p15D      C(80),;
         p15E      C(80),;
         p15F      C(80),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              



   IF ! FILE("PPDG1P.DBF")
      CREATE TABLE PPDG1P(;
         p41mes    C(30),;     
         p41adr    C(30),;     
         p41dat    d(8),;     
         p42mes    C(30),;     
         p42adr    C(30),;     
         p42dat    d(8),;     
         p43mes    C(30),;     
         p43adr    C(30),;     
         p43dat    d(8),;     
         p61       n(12),;
         p611      n(12),;
         p612       n(12),;
         p613       n(12),;
         p614       n(12),;
         p615       n(12),;
         p71        n(12),;
         p721        n(12),;
         p722        n(12),;
         p723        n(12),;
         p724        n(12),;
         p725        n(12),;
         p726        n(12),;                                             
         p731        n(12),;
         p14A      C(80),;
         p14B      C(80),;
         p14C      C(80),;
         p14D      C(80),;
         p14E      C(80),;
         p14F      C(80),;
         p15A      C(80),;
         p15B      C(80),;
         p15C      C(80),;
         p15D      C(80),;
         p15E      C(80),;
         p15F      C(80),;
      preneto    c(1),;                
      idbr       n(11);                    
      )
      use
   ENDIF              


if !file('ldnovir.dbf')
   create table ldnovir ;
               (reDBR     c(6)      ,;
                ime_prez   c(30)     ,;
                maticnibr  c(13)     ,;
                prezime    c(20),;
                ime        c(20),; 
                datzapos   d(8),;                                                                                                
                datotkaz   d(8),;   
                broj       n(4),;                
                OZNOLAKS   C(2),; 
                posta      c(5)     ,;
                mesto      c(25)    ,;
                adresa     c(40)     ,;
                telefon    c(20)     ,;  
                stampa     c(1),;                                                                                                                                
                iznos      n(18,2),;                                             
                preneto    c(1),;
                idbr       n(11);                    
                )
   use
endif

if !file('ldnovirz.dbf')
   create table ldnovirz;
               (redbr      n(10),;
                deklarac   c(11),;
                bopbroj    c(20),;                
                nazmes     c(11),;                                
                pib        c(20),;                
                jmbgpodnos c(13),;                                   
                maticni    c(20),;                   
                naziv      c(60),;                   
                sediste    c(30),;
                telefon    c(30),;                   
                ulicaibr   c(60),;
                email      c(60),;               
                poclica    n(11),;                                    
                danlica    n(11),;                                                    
                iznos      n(18,2),;
                zirorac    c(20),;
                banka      c(30),;                
                datpod     d(10),;                
                preneto    c(1),;                
                idbr       n(11);                    
                )
   use
ENDIF

if !file('racio.dbf')
   create table racio ;
              (grupa     C(4)   ,;              
               indikator c(30)   ,;              
               naziv     c(60)  ,;
               tekuca    n(14,3),;
               preth     n(14,3),;
               opis      c(80),;
               nvred1    n(14,0),;
               nvred2    n(14,0),;
               nvred3    n(14,0),;
               nvred4    n(14,0),;
               nvred5    n(14,0),;
               nvred6    n(14,0),;               
               nvred7    n(14,0),;
               pvred1    n(14,0),;
               pvred2    n(14,0),;
               pvred3    n(14,0),;
               pvred4    n(14,0),;
               pvred5    n(14,0),;
               pvred6    n(14,0),;
               pvred7    n(14,0),;
               formula1  c(80),;
               formula2  c(80),;               
               zaposleni n(06)  ,;
               konta     c(16)  ,;               
               rlini     c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('znbilD.dbf')
   create table znbilD ;
              (aop      c(4)   ,;              
               konta    c(20)  ,;
               napomena n(04)  ,;
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(65),;
               rlini    c(1),;
               plan     n(12,0),;               
               procena  n(12,0),;
               plan1    n(12,0),;               
               plan2    n(12,0),;               
               plan3    n(12,0),;               
               plan4    n(12,0),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('annapGP.dbf')
  * wait windows ' izbor magacina '
   create table annapgp;
              (konto     c(10)  ,;
               dug       n(18,2),;
               pot       n(18,2),;
               saldo     n(18,2),;
               sifra     c(5)     ,;
               naziv     c(40)    ,;              
               dat0      d(8),;
               dat1      d(8),;
               grupa     c(3)     ,;      
               grupa1    c(3)     ,;
               grupa2    c(3)     ,;
               grupa3    c(3)     ,;    
               grupa4    c(3)     ,;    
               grupa5    c(5)     ,;    
               povezanol c(1)     ,;                       
               posta     c(5)     ,;
               mesto     c(35)    ,;    
               ulica     c(35)    ,;
               ulbroj    c(10)    ,;
               preneto   c(1),;   
               idbr      n(11);                    
               )
     use
 endif

if !file('zntokngk.dbf')
   create table zntokngk;
              (konto    c(10)   ,;              
               naziv    c(60)   ,;                            
               dug      n(14,2),;
               pot      n(14,2),;
               saldo    n(14,2),;
               SKONTO   C(10),;               
               brnal    c(6),;               
               aop      c(4)   ,;                            
               neto     n(12,0),;
               preth    n(12,0),;
               opis     c(70),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('xmlbu.dbf')
   create table xmlbu(;
      deo1      c(160),;
      AOP       c(4),;      
      KOL       C(1),;
      podatak   c(20),;
      deo2      c(120),;
      sve       c(220),;
      preneto   c(1),;   
      idbr      n(11);
      )              
   use
endif

if !file('xmlpos.dbf')
   create table xmlpos(;
      deo1      c(160),;
      AOP       c(5),;      
      KOL       C(1),;
      podatak   c(20),;
      deo2      c(120),;
      sve       c(220),;
      preneto   c(1),;   
      idbr      n(11);
      )              
   use
endif


if !file('xmlsve.dbf')
   create table xmlsve(;
      sve       c(220),;
      preneto   c(1),;   
      idbr      n(11);
      )              
   use
endif

if !file('znpospod.dbf')
   create table znpospod ;
              (aop      c(5)   ,;              
               neto     n(12,0),;
               opis     c(65),;
               RLINI    c(1),;               
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('xmlpdp.dbf')
   create table xmlpdp(;
      tabela    c(8),;      
      polje     C(10),;
      vrsta     C(1),;      
      defpolja  C(30),;
      redni     n(1),;            
      podatak   c(120),;
      deo1      c(160),;
      deo2      c(120),;
      sve       c(220),;
      preneto   c(1),;   
      idbr      n(11);
      )              
   use
endif

if !file('xmlppODO.dbf')
   create table xmlpPODO(;
      tabela    c(8),;      
      polje     C(10),;
      vrsta     C(1),;      
      defpolja  C(30),;
      redni     n(1),;            
      podatak   c(120),;
      deo1      c(160),;
      deo2      c(120),;
      sve       c(220),;
      preneto   c(1),;   
      idbr      n(11);
      )              
   use
endif


IF ! FILE("PDP14.DBF")
   CREATE TABLE PDP14(;
      vrstaozn      c(5),;
      vrstaosnov    c(5),;
      period0       d(8),;
      period1       d(8),;            
      izmena        c(1),;
      idizmene      c(20),;      
      osnovres      c(5),;            
      brojres       c(20),;                  
      pib           c(13),;                        
      tipobvez      c(5),;                        
      zampl         c(5),;                              
      matbroj       c(8),;                                    
      naziv         c(40),;                                          
      adresa        c(60),;                                          
      telefon       c(20),;                                                
      email         c(60),;                                                
      delpretez     c(5),;                                                
      delprih       c(5),;                                                
      p41procpri    n(18,0),;
      p42procras    n(18,0),;      
      p43procdob     n(18,0),;            
      p44porstop    n(18,0),;                  
      p45obracak     n(18,0),;                        
      p46mesakon    n(18,0),;                        
      p51porosn      n(18,0),;                              
      p52porstop    n(18,0),;                        
      p53porez       n(18,0),;                              
      p54umanjpo    n(18,0),;                                    
      p541kozn       c(5),;                                                
      p541kdin       n(18,0),;                                    
      p542ilozn      c(5),;                                                
      p542ildin      n(18,0),;                                    
      p543pkozn      c(5),;                                                
      p543pkdin      n(18,0),;                                    
      p544suozn      c(5),;                                                
      p544sudin      n(18,0),;                                    
      p545cl51oz    c(5),;                                                
      p545cl51di    n(18,0),;                                    
      p546ipdozn     c(5),;                                                
      p546ipddin     n(18,0),;                                    
      p547ipd1oz    c(5),;                                                
      p547ipd1di    n(18,0),;                                    
      p55obracpo    n(18,0),;                                    
      p56uvecpor     n(18,0),;                                    
      p561siozn      c(5),;                                                
      p561sidin      n(18,0),;                                    
      p562gpkozn     c(5),;                                                
      p562gpkdin     n(18,0),;                                    
      p57porobav     n(18,0),;                                    
      p58uplacak     n(18,0),;                                    
      p59zaupl       n(18,0),;                                    
      p59akamata     n(18,0),;                                    
      p510porosn     n(18,0),;                                    
      p511oslozn     c(5),;                           
      p511osldin     n(18,0),;                                       
      p512stopa      n(18,0),;                        
      p513porez      n(18,0),;
      p513akamat     n(18,0),;                                          
      p61ostatop     n(18,0),;                                    
      p62stopa       n(18,0),;
      p63porez       n(18,0),;
      p64umanjpo     n(18,0),;      
      p641pkozn      c(5),;                                                
      p641pkdin      n(18,0),;                                    
      p642suozn      c(5),;                                                
      p642sudin      n(18,0),;                                    
      p643pb1ozn     c(5),;                                                
      p643pb1din     n(18,0),;                                    
      p65ukakont     n(18,0),;                                          
      p66mesakon     n(18,0),;                                          
      p71pibmat      c(13),;                                          
      p72nazmat      c(40),;                                          
      p73porez       n(18,0),;
      p74mesakon     n(18,0),;                                          
      p81brojres     c(40),;                                          
      p82datotv      d(8),;                                          
      p83imeupr      c(40),;                                          
      p84datlikv     d(8),;                                          
      p85brojodl     c(40),;                                          
      p91brojres     c(40),;                                          
      p92datotv      d(8),;                                          
      p93imeupr      c(40),;                                          
      p94datbank     d(8),;                                          
      p95brojres     c(40),;                                          
      p96datstec     d(8),;                                          
      p97brojres     c(40),;                                          
      p98datreor     d(8),;                                          
      p99brojres     c(40),;                                          
      p101oznsta     c(5),;                                          
      p101apodst     c(5),;                                                
      p102datsta     d(8),;                                                
      p103pibsta     c(13),;                                                
      p103nazsta     c(40),;                                                
      napomena1      c(90),;                                                      
      napomena2      c(90),;                                                      
      napomena3      c(90),;                                                                  
      napomena4      c(90),;                                                      
      napomena5      c(90),;                                                      
      napomena6      c(90),;                                                      
      napomena7      c(90),;                                                      
      napomena8      c(90),;                                                                              
      napomena9      c(90),;                                                            
      napomena10     c(90),;                                                            
      preneto        c(1),;         
      idbr           n(11);
      )              
   use
endif



CLOSE ALL TABLES
POP KEY
