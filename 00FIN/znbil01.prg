procedure BILPUNI01

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL01 WITH '001','  A.STALNA IMOVINA                                       ',1
     DO PUNIBIL01 WITH '002','  I.NEUPLAÆENI UPISANI KAPITAL                           ',1
     DO PUNIBIL01 WITH '002','  II.GOODWILL                                            ',1
     DO PUNIBIL01 WITH '004','  III.NEMATERIJALNA ULAGANJA                              ',1
     DO PUNIBIL01 WITH '005','  IV.NEKRETNINE, POSTROJENJA,OPREMA I BIOLOŠKA SREDSTVA ',1
     DO PUNIBIL01 WITH '009','  V.DUGOROÈNI FINANSIJSKI PLASMANI                      ',1
     DO PUNIBIL01 WITH '012','  B.OBRTNA IMOVINA                                       ',1
     DO PUNIBIL01 WITH '013','  I.ZALIHE                                               ',1 
     DO PUNIBIL01 WITH '016','  1.Potraživanja                                         ',1
     DO PUNIBIL01 WITH '018','  2.Kratkoroèni finansijski plasmani                     ',1
     DO PUNIBIL01 WITH '019','  3.Gotovinski ekvivalenti i gotovina                    ',1
     DO PUNIBIL01 WITH '020','  4.Porez na dodatu vrednost i aktivna vremenska razgr.  ',1 
     DO PUNIBIL01 WITH '021','  IV.ODLOŽENA PORESKA SREDSTVA                          ',1 
     DO PUNIBIL01 WITH '022','  V.POSLOVNA IMOVINA                                     ',1 
     DO PUNIBIL01 WITH '023','  G.GUBITAK IZNAD VISINE KAPITALA                        ',1 
     DO PUNIBIL01 WITH '024','  D.UKUPNA AKTIVA                                        ',1 
     DO PUNIBIL01 WITH '025','  Ð.VANBILANSNA AKTIVA                                   ',1
     DO PUNIBIL01 WITH '101','  A.KAPITAL                                              ',2 
     DO PUNIBIL01 WITH '102','  I.OSNOVNI I OSTALI KAPITAL                             ',2 
     DO PUNIBIL01 WITH '103','  II.NEUPLAÆENI UPISANI KAPITAL                          ',2 
     DO PUNIBIL01 WITH '104','  III.REZERVE                                            ',2 
     DO PUNIBIL01 WITH '105','  IV.REVALORIZACIONE REZERVE                             ',2 
     DO PUNIBIL01 WITH '106','  V.NERASPOREDJENA DOBIT                                 ',2 
     DO PUNIBIL01 WITH '107','  VI.GUBITAK                                             ',2 
     DO PUNIBIL01 WITH '108','  VII.OTKUPLJENE SOPSTVENE AKCIJE                        ',2 
     DO PUNIBIL01 WITH '109','  B.DUGOROÈNA REZERVISANJA I OBAVEZE                     ',2 
     DO PUNIBIL01 WITH '110','  I.DUGOROÈNA REZERVISANJA                               ',2 
     DO PUNIBIL01 WITH '111','  II.DUGOROÈNE OBAVEZE                                   ',2 
     DO PUNIBIL01 WITH '114','  III.KRATKOROÈNE OBAVEZE                                ',2 
     DO PUNIBIL01 WITH '121','  IV.ODLOŽENE PORESKE OBAVEZE                            ',2 
     DO PUNIBIL01 WITH '122','  V. UKUPNA PASIVA                                       ',2 
     DO PUNIBIL01 WITH '123','  G. VANBILANSNA PASIVA                                  ',2 

     DO PUNIBIL01 WITH '300','  A.UKUPNI PRIHODI                                       ',3 
     DO PUNIBIL01 WITH '201','  1.POSLOVNI PRIHODI                                     ',3 
     DO PUNIBIL01 WITH '215','  2.FINANSIJSKI PRIHODI                                  ',3 
     DO PUNIBIL01 WITH '217','  3.OSTALI PRIHODI                                       ',3 

     DO PUNIBIL01 WITH '400','  B.UKUPNI RASHODI                                       ',3 
     DO PUNIBIL01 WITH '207','  1.POSLOVNI RASHODI                                     ',3 
     DO PUNIBIL01 WITH '216','  2.FINANSIJSKI RASHODI                                  ',3 
     DO PUNIBIL01 WITH '218','  3.OSTALI RASHODI                                       ',3 

     DO PUNIBIL01 WITH '213','  V.POSLOVNA DOBIT                                       ',3 
     DO PUNIBIL01 WITH '219','  G.DOBIT IZ REDOVNOG POSLOVANJA                         ',3 
     DO PUNIBIL01 WITH '401','  D.DOBIT PRE AMORTIZACIJE KAMATA I POREZA               ',3 
     DO PUNIBIL01 WITH '402','  D.DOBIT PRE KAMATA I POREZA                            ',3 
     
     DO PUNIBIL01 WITH '214','  DJ. POSLOVNI GUBITAK                                   ',3 
     DO PUNIBIL01 WITH '220','  E.GUBITAK IZ REDOVNOG POSLOVANJA                       ',3 

     DO PUNIBIL01 WITH '223','  Z.DOBIT PRE OPOREZIVANJA                               ',3 
     DO PUNIBIL01 WITH '224','  I.GUBITAK PRE OPOREZIVANJA                             ',3 
     DO PUNIBIL01 WITH '225','  J.POREZ NA DOBIT                                       ',3 
     DO PUNIBIL01 WITH '229','  K.NETO DOBIT                                           ',3 
     DO PUNIBIL01 WITH '230','  L.NETO GUBITAK                                         ',3 
     
     DO PUNIBIL01 WITH '521','  TROŠKOVI AMORTIZACIJE I REZERVISANJA                   ',4
     DO PUNIBIL01 WITH '115','  KRATKOROÈNE FINANSIJSKE OBAVEZE                        ',4
     DO PUNIBIL01 WITH '311','  NETO TOK GOTOVINE IZ POSLOVNE AKTIVNOSTI               ',4
     DO PUNIBIL01 WITH '323','  NETO TOK GOTOVINE IZ AKTIVNOSTI INVESTIRANJA           ',4
     DO PUNIBIL01 WITH '334','  NETO TOK GOTOVINE IZ AKTIVNOSTI FINANSIRANJA           ',4
     DO PUNIBIL01 WITH '338','  UKUPAN NETO TOK GOTOVINE                               ',4
     DO PUNIBIL01 WITH '601','  KAMATE                                                  ',4
     
     

ENDIF
POP KEY
ENDPROC

procedure PUNIBIL01
   PARAMETERS MAOP,mopis,MGRUPA
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace opis with mopis
   REPLACE GRUPA WITH MGRUPA
   POP KEY
endproc




procedure BILPUNI02
PUSH KEY CLEAR

SELECT BILSEMA2
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL02 WITH '1.      ','  OCENA PROFITNE STABILNOSTI                  ',1,0,' ',1
     DO PUNIBIL02 WITH '1.1.    ','  Neto rezultat                               ',1,0,'>',0
     DO PUNIBIL02 WITH '2.      ','  OCENA OPERATIVNE STABILNOSTI                ',2,0,' ',1
     DO PUNIBIL02 WITH '2.1.    ','  Obrtna imovina                              ',2,0,' ',0
     DO PUNIBIL02 WITH '2.2.    ','  Kratkoroène obaveze                         ',2,0,' ',0 
     DO PUNIBIL02 WITH '2.3.    ','  Obrtna imovina/kratkoroène obaveze          ',2,200,'>',0
     DO PUNIBIL02 WITH '2.4.    ','  Ukupni prihodi                              ',2 ,0,' ',0
     DO PUNIBIL02 WITH '2.5.    ','  Poslovna imovina                            ',2 ,0,' ',0
     DO PUNIBIL02 WITH '2.6.    ','  Ukupni prihodi/poslovna inovina             ',2 ,100,'>',0
     DO PUNIBIL02 WITH '3.      ','  OCENA FINANSIJSKE STABILNOSTI               ',3 ,0,' ',1
     DO PUNIBIL02 WITH '3.1.    ','  Poslovni rezultat                           ',3 ,0,' ',0
     DO PUNIBIL02 WITH '3.2.    ','  Troškovi amortizacije i rezervisanja        ',3 ,0,' ',0
     DO PUNIBIL02 WITH '3.3.    ','  Finansijski rashodi                         ',3 ,0,' ',0
     DO PUNIBIL02 WITH '3.4.    ','  Finansijska stabilnost 1+2/3                ',3 ,100,'>',0
     DO PUNIBIL02 WITH '4.      ','  ANALIZA TOKOVA GOTOVINE                     ',4 ,0,' ',1
     DO PUNIBIL02 WITH '4.1.    ','  Poslovni rezultat                           ',4 ,0,' ',0
     DO PUNIBIL02 WITH '4.2.    ','  Troškovi amortizacije i rezervisanja        ',4 ,0,' ',0
     DO PUNIBIL02 WITH '4.3.    ','  Kratkoroène finansijske obaveze             ',4 ,0,' ',0
     DO PUNIBIL02 WITH '4.4.    ','  Finansijska stabilnost 1+2/3                ',4 ,0,'>',0
     
     DO PUNIBIL02 WITH '5.      ','  POKAZATELJI LIKVIDNOSTI                     ',5,0,' ',1
     DO PUNIBIL02 WITH '5.1.    ','  Gotovina i gotovinski ekvivalenti           ',5,0,' ',0
     DO PUNIBIL02 WITH '5.2.    ','  Kratkoroèna potraživanja i plasmani         ',5,0,' ',0
     DO PUNIBIL02 WITH '5.3.    ','  Zalihe                                      ',5,0,' ',0
     DO PUNIBIL02 WITH '5.4.    ','  Kratkoroène obaveze                         ',5,0,' ',0
     DO PUNIBIL02 WITH '5.5.    ','  Likvidnost I stepena (1/4)                  ',5,5,' ',0
     DO PUNIBIL02 WITH '5.6.    ','  Likvidnost II stepena (1+2/4)               ',5,100,'>',0
     DO PUNIBIL02 WITH '5.7.    ','  Likvidnost III stepena (1+2+3/4)            ',5,200,'>',0
     
     DO PUNIBIL02 WITH '6.      ','  POKAZATELJI POKRIÆA                         ',6,0,' ',1
     DO PUNIBIL02 WITH '6.1.    ','  Neto kapital(kapital-gubitak)               ',6,0,' ',0
     DO PUNIBIL02 WITH '6.2.    ','  Dugoroèna rezervisanja                      ',6,0,' ',0
     DO PUNIBIL02 WITH '6.3.    ','  Dugoroène obaveze                           ',6,0,' ',0
     DO PUNIBIL02 WITH '6.4.    ','  Stalna imovina                              ',6,0,' ',0
     DO PUNIBIL02 WITH '6.5.    ','  Zalihe                                      ',6,0,' ',0
     DO PUNIBIL02 WITH '6.6.    ','  Pokriæe II stepena (1+2+3/4)                ',6,100,'>',0
     DO PUNIBIL02 WITH '6.7.    ','  Pokriæe III stepena (1+2+3)/(4+5))          ',6,100,'>',0
     
     DO PUNIBIL02 WITH '7.      ','  POKAZATELJ (DUGOROÈNE) ZADUŽENOSTI          ',7,0,' ',1
     DO PUNIBIL02 WITH '7.1.    ','  Dugoroène obaveze                           ',7,0,' ',0
     DO PUNIBIL02 WITH '7.2.    ','  Dugoroèna rezervisanja                      ',7,0,' ',0
     DO PUNIBIL02 WITH '7.3.    ','  Neto kapital(kapital-gubitak)               ',7,0,' ',0
     DO PUNIBIL02 WITH '7.4.    ','  Zaduženost ((1+2)/3)                        ',7,0,' ',0
     
     DO PUNIBIL02 WITH '8.      ','  STOPA OÈUVANOSTI KAPITALA                   ',8,0,' ',1
     DO PUNIBIL02 WITH '8.1.    ','  Osnovni kapital                             ',8,0,' ',0  
     DO PUNIBIL02 WITH '8.2.    ','  Gubitak                                     ',8,0,' ',0
     DO PUNIBIL02 WITH '8.3.    ','  Neto kapital(1-2)                           ',8,0,'>',0
     DO PUNIBIL02 WITH '8.4.    ','  Stopa oèuvanosti kapitala (3/1)             ',8,100,'>',0
     
     DO PUNIBIL02 WITH '9.      ','  STRUKTURA POSLOVNE IMOVINE                  ',9,0,' ',1
     DO PUNIBIL02 WITH '9.1.    ','  Stalna imovina                              ',9,0,' ',0
     DO PUNIBIL02 WITH '9.2.    ','  Obrtna imovina + AVR                        ',9,0,' ',0
     DO PUNIBIL02 WITH '9.3.    ','  Poslovna imovina (1+2)                      ',9,0,' ',0

     DO PUNIBIL02 WITH '10.     ','  STRUKTURA OBRTNIH SREDSTAVA                 ',10,0,' ',1
     DO PUNIBIL02 WITH '10.1.   ','  Zalihe                                      ',10,0,' ',0
     DO PUNIBIL02 WITH '10.2.   ','  Kratkoroèna potraživanja i plasmani         ',10,0,' ',0
     DO PUNIBIL02 WITH '10.3.   ','  Gotovina i gotovinski ekvivalenti           ',10,0,' ',0
     DO PUNIBIL02 WITH '10.4.   ','  Obrtna sredstva (1+2+3)                     ',10,0,' ',0
     
     DO PUNIBIL02 WITH '11.     ','  STRUKTURA UKUPNIH IZVORA SREDSTAVA          ',11,0,' ',1
     DO PUNIBIL02 WITH '11.1.   ','  Spostveni izvori                            ',11,50,'>',0
     DO PUNIBIL02 WITH '11.2.   ','  Pozajmljeni izvori                          ',11,0,' ',0
     DO PUNIBIL02 WITH '11.3.   ','  Ukupni izvori sredstava (1+2)               ',11,0,' ',0
     
     DO PUNIBIL02 WITH '12.     ','  STRUKTURA POZAJMLJENIH IZVORA SREDSTAVA     ',12,0,' ',1
     DO PUNIBIL02 WITH '12.1.   ','  Dugoroène obaveze                           ',12,0,' ',0
     DO PUNIBIL02 WITH '12.2.   ','  Kratkoroène obaveze                         ',12,0,' ',0
     DO PUNIBIL02 WITH '12.3.   ','  Pozajmljeni izvori sredstava (1+2)          ',12,0,' ',0
     
     DO PUNIBIL02 WITH '13.     ','  POKRIÆE OSNOVNIH SREDSTAVA SOPSTVENIM IZVORIMA  ',13,0,' ',1
     DO PUNIBIL02 WITH '13.1.   ','  Nekretnine,postrojenja,oprema i biološka sredst.',13,0,' ',0
     DO PUNIBIL02 WITH '13.2.   ','  Neto kapital                                    ',13,0,' ',0
     DO PUNIBIL02 WITH '13.3.   ','  Dugoroèna rezervisanja                          ',13,0,' ',0
     DO PUNIBIL02 WITH '13.4.   ','  Stopa pokriæa ((2+3)/1)                         ',13,100,'>',0
     
     DO PUNIBIL02 WITH '14.     ','  NETO OBRTNI FOND                                ',14,0,' ',1
     DO PUNIBIL02 WITH '14.1.   ','  Stalna imovina                                  ',14,0,' ',0
     DO PUNIBIL02 WITH '14.2.   ','  Gubitak                                         ',14,0,' ',0
     DO PUNIBIL02 WITH '14.3.   ','  Zalihe                                          ',14,0,' ',0
     DO PUNIBIL02 WITH '14.4.   ','  Dugoroèni izvori                                ',14,0,' ',0
     DO PUNIBIL02 WITH '14.5.   ','  Neto obrtni fond (4-(1+2))                      ',14,0,'>',0
     DO PUNIBIL02 WITH '14.6.   ','  Pokriæe zaliha neto obrtnim fondom (5/3)        ',14,100,'> ',0
     
     DO PUNIBIL02 WITH '15.     ','  DUGOROÈNA FINANSIJSKA RAVNOTEŽA                 ',15,0,' ',1
     DO PUNIBIL02 WITH '15.1.   ','  Stalna imovina+gubitak+zalihe                   ',15,0,' ',0
     DO PUNIBIL02 WITH '15.2.   ','  Dugoroèni izvori                                ',15,0,' ',0
     DO PUNIBIL02 WITH '15.3.   ','  Razlika (2-1)                                   ',15,0,' ',0
     DO PUNIBIL02 WITH '15.4.   ','  Stopa pokriæa (2/1)                             ',15,100,'>',0
     
     DO PUNIBIL02 WITH '16.     ','  KRATKOROÈNA FINANSIJSKA RAVNOTEŽA               ',16,0,' ',1
     DO PUNIBIL02 WITH '16.1.   ','  Obrtna imovina + AVR                            ',16,0,' ',0
     DO PUNIBIL02 WITH '16.2.   ','  Kratkoroèni izvori                              ',16,0,' ',0
     DO PUNIBIL02 WITH '16.3.   ','  Razlika (1-2)                                   ',16,0,' ',0
     DO PUNIBIL02 WITH '16.4.   ','  Stopa pokriæa (1/2)                             ',16,200,'>',0
     
     DO PUNIBIL02 WITH '17.     ','  STOPA POSLOVNE DOBITI                           ',17,0,' ',1
     DO PUNIBIL02 WITH '17.1.   ','  Poslovna dobit                                  ',17,0,'>',0
     DO PUNIBIL02 WITH '17.2.   ','  Ukupan prihod                                   ',17,0,' ',0
     DO PUNIBIL02 WITH '17.3.   ','  Stopa poslovne dobiti(1/2)                      ',17,0,'>',0
     

     DO PUNIBIL02 WITH '18.     ','  STOPA PRINOSA NA KAPITAL I PRELOMNA TAÈKA FINANSIRANJA ',18,0,' ',1
     DO PUNIBIL02 WITH '18.1.   ','  Neto dobitak                                       ',18,0,' ',0
     DO PUNIBIL02 WITH '18.2.   ','  Finansijski rashodi                                ',18,0,' ',0
     DO PUNIBIL02 WITH '18.3.   ','  Dobit pre kamate i poreza                          ',18,0,' ',0
     DO PUNIBIL02 WITH '18.4.   ','  Kapital                                            ',18,0,' ',0
     DO PUNIBIL02 WITH '18.5.   ','  Pozajmljeni izvori sredstava                       ',18,0,' ',0
     DO PUNIBIL02 WITH '18.6.   ','  Ukupan angažovani kapital                          ',18,0,' ',0
     DO PUNIBIL02 WITH '18.7.   ','  Stopa prinosa na sopstveni kapital (1/4)           ',18,0,'>',0
     DO PUNIBIL02 WITH '18.8.   ','  Stopa prinosa na pozajmljene izvore sredstava (2/5)',18,0,' ',0
     DO PUNIBIL02 WITH '18.9.   ','  Stopa prinosa na ukupan angažovani kapital (3/6)   ',18,0,'>',0
     DO PUNIBIL02 WITH '18.10.  ','  Prelomna taèka finansiranja (9/8)                  ',18,100,'>',0

     DO PUNIBIL02 WITH '19.     ','  STOPA NETO DOBITI                                  ',19,0,' ',1
     DO PUNIBIL02 WITH '19.1.   ','  Neto dobitak                                       ',19,0,' ',0
     DO PUNIBIL02 WITH '19.2.   ','  Ukupan prihod                                      ',19,0,' ',0
     DO PUNIBIL02 WITH '19.3.   ','  Stopa neto dobiti(1/2)                             ',19,0,'>',0

     DO PUNIBIL02 WITH '20.     ','  STOPA AKUMULATIVNOSTI                              ',20,0,' ',1
     DO PUNIBIL02 WITH '20.1.   ','  Neto dobitak                                       ',20,0,' ',0
     DO PUNIBIL02 WITH '20.2.   ','  Poslovna imovina                                   ',20,0,' ',0
     DO PUNIBIL02 WITH '20.3.   ','  Stopa akumulativnosti(1/2)                         ',20,0,'>',0

     DO PUNIBIL02 WITH '21.     ','  STRUKTURA PRIHODA I RASHODA                        ',21,0,' ',1
     DO PUNIBIL02 WITH '21.A.   ','  Ukupni prihodi                                     ',21,0,' ',0
     DO PUNIBIL02 WITH '21.1.   ','  Poslovni prihodi                                   ',21,0,' ',0
     DO PUNIBIL02 WITH '21.2.   ','  Finansijski prihodi                                ',21,0,' ',0
     DO PUNIBIL02 WITH '21.3.   ','  Ostali prihodi                                     ',21,0,' ',0
     DO PUNIBIL02 WITH '21.4.   ','  Vanredni prihodi                                   ',21,0,' ',0
     DO PUNIBIL02 WITH '21.B.   ','  Ukupni rashodi                                     ',21,0,' ',0
     DO PUNIBIL02 WITH '21.5.   ','  Poslovni rashodi                                   ',21,0,' ',0
     DO PUNIBIL02 WITH '21.6.   ','  Finansijski rashodi                                ',21,0,' ',0
     DO PUNIBIL02 WITH '21.7.   ','  Ostali rashodi                                     ',21,0,' ',0
     DO PUNIBIL02 WITH '21.8.   ','  Vanredni rashodi                                   ',21,0,' ',0
     
     DO PUNIBIL02 WITH '22.     ','  TOKOVI GOTOVINE IZ POSLOVNE INVESTICIONE I FINANSIJSKE AKTIVNOSTI ',22,0,' ',1
     DO PUNIBIL02 WITH '22.1.   ','  Neto tok gotovine iz poslovne aktivnosti (BTG)     ',22,0,'>',0
     DO PUNIBIL02 WITH '22.2.   ','  Neto tok gotovine iz aktivnosti investiranja       ',22,0,' ',0
     DO PUNIBIL02 WITH '22.3.   ','  Neto tok gotovine iz aktivnosti finansiranja       ',22,0,' ',0
     DO PUNIBIL02 WITH '22.4.   ','  Ukupan neto tok gotovine                           ',22,0,'>',0
ENDIF
POP KEY
ENDPROC

procedure PUNIBIL02
   PARAMETERS MAOP,mopis,MGRUPA,MSTANDAR,MZNAK,MNASLOV
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE REDNI WITH MAOP
   replace opis with mopis
   REPLACE GRUPA WITH MGRUPA
   REPLACE STANDAR WITH MSTANDAR
   REPLACE ZNAK WITH MZNAK
   REPLACE NASLOV WITH MNASLOV
POP KEY   
endproc




