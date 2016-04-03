procedure BILPUNI

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIstat WITH '9001','                ','  1.Broj meseci poslovanja (oznaka od 1 do 12)                              ','1','*' 
     DO PUNIstat WITH '9002','                ','  2.Oznaka za vlasništvo   (oznaka od 1 do  5)                              ','1','*' 
     DO PUNIstat WITH '9003','                ','  3.Broj stranih (pravnih ili fizièkih) lica koja imaju uèešæe u kapitalu   ','1','*' 
     DO PUNIstat WITH '9004','                ','  4.Broj stranih (pravnih ili fizièkih) lica èije je uèešæe u kapitalu      ','1',' ' 
     DO PUNIstat WITH '    ','                ','    10% ili više od 10%                                                     ','1','*'      
     DO PUNIstat WITH '9005','                ','  5.Proseèan broj zaposlenih na osnovu stanja krajem svakog meseca(ceo broj)','1','*' 
     
     
     DO PUNIstat WITH '   ','      01        ','  1.NEMATERIJALNA IMOVINA                                                   ','2','*' 
     DO PUNIstat WITH '9006','                ','  1.1.Stanje na poèetku godine                                             ','2','*' 
     DO PUNIstat WITH '9007','                ','  1.2.Poveæanja (nabavke) u toku godine                                    ','2','*' 
     DO PUNIstat WITH '9008','                ','  1.3.Smanjenja toku godine                                                ','2','*' 
     DO PUNIstat WITH '9009','                ','  1.4.Revalorizacija                                                       ','2','*' 
     DO PUNIstat WITH '9010','                ','  1.5.Stanje na kraju godine (9006+9007-9008+9009)                         ','2','*' 
     DO PUNIstat WITH '   ','      02        ','  2.NEKRETNINE, POSTROJENJA I OPREMA                                        ','2','*' 
     DO PUNIstat WITH '9011','                ','  2.1.Stanje na poèetku godine                                              ','2','*' 
     DO PUNIstat WITH '9012','                ','  2.2.Poveæanja (nabavke) u toku godine                                     ','2','*' 
     DO PUNIstat WITH '9013','                ','  2.3.Smanjenja u toku godine                                               ','2','*' 
     DO PUNIstat WITH '9014','                ','  2.4.Revalorizacione rezerve                                               ','2','*' 
     DO PUNIstat WITH '9015','                ','  2.5.Stanje na kraju godine (9011+9012-9013+9014)                          ','2','*' 
     DO PUNIstat WITH '   ','      03        ','  3.BIOLOŠKA SREDSTVA                                                        ','2','*' 
     DO PUNIstat WITH '9016','                ','  3.1.Stanje na poèetku godine                                              ','2','*' 
     DO PUNIstat WITH '9017','                ','  3.2.Poveæanja (nabavke) u toku godine                                     ','2','*' 
     DO PUNIstat WITH '9018','                ','  3.3.Smanjenja u toku godine                                               ','2','*' 
     DO PUNIstat WITH '9019','                ','  3.4.Revalorizacija                                                        ','2','*' 
     DO PUNIstat WITH '9020','                ','  3.5.Stanje na kraju godine (9016+9017-9018+9019)                          ','2','*' 

     
     DO PUNIstat WITH '9021','      300       ','  1.Akcijski kapital                                                        ','3','*' 
     DO PUNIstat WITH '9022','                ','    u tome: strani kapital                                                  ','3','*' 
     DO PUNIstat WITH '9023','      301       ','  2.Udeli društva sa ogranièenom odgovornošæu                               ','3','*' 
     DO PUNIstat WITH '9024','                ','    u tome strani kapital                                                   ','3','*' 
     DO PUNIstat WITH '9025','      302       ','  3.Ulozi                                                                   ','3','*' 
     DO PUNIstat WITH '9026','                ','    u tome strani kapital                                                   ','3','*' 
     DO PUNIstat WITH '9027','      303       ','  4.Državni kapital                                                         ','3','*' 
     DO PUNIstat WITH '9028','      304       ','  5.Društveni kapital                                                       ','3','*' 
     DO PUNIstat WITH '9029','      305       ','  6.Zadružni udeli                                                          ','3','*' 
     DO PUNIstat WITH '9030','      306       ','  7.Emisiona premija                                                        ','3','*'      
     DO PUNIstat WITH '9031','      309       ','  8.Ostali osnovni kapital                                                  ','3','*' 
     DO PUNIstat WITH '9032','      30        ','  9.SVEGA (9021+9023+9025+9027+9028+9029+9030+9031=0402)                    ','3','*' 
     
     
     DO PUNIstat WITH '   ','                ','   1.OBIÈNE AKCIJE                                                           ','4','*' 
     DO PUNIstat WITH '9033','                ','  1.1.Broj obiènih akcija                                                   ','4','*' 
     DO PUNIstat WITH '9034','   deo 300      ','  1.2.Nominalna vrednost obiènih akcija - ukupno                            ','4','*' 
     DO PUNIstat WITH '   ','                ','  2.PRIORITETNE AKCIJE                                                       ','4','*'  
     DO PUNIstat WITH '9035','                ','  2.1.Broj prioritetnih akcija                                              ','4','*' 
     DO PUNIstat WITH '9036','   deo 300      ','  2.2.Nominalna vrednost prioritetnih akcija - ukupno                       ','4','*' 
     DO PUNIstat WITH '9037','      300       ','  3.SVEGA - nominalna vrednost akcija (9034+9036=9021)                      ','4','*' 
     
     DO PUNIstat WITH '9038','                ','  1.Privredna društva (domaæa pravna lica)                                  ','5','*' 
     DO PUNIstat WITH '9039','                ','  2.Fizièka lica                                                            ','5','*' 
     DO PUNIstat WITH '9040','                ','  3.Država i institucije i organizacije koje se finansiraju iz budžeta     ','5','*' 
     DO PUNIstat WITH '9041','                ','  4.Finansijske institucije                                                 ','5','*' 
     DO PUNIstat WITH '9042','                ','  5.Neprofitne organizacije, fondacije i fondovi neprofitnog karaktera      ','5','*' 
     DO PUNIstat WITH '9043','                ','  6.Strana fizièka lica                                                     ','5','*' 
     DO PUNIstat WITH '9044','                ','  7.Strana pravna lica                                                      ','5','*' 
     DO PUNIstat WITH '9045','                ','  8.Evropske finansijske i razvojne institucije                             ','5','*' 
     DO PUNIstat WITH '9046','                ','  9.Svega (9038+9039+9040+9041+9042+9043+9044+9045=3037)                    ','5','*'                          



     DO PUNIstat WITH '9047','       226      ','  1.Potraživanja u toku godine od društava za osiguranje za naknadu         ','6',' ' 
     DO PUNIstat WITH '    ','                ','    štete (dugovni promet bez poèetnog stanja)                              ','6','*' 
     DO PUNIstat WITH '9048','      450       ','  2.Obaveze za neto zarade i naknade zarada,osim naknada zarada koje se     ','6',' ' 
     DO PUNIstat WITH '    ','                ','    refundiraju (potražni promet bez poèetnog stanja)                       ','6','*' 
     DO PUNIstat WITH '9049','      451       ','  3.Obaveze za porez na zarade i naknade zarada na teret zaposlenog         ','6',' ' 
     DO PUNIstat WITH '    ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '9050','      452       ','  4.Obaveze za doprinose na zarade i naknade zarada na teret zaposlenog     ','6',' ' 
     DO PUNIstat WITH '    ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '9051','   461,462 i    ','  5.Obaveze za dividende, uèešæe u dobitku i lièna primanja poslodavca      ','6',' ' 
     DO PUNIstat WITH '    ','      723       ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '9052','      465       ','  6.Obaveze prema fizièkim licima za naknade po ugovorima                   ','6',' ' 
     DO PUNIstat WITH '    ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '9053','                ','  7.KONTROLNI ZBIR (od 9047 do 9052)                                        ','6','*' 
     
     
     DO PUNIstat WITH '9054','      520       ','  1.Troškovi zarada i naknada zarada (bruto)                                ','7','*' 
     DO PUNIstat WITH '9055','      521       ','  2.Troškovi poreza i doprinosa na zarade i naknade zarada                  ','7',' ' 
     DO PUNIstat WITH '    ','                ','    na teret poslodavca                                                     ','7','*' 
     DO PUNIstat WITH '9056',' 522,523,524 i  ','  3.Troškovi naknada fizièkim licima (bruto) po osnovu ugovora              ','7',' ' 
     DO PUNIstat WITH '    ','      525       ','                                                                            ','7','*' 
     DO PUNIstat WITH '9057','      526       ','  4.Troškovi naknada direktoru, odnosno èlanovima organa                    ','7',' ' 
     DO PUNIstat WITH '    ','                ','    upravljanja i nadzora                                                   ','7','*' 
     DO PUNIstat WITH '9058','      529       ','  5.Ostali lièni rashodi i naknade                                          ','7','*' 
     DO PUNIstat WITH '9059',' deo 525 533 i  ','  6.Troškovi zakupnina                                                      ','7',' ' 
     DO PUNIstat WITH '    ','   deo 54       ','                                                                            ','7','*' 
     DO PUNIstat WITH '9060',' deo 525 deo 533','  7.Troškovi zakupnina zemljišta                                            ','7',' ' 
     DO PUNIstat WITH '    ','  i deo 54      ','                                                                            ','7','*' 
     DO PUNIstat WITH '9061','    536 i 537   ','  8.Troškovi istraživanja i razvoja                                         ','7','*' 
     DO PUNIstat WITH '9062','      552       ','  9.Troškovi premija osiguranja                                             ','7','*' 
     DO PUNIstat WITH '9063','      553       ',' 10.Troškovi platnog prometa                                                ','7','*' 
     DO PUNIstat WITH '9064','      554       ',' 11.Troškovi èlanarina                                                      ','7','*' 
     DO PUNIstat WITH '9065','      555       ',' 12.Troškovi poreza                                                         ','7','*' 
     DO PUNIstat WITH '9066','      556       ',' 13.Troškovi doprinosa                                                      ','7','*' 
     DO PUNIstat WITH '9067',' deo 560 deo 561',' 14.Rashodi kamata i deo finansijskih rashoda                               ','7',' ' 
     DO PUNIstat WITH '    ','    i 562       ','                                                                            ','7','*' 
     DO PUNIstat WITH '9068',' deo 560 deo 561',' 15.Rashodi kamata po kreditima od banaka i drugih finansijskih institucija ','7',' ' 
     DO PUNIstat WITH '    ','    i deo 562   ','    (ukupno)                                                                ','7','*' 
     DO PUNIstat WITH '9069','                ',' 15.1.Rashodi kamata po kratkoroènim kreditima u zemlji                     ','7','*' 
     DO PUNIstat WITH '9070','                ',' 15.2.Rashodi kamata po kratkoroènim kreditima u inostranstvu               ','7','*' 
     DO PUNIstat WITH '9071','                ',' 15.3.Rashodi kamata po dugoroènim kreditima u zemlji                       ','7','*' 
     DO PUNIstat WITH '9072','                ',' 15.4.Rashodi kamata po dugoroènim kreditima u inostranstvu                 ','7','*' 
     DO PUNIstat WITH '9073','    deo 579     ',' 16.Rashodi za humanitarne,nauène,verske,kulturne,zdravstvene,obrazovne     ','7',' ' 
     DO PUNIstat WITH '   ','                 ','    i za sportske namene,kao i za zaštitu èovekove sredine                  ','7','*' 
     DO PUNIstat WITH '9074','      579       ',' 17.Ostali nepomenuti rashodi                                               ','7','*' 
     DO PUNIstat WITH '9075','                ','  18.KONTROLNI ZBIR (od 9054 do 9074)                                       ','7','*' 
 
     DO PUNIstat WITH '9076','      640       ','  1.Prihodi od premija,subvencija,dotacija,regresa,kompenzacija i           ','8',' ' 
     DO PUNIstat WITH '    ','                ','    povraæaja poreskih dažbina                                              ','8','*' 
     DO PUNIstat WITH '9077','   deo 641      ','  2.Prihodi po osnovu uslovljenih donacija                                  ','8','*' 
     DO PUNIstat WITH '9078','   deo 650      ','  3.Prihodi od zakupnina za zemljište                                       ','8','*' 
     DO PUNIstat WITH '9079','       651      ','  4.Prihodi od èlanarina                                                    ','8','*' 
     DO PUNIstat WITH '9080',' deo 660 deo 661','  5.Prihodi od kamata                                                       ','8',' ' 
     DO PUNIstat WITH '    ','     i 662      ','                                                                            ','8','*' 
     DO PUNIstat WITH '9081',' deo 660 deo 661','  6.Prihodi od kamata po raèunima i depozitima u bankama i ostalim          ','8',' ' 
     DO PUNIstat WITH '    ',' i deo 662      ','    finansijskim institucijama                                              ','8','*' 
     DO PUNIstat WITH '9082',' deo 660 deo 661','  7.Prihodi po osnovu dividendi i uèešæa u dobitku                          ','8',' ' 
     DO PUNIstat WITH '    ','   i deo 669    ','                                                                            ','8','*' 
     DO PUNIstat WITH '9083','                ','  8.KONTROLNI ZBIR (od 9076 9082)                                           ','8','*' 
    
  
     DO PUNIstat WITH '9084','                ','  1.Obaveze za akcize (prema godišnjem obraèunu akciza)                     ','9','*' 
     DO PUNIstat WITH '9085','                ','  2.Obraæunate carine i druge uvozne dažbine                                ','9',' ' 
     DO PUNIstat WITH '    ','                ','    (ukupan godišnji iznos prema obraèunu)                                  ','9','*' 
     DO PUNIstat WITH '9086','                ','  3.Kapitalne subvencije i druga državna dodeljivanja za izgradnju          ','9',' ' 
     DO PUNIstat WITH '    ','                ','    i nabavku osnovnih sredstava i nematerijalne imovine                    ','9','*' 
     DO PUNIstat WITH '9087','                ','  4.Državna dodeljivanja za premije,regres i pokriæe tekuæih                ','9',' ' 
     DO PUNIstat WITH '    ','                ','    troškova poslovanja                                                     ','9','*' 
     DO PUNIstat WITH '9088','                ','  5.Ostala državna dodeljivanja                                             ','9','*' 
     DO PUNIstat WITH '9089','                ','  6.Primljene donacije iz inostranstva i druga bespovratna sredstva         ','9',' ' 
     DO PUNIstat WITH '    ','                ','    u novcu ili naturi od inostranih pravnih i fizièkih lica                ','9','*' 
     DO PUNIstat WITH '9090','                ','  7.Lièna primanja preduzetnika iz neto dobitka                             ','9',' ' 
     DO PUNIstat WITH '    ','                ','    (popunjavaju samo preduzetnici)                                         ','9','*' 
     DO PUNIstat WITH '9091','                ','  9.KONTROLNI ZBIR (od 9084 do 9090)                                        ','9','*' 


     DO PUNIstat WITH '9092','                ','  1.Pocetno stanje razgranièenog neto efekta ugovorene valutne klauzule     ','A','*' 
     DO PUNIstat WITH '9093','                ','  2.Razgranièeni neto efekat ugovorene valutne klauzule                     ','A','*' 
     DO PUNIstat WITH '9094','                ','  3.Srazmerni deo ukinutog razgranièenog neto efekta                        ','A',' '
     DO PUNIstat WITH '    ','                ','    ugovorene valutne klauzule                                              ','A','*'      
     DO PUNIstat WITH '9095','                ','  4.Preostali iznos razgranièenog neto efekta ugovorene valutne klauzule    ','A',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.1 + red.br.2-red.br.3)                                          ','A','*'      
     DO PUNIstat WITH '9096','                ','  5.Poèetno stanje razgranièenog neto efekta kursnih razlika                ','A','*' 
     DO PUNIstat WITH '9097','                ','  6.Razgranièeni neto efekat kursnih razlika                                ','A','*' 
     DO PUNIstat WITH '9098','                ','  7.Srazmerni deo ukinutog razgranièenog neto efekta                        ','A',' '
     DO PUNIstat WITH '    ','                ','    kursnih razlika                                                         ','A','*'      
     DO PUNIstat WITH '9099','                ','  8.Preostali iznos razgranièenog neto efekta kursnih razlika               ','A',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.5 + red.br.6-red.br.7)                                          ','A','*'      


     DO PUNIstat WITH '9100','                ','  1.Pocetno stanje razgranièenog neto efekta ugovorene valutne klauzule     ','B','*' 
     DO PUNIstat WITH '9101','                ','  2.Razgranièeni neto efekat ugovorene valutne klauzule                     ','B','*' 
     DO PUNIstat WITH '9102','                ','  3.Srazmerni deo ukinutog razgranièenog neto efekta                        ','B',' '
     DO PUNIstat WITH '    ','                ','    ugovorene valutne klauzule                                              ','B','*'      
     DO PUNIstat WITH '9103','                ','  4.Preostali iznos razgranièenog neto efekta ugovorene valutne klauzule    ','B',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.1 + red.br.2-red.br.3)                                          ','B','*'      
     DO PUNIstat WITH '9104','                ','  5.Pocetno stanje razgranièenog neto efekta kursnih razlika                ','B','*' 
     DO PUNIstat WITH '9105','                ','  6.Razgranièeni neto efekat kursnih razlika                                ','B','*' 
     DO PUNIstat WITH '9106','                ','  7.Srazmerni deo ukinutog razgranièenog neto efekta                        ','B',' '
     DO PUNIstat WITH '    ','                ','    kursnih razlika                                                         ','B','*'      
     DO PUNIstat WITH '9107','                ','  8.Preostali iznos razgranièenog neto efekta kursnih razlika               ','B',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.5 + red.br.6-red.br.7)                                          ','B','*'      

     
     DO PUNIstat WITH '9108','23 osim 236 i   ','  1.	Kratkoroèni finansijski plasmani (9109+9110+9111+9112)               ','C',' ' 
     DO PUNIstat WITH '    ',' 237            ','                                                                            ','C','*' 
     DO PUNIstat WITH '9109','deo 232 deo 234 ','  1.1.Plasmani fizièkim licima(krediti i zajmovi)                           ','C',' ' 
     DO PUNIstat WITH '    ','deo 238i deo 239','                                                                            ','C','*' 
     DO PUNIstat WITH '9110','deo 230 deo 231 ','  1.2.Plasmani domacim pravnim i preduzetnicima (krediti i zajmovi)         ','C',' ' 
     DO PUNIstat WITH '    ','deo 232 deo 234,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 238i deo 239','                                                                            ','C','*' 
     DO PUNIstat WITH '9111','deo 230i deo 239','  1.3.Plasmani matiènim i zavisnim pravnim licima u inostranstvu            ','C',' ' 
     DO PUNIstat WITH '    ','                ','      krediti i zajmovi)                                                    ','C','*' 
     DO PUNIstat WITH '    ','deo 230 deo 231 ','                                                                            ','C',' ' 
     DO PUNIstat WITH '9112','deo 232,233 deo ','  1.4.Ostali kratkoroèni finansijski plasmani                               ','C',' ' 
     DO PUNIstat WITH '    ','234,235 deo 238 ','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','i deo 239       ','                                                                            ','C','*' 
     
     DO PUNIstat WITH '9113','deo 04 i deo 05 ','  2.	Dugoroèni finansijski plasmani i dugoroèna potraživanja              ','C',' ' 
     DO PUNIstat WITH '    ','                ','       (9114+9115+9116)                                                     ','C','*' 
     
     DO PUNIstat WITH '9114','   deo 048 i    ','  2.1.Plasmani fizièkim licima(krediti i zajmovi)                           ','C',' ' 
     DO PUNIstat WITH '    ','   deo 049      ','                                                                            ','C','*' 
     
     DO PUNIstat WITH '    ','deo 043, deo 045','                                                                            ','C',' '                                             
     do PUNIstat WITH '9115','deo 048, deo 049','  2.2.Plasmani domacim pravnim licima i preduzetnicima (krediti i zajmovi)  ','C',' ' 
     DO PUNIstat WITH '    ','deo 050, deo 051','      i deo dugoroènih potraživanja od domaæih pravnih lica i preduzetnika  ','C',' ' 
     DO PUNIstat WITH '    ','i deo 059       ','                                                                            ','C','*' 
     
     DO PUNIstat WITH '    ','deo 043,044,deo ','                                                                            ','C',' '   
     DO PUNIstat WITH '9116','045,048 deo 049,','  2.3.Ostali kratkoroèni finansijski plasmani                               ','C',' ' 
     DO PUNIstat WITH '    ','deo 050,deo 051 ','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','i deo 059       ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','016,deo 019,028,','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 029,038 deo ','                                                                            ','C',' '                    
     DO PUNIstat WITH '9117','039,052,053,055 ','  3.  Prodati proizvodi,roba i usluge i dati avansi (9118+9119+9120+9121    ','C',' ' 
     DO PUNIstat WITH '    ','deo 059,15,159  ','      +9122+9123)                                                           ','C',' ' 
     DO PUNIstat WITH '    ','200,202,204,206 ','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','i deo 209       ','                                                                            ','C','*'           

     DO PUNIstat WITH '    ','deo 016,deo 019,','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 028,deo 029,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 038,deo 039,','                                                                            ','C',' ' 
     DO PUNIstat WITH '9118','deo 052,deo 053,','  3.1.Prodati proizvodi,roba i usluge i dati avansi fizièkim licima         ','C',' ' 
     DO PUNIstat WITH '    ','deo 055,deo 059,','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','deo 202,deo 204,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ','deo 206 ideo 209','                                                                            ','C','*'                

     DO PUNIstat WITH '    ','deo 15,deo 159, ','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 016,deo 019,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 028,deo 029,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 038,deo 039,','                                                                            ','C',' ' 
     DO PUNIstat WITH '9119','deo 052,deo 053,','  3.2.Prodati proizvodi,roba i usluge i dati avansi javnim preduzeæima      ','C',' ' 
     DO PUNIstat WITH '    ','deo 055,deo 059,','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','deo 200,deo 202,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ','deo 204 deo 206,','                                                                            ','C',' '                
     DO PUNIstat WITH '    ',' i deo 209      ','                                                                            ','C','*'                

     DO PUNIstat WITH '    ','deo 15,deo 159, ','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 016,deo 019,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 028,deo 029,','                                                                            ','C',' ' 
     DO PUNIstat WITH '9120','deo 038,deo 039,','  3.3.Prodati proizvodi,roba i usluge i dati avansi domaæim pravnim         ','C',' ' 
     DO PUNIstat WITH '    ','deo 052,deo 053,','      licima i preduzetnicima                                               ','C',' ' 
     DO PUNIstat WITH '    ','deo 055,deo 059,','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','deo 200,deo 202,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ','deo 204 deo 206,','                                                                            ','C',' '                
     DO PUNIstat WITH '    ',' i deo 209      ','                                                                            ','C','*'                

     DO PUNIstat WITH '    ','deo 15,deo 159,','                                                                             ','C',' '   
     DO PUNIstat WITH '    ','deo 016,deo 019,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 028,deo 029,','                                                                            ','C',' ' 
     DO PUNIstat WITH '9121','deo 038,deo 039,','  3.4.Prodati proizvodi,roba i usluge i dati avansi republièkim organima    ','C',' ' 
     DO PUNIstat WITH '    ','deo 052,deo 053,','      i organizacijama                                                      ','C',' ' 
     DO PUNIstat WITH '    ','deo 055,deo 059,','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','deo 204,deo 206,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ',' i deo 209      ','                                                                            ','C','*'                

     DO PUNIstat WITH '    ','deo 15,deo 159,','                                                                             ','C',' '   
     DO PUNIstat WITH '    ','deo 016,deo 019,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 028,deo 029,','                                                                            ','C',' ' 
     DO PUNIstat WITH '9122','deo 038,deo 039,','  3.5.Prodati proizvodi,roba i usluge i dati avansi jedinicama              ','C',' ' 
     DO PUNIstat WITH '    ','deo 052,deo 053,','  lokalne samouprave                                                        ','C',' ' 
     DO PUNIstat WITH '    ','deo 055,deo 059,','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','deo 204,deo 206,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ',' i deo 209      ','                                                                            ','C','*'                

     DO PUNIstat WITH '    ','deo 15,deo 159, ','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 016,deo 019,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 028,deo 029,','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 038,deo 039,','                                                                            ','C',' ' 
     DO PUNIstat WITH '9123','deo 052,deo 053,','  3.6.Ostala potraživanja po osnovu prodaje i ostali avansi                 ','C',' ' 
     DO PUNIstat WITH '    ','deo 055,deo 059,','                                                                            ','C',' '      
     DO PUNIstat WITH '    ','deo 200,deo 202,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ','deo 204,deo 206,','                                                                            ','C',' '           
     DO PUNIstat WITH '    ',' i deo 209      ','                                                                            ','C','*'                

     DO PUNIstat WITH '9124','054,056 deo 059,','  4.  Druga potraživanja (9125+9126+9127+9128+9129+9130)                    ','C',' '                                                                
     DO PUNIstat WITH '    ','21,22           ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','deo 054,deo 056,','                                                                            ','C',' '   
     DO PUNIstat WITH '9125','deo 059,deo 220,','  4.1.Potraživanja od fizièkih lica                                         ','C',' ' 
     DO PUNIstat WITH '    ','221,deo 228 i   ','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','deo 229         ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','deo 054,deo 056,','                                                                            ','C',' '   
     DO PUNIstat WITH '9126','deo 059,deo 21, ','  4.2.Potraživanja od javnih preduzeæa                                      ','C',' ' 
     DO PUNIstat WITH '    ','deo 220,deo 228 ','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','i deo 229       ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','deo 054,deo 056,','                                                                            ','C',' '   
     DO PUNIstat WITH '9127','deo 059,deo 21, ','  4.3.Potraživanja od domaæih pravnih lica i preduzetnika                   ','C',' ' 
     DO PUNIstat WITH '    ','deo 220,deo 228 ','                                                                            ','C',' ' 
     DO PUNIstat WITH '    ','i deo 229       ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','deo 056,deo 059,','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 220,222,deo ','                                                                            ','C',' ' 
     DO PUNIstat WITH '9128','223, deo 224,deo','  4.4.Potraživanja od republièkih organa i organizacija                     ','C',' ' 
     DO PUNIstat WITH '    ','225,deo 228 i   ','                                                                            ','C',' '
     DO PUNIstat WITH '    ','deo 229         ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','deo 056,deo 059,','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 220,222,deo ','                                                                            ','C',' ' 
     DO PUNIstat WITH '9129','223, deo 224,deo','  4.5.Potraživanja od jedinica lokalne samopurave                           ','C',' ' 
     DO PUNIstat WITH '    ','225,deo 228 i   ','                                                                            ','C',' '
     DO PUNIstat WITH '    ','deo 229         ','                                                                            ','C','*' 

     DO PUNIstat WITH '    ','deo 054,deo 056,','                                                                            ','C',' '   
     DO PUNIstat WITH '    ','deo 059,deo 21, ','                                                                            ','C',' ' 
     DO PUNIstat WITH '9130','deo 220,deo 224,','  4.6.Ostala potraživanja                                                   ','C',' ' 
     DO PUNIstat WITH '    ','deo 225,deo 226,','                                                                            ','C',' '
     DO PUNIstat WITH '    ','deo 228i deo 229','                                                                            ','C','*' 

ENDIF
POP KEY
ENDPROC

procedure punistat
   PARAMETERS MAOP,mkonto,mopis,MGRUPA,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace kontA with Mkonto
   replace opis with mopis
   REPLACE GRUPA WITH MGRUPA
   replace RLINI with MRLINI
   POP KEY
endproc







PROCEDURE STATPRE
   PARAMETERS MDDAT0,MDDAT1,MCIFRE
PUSH KEY CLEAR
   *SET STEP on
   SET EXACT OFF
   set order to 1
   GO TOP
   DO WHILE.NOT.EOF()
      REPLACE PRETH WITH 0
      REPLACE NETO WITH 0
      SKIP
   ENDDO
   MDIN=MCIFRE
         IF MNOVAGK=0    
            USE NAL IN 0 ORDER 1
         ELSE
            USE NALNOVI IN 0 ORDER 1  ALIAS NAL          
         ENDIF   


    DO ZNSUZMI1 WITH  '300','9021','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '301','9023','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '302','9025','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '303','9027','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '304','9028','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '305','9029','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '306','9030','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '309','9031','POC','SVE','POT'
    
    DO ZNSUZMI1 WITH  '300','9034','POC','SVE','POT'
    
    DO ZNSUZMI1 WITH  '226','9047','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '450','9048','PRO','DEO','POT'    
    DO ZNSUZMI1 WITH  '451','9049','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '452','9050','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '461','9051','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '462','9051','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '723','9051','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '465','9052','PRO','DEO','POT'    
   
    DO ZNSUZMI1 WITH  '520','9054','PRO','SVE','DUG'    
    DO ZNSUZMI1 WITH  '521','9055','PRO','SVE','DUG'    
    DO ZNSUZMI1 WITH  '522','9056','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '523','9056','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '524','9056','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '525','9056','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '526','9057','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '529','9058','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '533','9059','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '536','9061','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '537','9061','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '552','9062','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '553','9063','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '554','9064','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '555','9065','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '556','9066','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '560','9067','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '561','9067','PRO','SVE','DUG'                
    DO ZNSUZMI1 WITH  '562','9067','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '560','9068','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '561','9068','PRO','SVE','DUG'                
    DO ZNSUZMI1 WITH  '562','9068','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '579','9073','PRO','SVE','DUG'                
    DO ZNSUZMI1 WITH  '579','9074','PRO','SVE','DUG'                
    DO ZNSUZMI1 WITH  '640','9076','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '641','9077','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '650','9078','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '651','9079','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '660','9080','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '661','9080','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '662','9080','PRO','SVE','POT'    
    DO ZNSUZMI1 WITH  '660','9081','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '661','9081','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '662','9081','PRO','SVE','POT'    
    DO ZNSUZMI1 WITH  '669','9082','PRO','SVE','POT'    

*---------------aop 9006--------------------------
    DO ZNSUZMI2 WITH   '01','9006','BRUTO','POC','DUG'
    DO ZNSUZMI2 WITH   '01','9006','ISPRAVKA','POC','POT'
    DO ZNSUZMI2 WITH   '01','9007','BRUTO','PROMET','DUG'
    DO ZNSUZMI2 WITH   '01','9008','BRUTO','PROMET','POT'
*---------------aop 9011--------------------------
    DO ZNSUZMI2 WITH   '02','9011','BRUTO','POC','DUG'
    DO ZNSUZMI2 WITH   '02','9011','ISPRAVKA','POC','POT'
    DO ZNSUZMI2 WITH   '02','9012','BRUTO','PROMET','DUG'
    DO ZNSUZMI2 WITH   '02','9013','BRUTO','PROMET','POT'    

*---------------aop 9016--------------------------
    DO ZNSUZMI2 WITH   '03','9016','BRUTO','POC','DUG'
    DO ZNSUZMI2 WITH   '03','9016','ISPRAVKA','POC','POT'
    DO ZNSUZMI2 WITH   '03','9017','BRUTO','PROMET','DUG'
    DO ZNSUZMI2 WITH   '03','9018','BRUTO','PROMET','POT'    

     
    DO ZNSUZMI3 WITH  '230','9110','PRO','SVE','DUG'    
    DO ZNSUZMI3 WITH  '231','9110','PRO','SVE','DUG'    
    DO ZNSUZMI3 WITH  '232','9110','PRO','SVE','DUG'    

    DO ZNSUZMI3 WITH  '239','9110','PRO','SVE','DUG'        
    
    DO ZNSUZMI3 WITH  '233','9112','PRO','SVE','DUG'    
    DO ZNSUZMI3 WITH  '234','9112','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '235','9112','PRO','SVE','DUG'        
*    SET STEP ON 
    DO ZNSUZMI3 WITH  '238','9112','PRO','SVE','DUG'            

    DO ZNSUZMI3 WITH  '043','9115','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '045','9115','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '048','9115','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '049','9115','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '050','9115','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '051','9115','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '059','9115','PRO','SVE','DUG'        

    DO ZNSUZMI3 WITH  '044','9116','PRO','SVE','DUG'        

    DO ZNSUZMI3 WITH  '15' ,'9120','PRO','SVE','DUG'        
*    DO ZNSUZMI3 WITH  '159','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '016','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '019','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '019','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '028','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '029','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '038','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '039','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '052','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '053','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '055','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '059','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '200','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '202','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '204','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '206','9120','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '209','9120','PRO','SVE','DUG'        

    DO ZNSUZMI3 WITH  '221','9125','PRO','SVE','DUG'            

    DO ZNSUZMI3 WITH  '054','9127','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '056','9127','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '059','9127','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '21' ,'9127','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '220','9127','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '228','9127','PRO','SVE','DUG'        
    DO ZNSUZMI3 WITH  '229','9127','PRO','SVE','DUG'        

    DO ZNSUZMI3 WITH  '225','9130','PRO','SVE','DUG'            
    DO ZNSUZMI3 WITH  '226','9130','PRO','SVE','DUG'     
    DO ZNSUZMI3 WITH  '224','9130','PRO','SVE','DUG'                        
    DO ZNSUZMI3 WITH  '222','9130','PRO','SVE','DUG'                        
    DO ZNSUZMI3 WITH  '223','9130','PRO','SVE','DUG'                            
               

    DO ZNSUZMI3 WITH  '230','9110','PRO','SVE','POT'    
    DO ZNSUZMI3 WITH  '231','9110','PRO','SVE','POT'    
    DO ZNSUZMI3 WITH  '232','9110','PRO','SVE','POT'    

    DO ZNSUZMI3 WITH  '239','9110','PRO','SVE','POT'        

    DO ZNSUZMI3 WITH  '233','9112','PRO','SVE','POT'    
    DO ZNSUZMI3 WITH  '234','9112','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '235','9112','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '238','9112','PRO','SVE','POT'            

    DO ZNSUZMI3 WITH  '043','9115','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '045','9115','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '048','9115','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '049','9115','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '050','9115','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '051','9115','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '059','9115','PRO','SVE','POT'        

    DO ZNSUZMI3 WITH  '044','9116','PRO','SVE','POT'        

    DO ZNSUZMI3 WITH  '15' ,'9120','PRO','SVE','POT'        
    *DO ZNSUZMI3 WITH  '159','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '016','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '019','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '019','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '028','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '029','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '038','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '039','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '052','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '053','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '055','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '059','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '200','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '202','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '204','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '206','9120','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '209','9120','PRO','SVE','POT'        


    DO ZNSUZMI3 WITH  '221','9125','PRO','SVE','POT'            
    
    DO ZNSUZMI3 WITH  '054','9127','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '056','9127','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '059','9127','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '21' ,'9127','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '220','9127','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '228','9127','PRO','SVE','POT'        
    DO ZNSUZMI3 WITH  '229','9127','PRO','SVE','POT'        

    DO ZNSUZMI3 WITH  '225','9130','PRO','SVE','POT'                
    DO ZNSUZMI3 WITH  '226','9130','PRO','SVE','POT'                    
    DO ZNSUZMI3 WITH  '224','9130','PRO','SVE','POT'                        
    DO ZNSUZMI3 WITH  '222','9130','PRO','SVE','POT'                        
    DO ZNSUZMI3 WITH  '223','9130','PRO','SVE','POT'                            

    SELECT NAL
    USE
    SELECT BILSEMA
    SET ORDER TO 
    GO TOP
    DO WHILE.NOT.EOF()
       IF MDIN='H'
          MMNETO=ROUND(NETO/1000,0)
          MMBRUTO=ROUND(BRUTO/1000,0)
          MMISPRAVKA=ROUND(ISPRAVKA/1000,0)
          MMPRETH=ROUND(PRETH/1000,0)
       ELSE
          MMNETO=NETO
          MMPRETH=PRETH
          MMBRUTO=BRUTO
          MMISPRAVKA=ISPRAVKA
       ENDIF
       REPLACE NETO WITH MMNETO
       REPLACE PRETH WITH MMPRETH
       REPLACE BRUTO WITH MMBRUTO
       REPLACE ISPRAVKA WITH MMISPRAVKA
       
       SKIP
    ENDDO
    GO TOP
    POP KEY
ENDPROC

PROCEDURE ZNSUZMI2
   PARAMETERS MKONTO,MAOP,MSTRANA,MPROMET,MDUG)
PUSH KEY CLEAR
   
   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MIZNOS=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE POCETNO STANJE
         IF MPROMET='POC'
            IF DATDOK=MDDAT0
               IF MDUG='DUG'
                  MIZNOS=MIZNOS+DUG
               ELSE
                  MIZNOS=MIZNOS+POT
               ENDIF
            endif   
         ELSE
            IF DATDOK>MDDAT0
               *----------AKO JE DUGOVNI PROMET-----
               IF MDUG='DUG'
                  MIZNOS=MIZNOS+DUG
               ENDIF
               *---------AKO JE POTRAZNI PROMET-----        
               IF MDUG='POT'
                  MIZNOS=MIZNOS+POT
               ENDIF
               *--------AKO JE DUGOVNI SALDO
               IF MDUG='DSALDO'
                  MIZNOS=MIZNOS+DUG-POT
               ENDIF
               IF MDUG='PSALDO'
                  MIZNOS=MIZNOS+POT-DUG
               ENDIF
            endif   
         ENDIF
         *---------------------------------
         SKIP
      ENDDO
      
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         IF MSTRANA='BRUTO'
            REPLACE BRUTO WITH MIZNOS
         ENDIF   
         IF MSTRANA='ISPRAVKA'
            REPLACE ISPRAVKA WITH MIZNOS
         ENDIF   
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC

PROCEDURE ZNSUZMI1 
   PARAMETERS MKONTO,MAOP,MPROMET,MSVE,MDUG)
   PUSH KEY CLEAR

   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MNETO=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE PROMET BEZ POCETNOG STANJA
         IF MPROMET='PRO'
            IF DATDOK>MDDAT0.AND.DATDOK<=MDDAT1
               *-----AKO SE UZIMA SALDO SA KONTA
               IF MSVE='SVE'
                  IF MDUG='DUG'
                     MNETO=MNETO+DUG-POT
                  ELSE
                     MNETO=MNETO+POT-DUG
                  ENDIF
               ELSE
               *-----DEO=AKO SE UZIMA SAMO JEDNA STRANA KONTA
                  IF MDUG='DUG'
                     MNETO=MNETO+DUG
                  ELSE
                     MNETO=MNETO+POT
                  ENDIF
               ENDIF
            ENDIF
         ELSE
         *------POC=AKO SE UZIMA I POCETNO STANJE
            IF MPROMET='POC'
               IF DATDOK>=MDDAT0.AND.DATDOK<=MDDAT1
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG-POT
                     ELSE
                        MNETO=MNETO+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG
                     ELSE
                        MNETO=MNETO+POT
                     ENDIF
                  ENDIF
               ENDIF
            ELSE
            *----------AKO SE UZIMA SAMO POCETNO STANJE---------
               IF DATDOK<=MDDAT0
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG-POT
                     ELSE
                        MNETO=MNETO+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG
                     ELSE
                        MNETO=MNETO+POT
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF   
         ENDIF
         
         SKIP
      ENDDO
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         REPLACE NETO WITH NETO+MNETO
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC


PROCEDURE ZNSUZMI3
   PARAMETERS MKONTO,MAOP,MSTRANA,MPROMET,MDUG)
PUSH KEY CLEAR
   
   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MIZNOS=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE POCETNO STANJE
            IF DATDOK>=MDDAT0
               *----------AKO JE DUGOVNI PROMET-----
               IF MDUG='DUG'
                  MIZNOS=MIZNOS+DUG
               ENDIF
               *---------AKO JE POTRAZNI PROMET-----        
               IF MDUG='POT'
                  MIZNOS=MIZNOS+POT
               ENDIF
               *--------AKO JE DUGOVNI SALDO
               IF MDUG='DSALDO'
                  MIZNOS=MIZNOS+DUG-POT
               ENDIF
               IF MDUG='PSALDO'
                  MIZNOS=MIZNOS+POT-DUG
               ENDIF
            endif   
         *---------------------------------
         SKIP
      ENDDO
      
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         IF MDUG='DUG'
            REPLACE BRUTO WITH bruto+MIZNOS
         ENDIF   
         IF MDUG='POT'
            REPLACE ISPRAVKA WITH ISPRAVKA+MIZNOS
         ENDIF   
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC





PROCEDURE ZNSUZMI1P 
   PARAMETERS MKONTO,MAOP,MPROMET,MSVE,MDUG)
PUSH KEY CLEAR
   
   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MPRETH=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE PROMET BEZ POCETNOG STANJA
         IF MPROMET='PRO'
            IF DATDOK=MDDAT0
               *-----AKO SE UZIMA SALDO SA KONTA
               IF MSVE='SVE'
                  IF MDUG='DUG'
                     MPRETH=MPRETH+DUG-POT
                  ELSE
                     MPRETH=MPRETH+POT-DUG
                  ENDIF
               ELSE
               *-----DEO=AKO SE UZIMA SAMO JEDNA STRANA KONTA
                  IF MDUG='DUG'
                     MPRETH=MPRETH+DUG
                  ELSE
                     MPRETH=MPRETH+POT
                  ENDIF
               ENDIF
            ENDIF
         ELSE
         *------POC=AKO SE UZIMA I POCETNO STANJE
            IF MPROMET='POC'
               IF DATDOK=MDDAT0
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG-POT
                     ELSE
                        MPRETH=MPRETH+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG
                     ELSE
                        MPRETH=MPRETH+POT
                     ENDIF
                  ENDIF
               ENDIF
            ELSE
            *----------AKO SE UZIMA SAMO POCETNO STANJE---------
               IF DATDOK=MDDAT0
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG-POT
                     ELSE
                        MPRETH=MPRETH+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG
                     ELSE
                        MPRETH=MPRETH+POT
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF   
         ENDIF
         
         SKIP
      ENDDO
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         REPLACE PRETH WITH PRETH+MPRETH
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC


