procedure BILPUNIn

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH '   ','                ','  AKTIVA                                                 ',' ' 
     DO PUNIBIL WITH '001','       00       ','  A.UPISANI A NEUPLAÆENI KAPITAL                         ','*' 
     DO PUNIBIL WITH '002','                ','  B.STALNA IMOVINA(003+011+021+026+035)                  ','*' 
     DO PUNIBIL WITH '003','       01       ','I.NEMATERIJALNA IMOVINA(004+005+006+007+008+009+010)     ','*' 
     DO PUNIBIL WITH '004','       010      ','  1.Ulaganja u razvoj                                    ','*' 
     DO PUNIBIL WITH '005','   011 i 012    ','  2.Koncesije,patenti,licence,robne i uslužne marke,     ',' ' 
     DO PUNIBIL WITH '   ','                ','    softver i ostala prava                               ','*'      
     DO PUNIBIL WITH '006','       013      ','  3.Gudvil                                               ','*' 
     DO PUNIBIL WITH '007','       014      ','  4.Ostala nematerijalna imovina                         ','*'      
     DO PUNIBIL WITH '008','       015      ','  5.Nematerijalna imovina u pripremi                     ','*'           
     DO PUNIBIL WITH '009','       016      ','  6.Avansi za nematerijalnu imovinu                      ','*'           
     DO PUNIBIL WITH '010','       019      ','  7.Ispravka vrednosti nematerijalne imovine             ','*'           
     DO PUNIBIL WITH '   ','                ','II.NEKRETNINE, POSTROJENJA I OPREMA                      ',' ' 
     DO PUNIBIL WITH '011','        02      ','    (012+013+014+015+016+017+018+019+020)                ','*' 
     DO PUNIBIL WITH '012','    020 i 021   ','  1.Zemljište                                            ','*' 
     DO PUNIBIL WITH '013','       022      ','  2.Gradjevinski objekti                                 ','*' 
     DO PUNIBIL WITH '014','       023      ','  3.Postrojenja i oprema                                 ','*' 
     DO PUNIBIL WITH '015','       024      ','  4.Investicione nekretnine                              ','*' 
     DO PUNIBIL WITH '016','       025      ','  5.Ostale nekretnine,potrojenja i oprema                ','*' 
     DO PUNIBIL WITH '017','       026      ','  6.Nekretnine,potrojenja i oprema u pripremi            ','*' 
     DO PUNIBIL WITH '018','       027      ','  7.Ulaganja na tuðim nekretninama,postrojenjima i opremi','*' 
     DO PUNIBIL WITH '019','       028      ','  8.Avansi za nekretnine,postrojenja i opremu            ','*'           
     DO PUNIBIL WITH '020','       029      ','  9.Ispravka vrednosti nekretnina,postrojenja i opreme   ','*'           
     DO PUNIBIL WITH '021','        03      ','III.BIOLOŠKA SREDSTVA (022+023+024+025)                  ','*' 
     DO PUNIBIL WITH '022','    030 i 031   ','  1.Šume i višegodišnji zasadi                           ','*' 
     DO PUNIBIL WITH '023','       032      ','  2.Osnovno stado                                        ','*' 
     DO PUNIBIL WITH '024','       037      ','  3.Biološka sredstva u pripremi                         ','*' 
     DO PUNIBIL WITH '025','       038      ','  3.Avansi za biološka sredstva                          ','*' 
     DO PUNIBIL WITH '   ','                ','IV.DUGOROÈNI FINANSIJSKI PLASMANI                        ',' ' 
     DO PUNIBIL WITH '026','        04      ','    (027+028+029+030+031+032+033+034)                    ','*' 
     DO PUNIBIL WITH '027','       040      ','  1.Uèešæa u kapitalu zavisnih pravnih lica              ','*' 
     DO PUNIBIL WITH '028','       041      ','  2.Uèešæa u kapitalu pridruženih subjekata u            ',' ' 
     DO PUNIBIL WITH '   ','                ','    zajednièkim poduhvatima                              ','*'        
     DO PUNIBIL WITH '029','       042      ','  3.Uèešæa u kapitalu ostalih pravnih lica i druge harti-',' ' 
     DO PUNIBIL WITH '   ','                ','    je od vrednosti raspoložive za prodaju               ','*'        
     DO PUNIBIL WITH '030','       043      ','  4.Dugoroèni plasmani matiènim zavisnim i ostalim pove- ',' ' 
     DO PUNIBIL WITH '   ','                ','    zanim pravnim licima u zemlji                        ','*'             
     DO PUNIBIL WITH '031','       044      ','  5.Dugoroèni plasmani matiènim zavisnim i ostalim pove- ',' ' 
     DO PUNIBIL WITH '   ','                ','    zanim pravnim licima u inostranstvu                  ','*'             
     DO PUNIBIL WITH '032','       045      ','  6.Dugoroèni plasmani u zemlji i inostranstvu           ','*'      
     DO PUNIBIL WITH '033','       046      ','  7.Hartije od vrednosti koje se drže do dospeæa         ','*' 
     DO PUNIBIL WITH '034','       048      ','  8.Ostali dugoroèni finansijski plasmani                ','*'           
     DO PUNIBIL WITH '   ','                ','  V.DUGOROÈNA POTRAŽIVANJA                               ',' ' 
     DO PUNIBIL WITH '035','        05      ','    (036+037+038+039+040)                                ','*' 
     DO PUNIBIL WITH '036','     050 i 051  ','  1.Potraživanja od povezanih lica                       ','*' 
     DO PUNIBIL WITH '037','     052 i 053  ','  2.Potraživanja po osnovu prodaje na robni kredit       ',' ' 
     DO PUNIBIL WITH '   ','                ','    i finansijski lizing                                 ','*'        
     DO PUNIBIL WITH '038','       054      ','  3.Potraživanja po osnovu jemstva                       ','*' 
     DO PUNIBIL WITH '039','       055      ','  4.Sporna i sumnjiva potraživanja                       ','*' 
     DO PUNIBIL WITH '040','       056      ','  5.Ostala dugoroèna potraživanja                        ','*' 
     DO PUNIBIL WITH '041','       298      ','  V.ODLOŽENA PORESKA SREDSTVA                            ','*' 
     DO PUNIBIL WITH '042','                ','  G.OBRTNA IMOVINA(043+050)                              ','*' 
     DO PUNIBIL WITH '043','    KLASA 1     ','  I.ZALIHE (044+045+046+047+048+049)                     ','*' 
     DO PUNIBIL WITH '044','        10      ','  1.Materijal,rezervni delovi,alat i sitan inventar      ','*' 
     DO PUNIBIL WITH '045','        11      ','  2.Nedovršena proizvodnja i nedovršene usluge           ','*' 
     DO PUNIBIL WITH '046','        12      ','  3.Gotovi proizvodi                                     ','*' 
     DO PUNIBIL WITH '047','        13      ','  4.Roba                                                 ','*'      
     DO PUNIBIL WITH '048','        14      ','  5.Stalna sredstva namenjena prodaji                    ','*'      
     DO PUNIBIL WITH '049','        15      ','  6.Plaæeni avansi za zalihe i usluge                    ','*' 
     DO PUNIBIL WITH '   ','    KLASA 2     ','  II.KRATKOROÈNA POTRAŽIVANJA PLASMANI I GOTOVINA        ',' ' 
     DO PUNIBIL WITH '050','(osim 237 i 298)','    (051+052+053+054+055+056+057+058+059+060+061+        ',' '
     DO PUNIBIL WITH '   ','                ','    062+063+064+065+066)                                  ','*'
     DO PUNIBIL WITH '051','       200      ','  1.Kupci u zemlji - matièna i zavisna pravna lica       ','*' 
     DO PUNIBIL WITH '052','       201      ','  2.Kupci u inostranstvu - matièna i zavisna pravna lica ','*' 
     DO PUNIBIL WITH '053','       202      ','  3.Kupci u zemlji - ostala povezana pravna lica         ','*' 
     DO PUNIBIL WITH '054','       203      ','  4.Kupci u inostranstvu - ostala povezana pravna lica   ','*' 
     DO PUNIBIL WITH '055','       204      ','  5.Kupci u zemlji                                       ','*' 
     DO PUNIBIL WITH '056','       205      ','  6.Kupci u inostranstvu                                 ','*' 
     DO PUNIBIL WITH '057','       206      ','  7.Ostala potraživanja po osnovu prodaje                ','*' 
     DO PUNIBIL WITH '058','       209      ','  8.Ispravka vrednosti potraživanja od prodaje           ','*' 
     DO PUNIBIL WITH '059','        21      ','  9.Potraživanja iz specifiènih poslova                  ','*' 
     DO PUNIBIL WITH '060','        22      ',' 10.Druga potraživanja                                   ','*' 
     DO PUNIBIL WITH '061','       236      ',' 11.Finansijska sredstva koja se vrednuju po fer         ',' ' 
     DO PUNIBIL WITH '   ','                ','    vrednosti kroz bilans uspeha                         ','*' 
     DO PUNIBIL WITH '062','23osim236-237   ',' 12.Kratkoroèni finansijski plasmani                     ','*' 
     DO PUNIBIL WITH '063','        24      ',' 13.Gotovnski ekvivalenti i gotovina                     ','*' 
     DO PUNIBIL WITH '064','        27      ',' 14.Porez na dodatu vrednost                             ','*'      
     DO PUNIBIL WITH '065','       290      ',' 15.Gubitak iznad visine kapitala                        ','*' 
     DO PUNIBIL WITH '066','29osim290i298   ',' 16.Aktivna vremenska razranièenja                       ','*' 
     DO PUNIBIL WITH '067','                ','  D.UKUPNA AKTIVA(002+041+042)                           ','*' 
     DO PUNIBIL WITH '068','       88       ','  Ð.VANBILANSNA AKTIVA                                   ','*' 
     DO PUNIBIL WITH '   ','                ','  PASIVA                                                 ','*' 
     DO PUNIBIL WITH '101','                ','  A.KAPITAL(102+111+112+113+114-115+116+119-120-123)>=0  ',' ' 
     DO PUNIBIL WITH '   ','                ','    =(067-102-124-139-140)>=0                            ','*' 
     DO PUNIBIL WITH '102','        30      ','  I.OSNOVNI KAPITAL (103+104+105+106+107+108+109+110)    ','*' 
     DO PUNIBIL WITH '103','       300      ','  1.Akcijski kapital                                     ','*' 
     DO PUNIBIL WITH '104','       301      ','  2.Udeli društava sa ogranièenom odgovornošæu           ','*' 
     DO PUNIBIL WITH '105','       302      ','  3.Ulozi                                                ','*' 
     DO PUNIBIL WITH '106','       303      ','  4.Državni kapital                                      ','*' 
     DO PUNIBIL WITH '107','       304      ','  5.Društveni kapital                                    ','*' 
     DO PUNIBIL WITH '108','       305      ','  6.Zadružni udeli                                       ','*' 
     DO PUNIBIL WITH '109','       306      ','  7.Emisiona premija                                     ','*' 
     DO PUNIBIL WITH '110','       309      ','  8.Ostali osnovni kapital                               ','*'                
     DO PUNIBIL WITH '111','        31      ',' II.UPISANI A NEUPLAÆENI KAPITAL                         ','*' 
     DO PUNIBIL WITH '112','  047 i 237     ','III.OTKUPLJENE SOPSTVENE AKCIJE                          ','*' 
     DO PUNIBIL WITH '113','        32      ',' IV.REZERVE                                              ','*' 

     DO PUNIBIL WITH '   ','                ','  V.REVALORIZACIONE REZERVE PO OSNOVU REVALORIZA-        ',' ' 
     DO PUNIBIL WITH '114','       330      ','    CIJE NEMATERIJALNE IMOVINE,NEKRETNINA,               ',' ' 
     DO PUNIBIL WITH '   ','                ','    POSTROJENJA I OPREME  ','*' 

     DO PUNIBIL WITH '   ','                ',' VI.NEREALIZOVANI DOBICI PO OSNOVU HARTIJA OD            ',' ' 
     DO PUNIBIL WITH '115','  33 osim 330   ','    VREDNOSTI I DRUGIH KOMPONENTI OSTALOG                ',' ' 
     DO PUNIBIL WITH '   ','                ','    SVEOBUHVATNOG REZULTATA                              ',' ' 
     DO PUNIBIL WITH '   ','                ','    (potražna salda raèuna grupe 33 osim 330 )           ','*' 

     DO PUNIBIL WITH '   ','                ','VII.NEREALIZOVANI GUBICI PO OSNOVU HARTIJA OD            ',' ' 
     DO PUNIBIL WITH '116','  33 osim 330   ','    VREDNOSTI I DRUGIH KOMPONENTI OSTALOG                ',' ' 
     DO PUNIBIL WITH '   ','                ','    SVEOBUHVATNOG REZULTATA                              ',' ' 
     DO PUNIBIL WITH '   ','                ','    (dugovna salda raèuna grupe 33 osim 330 )            ','*' 

     DO PUNIBIL WITH '117','        34      ','VIII.NERASPOREÐENI DOBITAK (118+119)                     ','*' 
     DO PUNIBIL WITH '118','       340      ','   1.Nerasporeðeni dobitak ranijih godina                ','*' 
     DO PUNIBIL WITH '119','       341      ','   2.Nerasporeðeni dobitak tekuæe godine                 ','*' 

     DO PUNIBIL WITH '120','                ',' IX.MANJINSKI INTERES                                    ','*' 

     DO PUNIBIL WITH '121','        35      ','  B.GUBITAK(122+123)                                     ','*' 

     DO PUNIBIL WITH '122','       350      ','   1.Gubitak ranijih godina                              ','*' 
     DO PUNIBIL WITH '123','       351      ','   2.Gubitak tekuæe godine                               ','*' 


     DO PUNIBIL WITH '124','                ','  V.DUGOROÈNA REZERVISANJA I OBAVEZE (125+132)           ','*' 
     DO PUNIBIL WITH '125','        40      ','  I.DUGOROÈNA REZERVISANJA (126+127+128+129+130+131)     ','*' 
     DO PUNIBIL WITH '126','       400      ','   1.Rezervisanja za troškove u garantnom roku           ','*' 
     DO PUNIBIL WITH '127','       401      ','   2.Rezervisanja za troškove obnavljanja                ',' ' 
     DO PUNIBIL WITH '   ','                ','     prirodnih bogatstava                                ','*' 
     DO PUNIBIL WITH '128','       403      ','   3.Rezervisanja za troškove restruktuiranja            ','*' 
     DO PUNIBIL WITH '129','       404      ','   4.Rezervisanja za naknade i druge benefic.zaposlenih  ','*' 
     DO PUNIBIL WITH '130','       405      ','   5.Rezervisanja za troškove sudskih sporova            ','*' 
     DO PUNIBIL WITH '131','  402 i 409     ','   6.Ostala dugoroèna rezervisanja                       ','*' 
     DO PUNIBIL WITH '132','        41      ',' II.DUGOROÈNE OBAVEZE (133+134+135+136+137+138)          ','*' 
     DO PUNIBIL WITH '133','       410      ','   1.Obaveze koje se mogu konvertovati u kapital         ','*' 
     DO PUNIBIL WITH '134','       411      ','   2.Obaveze prema matiènim i zavisnim pravnim licima    ','*' 
     DO PUNIBIL WITH '135','       412      ','   3.Obaveze prema ostalim povezanim pravnim licima      ','*' 
     DO PUNIBIL WITH '136','       413      ','   4.Obaveze po emitovanim hartijama od vrednosti        ',' ' 
     DO PUNIBIL WITH '   ','                ','     u periodu dužem od godinu dana                      ','*'      
     DO PUNIBIL WITH '137','  414 i 415     ','   5.Dugoroèni krediti                                   ','*' 
     DO PUNIBIL WITH '138','  416 i 419     ','   6.Obaveze po finansijskom lizingu i ostale            ',' ' 
     DO PUNIBIL WITH '   ','                ','     dugoroène obaveze                                   ','*'      

     DO PUNIBIL WITH '139','     498        ','  G.ODLOŽENE PORESKE OBAVEZE                             ','*' 


     DO PUNIBIL WITH '   ','    42 DO 49    ','  D.KRATKOROÈNE OBAVEZE  (141+142+143+144+145+146+147    ',' ' 
     DO PUNIBIL WITH '140','   (osim 498)   ','    +148+149+150+151+152+153+154)                        ','*'
     DO PUNIBIL WITH '141','   42 osim 427  ','   1.Kratkoroène finansijske obaveze                     ','*' 
     DO PUNIBIL WITH '142','       427      ','   2.Obaveze po osnovu stalnih sredstava i sredstava obu ',' ' 
     DO PUNIBIL WITH '   ','                ','     stavljenog poslovanja namenjenih prodaji            ','*' 
     DO PUNIBIL WITH '143','       430      ','   3.Primljeni avansi depoziti i kaucije                 ','*' 
     DO PUNIBIL WITH '144','       431      ','   4.Dobavljaèi-matièna i zavisna pravna lica u zemlji   ','*' 
     DO PUNIBIL WITH '145','       432      ','   5.Dobavljaèi-matièna i povezana pravna lica u inostr. ','*' 
     DO PUNIBIL WITH '146','       433      ','   6.Dobavljaèi-ostala povezana pravna lica u zemlji     ','*' 
     DO PUNIBIL WITH '147','       434      ','   7.Dobavljaèi-ostala povezana pravna lica u inostr.    ','*' 
     DO PUNIBIL WITH '148','       435      ','   8.Dobavljaèi u zemlji                                 ','*' 
     DO PUNIBIL WITH '149','       436      ','   9.Dobavljaèi u inostranstvu                           ','*' 
     DO PUNIBIL WITH '150','       439      ','  10.Ostale obeveze iz poslovanja                        ','*' 
     DO PUNIBIL WITH '151','   44,45 i 46   ','  11.Ostale kratkoroène obeveze                          ','*' 
     DO PUNIBIL WITH '152','        47      ','  12.Obaveze po osnovu poreza na dodatu vrednost         ','*' 
     DO PUNIBIL WITH '153','        48      ','  13.Obaveze za ostale poreze,dopinose i druge dažbine   ','*' 
     DO PUNIBIL WITH '154','   49 osim 498  ','  14.Pasivna vremenska razgranièenja                     ','*' 
     DO PUNIBIL WITH '155','                ','  Ð UKUPNA PASIVA(101+124+139+140)>=0                    ','*' 
     DO PUNIBIL WITH '156','      89        ','  D. VANBILANSNA PASIVA                                  ','*'



     
     DO PUNIBIL WITH '   ','                ','  A.PRIHODI I RASHODI IZ REDOVNOG POSLOVANJA             ','*' 
     DO PUNIBIL WITH '201','    60 do 65    ','  I.POSLOVNI PRIHODI(202+209+216+217)>=0                 ','*' 
     DO PUNIBIL WITH '202','        60      ',' II.PRIHODI OD PRODAJE ROBE (203+204+205+206+207+208)    ','*' 
     DO PUNIBIL WITH '203','       600      ','   1.Prihodi od prodaje robe matiènim i zavisnim pravnim ',' ' 
     DO PUNIBIL WITH '   ','                ','     licima na domaæem tržištu                           ','*'      
     DO PUNIBIL WITH '204','       601      ','   2.Prihodi od prodaje robe matiènim i zavisnim pravnim ',' ' 
     DO PUNIBIL WITH '   ','                ','     licima na inostranom tržištu                        ','*'      
     DO PUNIBIL WITH '205','       602      ','   1.Prihodi od prodaje robe ostalim povezanim pravnim   ',' ' 
     DO PUNIBIL WITH '   ','                ','     licima na domaæem tržištu                           ','*'      
     DO PUNIBIL WITH '206','       603      ','   2.Prihodi od prodaje robe ostalim povezanim pravnim   ',' ' 
     DO PUNIBIL WITH '   ','                ','     licima na inostranom tržištu                        ','*'      
     DO PUNIBIL WITH '207','       604      ','   1.Prihodi od prodaje robe na domaæem tržištu          ','*'      
     DO PUNIBIL WITH '208','       605      ','   2.Prihodi od prodaje robe na inostranom tržištu       ','*'      
     DO PUNIBIL WITH '209','        61      ','III.PRIHODI OD PRODAJE PROIZVODA I USLUGA                ',' ' 
     DO PUNIBIL WITH '   ','                ','    (210+211+212+213+214+215)                            ','*'      
     DO PUNIBIL WITH '210','       610      ','   1.Prihodi od prodaje gotovih proizvoda i usluga  mati-',' ' 
     DO PUNIBIL WITH '   ','                ','     ènim i zavisnim pravnim licima na domaæem tržištu   ','*'      
     DO PUNIBIL WITH '211','       611      ','   2.Prihodi od prodaje gotovih proizvoda i usluga  mati-',' ' 
     DO PUNIBIL WITH '   ','                ','     ènim i zavisnim pravnim licima na inostranom tržištu','*'      
     DO PUNIBIL WITH '212','       612      ','   3.Prihodi od prodaje gotovih proizvoda i usluga  osta-',' ' 
     DO PUNIBIL WITH '   ','                ','     lim povezanim pravnim licima na domaæem tržištu     ','*'      
     DO PUNIBIL WITH '213','       613      ','   4.Prihodi od prodaje gotovih proizvoda i usluga  osta-',' ' 
     DO PUNIBIL WITH '   ','                ','     lim povezanim pravnim licima na inostranom tržištu  ','*'      
     DO PUNIBIL WITH '214','       614      ','   5.Prihodi od prodaje gotovih proizvoda i usluga       ',' ' 
     DO PUNIBIL WITH '   ','                ','     na domaæem tržištu                                  ','*'      
     DO PUNIBIL WITH '215','       615      ','   6.Prihodi od prodaje gotovih proizvoda i usluga       ',' ' 
     DO PUNIBIL WITH '   ','                ','     na inostranom tržištu                               ','*'      
     DO PUNIBIL WITH '216','        64      ','   7.Prihodi od premija,subvencija,dotacija,donacijs i sl','*' 
     DO PUNIBIL WITH '217','        65      ','   8.Drugi poslovni prihodi                              ','*' 
     DO PUNIBIL WITH '218','    50 do 55    ',' IV.POSLOVNI RASHODI(219-220-221-222+223+224+225+226+    ',' ' 
     DO PUNIBIL WITH '   ','                ','    227+228+229)>=0                                      ','*' 
     DO PUNIBIL WITH '219','        50      ','  1.Nabavna vrednost prodate robe                        ','*' 
     DO PUNIBIL WITH '220','        62      ','  2.Prihodi od aktiviranja uèinaka i robe                ','*' 
     DO PUNIBIL WITH '221','       630      ','  3.Poveæanje vrednosti zaliha nedovršenih i gotovih     ',' ' 
     DO PUNIBIL WITH '   ','                ','    proizvoda i nedovršenih usluga                       ','*' 
     DO PUNIBIL WITH '222','       631      ','  4.Smanjenje vrednosti zaliha nedovršenih i gotovih     ',' ' 
     DO PUNIBIL WITH '   ','                ','    proizvoda i nedovršenih usluga                       ','*' 
     DO PUNIBIL WITH '223',' 51 osim 513    ','  5.Troškovi materijala                                  ','*' 
     DO PUNIBIL WITH '224','       513      ','  6.Troškovi goriva i energije                           ','*' 
     DO PUNIBIL WITH '225','        52      ','  7.Troškovi zarada,naknada zarada i ostali lièni troškovi','*' 
     DO PUNIBIL WITH '226','        53      ','  8.Troškovi prizvodnih usluga                           ','*' 
     DO PUNIBIL WITH '227','       540      ','  9.Troškovi amortizacije                                ','*' 
     DO PUNIBIL WITH '228','  541 do 549    ',' 10.Troškovi dugoroènih rezervisanja                     ','*' 
     DO PUNIBIL WITH '229','        55      ',' 11.Nematerijalni troškovi                               ','*' 
     DO PUNIBIL WITH '230','                ','  V.POSLOVNI DOBITAK(201-218)>=0                         ','*' 
     DO PUNIBIL WITH '231','                ',' VI.POSLOVNI GUBITAK(218-201)>=0                         ','*' 
     DO PUNIBIL WITH '232','      66        ','VII.FINANSIJSKI PRIHODI (233+234+235+236+237)            ','*' 
     DO PUNIBIL WITH '233','  660 i 661     ','  1.Finansijski prihodi od povezanih lica                ','*' 
     DO PUNIBIL WITH '234','     662        ','  2.Prihodi od kamata (od treæih lica)                   ','*' 
     DO PUNIBIL WITH '235','  663 i 664     ','  3.Pozitivne kursne razlike i pozitivni efekti          ',' ' 
     DO PUNIBIL WITH '   ','                ','    valutne klauzule                                     ','*' 
     DO PUNIBIL WITH '236','     665        ','  4.Prihodi od uèešæa u dobitku zavisnih pravnih lica    ',' ' 
     DO PUNIBIL WITH '   ','                ','    i zajednièkih aranžmana                              ','*' 
     DO PUNIBIL WITH '237','     669        ','  5.Ostali finansijski prihodi                           ','*' 
     DO PUNIBIL WITH '238','      56        ','VIII.FINANSIJSKI RASHODI (239+240+241+242+243+244)       ','*' 
     DO PUNIBIL WITH '239','     560        ','  1.Finansijski rashodi iz odnosa sa matiènim i zavisnim ',' ' 
     DO PUNIBIL WITH '   ','                ','    pravnim licima                                       ','*' 
     DO PUNIBIL WITH '240','     561        ','  2.Finansijski rashodi iz odnosa sa ostalim povezanim   ',' ' 
     DO PUNIBIL WITH '   ','                ','    pravnim licima                                       ','*' 
     DO PUNIBIL WITH '241','     562        ','  3.Rashodi kamata (prema treæim licima)                 ','*' 
     DO PUNIBIL WITH '242','  563 i 564     ','  4.Negativne kursne razlike i negativni efekti          ','*' 
     DO PUNIBIL WITH '   ','                ','    valutne klauzule (prema treæim licima)               ','*' 
     DO PUNIBIL WITH '243','     565        ','  5.Rashodi od uèešæa u gubitku zavisnih pravnih lica    ','*' 
     DO PUNIBIL WITH '   ','                ','    i zajednièkih ulaganja                               ','*' 
     DO PUNIBIL WITH '244','  566 i 569     ','  6.Ostali finansijski rashodi                           ','*' 
     DO PUNIBIL WITH '245','                ',' IX.REZULTAT FINANSIRANJA (232-238)                      ','*' 
     DO PUNIBIL WITH '   ','                ','  X.PRIHODI OD USKLAÐIVANJA VREDNOSTI OSTALE             ',' ' 
     DO PUNIBIL WITH '246','  683 I 685     ','    IMOVINE KOJA SE ISKAZUJE PO FER VREDNOSTI            ',' ' 
     DO PUNIBIL WITH '   ','                ','    KROZ BILANS USPEHA                                   ','*'      
     DO PUNIBIL WITH '   ','                ',' XI.RASHODI OD USKLAÐIVANJA VREDNOSTI OSTALE             ',' ' 
     DO PUNIBIL WITH '247','  583 i 585     ','    IMOVINE KOJA SE ISKAZUJE PO FER VREDNOSTI            ',' ' 
     DO PUNIBIL WITH '   ','                ','    KROZ BILANS USPEHA                                   ','*' 
     DO PUNIBIL WITH '   ','                ','XII.REZULTAT PO OSNOVU USKLAÐIVANJA  VREDNOSTI           ',' ' 
     DO PUNIBIL WITH '248','                ','    OSTALE IMOVINE KOJA SE ISKAZUJE PO FER               ',' ' 
     DO PUNIBIL WITH '   ','                ','    VREDNOSTI KROZ BILANS USPEHA  (246-247)              ','*' 
     DO PUNIBIL WITH '249','67i68osim683i685','XIII.OSTALI PRIHODI                                      ','*' 
     DO PUNIBIL WITH '250','57i58osim583i585',' XIV.OSTALI RASHODI                                      ','*' 
     DO PUNIBIL WITH '251','                ','  XV.DOBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA     ',' '      
     DO PUNIBIL WITH '   ','                ','     (230-231+232-238+249-250)                           ','*' 
     DO PUNIBIL WITH '252','                ',' XVI.GUBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA     ',' '      
     DO PUNIBIL WITH '   ','                ','     (231-230-232+238-249+250)                           ','*' 
     DO PUNIBIL WITH '   ','                ',' XVII.NETO DOBITAK POSLOVANJA KOJE SE OBUSTAVLJA,        ',' '      
     DO PUNIBIL WITH '253','  69-59         ','      EFEKTI PROMENA RAÈUNOVODSTVENIH POLITIKA           ',' '      
     DO PUNIBIL WITH '   ','                ','      I ISPRAVKA GREŠAKA IZ RANIJIH PERIODA              ','*'      
     DO PUNIBIL WITH '   ','                ','XVIII.NETO GUBITAK POSLOVANJA KOJE SE OBUSTAVLJA,        ',' '      
     DO PUNIBIL WITH '254','  59-69         ','      RASHODI PROMENA RAÈUNOVODSTVENIH POLITIKA          ',' '      
     DO PUNIBIL WITH '   ','                ','      I ISPRAVKA GREŠAKA IZ RANIJIH PERIODA              ','*'      
     DO PUNIBIL WITH '255','                ','  B.DOBITAK PRE OPOREZIVANJA (251-252+253-254)           ','*' 
     DO PUNIBIL WITH '256','                ','  V.GUBITAK PRE OPOREZIVANJA (252-251+254-253)           ','*' 
     DO PUNIBIL WITH '   ','                ','  G.POREZ NA DOBITAK                                     ','*' 
     DO PUNIBIL WITH '257','                ','  I.Poreski rashod perioda                               ','*' 
     DO PUNIBIL WITH '258','                ','  D.ISPLAÆENA LIÈNA PRIMANJA POSLODAVCA                  ','*' 
     DO PUNIBIL WITH '259','                ','  DJ.NETO DOBITAK (255-256-257-258)                      ','*' 
     DO PUNIBIL WITH '260','                ','  E. NETO GUBITAK (256-255+257+258)                      ','*' 
     DO PUNIBIL WITH '261','                ','  Ž.NETO DOBITAK KOJI PRIPADA MANJINSKIM ULAGAÈIMA       ','*' 
     DO PUNIBIL WITH '262','                ','  Z.NETO DOBITAK KOJI PRIPADA VEÆINSKOM VLASNIKU         ','*' 
     DO PUNIBIL WITH '   ','                ','  I.ZARADA PO AKCIJI                                     ','*' 
     DO PUNIBIL WITH '263','                ','  1.Osnovna zarada po akciji                             ','*' 
     DO PUNIBIL WITH '264','                ','  2.Umanjena (razvodnjena) zarada po akciji              ','*' 



ENDIF
POP KEY
ENDPROC

procedure punibil
   PARAMETERS MAOP,mkonto,mopis,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace kontA with Mkonto
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc

*------------PRERACUNAVANJE BILANSA----------------
PROCEDURE BILRAC
PUSH KEY CLEAR

      SELECT BILSEMA
      SET ORDER TO 1
      GO TOP
      *-----------AKTIVA---------------
      SEEK '004'
      NP004=PRETH
      NP004P=PLAN
      NN004=PLANKV
      NR004=REALKV

      SEEK '005'
      NP005=PRETH
      NP005P=PLAN
      NN005=PLANKV
      NR005=REALKV
      
      SEEK '006'
      NP006=PRETH
      NP006P=PLAN
      NN006=PLANKV
      NR006=REALKV

      SEEK '007'
      NP007=PRETH
      NP007P=PLAN
      NN007=PLANKV
      NR007=REALKV
      
      SEEK '008'
      NP008=PRETH
      NP008P=PLAN
      NN008=PLANKV
      NR008=REALKV

      SEEK '009'
      NP009=PRETH
      NP009P=PLAN
      NN009=PLANKV
      NR009=REALKV

      SEEK '010'
      NP010=PRETH
      NP010P=PLAN
      NN010=PLANKV
      NR010=REALKV

      SEEK '012'
      NP012=PRETH
      NP012P=PLAN
      NN012=PLANKV
      NR012=REALKV

      SEEK '013'
      NP013=PRETH
      NP013P=PLAN
      NN013=PLANKV
      NR013=REALKV

      SEEK '014'
      NP014=PRETH
      NP014P=PLAN
      NN014=PLANKV
      NR014=REALKV

      SEEK '015'
      NP015=PRETH
      NP015P=PLAN
      NN015=PLANKV
      NR015=REALKV

      SEEK '016'
      NP016=PRETH
      NP016P=PLAN
      NN016=PLANKV
      NR016=REALKV

      SEEK '017'
      NP017=PRETH
      NP017P=PLAN
      NN017=PLANKV
      NR017=REALKV

      SEEK '018'
      NP018=PRETH
      NP018P=PLAN
      NN018=PLANKV
      NR018=REALKV

      SEEK '019'
      NP019=PRETH
      NP019P=PLAN
      NN019=PLANKV
      NR019=REALKV

      SEEK '020'
      NP020=PRETH
      NP020P=PLAN
      NN020=PLANKV
      NR020=REALKV

      SEEK '022'
      NP022=PRETH
      NP022P=PLAN
      NN022=PLANKV
      NR022=REALKV

      SEEK '023'
      NP023=PRETH
      NP023P=PLAN
      NN023=PLANKV
      NR023=REALKV

      SEEK '024'
      NP024=PRETH
      NP024P=PLAN
      NN024=PLANKV
      NR024=REALKV

      SEEK '025'
      NP025=PRETH
      NP025P=PLAN
      NN025=PLANKV
      NR025=REALKV

      SEEK '027'
      NP027=PRETH
      NP027P=PLAN
      NN027=PLANKV
      NR027=REALKV

      SEEK '028'
      NP028=PRETH
      NP028P=PLAN
      NN028=PLANKV
      NR028=REALKV

      SEEK '029'
      NP029=PRETH
      NP029P=PLAN
      NN029=PLANKV
      NR029=REALKV

      SEEK '030'
      NP030=PRETH
      NP030P=PLAN
      NN030=PLANKV
      NR030=REALKV

      SEEK '031'
      NP031=PRETH
      NP031P=PLAN
      NN031=PLANKV
      NR031=REALKV

      SEEK '032'
      NP032=PRETH
      NP032P=PLAN
      NN032=PLANKV
      NR032=REALKV

      SEEK '033'
      NP033=PRETH
      NP033P=PLAN
      NN033=PLANKV
      NR033=REALKV

      SEEK '034'
      NP034=PRETH
      NP034P=PLAN
      NN034=PLANKV
      NR034=REALKV

      SEEK '036'
      NP036=PRETH
      NP036P=PLAN
      NN036=PLANKV
      NR036=REALKV

      SEEK '037'
      NP037=PRETH
      NP037P=PLAN
      NN037=PLANKV
      NR037=REALKV

      SEEK '038'
      NP038=PRETH
      NP038P=PLAN
      NN038=PLANKV
      NR038=REALKV

      SEEK '039'
      NP039=PRETH
      NP039P=PLAN
      NN039=PLANKV
      NR039=REALKV

      SEEK '040'
      NP040=PRETH
      NP040P=PLAN
      NN040=PLANKV
      NR040=REALKV

      SEEK '041'
      NP041=PRETH
      NP041P=PLAN
      NN041=PLANKV
      NR041=REALKV

      SEEK '044'
      NP044=PRETH
      NP044P=PLAN
      NN044=PLANKV
      NR044=REALKV


      SEEK '045'
      NP045=PRETH
      NP045P=PLAN
      NN045=PLANKV
      NR045=REALKV
      
      SEEK '046'
      NP046=PRETH
      NP046P=PLAN
      NN046=PLANKV
      NR046=REALKV

      SEEK '047'
      NP047=PRETH
      NP047P=PLAN
      NN047=PLANKV
      NR047=REALKV

      SEEK '048'
      NP048=PRETH
      NP048P=PLAN
      NN048=PLANKV
      NR048=REALKV

      SEEK '049'
      NP049=PRETH
      NP049P=PLAN
      NN049=PLANKV
      NR049=REALKV
*---------------------------

      SEEK '051'
      NP051=PRETH
      NP051P=PLAN
      NN051=PLANKV
      NR051=REALKV

      SEEK '052'
      NP052=PRETH
      NP052P=PLAN
      NN052=PLANKV
      NR052=REALKV

      SEEK '053'
      NP053=PRETH
      NP053P=PLAN
      NN053=PLANKV
      NR053=REALKV

      SEEK '054'
      NP054=PRETH
      NP054P=PLAN
      NN054=PLANKV
      NR054=REALKV

      SEEK '055'
      NP055=PRETH
      NP055P=PLAN
      NN055=PLANKV
      NR055=REALKV

      SEEK '056'
      NP056=PRETH
      NP056P=PLAN
      NN056=PLANKV
      NR056=REALKV

      SEEK '057'
      NP057=PRETH
      NP057P=PLAN
      NN057=PLANKV
      NR057=REALKV

      SEEK '058'
      NP058=PRETH
      NP058P=PLAN
      NN058=PLANKV
      NR058=REALKV

      SEEK '059'
      NP059=PRETH
      NP059P=PLAN
      NN059=PLANKV
      NR059=REALKV

      SEEK '060'
      NP060=PRETH
      NP060P=PLAN
      NN060=PLANKV
      NR060=REALKV

      SEEK '061'
      NP061=PRETH
      NP061P=PLAN
      NN061=PLANKV
      NR061=REALKV

      SEEK '062'
      NP062=PRETH
      NP062P=PLAN
      NN062=PLANKV
      NR062=REALKV

      SEEK '063'
      NP063=PRETH
      NP063P=PLAN
      NN063=PLANKV
      NR063=REALKV

      SEEK '064'
      NP064=PRETH
      NP064P=PLAN
      NN064=PLANKV
      NR064=REALKV

      SEEK '065'
      NP065=PRETH
      NP065P=PLAN
      NN065=PLANKV
      NR065=REALKV

      SEEK '066'
      NP066=PRETH
      NP066P=PLAN
      NN066=PLANKV
      NR066=REALKV
*--------------------------------
      SEEK '068'
      NP068=PRETH
      NP068P=PLAN
      NN068=PLANKV
      NR068=REALKV
*--------------------------------
      SEEK '103'
      NP103=PRETH
      NP103P=PLAN
      NN103=PLANKV
      NR103=REALKV

      SEEK '104'
      NP104=PRETH
      NP104P=PLAN
      NN104=PLANKV
      NR104=REALKV

      SEEK '105'
      NP105=PRETH
      NP105P=PLAN
      NN105=PLANKV
      NR105=REALKV

      SEEK '106'
      NP106=PRETH
      NP106P=PLAN
      NN106=PLANKV
      NR106=REALKV

      SEEK '107'
      NP107=PRETH
      NP107P=PLAN
      NN107=PLANKV
      NR107=REALKV

      SEEK '108'
      NP108=PRETH
      NP108P=PLAN
      NN108=PLANKV
      NR108=REALKV

      SEEK '109'
      NP109=PRETH
      NP109P=PLAN
      NN109=PLANKV
      NR109=REALKV

      SEEK '110'
      NP110=PRETH
      NP110P=PLAN
      NN110=PLANKV
      NR110=REALKV

      SEEK '111'
      NP111=PRETH
      NP111P=PLAN
      NN111=PLANKV
      NR111=REALKV

      SEEK '112'
      NP112=PRETH
      NP112P=PLAN
      NN112=PLANKV
      NR112=REALKV

      SEEK '113'
      NP113=PRETH
      NP113P=PLAN
      NN113=PLANKV
      NR113=REALKV

      SEEK '114'
      NP114=PRETH
      NP114P=PLAN
      NN114=PLANKV
      NR114=REALKV

      SEEK '115'
      NP115=PRETH
      NP115P=PLAN
      NN115=PLANKV
      NR115=REALKV

      SEEK '116'
      NP116=PRETH
      NP116P=PLAN
      NN116=PLANKV
      NR116=REALKV
*---------------------------

      SEEK '118'
      NP118=PRETH
      NP118P=PLAN
      NN118=PLANKV
      NR118=REALKV

      SEEK '119'
      NP119=PRETH
      NP119P=PLAN
      NN119=PLANKV
      NR119=REALKV

      SEEK '120'
      NP120=PRETH
      NP120P=PLAN
      NN120=PLANKV
      NR120=REALKV

      SEEK '122'
      NP122=PRETH
      NP122P=PLAN
      NN122=PLANKV
      NR122=REALKV

      SEEK '123'
      NP123=PRETH
      NP123P=PLAN
      NN123=PLANKV
      NR123=REALKV
*---------------------------
      SEEK '126'
      NP126=PRETH
      NP126P=PLAN
      NN126=PLANKV
      NR126=REALKV

      SEEK '127'
      NP127=PRETH
      NP127P=PLAN
      NN127=PLANKV
      NR127=REALKV

      SEEK '128'
      NP128=PRETH
      NP128P=PLAN
      NN128=PLANKV
      NR128=REALKV

      SEEK '129'
      NP129=PRETH
      NP129P=PLAN
      NN129=PLANKV
      NR129=REALKV

      SEEK '130'
      NP130=PRETH
      NP130P=PLAN
      NN130=PLANKV
      NR130=REALKV

      SEEK '131'
      NP131=PRETH
      NP131P=PLAN
      NN131=PLANKV
      NR131=REALKV
*----------------------------
      SEEK '133'
      NP133=PRETH
      NP133P=PLAN
      NN133=PLANKV
      NR133=REALKV

      SEEK '134'
      NP134=PRETH
      NP134P=PLAN
      NN134=PLANKV
      NR134=REALKV

      SEEK '135'
      NP135=PRETH
      NP135P=PLAN
      NN135=PLANKV
      NR135=REALKV

      SEEK '136'
      NP136=PRETH
      NP136P=PLAN
      NN136=PLANKV
      NR136=REALKV

      SEEK '137'
      NP137=PRETH
      NP137P=PLAN
      NN137=PLANKV
      NR137=REALKV

      SEEK '138'
      NP138=PRETH
      NP138P=PLAN
      NN138=PLANKV
      NR138=REALKV
*------------------------
      SEEK '139'
      NP139=PRETH
      NP139P=PLAN
      NN139=PLANKV
      NR139=REALKV
*-----------------------
      SEEK '141'
      NP141=PRETH
      NP141P=PLAN
      NN141=PLANKV
      NR141=REALKV

      SEEK '142'
      NP142=PRETH
      NP142P=PLAN
      NN142=PLANKV
      NR142=REALKV

      SEEK '143'
      NP143=PRETH
      NP143P=PLAN
      NN143=PLANKV
      NR143=REALKV

      SEEK '144'
      NP144=PRETH
      NP144P=PLAN
      NN144=PLANKV
      NR144=REALKV

      SEEK '145'
      NP145=PRETH
      NP145P=PLAN
      NN145=PLANKV
      NR145=REALKV

      SEEK '146'
      NP146=PRETH
      NP146P=PLAN
      NN146=PLANKV
      NR146=REALKV

      SEEK '147'
      NP147=PRETH
      NP147P=PLAN
      NN147=PLANKV
      NR147=REALKV

      SEEK '148'
      NP148=PRETH
      NP148P=PLAN
      NN148=PLANKV
      NR148=REALKV

      SEEK '149'
      NP149=PRETH
      NP149P=PLAN
      NN149=PLANKV
      NR149=REALKV

      SEEK '150'
      NP150=PRETH
      NP150P=PLAN
      NN150=PLANKV
      NR150=REALKV

      SEEK '151'
      NP151=PRETH
      NP151P=PLAN
      NN151=PLANKV
      NR151=REALKV

      SEEK '152'
      NP152=PRETH
      NP152P=PLAN
      NN152=PLANKV
      NR152=REALKV

      SEEK '153'
      NP153=PRETH
      NP153P=PLAN
      NN153=PLANKV
      NR153=REALKV

      SEEK '154'
      NP154=PRETH
      NP154P=PLAN
      NN154=PLANKV
      NR154=REALKV
*-----------------------------
      SEEK '156'
      NP156=PRETH
      NP156P=PLAN
      NN156=PLANKV
      NR156=REALKV
*-----------------------------
      SEEK '203'
      NP203=PRETH
      NP203P=PLAN
      NN203=PLANKV
      NR203=REALKV

      SEEK '204'
      NP204=PRETH
      NP204P=PLAN
      NN204=PLANKV
      NR204=REALKV

      SEEK '205'
      NP205=PRETH
      NP205P=PLAN
      NN205=PLANKV
      NR205=REALKV

      SEEK '206'
      NP206=PRETH
      NP206P=PLAN
      NN206=PLANKV
      NR206=REALKV

      SEEK '207'
      NP207=PRETH
      NP207P=PLAN
      NN207=PLANKV
      NR207=REALKV

      SEEK '208'
      NP208=PRETH
      NP208P=PLAN
      NN208=PLANKV
      NR208=REALKV
*-----------------------------
      SEEK '210'
      NP210=PRETH
      NP210P=PLAN
      NN210=PLANKV
      NR210=REALKV

      SEEK '211'
      NP211=PRETH
      NP211P=PLAN
      NN211=PLANKV
      NR211=REALKV

      SEEK '212'
      NP212=PRETH
      NP212P=PLAN
      NN212=PLANKV
      NR212=REALKV

      SEEK '213'
      NP213=PRETH
      NP213P=PLAN
      NN213=PLANKV
      NR213=REALKV

      SEEK '214'
      NP214=PRETH
      NP214P=PLAN
      NN214=PLANKV
      NR214=REALKV

      SEEK '215'
      NP215=PRETH
      NP215P=PLAN
      NN215=PLANKV
      NR215=REALKV

      SEEK '216'
      NP216=PRETH
      NP216P=PLAN
      NN216=PLANKV
      NR216=REALKV

      SEEK '217'
      NP217=PRETH
      NP217P=PLAN
      NN217=PLANKV
      NR217=REALKV
*-------------------------
      SEEK '219'
      NP219=PRETH
      NP219P=PLAN
      NN219=PLANKV
      NR219=REALKV

      SEEK '220'
      NP220=PRETH
      NP220P=PLAN
      NN220=PLANKV
      NR220=REALKV

      SEEK '221'
      NP221=PRETH
      NP221P=PLAN
      NN221=PLANKV
      NR221=REALKV

      SEEK '222'
      NP222=PRETH
      NP222P=PLAN
      NN222=PLANKV
      NR222=REALKV

      SEEK '223'
      NP223=PRETH
      NP223P=PLAN
      NN223=PLANKV
      NR223=REALKV

      SEEK '224'
      NP224=PRETH
      NP224P=PLAN
      NN224=PLANKV
      NR224=REALKV

      SEEK '225'
      NP225=PRETH
      NP225P=PLAN
      NN225=PLANKV
      NR225=REALKV

      SEEK '226'
      NP226=PRETH
      NP226P=PLAN
      NN226=PLANKV
      NR226=REALKV

      SEEK '227'
      NP227=PRETH
      NP227P=PLAN
      NN227=PLANKV
      NR227=REALKV

      SEEK '228'
      NP228=PRETH
      NP228P=PLAN
      NN228=PLANKV
      NR228=REALKV

      SEEK '229'
      NP229=PRETH
      NP229P=PLAN
      NN229=PLANKV
      NR229=REALKV
*--------------------------
      SEEK '233'
      NP233=PRETH
      NP233P=PLAN
      NN233=PLANKV
      NR233=REALKV

      SEEK '234'
      NP234=PRETH
      NP234P=PLAN
      NN234=PLANKV
      NR234=REALKV

      SEEK '235'
      NP235=PRETH
      NP235P=PLAN
      NN235=PLANKV
      NR235=REALKV

      SEEK '236'
      NP236=PRETH
      NP236P=PLAN
      NN236=PLANKV
      NR236=REALKV

      SEEK '237'
      NP237=PRETH
      NP237P=PLAN
      NN237=PLANKV
      NR237=REALKV
*--------------------------
      SEEK '239'
      NP239=PRETH
      NP239P=PLAN
      NN239=PLANKV
      NR239=REALKV

      SEEK '240'
      NP240=PRETH
      NP240P=PLAN
      NN240=PLANKV
      NR240=REALKV

      SEEK '241'
      NP241=PRETH
      NP241P=PLAN
      NN241=PLANKV
      NR241=REALKV

      SEEK '242'
      NP242=PRETH
      NP242P=PLAN
      NN242=PLANKV
      NR242=REALKV

      SEEK '243'
      NP243=PRETH
      NP243P=PLAN
      NN243=PLANKV
      NR243=REALKV

      SEEK '244'
      NP244=PRETH
      NP244P=PLAN
      NN244=PLANKV
      NR244=REALKV
*-----------------------

      SEEK '246'
      NP246=PRETH
      NP246P=PLAN
      NN246=PLANKV
      NR246=REALKV

      SEEK '247'
      NP247=PRETH
      NP247P=PLAN
      NN247=PLANKV
      NR247=REALKV

      SEEK '248'
      NP248=PRETH
      NP248P=PLAN
      NN248=PLANKV
      NR248=REALKV
*------------------
      SEEK '249'
      NP249=PRETH
      NP249P=PLAN
      NN249=PLANKV
      NR249=REALKV
*-----------------
      SEEK '250'
      NP250=PRETH
      NP250P=PLAN
      NN250=PLANKV
      NR250=REALKV
*----------------------
      SEEK '253'
      NP253=PRETH
      NP253P=PLAN
      NN253=PLANKV
      NR253=REALKV
*-----------------------
      SEEK '254'
      NP254=PRETH
      NP254P=PLAN
      NN254=PLANKV
      NR254=REALKV
*----------------------
      SEEK '257'
      NP257=PRETH
      NP257P=PLAN
      NN257=PLANKV
      NR257=REALKV
*--------------------
      SEEK '258'
      NP258=PRETH
      NP258P=PLAN
      NN258=PLANKV
      NR258=REALKV
*-------------------
      SEEK '261'
      NP261=PRETH
      NP261P=PLAN
      NN261=PLANKV
      NR261=REALKV
*------------------
      SEEK '262'
      NP262=PRETH
      NP262P=PLAN
      NN262=PLANKV
      NR262=REALKV
*-----------------
      SEEK '263'
      NP263=PRETH
      NP263P=PLAN
      NN263=PLANKV
      NR263=REALKV
*-----------------
      SEEK '264'
      NP264=PRETH
      NP264P=PLAN
      NN264=PLANKV
      NR264=REALKV
*----------------
      SEEK '003'
      NP003=NP004+NP005+NP006+NP007+NP008+NP009+NP010
      NP003p=NP004p+NP005p+NP006p+NP007p+NP008p+NP009p+NP010p
      NN003=NN004+NN005+NN006+NN007+NN008+NN009+NN010      
      NR003=NR004+NR005+NR006+NR007+NR008+NR009+NR010      
      REPLACE PRETH WITH NP003
      REPLACE PLAN WITH NP003P      
      REPLACE PLANKV  WITH NN003
      REPLACE REALKV WITH NR003


      SEEK '011'
      NP011=NP012+NP013+NP014+NP015+NP016+NP017+NP018+NP019+NP020
      NP011p=NP012P+NP013P+NP014P+NP015P+NP016P+NP017P+NP018P+NP019P+NP020P
      NN011=NN012+NN013+NN014+NN015+NN016+NN017+NN018+NN019+NN020
      NR011=NR012+NR013+NR014+NR015+NR016+NR017+NR018+NR019+NR020
      REPLACE PRETH WITH NP011
      REPLACE PLAN WITH NP011P      
      REPLACE PLANKV  WITH NN011
      REPLACE REALKV WITH NR011
      SEEK '021'
      NP021=NP022+NP023+NP024+NP025
      NP021p=NP022P+NP023P+NP024P+NP025P
      NN021=NN022+NN023+NN024+NN025
      NR021=NR022+NR023+NR024+NR025      
      REPLACE PRETH WITH NP021
      REPLACE PLAN WITH NP021P      
      REPLACE PLANKV  WITH NN021
      REPLACE REALKV WITH NR021

      SEEK '026'
      NP026=NP027+NP028+NP029+NP030+NP031+NP032+NP033+NP034
      NP026p=NP027P+NP028P+NP029P+NP030P+NP031P+NP032P+NP033P+NP034P
      NN026=NN027+NN028+NN029+NN030+NN031+NN032+NN033+NN034
      NR026=NR027+NR028+NR029+NR030+NR031+NR032+NR033+NR034      
      REPLACE PRETH WITH NP026
      REPLACE PLAN WITH NP026P      
      REPLACE PLANKV  WITH NN026
      REPLACE REALKV WITH NR026

      SEEK '035'
      NP035=NP036+NP037+NP038+NP039+NP040
      NP035p=NP036P+NP037P+NP038P+NP039P+NP040P
      NN035=NN036+NN037+NN038+NN039+NN040
      NR035=NR036+NR037+NR038+NR039+NR040      
      REPLACE PRETH WITH NP035
      REPLACE PLAN WITH NP035P      
      REPLACE PLANKV  WITH NN035
      REPLACE REALKV WITH NR035


      SEEK '043'
      NP043=NP044+NP045+NP046+NP047+NP048+NP049
      NP043p=NP044P+NP045P+NP046P+NP047P+NP048P+NP049P
      NN043=NN044+NN045+NN046+NN047+NN048+NN049
      NR043=NR044+NR045+NR046+NR047+NR048+NR049      
      REPLACE PRETH WITH NP043
      REPLACE PLAN WITH NP043P      
      REPLACE PLANKV  WITH NN043
      REPLACE REALKV WITH NR043

      SEEK '050'
      NP050=NP051+NP052+NP053+NP054+NP055+NP056+NP057+NP058+NP059+NP060+NP061+NP062+NP063+NP064+NP065+NP066
      NP050p=NP051P+NP052P+NP053P+NP054P+NP055P+NP056P+NP057P+NP058P+NP059P+NP060P+NP061P+NP062P+NP063P+NP064P+NP065P+NP066P
      NN050=NN051+NN052+NN053+NN054+NN055+NN056+NN057+NN058+NN059+NN060+NN061+NN062+NN063+NN064+NN065+NN066
      NR050=NR051+NR052+NR053+NR054+NR055+NR056+NR057+NR058+NR059+NR060+NR061+NR062+NR063+NR064+NR065+NR066      
      REPLACE PRETH WITH NP050
      REPLACE PLAN WITH NP050P      
      REPLACE PLANKV  WITH NN050
      REPLACE REALKV WITH NR050

*      SEEK '042'
*      NP042=NP043+NP050
*      NP042p=NP043P+NP050P
*      NN042=NN043+NN050
*      REPLACE PRETH WITH NP042
*      REPLACE PLAN WITH NP042P      
*      REPLACE PLANKV  WITH NN042


      SEEK '102'
      NP102=NP103+NP104+NP105+NP106+NP107+NP108+NP109+NP110
      NP102p=NP103P+NP104P+NP105P+NP106P+NP107P+NP108P+NP109P+NP110P
      NN102=NN103+NN104+NN105+NN106+NN107+NN108+NN109+NN110
      NR102=NR103+NR104+NR105+NR106+NR107+NR108+NR109+NR110      
      REPLACE PRETH WITH NP102
      REPLACE PLAN WITH NP102P      
      REPLACE PLANKV  WITH NN102
      REPLACE REALKV WITH NR102

      SEEK '117'
      NP117=NP118+NP119
      NP117p=NP118P+NP119P
      NN117=NN118+NN119
      NR117=NR118+NR119
      REPLACE PRETH WITH NP117
      REPLACE PLAN WITH NP117P      
      REPLACE PLANKV  WITH NN117
      REPLACE REALKV WITH NR117

      SEEK '121'
      NP121=NP122+NP123
      NP121p=NP122P+NP123P
      NN121=NN122+NN123
      NR121=NR122+NR123      
      REPLACE PRETH WITH NP121
      REPLACE PLAN WITH NP121P      
      REPLACE PLANKV  WITH NN121
      REPLACE REALKV WITH NR121

      SEEK '125'
      NP125=NP126+NP127+NP128+NP129+NP130+NP131
      NP125p=NP126P+NP127P+NP128P+NP129P+NP130P+NP131P
      NN125=NN126+NN127+NN128+NN129+NN130+NN131
      NR125=NR126+NR127+NR128+NR129+NR130+NR131      
      REPLACE PRETH WITH NP125
      REPLACE PLAN WITH NP125P      
      REPLACE PLANKV  WITH NN125
      REPLACE REALKV WITH NR125

      SEEK '132'
      NP132=NP133+NP134+NP135+NP136+NP137+NP138
      NP132p=NP133P+NP134P+NP135P+NP136P+NP137P+NP138P
      NN132=NN133+NN134+NN135+NN136+NN137+NN138
      NR132=NR133+NR134+NR135+NR136+NR137+NR138
      REPLACE PRETH WITH NP132
      REPLACE PLAN WITH NP132P      
      REPLACE PLANKV  WITH NN132
      REPLACE REALKV WITH NR132

      SEEK '140'
      NP140=NP141+NP142+NP143+NP144+NP145+NP146+NP147+NP148+NP149+NP150+NP151+NP152+NP153+NP154
      NP140p=NP141P+NP142P+NP143P+NP144P+NP145P+NP146P+NP147P+NP148P+NP149P+NP150P+NP151P+NP152P+NP153P+NP154P
      NN140=NN141+NN142+NN143+NN144+NN145+NN146+NN147+NN148+NN149+NN150+NN151+NN152+NN153+NN154
      NR140=NR141+NR142+NR143+NR144+NR145+NR146+NR147+NR148+NR149+NR150+NR151+NR152+NR153+NR154      
      REPLACE PRETH WITH NP140
      REPLACE PLAN WITH NP140P      
      REPLACE PLANKV  WITH NN140
      REPLACE REALKV WITH NR140

      SEEK '002'
      NP002=NP003+NP011+NP021+NP026+NP035
      NP002p=NP003P+NP011P+NP021P+NP026P+NP035P
      NN002=NN003+NN011+NN021+NN026+NN035
      NR002=NR003+NR011+NR021+NR026+NR035      
      REPLACE PRETH WITH NP002
      REPLACE PLAN WITH NP002P      
      REPLACE PLANKV  WITH NN002
      REPLACE REALKV WITH NR002

      SEEK '042'
      NP042=NP043+NP050
      NP042p=NP043P+NP050P
      NN042=NN043+NN050
      NR042=NR043+NR050      
      REPLACE PRETH WITH NP042
      REPLACE PLAN WITH NP042P      
      REPLACE PLANKV  WITH NN042
      REPLACE REALKV WITH NR042

      SEEK '067'
      NP067=NP002+NP041+NP042
      NP067p=NP002P+NP041P+NP042P
      NN067=NN002+NN041+NN042
      NR067=NR002+NR041+NR042      
      REPLACE PRETH WITH NP067
      REPLACE PLAN WITH NP067P      
      REPLACE PLANKV  WITH NN067
      REPLACE REALKV WITH NR067
      SEEK '124'
      NP124=NP125+NP132
      NP124p=NP125P+NP132P
      NN124=NN125+NN132
      NR124=NR125+NR132
      REPLACE PRETH WITH NP124
      REPLACE PLAN WITH NP124P      
      REPLACE PLANKV  WITH NN124
      REPLACE REALKV WITH NR124

      SEEK '101'
      NP101=NP102+NP111+NP112+NP113+NP114-NP115+NP116+NP119-NP120-NP123
      NP101p=NP102P+NP111P+NP112P+NP113P+NP114P-NP115P+NP116P+NP119P-NP120P-NP123P
      NN101=NN102+NN111+NN112+NN113+NN114-NN115+NN116+NN119-NN120-NN123
      NR101=NR102+NR111+NR112+NR113+NR114-NR115+NR116+NR119-NR120-NR123
      REPLACE PRETH WITH NP101
      REPLACE PLAN WITH NP101P      
      REPLACE PLANKV  WITH NN101
      REPLACE REALKV WITH NR101
      SEEK '155'
      NP155=NP101+NP124+NP139+NP140
      NP155p=NP101P+NP124P+NP139P+NP140P
      NN155=NN101+NN124+NN139+NN140
      NR155=NR101+NR124+NR139+NR140
      REPLACE PRETH WITH NP155
      REPLACE PLAN WITH NP155P      
      REPLACE PLANKV  WITH NN155
      REPLACE REALKV WITH NR155

      *BILANS USPEHA
      
      SEEK '202'
      NP202=NP203+NP204+NP205+NP206+NP207+NP208
      NP202P=NP203P+NP204P+NP205P+NP206P+NP207P+NP208P
      NN202=NN203+NN204+NN205+NN206+NN207+NN208
      NR202=NR203+NR204+NR205+NR206+NR207+NR208      
      REPLACE PRETH WITH NP202
      REPLACE PLANKV  WITH NN202
      REPLACE PLAN WITH NP202P
      REPLACE REALKV  WITH NR202

      SEEK '209'
      NP209=NP210+NP211+NP212+NP213+NP214+NP215
      NP209P=NP210P+NP211P+NP212P+NP213P+NP214P+NP215P      
      NN209=NN210+NN211+NN212+NN213+NN214+NN215
      NR209=NR210+NR211+NR212+NR213+NR214+NR215      
      REPLACE PRETH WITH NP209
      REPLACE PLANKV  WITH NN209
      REPLACE PLAN WITH NP209P
      REPLACE REALKV  WITH NR209

      SEEK '218'
      NP218=NP219-NP220-NP221-NP222+NP223+NP224+NP225+NP226+NP227+NP228+NP229
      NP218P=NP219P-NP220P-NP221P-NP222P+NP223P+NP224P+NP225P+NP226P+NP227P+NP228P+NP229P
      NN218=NN219-NN220-NN221-NN222+NN223+NN224+NN225+NN226+NN227+NN228+NN229
      NR218=NR219-NR220-NR221-NR222+NR223+NR224+NR225+NR226+NR227+NR228+NR229
      REPLACE PRETH WITH NP218
      REPLACE PLANKV  WITH NN218
      REPLACE PLAN WITH NP218P
      REPLACE REALKV  WITH NR218

      SEEK '232'
      NP232=NP233+NP234+NP235+NP236+NP237
      NP232P=NP233P+NP234P+NP235P+NP236P+NP237P
      NN232=NN233+NN234+NN235+NN236+NN237
      NR232=NR233+NR234+NR235+NR236+NR237
      REPLACE PRETH WITH NP232
      REPLACE PLANKV  WITH NN232
      REPLACE PLAN WITH NP232P
      REPLACE REALKV  WITH NR232

      SEEK '238'
      NP238=NP239+NP240+NP241+NP242+NP243+NP244
      NP238P=NP239P+NP240P+NP241P+NP242P+NP243P+NP244P
      NN238=NN239+NN240+NN241+NN242+NN243+NN244
      NR238=NR239+NR240+NR241+NR242+NR243+NR244
      REPLACE PRETH WITH NP238
      REPLACE PLANKV  WITH NN238
      REPLACE PLAN WITH NP238P
      REPLACE REALKV  WITH NR238
*---------------------------
      SEEK '245'
      NP245=NP232-NP238
      NP245P=NP232P-NP238P
      NN245=NN232-NN238
      NR245=NR232-NR238      
      REPLACE PRETH WITH NP245
      REPLACE PLANKV  WITH NN245
      REPLACE PLAN WITH NP245P
      REPLACE REALKV  WITH NR245
*--------------------------
      SEEK '248'
      NP248=NP246-NP247
      NP248P=NP246P-NP247P
      NN248=NN246-NN247
      NR248=NR246-NR247      
      REPLACE PRETH WITH NP248
      REPLACE PLANKV  WITH NN248
      REPLACE PLAN WITH NP247P
      REPLACE REALKV  WITH NR247
*----------------------------------

      SEEK '201'
      NP201=NP202+NP209+NP216+NP217
      NP201P=NP202P+NP209P+NP216P+NP217P
      NN201=NN202+NN209+NN216+NN217
      NR201=NR202+NR209+NR216+NR217
      REPLACE PRETH WITH NP201
      REPLACE PLANKV  WITH NN201
      REPLACE PLAN WITH NP201P
      REPLACE REALKV  WITH NR201
      IF NP201<0
         REPLACE PRETH WITH 0
         NP201=0
      ENDIF   
      IF NN201<0
         REPLACE PLANKV WITH 0
         NN201=0
      ENDIF   
      IF NP201P<0
         REPLACE PLAN WITH 0
         NP201P=0
      ENDIF   
      IF NR201<0
         REPLACE REALKV WITH 0
         NR201=0
      ENDIF   
*-------------
      SEEK '218'
      NP218=NP219-NP220-NP221-NP222+NP223+NP224+NP225+NP226+NP227+NP228+NP229
      NP218P=NP219P-NP220P-NP221P-NP222P+NP223P+NP224P+NP225P+NP226P+NP227P+NP228P+NP229P
      NN218=NN219-NN220-NN221-NN222+NN223+NN224+NN225+NN226+NN227+NN228+NN229
      NR218=NR219-NR220-NR221-NR222+NR223+NR224+NR225+NR226+NR227+NR228+NR229      
      REPLACE PRETH WITH NP218
      REPLACE PLANKV  WITH NN218
      REPLACE PLAN WITH NP218P
      REPLACE REALKV  WITH NR218
      IF NP218<0
         REPLACE PRETH WITH 0
         NP218=0
      ENDIF   
      IF NN218<0
         REPLACE PLANKV WITH 0
         NN218=0
      ENDIF   
      IF NP218P<0
         REPLACE PLAN WITH 0
         NP218P=0
      ENDIF   
      IF NR218<0
         REPLACE REALKV WITH 0
         NR218=0
      ENDIF   

      SEEK '230'
      NP230=NP201-NP218
      NP230P=NP201P-NP218P
      NN230=NN201-NN218
      NR230=NR201-NR218
      REPLACE PRETH WITH NP230
      REPLACE PLANKV  WITH NN230
      REPLACE PLAN WITH NP230P
      REPLACE REALKV  WITH NR230
      IF NP230<0
         REPLACE PRETH WITH 0
         NP230=0
      ENDIF   
      IF NN230<0
         REPLACE PLANKV WITH 0
         NN230=0
      ENDIF   
      IF NP230P<0
         REPLACE PLAN WITH 0
         NP230P=0
      ENDIF   
      IF NR230<0
         REPLACE REALKV WITH 0
         NR230=0
      ENDIF   

      SEEK '231'
      NP231=NP218-NP201
      NP231P=NP218P-NP201P
      NN231=NN218-NN201
      NR231=NR218-NR201
      REPLACE PRETH WITH NP231
      REPLACE PLANKV  WITH NN231
      REPLACE PLAN WITH NP231P
      REPLACE REALKV  WITH NR231
      IF NP231<0
         REPLACE PRETH WITH 0
         NP231=0
      ENDIF   
      IF NN231<0
         REPLACE PLANKV WITH 0
         NN231=0
      ENDIF   
      IF NP231P<0
         REPLACE PLAN WITH 0
         NP231P=0
      ENDIF   
      IF NR231<0
         REPLACE REALKV WITH 0
         NR231=0
      ENDIF   
*--------------------------
      SEEK '251'
      NP251=NP230-NP231+NP232-NP238+NP249-NP250
      NP251P=NP230P-NP231P+NP232P-NP238P+NP249P-NP250P
      NN251=NN230-NN231+NN232-NN238+NN249-NN250
      NR251=NR230-NR231+NR232-NR238+NR249-NR250      
      REPLACE PRETH WITH NP251
      REPLACE PLANKV  WITH NN251
      REPLACE PLAN WITH NP251P
      REPLACE REALKV  WITH NR251
      IF NP251<0
         REPLACE PRETH WITH 0
         NP251=0
      ENDIF   
      IF NN251<0
         REPLACE PLANKV WITH 0
         NN251=0
      ENDIF   
      IF NP251P<0
         REPLACE PLAN WITH 0
         NP251P=0
      ENDIF   
      IF NR251<0
         REPLACE REALKV WITH 0
         NR251=0
      ENDIF   
*--------------------------
      SEEK '252'
      NP252=NP231-NP230-NP232+NP238-NP249+NP250
      NP252P=NP231P-NP230P-NP232P+NP238P-NP249P+NP250P
      NN252=NN231-NN230-NN232+NN238-NN249+NN250
      NR252=NR231-NR230-NR232+NR238-NR249+NR250      
      REPLACE PRETH WITH NP252
      REPLACE PLANKV  WITH NN252
      REPLACE PLAN WITH NP252P
      REPLACE REALKV  WITH NR252
      IF NP252<0
         REPLACE PRETH WITH 0
         NP252=0
      ENDIF   
      IF NN252<0
         REPLACE PLANKV WITH 0
         NN252=0
      ENDIF   
      IF NP252P<0
         REPLACE PLAN WITH 0
         NP252P=0
      ENDIF   
      IF NR252<0
         REPLACE REALKV WITH 0
         NR252=0
      ENDIF   
*--------------------------------
      SEEK '255'
      NP255=NP251-NP252+NP253-NP254
      NP255P=NP251P-NP252P+NP253P-NP254P
      NN255=NN251-NN252+NN253-NN254
      NR255=NR251-NR252+NR253-NR254      
      REPLACE PRETH WITH NP255
      REPLACE PLANKV  WITH NN255
      REPLACE PLAN WITH NP254P
      REPLACE REALKV  WITH NR254
      IF NP255<0
         REPLACE PRETH WITH 0
         NP255=0
      ENDIF   
      IF NN255<0
         REPLACE PLANKV WITH 0
         NN255=0
      ENDIF   
      IF NP255P<0
         REPLACE PLAN WITH 0
         NP255P=0
      ENDIF   
      IF NR255<0
         REPLACE REALKV WITH 0
         NR255=0
      ENDIF   
*-------------------------------
      SEEK '256'
      NP256=NP252-NP251+NP254-NP253
      NP256P=NP252P-NP251P+NP254P-NP253P
      NN256=NN252-NN251+NN254-NN253
      NR256=NR252-NR251+NR254-NR253      
      REPLACE PRETH WITH NP256
      REPLACE PLANKV  WITH NN256
      REPLACE PLAN WITH NP256P
      REPLACE REALKV  WITH NR256
      IF NP256<0
         REPLACE PRETH WITH 0
         NP256=0
      ENDIF   
      IF NN256<0
         REPLACE PLANKV WITH 0
         NN256=0
      ENDIF   
      IF NP256P<0
         REPLACE PLAN WITH 0
         NP256P=0
      ENDIF   
      IF NR256<0
         REPLACE REALKV WITH 0
         NR256=0
      ENDIF   
*-----------------------------
      SEEK '259'
      NP259=NP255-NP256-NP257-NP258
      NP259P=NP255P-NP256P-NP257P-NP258P
      NN259=NN255-NN256-NN257-NN258
      NR259=NR255-NR256-NR257-NR258      
      REPLACE PRETH WITH NP259
      REPLACE PLANKV  WITH NN259
      REPLACE PLAN WITH NP259P
      REPLACE REALKV  WITH NR259
      IF NP259<0
         REPLACE PRETH WITH 0
         NP259=0
      ENDIF   
      IF NN259<0
         REPLACE PLANKV WITH 0
         NN259=0
      ENDIF   
      IF NP259P<0
         REPLACE PLAN WITH 0
         NP259P=0
      ENDIF   
      IF NR259<0
         REPLACE REALKV WITH 0
         NR259=0
      ENDIF   
*-----------------------------
      SEEK '260'
      NP260=NP256-NP255+NP257+NP258
      NP260P=NP256P-NP255P+NP257P+NP258P
      NN260=NN256-NN255+NN257+NN258
      NR260=NR256-NR255+NR257+NR258
      REPLACE PRETH WITH NP260
      REPLACE PLANKV  WITH NN260
      REPLACE PLAN WITH NP260P
      REPLACE REALKV  WITH NR260
      IF NP260<0
         REPLACE PRETH WITH 0
         NP260=0
      ENDIF   
      IF NN260<0
         REPLACE PLANKV WITH 0
         NN260=0
      ENDIF   
      IF NP260P<0
         REPLACE PLAN WITH 0
         NP260P=0
      ENDIF   
      IF NR260<0
         REPLACE REALKV WITH 0
         NR260=0
      ENDIF   

GO top
DO while.not.eof()
   IF plan<>0
      replace indeks WITH ROUND(realkv*100/plan ,2)
   ELSE
      replace indeks with  0
   ENDIF
   SKIP
enddo        



POP KEY
ENDPROC



PROCEDURE BILPRE
PARAMETERS MDDAT0,MDDAT1,MCIFRE,MPRE,MDATUKLJ
   PUSH KEY CLEAR

   SET EXACT OFF
         SELECT BILSEMA
          SET ORDER TO 1
      DO idel WITH (kkockax)   
      DO idel WITH (kkockax2) 
      SET DEFAULT TO &MDATA02  
      USE NOVAPUT IN 0
      SELECT NOVAPUT
      MPUT=ALLTRIM(PUTANJA)+'\'
      USE
      Mnal=MPUT+'NAL'+'.DBF'      
         USE &MNAL IN 0 ORDER 1 ALIAS NAL
         SELECT NAL 
         IF MPRE='N'
            TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK=MDDAT0
            TOTAL ON KONTO TO &KKOCKA2 FIELDS DUG,POT FOR DATDOK>=MDDAT0.AND.DATDOK<=MDDAT1
         ELSE
            IF MDATUKLJ='D'
               TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK<=MDDAT0
               TOTAL ON KONTO TO &KKOCKA2 FIELDS DUG,POT FOR DATDOK<=MDDAT1
            ELSE
               TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK<MDDAT0
               TOTAL ON KONTO TO &KKOCKA2 FIELDS DUG,POT FOR DATDOK<=MDDAT1
            ENDIF
         ENDIF   
         SELECT NAL
         USE
         SET DEFAULT TO &MDATA02K
         USE &KKOCKA2 IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP
         
         MK001=0
         MK003=0
         MK004=0
         MK005=0
         MK006=0
         MK007=0
         MK008=0
         MK009=0
         MK010=0
         MK012=0
         MK013=0
         MK014=0
         MK015=0
         MK016=0
         MK017=0
         MK018=0
         MK019=0
         MK020=0
         MK022=0
         MK023=0
         MK024=0
         MK025=0     
         MK026=0    
         MK027=0         
         MK028=0         
         MK029=0         
         MK030=0         
         MK031=0         
         MK032=0         
         MK033=0                                             
         MK034=0                           
         MK036=0                           
         MK037=0                           
         MK038=0                           
         MK039=0                                                      
         MK040=0                                                      
         MK041=0                                                      
         MK044=0
         MK045=0
         MK046=0
         MK047=0
         MK048=0
         MK049=0
         MK051=0
         MK052=0
         MK053=0
         MK054=0
         MK055=0
         MK056=0
         MK057=0
         MK058=0
         MK059=0
         MK060=0
         MK061=0
         MK062=0
         MK061=0
         MK064=0
         MK065=0
         MK066=0
         MK067=0
         MK068=0
         MK069=0
         MK070=0         
         MK071=0
         MK072=0
         MK073=0
         MK074=0
         MK075=0
         MK076=0
         MK077=0
         MK078=0
         MK079=0
         MK080=0
         MK081=0
         MK082=0
         MK083=0
         MK084=0
         MK085=0
         MK086=0
         MK087=0
         MK088=0
         MK089=0
         MK090=0
         MK091=0
         MK092=0
         MK093=0                                                                                 
         MK094=0         
         MK095=0         
         MK096=0         
         MK097=0         
         MK098=0         
         MK099=0         
         MK0100=0
         MK0101=0
         MK0102=0
         MK0103=0
         MK0104=0
         MK0105=0
         MK0106=0
         MK0107=0
         MK0108=0
         MK0109=0
         MK0110=0
         MK0111=0
         MK0112=0         
         MK0113=0
         MK0114=0
         MK0115=0
         MK0116=0
         MK0118=0
         MK0119=0
         MK0122=0
         MK0123=0         
         MK0126=0         
         MK0127=0         
         MK0128=0         
         MK0129=0         
         MK0130=0         
         MK0131=0         
         MK0132=0         
         MK0133=0         
         MK0134=0         
         MK0135=0         
         MK0136=0         
         MK0137=0         
         MK0138=0         
         MK0139=0         
         MK0140=0         
         MK0141=0         
         MK0142=0         
         MK0143=0         
         MK0144=0         
         MK0145=0         
         MK0146=0         
         MK0147=0         
         MK0148=0         
         MK0149=0         
         MK0150=0         
         MK0151=0         
         MK0152=0         
         MK0153=0         
         MK0154=0         
         MK0155=0         
         MK0156=0         

         
         MK203=0
         MK204=0
         MK205=0
         MK206=0
         MK207=0         
         MK208=0
         MK209=0
         MK210=0
         MK211=0
         MK212=0
         MK113=0         
         MK214=0         
         MK215=0
         MK216=0
         MK217=0
         MK219=0
         MK220=0         
         MK221=0
         MK222=0
         MK223=0
         MK224=0                  
         MK225=0
         MK226=0
         MK227=0
         MK228=0
         MK229=0
         
         MK233=0
         MK234=0
         MK235=0
         MK236=0
         MK237=0

         MK239=0
         MK240=0
         MK241=0
         MK242=0
         MK243=0
         MK244=0                                    

         MK246=0
         MK247=0

         MK249=0
         MK250=0

         MK253=0
         MK254=0

         MK001=PUNIZN01('00')
         MK004=PUNIZN02('010')
         
         MK005=PUNIZN02('011')
         MK005=MK005+PUNIZN02('012')
         
         MK006=PUNIZN02('013')
         MK007=PUNIZN02('014')
         MK008=PUNIZN02('015')
         MK009=PUNIZN02('016')
         MK010=PUNIZN02('019')
                           
         MK012=PUNIZN02('020')
         MK012=MK012+PUNIZN02('021')

         MK013=PUNIZN02('022')
         MK014=PUNIZN02('023')
         MK015=PUNIZN02('024')
         MK016=PUNIZN02('025')
         MK017=PUNIZN02('026')
         MK018=PUNIZN02('027')
         MK019=PUNIZN02('028')
         MK020=PUNIZN02('029')
                                                      
         MK022=PUNIZN02('030')
         MK022=MK022+PUNIZN02('031')

         MK023=PUNIZN02('032')
         MK024=PUNIZN02('037')
         MK025=PUNIZN02('038')
                  
         MK027=PUNIZN02('040')
         MK028=PUNIZN02('041')         
         MK029=PUNIZN02('042')         
         MK030=PUNIZN02('043')         
         MK031=PUNIZN02('044')         
         MK032=PUNIZN02('045')         
         MK033=PUNIZN02('046')         
         MK034=PUNIZN02('048')         

         MK036=PUNIZN02('050')
         MK036=MK036+PUNIZN02('051')

         MK037=PUNIZN02('052')
         MK037=MK037+PUNIZN02('053')

         MK038=PUNIZN02('054')
         MK039=PUNIZN02('055')
         MK040=PUNIZN02('056')
         MK041=PUNIZN02('298')


         MK044=PUNIZN01('10')
         MK045=PUNIZN01('11')
         MK046=PUNIZN01('12')
         MK047=PUNIZN01('13')
         MK048=PUNIZN01('14')
         MK049=PUNIZN01('15')

         MK051=PUNIZN02('200')
         MK052=PUNIZN02('201')
         MK053=PUNIZN02('202')
         MK054=PUNIZN02('203')
         MK055=PUNIZN02('204')
         MK056=PUNIZN02('205')
         MK057=PUNIZN02('206')
         MK058=PUNIZN02('209')

         MK059=PUNIZN01('21')
         MK060=PUNIZN01('22')

         MK061=PUNIZN02('236')

         MK062=PUNIZN01('23')
         MK062=MK062-PUNIZN02('236')
         MK062=MK062-PUNIZN02('237')

         MK063=PUNIZN01('24')
         MK064=PUNIZN01('27')

         MK065=PUNIZN02('290')

         MK066=PUNIZN01('29')
         MK066=MK066-PUNIZN02('290')
         MK066=MK066-PUNIZN02('298')

         MK068=PUNIZN01('88')

         MK103=PUNIZN04('300')
         MK104=PUNIZN04('301')
         MK105=PUNIZN04('302')
         MK106=PUNIZN04('303')
         MK107=PUNIZN04('304')
         MK108=PUNIZN04('305')
         MK109=PUNIZN04('306')
         MK110=PUNIZN04('309')
         MK111=PUNIZN03('31')

         MK112=PUNIZN04('047')
         MK112=MK112+PUNIZN04('237')

         MK113=PUNIZN03('32')

         MK114=PUNIZN04('330')

         MK115=PUNIZN03('33')
         MK115=MK115-PUNIZN04('330')

         MK116=PUNIZN03('33')
         MK116=MK116-PUNIZN04('330')

         MK118=PUNIZN04('340')
         MK119=PUNIZN04('341')

         MK122=PUNIZN04('350')
         MK123=PUNIZN04('351')
                              
         MK126=PUNIZN04('400')
         MK127=PUNIZN04('401')
         MK128=PUNIZN04('403')
         MK129=PUNIZN04('404')
         MK130=PUNIZN04('405')
                                    
         MK131=PUNIZN04('402')
         MK131=MK131+PUNIZN04('409')         

         MK133=PUNIZN04('410')
         MK134=PUNIZN04('411')
         MK135=PUNIZN04('412')
         MK136=PUNIZN04('413')

         MK137=PUNIZN04('414')
         MK137=MK137+PUNIZN04('415')         

         MK138=PUNIZN04('416')
         MK138=MK138+PUNIZN04('419')         

         MK139=PUNIZN04('498')

         MK141=PUNIZN03('42')
         MK141=MK141-PUNIZN04('427')         

         MK142=PUNIZN04('427')
         MK143=PUNIZN04('430')
         MK144=PUNIZN04('431')
         MK145=PUNIZN04('432')
         MK146=PUNIZN04('433')
         MK147=PUNIZN02('434')
         MK148=PUNIZN04('435')
         MK149=PUNIZN04('436')
         MK150=PUNIZN04('439')                                                      
         
         MK151=PUNIZN03('44')
         MK151=MK151+PUNIZN03('45')         
         MK151=MK151+PUNIZN03('46')         

         MK152=PUNIZN03('47')
         MK153=PUNIZN03('48')         

         MK154=PUNIZN03('49')
         MK154=MK154-PUNIZN04('498')         

         MK156=PUNIZN03('89')


         MK203=PUNIZN04('600')
         MK204=PUNIZN04('601')
         MK205=PUNIZN04('602')
         MK206=PUNIZN04('603')
         MK207=PUNIZN04('604')
         MK208=PUNIZN04('605')

         MK210=PUNIZN04('610')
         MK211=PUNIZN04('611')
         MK212=PUNIZN04('612')
         MK213=PUNIZN04('613')
         MK214=PUNIZN04('614')
         MK215=PUNIZN04('615')                  

         MK216=PUNIZN03('64')
         MK217=PUNIZN03('65')         
         
         MK219=PUNIZN01('50')                  
         MK220=PUNIZN03('62')
         
         MK221=PUNIZN04('630')
         MK222=PUNIZN04('631')         
         
         MK223=PUNIZN01('51')                           
         MK223=MK223-PUNIZN02('513')
         
         MK224=PUNIZN02('513')         
         
         MK225=PUNIZN01('52')
         MK226=PUNIZN01('53')
         MK227=PUNIZN02('540')                  
         
         MK228=PUNIZN02('541')
         MK228=MK228+PUNIZN02('542')
         MK228=MK228+PUNIZN02('543')         
         MK228=MK228+PUNIZN02('544')         
         MK228=MK228+PUNIZN02('545')         
         MK228=MK228+PUNIZN02('546')
         MK228=MK228+PUNIZN02('547')
         MK228=MK228+PUNIZN02('548')
         MK228=MK228+PUNIZN02('549')
                           
         MK229=PUNIZN01('55')

         MK233=PUNIZN04('660')
         MK233=MK233+PUNIZN04('661')

         MK234=PUNIZN04('662')                  

         MK235=PUNIZN04('663')
         MK235=MK235+PUNIZN04('664')

         MK236=PUNIZN04('665')                  
         MK237=PUNIZN04('669')                  
         
         MK239=PUNIZN02('560')
         MK240=PUNIZN02('561')
         MK241=PUNIZN02('562')

         MK242=PUNIZN02('563')
         MK242=MK242+PUNIZN02('564')

         MK243=PUNIZN02('565')

         MK244=PUNIZN02('566')
         MK244=MK244+PUNIZN02('569')

         MK246=PUNIZN04('683')
         MK246=MK246+PUNIZN04('685')

         MK247=PUNIZN02('583')
         MK247=MK247+PUNIZN02('585')

         MK249=PUNIZN03('67')
         MK249=MK249+PUNIZN03('68')
         MK249=MK249-PUNIZN04('683')
         MK249=MK249-PUNIZN04('685')


         MK250=PUNIZN01('57')
         MK250=MK250+PUNIZN01('58')
         MK250=MK250-PUNIZN02('583')
         MK250=MK250-PUNIZN02('585')


         MK253=PUNIZN03('69')
         MK253=MK253-PUNIZN01('59')

         MK254=PUNIZN01('59')
         MK254=MK254-PUNIZN03('69')


         
         MK257=PUNIZN07('721')
           
         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN05 WITH '001'
         DO PUNIZN05 WITH '003'
         DO PUNIZN05 WITH '004'
         DO PUNIZN05 WITH '005'
         DO PUNIZN05 WITH '006'
         DO PUNIZN05 WITH '007'
         DO PUNIZN05 WITH '008'
         DO PUNIZN05 WITH '009'
         DO PUNIZN05 WITH '010'
         DO PUNIZN05 WITH '012'
         DO PUNIZN05 WITH '013'
         DO PUNIZN05 WITH '014'
         DO PUNIZN05 WITH '015'
         DO PUNIZN05 WITH '016'
         DO PUNIZN05 WITH '017'
         DO PUNIZN05 WITH '018'
         DO PUNIZN05 WITH '019'
         DO PUNIZN05 WITH '020'
         DO PUNIZN05 WITH '022'
         DO PUNIZN05 WITH '023'
         DO PUNIZN05 WITH '024'
         DO PUNIZN05 WITH '025'
         DO PUNIZN05 WITH '027'
         DO PUNIZN05 WITH '028'
         DO PUNIZN05 WITH '029'
         DO PUNIZN05 WITH '030'
         DO PUNIZN05 WITH '031'
         DO PUNIZN05 WITH '032'
         DO PUNIZN05 WITH '033'
         DO PUNIZN05 WITH '034'
         DO PUNIZN05 WITH '036'
         DO PUNIZN05 WITH '037'
         DO PUNIZN05 WITH '038'
         DO PUNIZN05 WITH '039'
         DO PUNIZN05 WITH '040'
                  
         DO PUNIZN05 WITH '041'
         DO PUNIZN05 WITH '044'
         DO PUNIZN05 WITH '045'
         DO PUNIZN05 WITH '046'
         DO PUNIZN05 WITH '047'
         DO PUNIZN05 WITH '048'
         DO PUNIZN05 WITH '049'
         DO PUNIZN05 WITH '051'
         DO PUNIZN05 WITH '052'
         DO PUNIZN05 WITH '053'
         DO PUNIZN05 WITH '054'
         DO PUNIZN05 WITH '055'
         DO PUNIZN05 WITH '056'
         DO PUNIZN05 WITH '057'
         DO PUNIZN05 WITH '058'
         DO PUNIZN05 WITH '059'
         DO PUNIZN05 WITH '060'
         DO PUNIZN05 WITH '061'
         DO PUNIZN05 WITH '062'
         DO PUNIZN05 WITH '064'
         DO PUNIZN05 WITH '065'
         DO PUNIZN05 WITH '066'
         DO PUNIZN05 WITH '103'
         DO PUNIZN05 WITH '104'
         DO PUNIZN05 WITH '105'
         DO PUNIZN05 WITH '106'
         DO PUNIZN05 WITH '107'
         DO PUNIZN05 WITH '108'
         DO PUNIZN05 WITH '109'
         DO PUNIZN05 WITH '110'
         DO PUNIZN05 WITH '111'
         DO PUNIZN05 WITH '112'
         DO PUNIZN05 WITH '113'
         DO PUNIZN05 WITH '114'
         DO PUNIZN05 WITH '115'
         DO PUNIZN05 WITH '116'
         DO PUNIZN05 WITH '118'
         DO PUNIZN05 WITH '119'
         DO PUNIZN05 WITH '122'
         DO PUNIZN05 WITH '123'
         DO PUNIZN05 WITH '126'
         DO PUNIZN05 WITH '127'
         DO PUNIZN05 WITH '128'
         DO PUNIZN05 WITH '129'
         DO PUNIZN05 WITH '130'
         DO PUNIZN05 WITH '131'
         DO PUNIZN05 WITH '133'
         DO PUNIZN05 WITH '134'
         DO PUNIZN05 WITH '135'
         DO PUNIZN05 WITH '136'
         DO PUNIZN05 WITH '137'
         DO PUNIZN05 WITH '138'
         DO PUNIZN05 WITH '139'
         DO PUNIZN05 WITH '141'
         DO PUNIZN05 WITH '142'
         DO PUNIZN05 WITH '143'
         DO PUNIZN05 WITH '144'
         DO PUNIZN05 WITH '145'
         DO PUNIZN05 WITH '146'
         DO PUNIZN05 WITH '147'
         DO PUNIZN05 WITH '148'
         DO PUNIZN05 WITH '149'
         DO PUNIZN05 WITH '150'
         DO PUNIZN05 WITH '151'
         DO PUNIZN05 WITH '152'
         DO PUNIZN05 WITH '153'
         DO PUNIZN05 WITH '154'
         DO PUNIZN05 WITH '156'
         DO PUNIZN05 WITH '203'
         DO PUNIZN05 WITH '204'
         DO PUNIZN05 WITH '205'
         DO PUNIZN05 WITH '206'
         DO PUNIZN05 WITH '207'
         DO PUNIZN05 WITH '208'
         DO PUNIZN05 WITH '209'
         DO PUNIZN05 WITH '210'
         DO PUNIZN05 WITH '211'
         DO PUNIZN05 WITH '212'
         DO PUNIZN05 WITH '213'
         DO PUNIZN05 WITH '214'
         DO PUNIZN05 WITH '215'
         DO PUNIZN05 WITH '216'
         DO PUNIZN05 WITH '217'
         DO PUNIZN05 WITH '219'
         DO PUNIZN05 WITH '220'
         DO PUNIZN05 WITH '221'
         DO PUNIZN05 WITH '222'
         DO PUNIZN05 WITH '223'
         DO PUNIZN05 WITH '224'
         DO PUNIZN05 WITH '225'
         DO PUNIZN05 WITH '226'
         DO PUNIZN05 WITH '227'
         DO PUNIZN05 WITH '228'
         DO PUNIZN05 WITH '229'
         DO PUNIZN05 WITH '233'
         DO PUNIZN05 WITH '234'
         DO PUNIZN05 WITH '235'
         DO PUNIZN05 WITH '236'
         DO PUNIZN05 WITH '237'
         DO PUNIZN05 WITH '239'
         DO PUNIZN05 WITH '240'
         DO PUNIZN05 WITH '241'
         DO PUNIZN05 WITH '242'
         DO PUNIZN05 WITH '243'
         DO PUNIZN05 WITH '244'
         DO PUNIZN05 WITH '246'
         DO PUNIZN05 WITH '247'
         DO PUNIZN05 WITH '249'
         DO PUNIZN05 WITH '250'
         DO PUNIZN05 WITH '253'
         DO PUNIZN05 WITH '254'
POP KEY         
ENDPROC

FUNCTION PUNIZN01(AKON)
   PUSH KEY CLEAR
   SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,2)<>AKON
                  EXIT
               ENDIF
               MK=MK+DUG-POT
               SKIP
            ENDDO
         ENDIF
   POP KEY
RETURN(MK)
FUNCTION PUNIZN02(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,3)<>AKON
                  EXIT
               ENDIF
               MK=MK+DUG-POT
               SKIP
            ENDDO
         ENDIF
   POP KEY
RETURN(MK)
   
FUNCTION PUNIZN03(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,2)<>AKON
                  EXIT
               ENDIF
               MK=MK+POT-DUG
               SKIP
            ENDDO
         ENDIF
    POP KEY
RETURN(MK)

FUNCTION PUNIZN04(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,3)<>AKON
                  EXIT
               ENDIF
               MK=MK+POT-DUG
               SKIP
            ENDDO
         ENDIF
   POP KEY
RETURN(MK)
PROCEDURE PUNIZN05
   PARAMETERS AK
   PUSH KEY CLEAR
            MK='MK'+AK
            SELECT BILSEMA
            SEEK AK
            IF MCIFRE='H'
               MMK=ROUND(&MK/1000,0)
            ELSE
               MMK=ROUND(&MK,0)
            ENDIF
               REPLACE preth WITH MMK
   POP KEY
ENDPROC
FUNCTION PUNIZN07(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,3)<>AKON
                  EXIT
               ENDIF
               MK=MK+DUG
               SKIP
            ENDDO
         ENDIF
    POP KEY
 RETURN(MK)

