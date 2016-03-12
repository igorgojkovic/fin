procedure BILPUNI

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIstat WITH '601','                ','  1.Broj meseci poslovanja (oznaka od 1 do 12)                              ','1','*' 
     DO PUNIstat WITH '602','                ','  2.Oznaka za velièinu     (oznaka od 1 do  3)                              ','1','*' 
     DO PUNIstat WITH '603','                ','  3.Oznaka za vlasništvo   (oznaka od 1 do  5)                              ','1','*' 
     DO PUNIstat WITH '604','                ','  4.Broj stranih (pravnih ili fizièkih) lica koja imaju uèešæe u kapitalu   ','1','*' 
     DO PUNIstat WITH '605','                ','  5.Proseèan broj zaposlenih na osnovu stanja krajem svakog meseca(ceo broj)','1','*' 
     
     
     DO PUNIstat WITH '   ','      01        ','  1.NEMATERIJALNA ULAGANJA                                                  ','2','*' 
     DO PUNIstat WITH '606','                ','  1.1.Stanje na poèetku godine                                              ','2','*' 
     DO PUNIstat WITH '607','                ','  1.2.Poveæanje (nabavke u toku godine)                                     ','2','*' 
     DO PUNIstat WITH '608','                ','  1.3.Smanjenje toku godine                                                 ','2','*' 
     DO PUNIstat WITH '609','                ','  1.4.Revalorizacija                                                        ','2','*' 
     DO PUNIstat WITH '610','                ','  1.5.Stanje na kraju godine (606+607-608+609)                              ','2','*' 
     DO PUNIstat WITH '   ','      02        ','  2.NEKRETNINE POSTROJENJA,OPREMA I BIOLOŠKA SREDSTVA                       ','2','*' 
     DO PUNIstat WITH '611','                ','  1.1.Stanje na poèetku godine                                              ','2','*' 
     DO PUNIstat WITH '612','                ','  1.2.Poveæanje (nabavke u toku godine)                                     ','2','*' 
     DO PUNIstat WITH '613','                ','  1.3.Smanjenje u toku godine                                               ','2','*' 
     DO PUNIstat WITH '614','                ','  1.4.Revalorizacija                                                        ','2','*' 
     DO PUNIstat WITH '615','                ','  1.5.Stanje na kraju godine (611+612-613+614)                              ','2','*' 
     
     
     DO PUNIstat WITH '616','      10        ','  1.Zalihe materijala                                                       ','3','*' 
     DO PUNIstat WITH '617','      11        ','  2.Nedovršena proizvodnja                                                  ','3','*' 
     DO PUNIstat WITH '618','      12        ','  3.Gotovi proizvodi                                                        ','3','*' 
     DO PUNIstat WITH '619','      13        ','  4.Roba                                                                    ','3','*' 
     DO PUNIstat WITH '620','      14        ','  5.Stalna sredstva namenjena prodaji                                       ','3','*' 
     DO PUNIstat WITH '621','      15        ','  6.Dati avansi                                                             ','3','*' 
     DO PUNIstat WITH '622','                ','  7.SVEGA (616+617+618+619+620+621=013+014)                                 ','3','*' 
     
     
     DO PUNIstat WITH '623','      300       ','  1.Akcijski kapital                                                        ','4','*' 
     DO PUNIstat WITH '624','                ','    u tome strani kapital                                                   ','4','*' 
     DO PUNIstat WITH '625','      301       ','  2.Udeli društva sa ogranièenom odgovornošæu                               ','4','*' 
     DO PUNIstat WITH '626','                ','    u tome strani kapital                                                   ','4','*' 
     DO PUNIstat WITH '627','      302       ','  3.Ulozi èlanova ortaèkog i komanditnog društva                            ','4','*' 
     DO PUNIstat WITH '628','                ','    u tome strani kapital                                                   ','4','*' 
     DO PUNIstat WITH '629','      303       ','  4.Državni kapital                                                         ','4','*' 
     DO PUNIstat WITH '630','      304       ','  5.Društveni kapital                                                       ','4','*' 
     DO PUNIstat WITH '631','      305       ','  6.Zadružni udeli                                                          ','4','*' 
     DO PUNIstat WITH '632','      309       ','  7.Ostali osnovni kapital                                                  ','4','*' 
     DO PUNIstat WITH '633','      30        ','  8.SVEGA (623+625+627+629+630+631+632=102)                                 ','4','*' 
     
     DO PUNIstat WITH '   ','                ','  1.OBIÈNE AKCIJE                                                           ','5','*' 
     DO PUNIstat WITH '634','                ','  1.1.Broj obiènih akcija                                                   ','5','*' 
     DO PUNIstat WITH '635','   deo 300      ','  1.2.Nominalna vrednost obiènih akcija - ukupno                            ','5','*' 
     DO PUNIstat WITH '   ','                ','  2.PRIORITETNE AKCIJE                                                      ','5','*'  
     DO PUNIstat WITH '636','                ','  2.1.Broj prioritetnih akcija                                              ','5','*' 
     DO PUNIstat WITH '637','   deo 300      ','  2.2.Nominalna vrednost prioritetnih akcija - ukupno                       ','5','*' 
     DO PUNIstat WITH '638','      300       ','  3.SVEGA - nominalna vrednost akcija (635+637=623)                         ','5','*' 
     
     DO PUNIstat WITH '639','      20        ','  1.Potraživanja po osnovu prodaje (stanje na kraju godine 639<=016         ','6','*' 
     DO PUNIstat WITH '640','      43        ','  2.Obaveze iz poslovanja (stanje na kraju godine 640<=119)                 ','6','*' 
     DO PUNIstat WITH '641','   deo 228      ','  3.Potraživanja u toku godine od društava za osiguranje za naknadu         ','6',' ' 
     DO PUNIstat WITH '   ','                ','    štete (dugovni promet bez poèetnog stanja)                              ','6','*' 
     DO PUNIstat WITH '642','      27        ','  4.PDV prethodni porez (godišnji iznos po poreskim prijavama)              ','6','*' 
     DO PUNIstat WITH '643','      43        ','  5.Obaveze iz poslovanja (potražni promet bez poèetnog stanja)             ','6','*' 
     DO PUNIstat WITH '644','      450       ','  6.Obaveze za neto zarade i naknade zarada                                 ','6',' ' 
     DO PUNIstat WITH '   ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '645','      451       ','  7.Obaveze za porez na zarade i naknade zarada na teret zaposlenog         ','6',' ' 
     DO PUNIstat WITH '   ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '646','      452       ','  8.Obaveze za doprinose na zarade i naknade zarada na teret zaposlenog     ','6',' ' 
     DO PUNIstat WITH '   ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '647','   461,462 i    ','  9.Obaveze za dividende, uèešæe u dobitku i lièna primanja poslodavca      ','6',' ' 
     DO PUNIstat WITH '   ','      723       ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '648','      465       ',' 10.Obaveze prema fizièkim licima za naknade po ugovorima                   ','6',' ' 
     DO PUNIstat WITH '   ','                ','    (potražni promet bez poèetnog stanja)                                   ','6','*' 
     DO PUNIstat WITH '649','      47        ',' 11.Obaveze za PDV (godišnji iznos po poreskim prijavama)                   ','6','*' 
     DO PUNIstat WITH '650','                ',' 12.KONTROLNI ZBIR (od 639 do 649)                                          ','6','*' 
     
     DO PUNIstat WITH '651','      513       ','  1.Troškovi goriva i energije                                              ','7','*' 
     DO PUNIstat WITH '652','      520       ','  2.Troškovi zarada i naknada zarada (bruto)                                ','7','*' 
     DO PUNIstat WITH '653','      521       ','  3.Troškovi poreza i doprinosa na zarade i naknade zarada                  ','7',' ' 
     DO PUNIstat WITH '   ','                ','    na teret poslodavca                                                     ','7','*' 
     DO PUNIstat WITH '654',' 522,523,524 i  ','  4.Troškovi naknada fizièkim licima (bruto) po osnovu ugovora              ','7',' ' 
     DO PUNIstat WITH '   ','      525       ','                                                                            ','7','*' 
     DO PUNIstat WITH '655','      526       ','  5.Troškovi naknada èlanovima upravnog i nadzornog odbora (bruto)          ','7','*' 
     DO PUNIstat WITH '656','      529       ','  6.Ostali lièni rashodi i naknade                                          ','7','*' 
     DO PUNIstat WITH '657','      53        ','  7.Troškovi proizvodnih usluga                                             ','7','*' 
     DO PUNIstat WITH '658',' 533 deo 540 i  ','  8.Troškovi zakupnina                                                      ','7',' ' 
     DO PUNIstat WITH '   ','   deo 525      ','                                                                            ','7','*' 
     DO PUNIstat WITH '659',' deo 533 deo 540','  9.Troškovi zakupnina zemljišta                                            ','7',' ' 
     DO PUNIstat WITH '   ','  i deo 525     ','                                                                            ','7','*' 
     DO PUNIstat WITH '660','    536,537     ',' 10.Troškovi istraživanja i razvoja                                         ','7','*' 
     DO PUNIstat WITH '661','      540       ',' 11.Troškovi amortizacije                                                   ','7','*' 
     DO PUNIstat WITH '662','      552       ',' 12.Troškovi premija osiguranja                                             ','7','*' 
     DO PUNIstat WITH '663','      553       ',' 13.Troškovi platnog prometa                                                ','7','*' 
     DO PUNIstat WITH '664','      554       ',' 14.Troškovi èlanarina                                                      ','7','*' 
     DO PUNIstat WITH '665','      555       ',' 15.Troškovi poreza                                                         ','7','*' 
     DO PUNIstat WITH '666','      556       ',' 16.Troškovi doprinosa                                                      ','7','*' 
     DO PUNIstat WITH '667','      562       ',' 17.Rashodi kamata                                                          ','7','*' 
     DO PUNIstat WITH '668',' deo 560 deo 561',' 18.Rashodi kamata i deo finansijskih rashoda                               ','7',' ' 
     DO PUNIstat WITH '   ','    i 562       ','                                                                            ','7','*' 
     DO PUNIstat WITH '669',' deo 560 deo 561',' 19.Rashodi kamata po kreditima od kamata i dfo                             ','7',' ' 
     DO PUNIstat WITH '   ','    i deo 562   ','                                                                            ','7','*' 
     DO PUNIstat WITH '670','    deo 579     ',' 20.Rashodi za humanitarne,kulturne,zdravstvene,obrazovne,nauène i verske   ','7',' ' 
     DO PUNIstat WITH '   ','                ','    namene,za zaštitu èovekove sredine i za sportske namene                 ','7','*' 
     DO PUNIstat WITH '671','                ',' 21.KONTROLNI ZBIR (od 651 do 670)                                          ','7','*' 
     
     DO PUNIstat WITH '672','      60        ','  1.Prihodi od prodaje robe                                                 ','8','*' 
     DO PUNIstat WITH '673','      640       ','  2.Prihodi od premija,subvencija,dotacija,regresa,kompenzacija i           ','8',' ' 
     DO PUNIstat WITH '   ','                ','    povraæaja poreskih dažbina                                              ','8','*' 
     DO PUNIstat WITH '674','      641       ','  3.Prihodi po osnovu uslovljenih donacija                                  ','8','*' 
     DO PUNIstat WITH '675','   deo 650      ','  4.Prihodi od zakupnina za zemljište                                       ','8','*' 
     DO PUNIstat WITH '676','      651       ','  5.Prihodi od èlanarina                                                    ','8','*' 
     DO PUNIstat WITH '677',' deo 660 deo 661','  6.Prihodi od kamata                                                       ','8',' ' 
     DO PUNIstat WITH '   ','      662       ','                                                                            ','8','*' 
     DO PUNIstat WITH '678',' deo 660 deo 661','  7.Prihodi od kamata po raèunima i depozitima u bankama i ostalim          ','8',' ' 
     DO PUNIstat WITH '   ','   i deo 662    ','    finansijskim organizacijama                                             ','8','*' 
     DO PUNIstat WITH '679',' deo 660 deo 661','  8.Prihodi po osnovu dividendi i uèešæa u dobitku                          ','8',' ' 
     DO PUNIstat WITH '   ','   i deo 669    ','                                                                            ','8','*' 
     DO PUNIstat WITH '680','                ','  9.KONTROLNI ZBIR (od 672 do 679)                                          ','8','*' 
    
     DO PUNIstat WITH '681','                ','  1.Obaveze za akcize (prema godišnjem obraèunu akciza)                     ','9','*' 
     DO PUNIstat WITH '682','                ','  2.Obraæunate carine i druge uvozne dažbine                                ','9',' ' 
     DO PUNIstat WITH '   ','                ','    (ukupan godišnji iznos prema obraèunu)                                  ','9','*' 
     DO PUNIstat WITH '683','                ','  3.Kapitalne subvencije i druga državna dodeljivanja za izgradnju          ','9',' ' 
     DO PUNIstat WITH '   ','                ','    i nabavku osnovnih sredstava i nematerijalnih ulaganja                  ','9','*' 
     DO PUNIstat WITH '684','                ','  4.Državna dodeljivanja za premije,regres i pokriæe tekuæih                ','9',' ' 
     DO PUNIstat WITH '   ','                ','    troškova poslovanja                                                     ','9','*' 
     DO PUNIstat WITH '685','                ','  5.Ostala državna dodeljivanja                                             ','9','*' 
     DO PUNIstat WITH '686','                ','  6.Primljene donacije iz inostranstva i druga bespovratna sredstva         ','9',' ' 
     DO PUNIstat WITH '   ','                ','    u novcu ili naturi od inostranih pravnih i fizièkih lica                ','9','*' 
     DO PUNIstat WITH '687','                ','  7.Lièna primanja preduzetnika iz neto dobitka                             ','9',' ' 
     DO PUNIstat WITH '   ','                ','    (popunjavaju samo preduzetnici)                                         ','9','*' 
     DO PUNIstat WITH '688','                ','  9.KONTROLNI ZBIR (od 681 do 687)                                          ','9','*' 

     DO PUNIstat WITH '689','                ','  1.Pocetno stanje razgranièenog neto efekta ugovorene valutne klauzule     ','A','*' 
     DO PUNIstat WITH '690','                ','  2.Razgranièeni neto efekat ugovorene valutne klauzule                     ','A','*' 
     DO PUNIstat WITH '691','                ','  3.Srazmerni deo ukinutog razgranièenog neto efekta                        ','A',' '
     DO PUNIstat WITH '   ','                ','    ugovorene valutne klauzule                                              ','A','*'      
     DO PUNIstat WITH '692','                ','  4.Preostali iznos razgranièenog neto efekta ugovorene valutne klauzule    ','A',' ' 
     DO PUNIstat WITH '   ','                ','    (red.br.1 + red.br.2-red.br.3)                                          ','A','*'      
     DO PUNIstat WITH '693','                ','  5.Pocetno stanje razgranièenog neto efekta kursnih razlika                ','A','*' 
     DO PUNIstat WITH '694','                ','  6.Razgranièeni neto efekat kursnih razlika                                ','A','*' 
     DO PUNIstat WITH '695','                ','  7.Srazmerni deo ukinutog razgranièenog neto efekta                        ','A',' '
     DO PUNIstat WITH '   ','                ','    kursnih razlika                                                         ','A','*'      
     DO PUNIstat WITH '696','                ','  8.Preostali iznos razgranièenog neto efekta kursnih razlika               ','A',' ' 
     DO PUNIstat WITH '   ','                ','    (red.br.5 + red.br.6-red.br.7)                                          ','A','*'      


     DO PUNIstat WITH '697','                ','  1.Pocetno stanje razgranièenog neto efekta ugovorene valutne klauzule     ','B','*' 
     DO PUNIstat WITH '698','                ','  2.Razgranièeni neto efekat ugovorene valutne klauzule                     ','B','*' 
     DO PUNIstat WITH '699','                ','  3.Srazmerni deo ukinutog razgranièenog neto efekta                        ','B',' '
     DO PUNIstat WITH '   ','                ','    ugovorene valutne klauzule                                              ','B','*'      
     DO PUNIstat WITH '700','                ','  4.Preostali iznos razgranièenog neto efekta ugovorene valutne klauzule    ','B',' ' 
     DO PUNIstat WITH '   ','                ','    (red.br.1 + red.br.2-red.br.3)                                          ','B','*'      
     DO PUNIstat WITH '701','                ','  5.Pocetno stanje razgranièenog neto efekta kursnih razlika                ','B','*' 
     DO PUNIstat WITH '702','                ','  6.Razgranièeni neto efekat kursnih razlika                                ','B','*' 
     DO PUNIstat WITH '703','                ','  7.Srazmerni deo ukinutog razgranièenog neto efekta                        ','B',' '
     DO PUNIstat WITH '   ','                ','    kursnih razlika                                                         ','B','*'      
     DO PUNIstat WITH '704','                ','  8.Preostali iznos razgranièenog neto efekta kursnih razlika               ','B',' ' 
     DO PUNIstat WITH '   ','                ','    (red.br.5 + red.br.6-red.br.7)                                          ','B','*'      

     

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
   
   SET EXACT OFF
   set order to 1
   GO TOP
   DO WHILE.NOT.EOF()
      REPLACE PRETH WITH 0
      REPLACE NETO WITH 0
      SKIP
   ENDDO
   MDIN=MCIFRE
   USE NAL IN 0 ORDER 1

    DO ZNSUZMI1 WITH   '10','616','POC','SVE','DUG'
    DO ZNSUZMI1 WITH   '11','617','POC','SVE','DUG'
    DO ZNSUZMI1 WITH   '12','618','POC','SVE','DUG'
    DO ZNSUZMI1 WITH   '13','619','POC','SVE','DUG'
    DO ZNSUZMI1 WITH   '14','620','POC','SVE','DUG'
    DO ZNSUZMI1 WITH   '15','621','POC','SVE','DUG'

    DO ZNSUZMI1 WITH  '300','623','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '301','625','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '302','627','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '303','629','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '304','630','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '305','631','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '306','632','POC','SVE','POT'
    DO ZNSUZMI1 WITH   '20','639','POC','SVE','DUG'
    DO ZNSUZMI1 WITH   '43','640','POC','SVE','POT'
    DO ZNSUZMI1 WITH  '228','641','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '270','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '271','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '272','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '273','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '274','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '275','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '276','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '277','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '278','642','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH   '43','643','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '450','644','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '451','645','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '452','646','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '461','647','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '462','647','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '723','647','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '465','648','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '470','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '471','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '472','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '473','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '474','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '475','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '476','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '477','649','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '478','649','PRO','DEO','POT'

    DO ZNSUZMI1P WITH   '10','616','POC','SVE','DUG'
    DO ZNSUZMI1P WITH   '11','617','POC','SVE','DUG'
    DO ZNSUZMI1P WITH   '12','618','POC','SVE','DUG'
    DO ZNSUZMI1P WITH   '13','619','POC','SVE','DUG'
    DO ZNSUZMI1P WITH   '14','620','POC','SVE','DUG'
    DO ZNSUZMI1P WITH   '15','621','POC','SVE','DUG'

    DO ZNSUZMI1P WITH  '300','623','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '301','625','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '302','627','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '303','629','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '304','630','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '305','631','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '306','632','POC','SVE','POT'
    DO ZNSUZMI1P WITH   '20','639','POC','SVE','DUG'
    DO ZNSUZMI1P WITH   '43','640','POC','SVE','POT'
    DO ZNSUZMI1P WITH  '228','641','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '270','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '271','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '272','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '273','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '274','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '275','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '276','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '277','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH  '278','642','PRO','DEO','DUG'
    DO ZNSUZMI1P WITH   '43','643','POC','DEO','POT'
    DO ZNSUZMI1P WITH  '450','644','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '451','645','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '452','646','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '461','647','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '462','647','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '723','647','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '465','648','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '470','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '471','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '472','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '473','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '474','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '475','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '476','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '477','649','PRO','DEO','POT'
    DO ZNSUZMI1P WITH  '478','649','PRO','DEO','POT'










    
    DO ZNSUZMI1 WITH  '513','651','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '520','652','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '521','653','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '522','654','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '523','654','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '524','654','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '525','654','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH  '526','655','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '529','656','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH   '53','657','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH  '533','658','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '525','658','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH  '536','660','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '537','660','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH  '540','661','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH  '552','662','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '553','663','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '554','664','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '555','665','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '556','666','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '562','667','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH  '560','668','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '561','668','PRO','SVE','DUG'
    DO ZNSUZMI1 WITH  '579','670','PRO','SVE','DUG'
    
    DO ZNSUZMI1 WITH   '60','672','PRO','SVE','POT'
    
    DO ZNSUZMI1 WITH  '640','673','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '651','676','PRO','SVE','POT'
    
    DO ZNSUZMI1 WITH  '660','677','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '661','677','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '662','677','PRO','SVE','POT'
*---------------aop 606 do 610--------------------------
    DO ZNSUZMI2 WITH   '01','606','BRUTO','POC','DUG'
    DO ZNSUZMI2 WITH   '01','606','ISPRAVKA','POC','POT'
    DO ZNSUZMI2 WITH   '01','607','BRUTO','PROMET','DUG'
    DO ZNSUZMI2 WITH   '01','610','ISPRAVKA','PROMET','PSALDO'
    
*---------------aop 611 do 615--------------------------
    DO ZNSUZMI2 WITH   '02','611','BRUTO','POC','DUG'
    DO ZNSUZMI2 WITH   '02','611','ISPRAVKA','POC','POT'
    DO ZNSUZMI2 WITH   '02','612','BRUTO','PROMET','DUG'
    DO ZNSUZMI2 WITH   '02','615','ISPRAVKA','PROMET','PSALDO'
    
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