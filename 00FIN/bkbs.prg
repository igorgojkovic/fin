procedure BILPUNIn

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH 'S','   ','                ','  AKTIVA                                                  ',' ' 
     DO PUNIBIL WITH 'S','0001','       00       ','  A.UPISANI A NEUPLAÆENI KAPITAL                         ','*' 
     DO PUNIBIL WITH 'S','0002','                ','  B.STALNA IMOVINA(0003+0010+0019+0024+0034)             ','*' 
     DO PUNIBIL WITH 'S','0003','       01       ','I.NEMATERIJALNA IMOVINA                                  ','*'      
     DO PUNIBIL WITH ' ','    ','                ','  (0004+0005+0006+0007+0008+0009)                        ','*'      
     DO PUNIBIL WITH ' ','0004','  010 i deo 019 ','  1.Ulaganja u razvoj                                    ','*' 
     DO PUNIBIL WITH ' ','0005','   011 i 012    ','  2.Koncesije,patenti,licence,robne i uslužne marke,     ',' ' 
     DO PUNIBIL WITH ' ','    ',' i deo 019      ','    softver i ostala prava                               ','*'      
     DO PUNIBIL WITH ' ','0006',' 013 i deo 019  ','  3.Gudvil                                               ','*' 
     DO PUNIBIL WITH ' ','0007',' 014 i deo 019  ','  4.Ostala nematerijalna imovina                         ','*'      
     DO PUNIBIL WITH ' ','0008',' 015 i deo 019  ','  5.Nematerijalna imovina u pripremi                     ','*'           
     DO PUNIBIL WITH ' ','0009',' 016 i deo 019  ','  6.Avansi za nematerijalnu imovinu                      ','*'           
     DO PUNIBIL WITH 'S','0010','        02      ','II.NEKRETNINE, POSTROJENJA I OPREMA                      ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    (0011+0012+0013+0014+0015+0016+0017+0018)            ','*' 
     DO PUNIBIL WITH ' ','0011','020,021i deo 029','  1.Zemljište                                            ','*' 
     DO PUNIBIL WITH ' ','0012','022 i deo 029   ','  2.Gradjevinski objekti                                 ','*' 
     DO PUNIBIL WITH ' ','0013','023 i deo 029   ','  3.Postrojenja i oprema                                 ','*' 
     DO PUNIBIL WITH ' ','0014','024 i deo 029   ','  4.Investicione nekretnine                              ','*' 
     DO PUNIBIL WITH ' ','0015','025 i deo 029   ','  5.Ostale nekretnine,potrojenja i oprema                ','*' 
     DO PUNIBIL WITH ' ','0016','026 i deo 029   ','  6.Nekretnine,potrojenja i oprema u pripremi            ','*' 
     DO PUNIBIL WITH ' ','0017','027 i deo 029   ','  7.Ulaganja na tuðim nekretninama,postrojenjima i opremi','*' 
     DO PUNIBIL WITH ' ','0018','028 i deo 029   ','  8.Avansi za nekretnine,postrojenja i opremu            ','*'           
     DO PUNIBIL WITH 'S','0019','        03      ','III.BIOLOŠKA SREDSTVA                                    ','*' 
     DO PUNIBIL WITH ' ','    ','                ','    (0020+0021+0022+0023)                                ','*' 
     
     DO PUNIBIL WITH ' ','0020','030,031i deo 039','  1.Šume i višegodišnji zasadi                           ','*' 
     DO PUNIBIL WITH ' ','0021','032 i deo 039   ','  2.Osnovno stado                                        ','*' 
     DO PUNIBIL WITH ' ','0022','037 i deo 039   ','  3.Biološka sredstva u pripremi                         ','*' 
     DO PUNIBIL WITH ' ','0023','038 i deo 039   ','  4.Avansi za biološka sredstva                          ','*' 
     DO PUNIBIL WITH 'S','0024',' 04 osim 047    ','IV.DUGOROÈNI FINANSIJSKI PLASMANI                        ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    (0025+0026+0027+0028+0029+0030+0031+0032+0033        ','*' 
     DO PUNIBIL WITH ' ','0025','040 i deo  049  ','  1.Uèešæa u kapitalu zavisnih pravnih lica              ','*' 
     DO PUNIBIL WITH ' ','0026','041 i deo 049   ','  2.Uèešæa u kapitalu pridruženih pravnih lica u         ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    zajednièkim poduhvatima                              ','*'        
     DO PUNIBIL WITH ' ','0027','042 i deo 049   ','  3.Uèešæa u kapitalu ostalih pravnih lica i druge harti-',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    je od vrednosti raspoložive za prodaju               ','*'        
     DO PUNIBIL WITH ' ','0028','deo 043 deo 044 ','  4.Dugoroèni plasmani matiènim i zavisnim               ',' ' 
     DO PUNIBIL WITH ' ','    ',' i deo 049      ','    pravnim licima                                       ','*'             
     DO PUNIBIL WITH ' ','0029','deo 043 deo 044 ','  5.Dugoroèni plasmani ostalim povezanim pravnim         ',' ' 
     DO PUNIBIL WITH ' ','    ',' i deo 049      ','    licima                                               ','*'             
     DO PUNIBIL WITH ' ','0030','deo 045i deo 049','  6.Dugoroèni plasmani u zemlji                          ','*'      
     DO PUNIBIL WITH ' ','0031','deo 045i deo 049','  7.Dugoroèni plasmani u inostranstvu                    ','*'      
     DO PUNIBIL WITH ' ','0032','046 i deo 049   ','  8.Hartije od vrednosti koje se drže do dospeæa         ','*' 
     DO PUNIBIL WITH ' ','0033','048 i deo 049   ','  9.Ostali dugoroèni finansijski plasmani                ','*'           
     DO PUNIBIL WITH 'S','0034','      05        ','  V.DUGOROÈNA POTRAŽIVANJA                               ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    (0035+0036+0037+0038+0039+0040+0041)                 ','*' 
     
     DO PUNIBIL WITH ' ','0035','050 i deo 059   ','  1.Potraživanja od matiènog i zavisnih pravnih lica     ','*' 
     DO PUNIBIL WITH ' ','0036','051 i deo 059   ','  2.Potraživanja od ostalih povezanih lica               ','*' 
     DO PUNIBIL WITH ' ','0037','052 i deo 059   ','  3.Potraživanja po osnovu prodaje na robni kredit       ','*' 
     DO PUNIBIL WITH ' ','0038','053 i deo 059   ','  4.Potraživanja za prodaju  po ugovorima o              ',' '      
     DO PUNIBIL WITH ' ','    ','                ','    finansijskom lizingu                                 ','*'        
     DO PUNIBIL WITH ' ','0039','054 i deo 059   ','  5.Potraživanja po osnovu jemstva                       ','*' 
     DO PUNIBIL WITH ' ','0040','055 i deo 059   ','  6.Sporna i sumnjiva potraživanja                       ','*' 
     DO PUNIBIL WITH ' ','0041','056 i deo 059   ','  7.Ostala dugoroèna potraživanja                        ','*' 

     DO PUNIBIL WITH 'S','0042','       288      ','  V.ODLOŽENA PORESKA SREDSTVA                            ','*' 

     DO PUNIBIL WITH 'S','0043','                ','  G.OBRTNA IMOVINA(0044+0051+0059+0060+0061+0062+        ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','   0068+0069+0070)                                       ','*' 


     DO PUNIBIL WITH 'S','0044','    Klasa 1     ','  I.ZALIHE                                               ','*' 
     DO PUNIBIL WITH ' ','    ','                ','           (0045+0046+0047+0048+0049+0050                ','*' 

     DO PUNIBIL WITH ' ','0045','        10      ','  1.Materijal,rezervni delovi,alat i sitan inventar      ','*' 
     DO PUNIBIL WITH ' ','0046','        11      ','  2.Nedovršena proizvodnja i nedovršene usluge           ','*' 
     DO PUNIBIL WITH ' ','0047','        12      ','  3.Gotovi proizvodi                                     ','*' 
     DO PUNIBIL WITH ' ','0048','        13      ','  4.Roba                                                 ','*'      
     DO PUNIBIL WITH ' ','0049','        14      ','  5.Stalna sredstva namenjena prodaji                    ','*'      
     DO PUNIBIL WITH ' ','0050','        15      ','  6.Plaæeni avansi za zalihe i usluge                    ','*' 
     
     DO PUNIBIL WITH 'S','0051','        20      ','  II.POTRAŽIVANJA PO OSNOVU PRODAJE                      ','*' 
     DO PUNIBIL WITH ' ','    ','                ','    (0052+0053+0054+0055+0056+0057+0058)                 ','*'
     DO PUNIBIL WITH ' ','0052','200  i deo 209  ','  1.Kupci u zemlji - matièna i zavisna pravna lica       ','*' 
     DO PUNIBIL WITH ' ','0053','201  i deo 209  ','  2.Kupci u inostranstvu - matièna i zavisna pravna lica ','*' 
     DO PUNIBIL WITH ' ','0054','202  i deo 209  ','  3.Kupci u zemlji - ostala povezana pravna lica         ','*' 
     DO PUNIBIL WITH ' ','0055','203  i deo 209  ','  4.Kupci u inostranstvu - ostala povezana pravna lica   ','*' 
     DO PUNIBIL WITH ' ','0056','204  i deo 209  ','  5.Kupci u zemlji                                       ','*' 
     DO PUNIBIL WITH ' ','0057','205  i deo 209  ','  6.Kupci u inostranstvu                                 ','*' 
     DO PUNIBIL WITH ' ','0058','206  i deo 209  ','  7.Ostala potraživanja po osnovu prodaje                ','*' 

     DO PUNIBIL WITH 'S','0059','        21      ','  III.POTRAŽIVANJA IZ SPECIFIÈNIH POSLOVA                ','*' 
     DO PUNIBIL WITH 'S','0060','        22      ','  IV. DRUGA POTRAŽIVANJA                                 ','*' 

     DO PUNIBIL WITH 'S','0061','       236      ','   V..FINANSIJSKA SREDSTVA KOJA SE VREDNUJU PO FER       ',' ' 
     DO PUNIBIL WITH 'S','   ','                 ','       VREDNOSTI KROZ BILANS USPEHA                       ','*' 

     DO PUNIBIL WITH 'S','0062','23osim236i237   ',' VI.KRATKOROÈNI FINANSIJSKI PLASMANI                     ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','   (0063+0064+0065+0066+0067)                            ','*' 

     DO PUNIBIL WITH ' ','0063','230  i deo 239  ','  1.Kratkoroèni krediti i plasmani - matièna i zavisna   ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    pravna lica                                          ','*' 

     DO PUNIBIL WITH ' ','0064','231  i deo 239  ','  2.Kratkoroèni krediti i plasmani - ostala povezana     ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    pravna lica                                          ','*' 

     DO PUNIBIL WITH ' ','0065','232  i deo 239  ','  3.Kratkoroèni krediti i zajmovi u zemlji               ','*' 

     DO PUNIBIL WITH ' ','0066','233  i deo 239  ','  4.Kratkoroèni krediti i zajmovi u inostranstvu         ','*' 

     DO PUNIBIL WITH ' ','0067','234,235,238     ','  5.Ostali kratkoroèni finansijski plasmani              ','*'      
     DO PUNIBIL WITH ' ','    ',' i deo 239      ','                                                         ','*' 
     DO PUNIBIL WITH 'S','0068','        24      ',' VII.GOTOVINSKI EKVIVALENTI I GOTOVINA                   ','*' 
     DO PUNIBIL WITH 'S','0069','        27      ',' VIII.POREZ NA DODATU VREDNOST                           ','*'      
     
     DO PUNIBIL WITH 'S','0070','28 osim 288      ','IX.AKTIVNA VREMENSKA RAZGRANIÈENJA                      ','*' 

     DO PUNIBIL WITH 'S','0071','                ','  D.UKUPNA AKTIVA=POSLOVNA IMOVINA (001+0002+0042+0043)  ','*' 
     DO PUNIBIL WITH 'S','0072','       88       ','  Ð.VANBILANSNA AKTIVA                                   ','*' 

     DO PUNIBIL WITH 'S','    ','                ','  PASIVA                                                 ','*' 
     DO PUNIBIL WITH 'S','0401','                ','  A.KAPITAL(0402+0411-0412+0413+0414+0415-0416+0417+0420 ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    -0421)>=0 = (0071-0424-0441-0442)                     ','*' 
     
     DO PUNIBIL WITH 'S','0402','        30      ','  I.OSNOVNI KAPITAL                                      ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','    (0403+0404+0405+0406+0407+0408+0409+0410)            ','*'      
     
     DO PUNIBIL WITH ' ','0403','       300      ','  1.Akcijski kapital                                     ','*' 
     DO PUNIBIL WITH ' ','0404','       301      ','  2.Udeli društava sa ogranièenom odgovornošæu           ','*' 
     DO PUNIBIL WITH ' ','0405','       302      ','  3.Ulozi                                                ','*' 
     DO PUNIBIL WITH ' ','0406','       303      ','  4.Državni kapital                                      ','*' 
     DO PUNIBIL WITH ' ','0407','       304      ','  5.Društveni kapital                                    ','*' 
     DO PUNIBIL WITH ' ','0408','       305      ','  6.Zadružni udeli                                       ','*' 
     DO PUNIBIL WITH ' ','0409','       306      ','  7.Emisiona premija                                     ','*' 
     DO PUNIBIL WITH ' ','0410','       309      ','  8.Ostali osnovni kapital                               ','*'                

     DO PUNIBIL WITH 'S','0411','        31      ',' II.UPISANI A NEUPLAÆENI KAPITAL                         ','*' 
     DO PUNIBIL WITH 'S','0412','  047 i 237     ','III.OTKUPLJENE SOPSTVENE AKCIJE                          ','*' 
     
     DO PUNIBIL WITH 'S','0413','        32      ',' IV.REZERVE                                              ','*' 

     DO PUNIBIL WITH 'S','    ','                ','  V.REVALORIZACIONE REZERVE PO OSNOVU REVALORIZA-        ',' ' 
     DO PUNIBIL WITH 'S','0414','       330      ','    CIJE NEMATERIJALNE IMOVINE,NEKRETNINA,               ',' ' 
     DO PUNIBIL WITH 'S','   ','                ','    POSTROJENJA I OPREME  ','*' 

     DO PUNIBIL WITH 'S','    ','                ',' VI.NEREALIZOVANI DOBICI PO OSNOVU HARTIJA OD            ',' ' 
     DO PUNIBIL WITH 'S','0415','  33 osim 330   ','    VREDNOSTI I DRUGIH KOMPONENTI OSTALOG                ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    SVEOBUHVATNOG REZULTATA                              ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    (potražna salda raèuna grupe 33 osim 330 )           ','*' 

     DO PUNIBIL WITH 'S','    ','                ','VII.NEREALIZOVANI GUBICI PO OSNOVU HARTIJA OD            ',' ' 
     DO PUNIBIL WITH 'S','0416','  33 osim 330   ','    VREDNOSTI I DRUGIH KOMPONENTI OSTALOG                ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    SVEOBUHVATNOG REZULTATA                              ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    (dugovna salda raèuna grupe 33 osim 330 )            ','*' 

     DO PUNIBIL WITH 'S','0417','        34      ','VIII.NERASPOREÐENI DOBITAK (0418+0419)                   ','*' 
     DO PUNIBIL WITH ' ','0418','       340      ','   1.Nerasporeðeni dobitak ranijih godina                ','*' 
     DO PUNIBIL WITH ' ','0419','       341      ','   2.Nerasporeðeni dobitak tekuæe godine                 ','*' 

     DO PUNIBIL WITH 'S','0420','                ',' IX.UÈEŠÆE BEZ PRAVA KONTROLE                             ','*' 

     DO PUNIBIL WITH 'S','0421','        35      ','  X.GUBITAK(0422+0423)                                     ','*' 

     DO PUNIBIL WITH ' ','0422','       350      ','   1.Gubitak ranijih godina                              ','*' 
     DO PUNIBIL WITH ' ','0423','       351      ','   2.Gubitak tekuæe godine                               ','*' 


     DO PUNIBIL WITH 'S','0424','                ','  B.DUGOROÈNA REZERVISANJA I OBAVEZE (0425+0432)          ','*' 
     DO PUNIBIL WITH 'S','0425','        40      ','  I.DUGOROÈNA REZERVISANJA                                ',' '      
     DO PUNIBIL WITH ' ','    ','                ','    (0426+0427+0428+0429+0430+0431)                       ','*' 

     DO PUNIBIL WITH ' ','0426','       400      ','   1.Rezervisanja za troškove u garantnom roku           ','*' 
     DO PUNIBIL WITH ' ','0427','       401      ','   2.Rezervisanja za troškove obnavljanja                ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     prirodnih bogatstava                                ','*' 
     DO PUNIBIL WITH ' ','0428','       403      ','   3.Rezervisanja za troškove restruktuiranja            ','*' 
     DO PUNIBIL WITH ' ','0429','       404      ','   4.Rezervisanja za naknade i druge benefic.zaposlenih  ','*' 
     DO PUNIBIL WITH ' ','0430','       405      ','   5.Rezervisanja za troškove sudskih sporova            ','*' 
     DO PUNIBIL WITH ' ','0431','  402 i 409     ','   6.Ostala dugoroèna rezervisanja                       ','*' 
     DO PUNIBIL WITH 'S','0432','        41      ',' II.DUGOROÈNE OBAVEZE                                    ','*' 
     DO PUNIBIL WITH ' ','    ','                ','    (0433+0434+0435+0436+0437+0438+0439+0440)            ','*'      
     
     DO PUNIBIL WITH ' ','0433','       410      ','   1.Obaveze koje se mogu konvertovati u kapital         ','*' 
     DO PUNIBIL WITH ' ','0434','       411      ','   2.Obaveze prema matiènim i zavisnim pravnim licima    ','*' 
     DO PUNIBIL WITH ' ','0435','       412      ','   3.Obaveze prema ostalim povezanim pravnim licima      ','*' 
     DO PUNIBIL WITH ' ','0436','       413      ','   4.Obaveze po emitovanim hartijama od vrednosti        ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     u periodu dužem od godinu dana                      ','*'      


     DO PUNIBIL WITH ' ','0437','       414     ','   5.Dugoroèni krediti i zajmovi u zemlji                 ','*' 
     DO PUNIBIL WITH ' ','0438','       415     ','   6.Dugoroèni krediti i zajmovi u inostranstvu           ','*'      
     DO PUNIBIL WITH ' ','0439','       416     ','   7.Obaveze po osnovu finansijskog lizinga              ',' ' 
     DO PUNIBIL WITH ' ','0440','       419     ','   8.Ostale dugoroène obaveze                            ',' ' 

     DO PUNIBIL WITH 'S','0441','       498     ','  V.ODLOŽENE PORESKE OBAVEZE                             ','*' 

     DO PUNIBIL WITH 'S','0442','    42 DO 49    ','  G.KRATKOROÈNE OBAVEZE  (0443+0450+0451+0459+0460+0461  ',' ' 
     DO PUNIBIL WITH 'S','    ','   (osim 498)   ','    +0462)                                                ','*'

     DO PUNIBIL WITH 'S','0443','       42       ','   I.KRATKOROÈNE FINANSIJSKE OBAVEZE                       ',' '
     DO PUNIBIL WITH ' ','    ','                ','    (0444+0445+0446+0447+0448+0449)                        ','*'      
     DO PUNIBIL WITH ' ','0444','       420      ',' 1.Kratkoroèni krediti od matiènih i zavisnih pravnih lica ','*' 
     DO PUNIBIL WITH ' ','0445','       421      ',' 2.Kratkoroèni krediti od ostalih povezanih pravnih lica   ','*' 
     DO PUNIBIL WITH ' ','0446','       422      ',' 3.Kratkoroèni krediti i zajmovi u zemlji                  ','*' 
     DO PUNIBIL WITH ' ','0447','       423      ',' 4.Kratkoroèni krediti i zajmovi u inostranstvu            ','*' 
     DO PUNIBIL WITH ' ','0448','       427      ',' 5.Obaveze po osnovu stalnih sredstava i sredstava obu     ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','     stavljenog poslovanja namenjenih prodaji              ','*' 
     DO PUNIBIL WITH ' ','0449','424,425,426     ',' 6.Ostale kratkoroène finansijske obaveze                  ',' ' 
     DO PUNIBIL WITH ' ','    ',' i 429          ','                                                           ','*' 
     DO PUNIBIL WITH 'S','0450','       430      ','   II.PRIMLJENI AVANSI DEPOZITI I KAUCIJE                  ','*' 

     DO PUNIBIL WITH 'S','0451',' 43 osim 430    ','   III.OBAVEZE IZ POSLOVANJA                              ',' '      
     DO PUNIBIL WITH ' ','    ','                ','     (0452+0453+0454+0455+0456+0457+0458)                 ','*' 

     DO PUNIBIL WITH ' ','0452','       431      ','   1.Dobavljaèi-matièna i zavisna pravna lica u zemlji   ','*' 
     DO PUNIBIL WITH ' ','0453','       432      ','   2.Dobavljaèi-matièna i zavisna pravna lica u inostr. ','*' 
     DO PUNIBIL WITH ' ','0454','       433      ','   3.Dobavljaèi-ostala povezana pravna lica u zemlji     ','*' 
     DO PUNIBIL WITH ' ','0455','       434      ','   4.Dobavljaèi-ostala povezana pravna lica u inostr.    ','*' 
     DO PUNIBIL WITH ' ','0456','       435      ','   5.Dobavljaèi u zemlji                                 ','*' 
     DO PUNIBIL WITH ' ','0457','       436      ','   6.Dobavljaèi u inostranstvu                           ','*' 
     DO PUNIBIL WITH ' ','0458','       439      ','   7.Ostale obeveze iz poslovanja                        ','*' 
     DO PUNIBIL WITH 'S','0459','   44,45 i 46   ','    IV.OSTALE KRATKOROÈNE OBAVEZE                         ','*' 
     DO PUNIBIL WITH 'S','0460','        47      ','     V.OBAVEZE PO OSNOVU POREZA NA DODATU VREDNOST        ','*' 
     DO PUNIBIL WITH 'S','0461','        48      ','    VI.OBAVEZE ZA OSTALE POREZE,DOPR.I DRUGE DAŽB.        ','*' 
     DO PUNIBIL WITH 'S','0462','   49 osim 498  ','    VII.PASIVNA VREMENSKA RAZGRANIÈENJA                   ','*' 

     DO PUNIBIL WITH 'S','    ','                ','  D.GUBITAK IZNAD VISINE KAPITALA                        ',' ' 
     DO PUNIBIL WITH 'S','0463','                ','   (0412+0416+0421-0420-0417-0415-0414-0413-0411-0402)   ','*'
     DO PUNIBIL WITH 'S','    ','                ','   >=0=(0441+0424+0442-0071)>=0                          ','*'


     DO PUNIBIL WITH 'S','0464','                ','  Ð UKUPNA PASIVA(0424+0442+0441+0401-0463)>=0           ','*' 
     DO PUNIBIL WITH 'S','0465','      89        ','  D. VANBILANSNA PASIVA                                  ','*'



     
     DO PUNIBIL WITH 'S','    ','                ','    PRIHODI IZ REDOVNOG POSLOVANJA                       ','*' 
     DO PUNIBIL WITH 'S','1001','60 do 65        ','  A.POSLOVNI PRIHODI(1002+1009+1016+1017)                ',' ' 
     DO PUNIBIL WITH 'S','    ','osim 62 i 63    ','                                                         ','*' 
     DO PUNIBIL WITH 'S','1002','      60        ',' I.PRIHODI OD PRODAJE ROBE                               ','*' 
     DO PUNIBIL WITH 'S','    ','                ','                                                         ','*' 

     DO PUNIBIL WITH ' ','1003','       600      ','  1.Prihodi od prodaje robe matiènim i zavisnim pravnim ',' ' 
     DO PUNIBIL WITH ' ','   ','                 ','    licima na domaæem tržištu                           ','*'      

     DO PUNIBIL WITH ' ','1004','       601      ','  2.Prihodi od prodaje robe matiènim i zavisnim pravnim ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     licima na inostranom tržištu                        ','*'      
    
     DO PUNIBIL WITH ' ','1005','       602      ','  3.Prihodi od prodaje robe ostalim povezanim pravnim   ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     licima na domaæem tržištu                           ','*'      

     DO PUNIBIL WITH ' ','1006','       603      ','  4.Prihodi od prodaje robe ostalim povezanim pravnim   ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     licima na inostranom tržištu                        ','*'      
          
     DO PUNIBIL WITH ' ','1007','       604      ','  5.Prihodi od prodaje robe na domaæem tržištu          ','*'      
     
     DO PUNIBIL WITH ' ','1008','       605      ','  6.Prihodi od prodaje robe na inostranom tržištu       ','*'      
     
     DO PUNIBIL WITH 'S','1009','        61      ','II.PRIHODI OD PRODAJE PROIZVODA I USLUGA                ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','    (1010+1011+1012+1013+1014+1015)                            ','*'      
     
     DO PUNIBIL WITH ' ','1010','       610      ','   1.Prihodi od prodaje proizvoda i usluga  mati-',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     ènim i zavisnim pravnim licima na domaæem tržištu   ','*'      
     DO PUNIBIL WITH ' ','1011','       611      ','   2.Prihodi od prodaje proizvoda i usluga  mati-',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     ènim i zavisnim pravnim licima na inostranom tržištu','*'      
     DO PUNIBIL WITH ' ','1012','       612      ','   3.Prihodi od prodaje proizvoda i usluga  osta-',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     lim povezanim pravnim licima na domaæem tržištu     ','*'      
     DO PUNIBIL WITH ' ','1013','       613      ','   4.Prihodi od prodaje proizvoda i usluga  osta-',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     lim povezanim pravnim licima na inostranom tržištu  ','*'      
     DO PUNIBIL WITH ' ','1014','       614      ','   5.Prihodi od prodaje proizvoda i usluga       ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     na domaæem tržištu                                  ','*'      
     DO PUNIBIL WITH ' ','1015','       615      ','   6.Prihodi od prodaje gotovih proizvoda i usluga       ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','     na inostranom tržištu                               ','*'      
     DO PUNIBIL WITH 'S','1016','        64      ',' III.PRIHODI OD PREMIJA,SUBVENCIJA,DOTACIJA,DONACIJA I SL','*' 
     DO PUNIBIL WITH 'S','1017','        65      ',' IV.DRUGI POSLOVNI PRIHODI                               ','*' 

     DO PUNIBIL WITH 'S','    ','                ','    RASHODI IZ REDOVNOG POSLOVANJA                       ','*' 

     DO PUNIBIL WITH 'S','1018',' 50 do 55    ',' B.POSLOVNI RASHODI(1019-1020-1021+1022+1023+1024+1025+1026+',' ' 
     DO PUNIBIL WITH 'S','   ',' 62 i 63     ','    1027+1028+1029)>=0                                      ','*' 
     
     
     DO PUNIBIL WITH 'S','1019','        50      ','  I.NABAVNA VREDNOST PRODATE ROBE                        ','*' 
     DO PUNIBIL WITH 'S','1020','        62      ','  II.PRIHODI OD AKTIVIRANJA UÈINAKA I ROBE                ','*' 
     DO PUNIBIL WITH 'S','1021','       630      ','  III.POVEÆANJE VREDNOSTI ZALIHA NEDOVRŠENIH I GOTOVIH     ',' ' 
     DO PUNIBIL WITH 'S','   ','                ','    PROIZVODA I NEDOVRŠENIH USLUGA                       ','*' 
     DO PUNIBIL WITH 'S','1022','       631      ',' IV.SMANJENJE VREDNOSTI ZALIHA NEDOVRŠENIH I GOTOVIH     ',' ' 
     DO PUNIBIL WITH 'S','   ','                ','    PROIZVODA I NEDOVRŠENIH USLUGA                       ','*' 
     DO PUNIBIL WITH 'S','1023',' 51 OSIM 513    ','  V.TROŠKOVI MATERIJALA                                  ','*' 
     DO PUNIBIL WITH 'S','1024','       513      ','  VI.TROŠKOVI GORIVA I ENERGIJE                           ','*' 
     DO PUNIBIL WITH 'S','1025','        52      ','  VII.TROŠKOVI ZARADA,NAKNADA ZARADA I OSTALI LIÈNI RASHODI','*' 
     DO PUNIBIL WITH 'S','1026','        53      ','  VIII.TROŠKOVI PRIZVODNIH USLUGA                           ','*' 
     DO PUNIBIL WITH 'S','1027','       540      ','  IX.TROŠKOVI AMORTIZACIJE                                ','*' 
     DO PUNIBIL WITH 'S','1028','  541 DO 549    ',' X.TROŠKOVI DUGOROÈNIH REZERVISANJA                     ','*' 
     DO PUNIBIL WITH 'S','1029','        55      ',' XI.NEMATERIJALNI TROŠKOVI                               ','*' 
     
     DO PUNIBIL WITH 'S','1030','                ','  V.POSLOVNI DOBITAK(1001-1018)>=0                         ','*' 
     DO PUNIBIL WITH 'S','1031','                ','  G.POSLOVNI GUBITAK(1018-1001)>=0                         ','*' 
     
     
     DO PUNIBIL WITH 'S','1032','      66        ','   D.FINANSIJSKI PRIHODI (1033+1038+1039)                ','*' 

     DO PUNIBIL WITH 'S','1033','66 osim 662,663 ','  I.FINANSIJSKI PRIHODI OD POVEZANIH LICA I OSTALI        ','*' 
     DO PUNIBIL WITH 'S','    ','i 664           ','     FINANSIJSKI PRIHODI                                  ','*'      
     DO PUNIBIL WITH ' ','    ','                ','     (1034+1035+1036+1037)                                ','*'           
     DO PUNIBIL WITH ' ','1034','     660        ',' 1.Finansijski prihodi od matiènih i zavisnih pravnih lica','*' 
     DO PUNIBIL WITH ' ','1035','     661        ',' 2.Finansijski prihodi od ostalih povezanih pravnih lica  ','*'   
     DO PUNIBIL WITH ' ','1036','     665        ',' 3.Prihodi od uèešæa u dobitku pridruženih pravnih lica   ',' ' 
     DO PUNIBIL WITH ' ','    ','                ','   i zajednièkih poduhvata.                               ','*' 
     DO PUNIBIL WITH ' ','1037','     669        ',' 4.Ostali finansijski prihodi                             ','*' 
     DO PUNIBIL WITH 'S','1038','      662        ',' II.PRIHODI OD KAMATA (OD TREÆIH LICA)                    ','*' 
     DO PUNIBIL WITH 'S','1039','  663 I 664     ',' III.POZITIVNE KURSNE RAZLIKE I POZITIVNI EFEKTI          ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    VALUTNE KLAUZULE(PREMA TREÆIM LICIMA)                ','*' 
     
     DO PUNIBIL WITH 'S','1040','      56        ','  DJ.FINANSIJSKI RASHODI (1041+1046+1047)                ','*' 

     DO PUNIBIL WITH 'S','1041','56 osim 562,563 ','  I.FINANSIJSKI RASHODI IZ ODNOSA SA POVEZANIM PRAVNIM   ','*' 
     DO PUNIBIL WITH 'S','    ','i 564           ','    LICIMA I OSTALI FINANSIJSKI RASHODI                  ','*'      
     DO PUNIBIL WITH ' ','    ','                ','    (1042+1043+1044+1045)                                ','*'      
     DO PUNIBIL WITH ' ','1042','     560        ','  1.Finansijski rashodi iz odnosa sa matiènim i zavisnim ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','    pravnim licima                                       ','*' 
     DO PUNIBIL WITH ' ','1043','     561        ','  2.Finansijski rashodi iz odnosa sa ostalim povezanim   ',' ' 
     DO PUNIBIL WITH ' ','   ','                ','    pravnim licima                                       ','*' 

     DO PUNIBIL WITH ' ','1044','     565        ','  3.Rashodi od uèešæa u gubitku pridruženih pravnih lica ','*' 
     DO PUNIBIL WITH ' ','    ','                ','    i zajednièkih poduhvata                              ','*' 
     DO PUNIBIL WITH ' ','1045','  566 i 569     ','  4.Ostali finansijski rashodi                           ','*' 
     DO PUNIBIL WITH 'S','1046','     562        ','  II.RASHODI KAMATA (PREMA TREÆIM LICIMA)                ','*' 
     DO PUNIBIL WITH 'S','1047','  563 I 564     ','  III.NEGATIVNE KURSNE RAZLIKE I NEGATIVNI EFEKTI        ','*' 
     DO PUNIBIL WITH 'S','   ','                ','    VALUTNE KLAUZULE (PREMA TREÆIM LICIMA)                ','*' 

     DO PUNIBIL WITH 'S','1048','                ','  E.DOBITAK IZ FINANSIRANJA (1032-1040)                  ','*' 
     DO PUNIBIL WITH 'S','1049','                ','  Ž.GUBITAK IZ FINANSIRANJA (1040-1032)                  ','*' 

     DO PUNIBIL WITH 'S','    ','                ','  Z.PRIHODI OD USKLAÐIVANJA VREDNOSTI OSTALE             ',' ' 
     DO PUNIBIL WITH 'S','1050','  683 I 685     ','    IMOVINE KOJA SE ISKAZUJE PO FER VREDNOSTI            ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    KROZ BILANS USPEHA                                   ','*'      
     DO PUNIBIL WITH 'S','    ','                ','  I.RASHODI OD USKLAÐIVANJA VREDNOSTI OSTALE             ',' ' 
     DO PUNIBIL WITH 'S','1051','  583 i 585     ','    IMOVINE KOJA SE ISKAZUJE PO FER VREDNOSTI            ',' ' 
     DO PUNIBIL WITH 'S','    ','                ','    KROZ BILANS USPEHA                                   ','*' 
     DO PUNIBIL WITH 'S','1052','67i68osim683i685','  J.OSTALI PRIHODI                                      ','*' 
     DO PUNIBIL WITH 'S','1053','57i58osim583i585','  K.OSTALI RASHODI                                      ','*' 
     DO PUNIBIL WITH 'S','1054','                ','  L.DOBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA     ',' '      
     DO PUNIBIL WITH 'S','   ','                ','     (1030-1031+1048-1049+1050-1051+1052-1053)            ','*' 


     DO PUNIBIL WITH 'S','1055','                ','  LJ.GUBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA     ',' '      
     DO PUNIBIL WITH 'S','   ','                ','     (1031-1030+1049-1048+1051-1050+1053-1052)            ','*' 

     DO PUNIBIL WITH 'S','    ','                ','  M.NETO DOBITAK POSLOVANJA KOJE SE OBUSTAVLJA,          ',' '      
     DO PUNIBIL WITH 'S','1056','  69-59         ','      EFEKTI PROMENE RAÈUNOVODSTVENE POLITIKE            ',' '      
     DO PUNIBIL WITH 'S','    ','                ','      I ISPRAVKA GREŠAKA IZ RANIJIH PERIODA              ','*'      


     DO PUNIBIL WITH 'S','   ','                ','   N.NETO GUBITAK POSLOVANJA KOJE SE OBUSTAVLJA,        ',' '      
     DO PUNIBIL WITH 'S','1057','  59-69         ','      RASHODI PROMENE RAÈUNOVODSTVENE POLITIKE          ',' '      
     DO PUNIBIL WITH 'S','   ','                ','      I ISPRAVKA GREŠAKA IZ RANIJIH PERIODA              ','*'      
          
     DO PUNIBIL WITH 'S','1058','               ','   NJ.DOBITAK PRE OPOREZIVANJA (1054-1055+1056-1057)     ','*' 
     
     DO PUNIBIL WITH 'S','1059','                ','  O.GUBITAK PRE OPOREZIVANJA (1055-1054+1057-1056)      ','*' 
     
     
     DO PUNIBIL WITH 'S','    ','                ','  P.POREZ NA DOBITAK                                     ','*' 

     DO PUNIBIL WITH 'S','1060','       721      ','   I.PORESKI RASHOD PERIODA                              ','*' 
     DO PUNIBIL WITH 'S','1061','  DEO 722       ','   II.ODLOŽENI PORESKI RASHODI PERIODA                   ','*'      
     DO PUNIBIL WITH 'S','1062','  DEO 722       ','   III.ODLOŽENI PORESKI PRIHODI PERIODA                  ','*'           
     DO PUNIBIL WITH 'S','1063','      723       ','   R.ISPLAÆENA LIÈNA PRIMANJA POSLODAVCA                 ','*' 
     DO PUNIBIL WITH 'S','1064','                ','   S.NETO DOBITAK (1058-1059-1060-1061+1062-1063)        ','*' 
     DO PUNIBIL WITH 'S','1065','                ','   T.NETO GUBITAK (1059-1058+1060+1061-1062+1063)        ','*' 
     DO PUNIBIL WITH ' ','1066','                ','  I.NETO DOBITAK KOJI PRIPADA MANJINSKIM ULAGAÈIMA       ','*' 
     DO PUNIBIL WITH ' ','1067','                ','  II.NETO DOBITAK KOJI PRIPADA VEÆINSKOM VLASNIKU        ','*' 
     DO PUNIBIL WITH ' ','   ','                ','  III.ZARADA PO AKCIJI                                    ','*' 
     DO PUNIBIL WITH ' ','1068','                ','  1.Osnovna zarada po akciji                             ','*' 
     DO PUNIBIL WITH ' ','1069','                ','  2.Umanjena (razvodnjena) zarada po akciji              ','*' 


ENDIF
POP KEY
ENDPROC

procedure punibil
   PARAMETERS mskrac,MAOP,mkonto,mopis,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   replace skrac WITH mskrac
   REPLACE AOP WITH MAOP
   replace kontA with Mkonto
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc


*------------PRERACUNAVANJE BILANSA----------------
PROCEDURE BILRAC
PUSH KEY CLEAR

     replace ALL plankv WITH plan FOR RECNO()<=179
     replace ALL realkv WITH neto
      SELECT BILSEMA
      SET ORDER TO 1
      GO TOP
      *-----------AKTIVA---------------
      SEEK '0001'
      NP0001=PRETH
      NP0001P=PLAN
      NP0001PKV=PLANKV      
      NN0001=REALKV

      SEEK '0004'
      NP0004=PRETH
      NP0004P=PLAN
      NP0001PKV=PLANKV            
      NN0004=REALKV

      SEEK '0005'
      NP0005=PRETH
      NP0005P=PLAN
      NP0001PKV=PLANKV            
      NN0005=REALKV
      
      SEEK '0006'
      NP0006=PRETH
      NP0006P=PLAN
      NP0001PKV=PLANKV            
      NN0006=REALKV

      SEEK '0007'
      NP0007=PRETH
      NP0007P=PLAN
      NP0001PKV=PLANKV            
      NN0007=REALKV
      
      SEEK '0008'
      NP0008=PRETH
      NP0008P=PLAN
      NP0001PKV=PLANKV            
      NN0008=REALKV

      SEEK '0009'
      NP0009=PRETH
      NP0009P=PLAN
      NP0001PKV=PLANKV            
      NN0009=REALKV
**************************************
      SEEK '0011'
      NP0011=PRETH
      NP0011P=PLAN
      NP0001PKV=PLANKV            
      NN0011=REALKV

      SEEK '0012'
      NP0012=PRETH
      NP0012P=PLAN
      NP0001PKV=PLANKV            
      NN0012=REALKV

      SEEK '0013'
      NP0013=PRETH
      NP0013P=PLAN
      NP0001PKV=PLANKV            
      NN0013=REALKV

      SEEK '0014'
      NP0014=PRETH
      NP0014P=PLAN
      NP0001PKV=PLANKV            
      NN0014=REALKV

      SEEK '0015'
      NP0015=PRETH
      NP0015P=PLAN
      NP0001PKV=PLANKV            
      NN0015=REALKV

      SEEK '0016'
      NP0016=PRETH
      NP0016P=PLAN
      NP0001PKV=PLANKV            
      NN0016=REALKV

      SEEK '0017'
      NP0017=PRETH
      NP0017P=PLAN
      NP0001PKV=PLANKV            
      NN0017=REALKV

      SEEK '0018'
      NP0018=PRETH
      NP0018P=PLAN
      NP0001PKV=PLANKV            
      NN0018=REALKV
*****************************************************
      SEEK '0020'
      NP0020=PRETH
      NP0020P=PLAN
      NP0001PKV=PLANKV            
      NN0020=REALKV

      SEEK '0021'
      NP0021=PRETH
      NP0021P=PLAN
      NP0001PKV=PLANKV            
      NN0021=REALKV

      SEEK '0022'
      NP0022=PRETH
      NP0022P=PLAN
      NP0001PKV=PLANKV            
      NN0022=REALKV

      SEEK '0023'
      NP0023=PRETH
      NP0023P=PLAN
      NP0001PKV=PLANKV            
      NN0023=REALKV
***************************************************
      SEEK '0025'
      NP0025=PRETH
      NP0025P=PLAN
      NP0001PKV=PLANKV            
      NN0025=REALKV

      SEEK '0026'
      NP0026=PRETH
      NP0026P=PLAN
      NP0001PKV=PLANKV            
      NN0026=REALKV

      SEEK '0027'
      NP0027=PRETH
      NP0027P=PLAN
      NP0001PKV=PLANKV            
      NN0027=REALKV

      SEEK '0028'
      NP0028=PRETH
      NP0028P=PLAN
      NP0001PKV=PLANKV            
      NN0028=REALKV

      SEEK '0029'
      NP0029=PRETH
      NP0029P=PLAN
      NP0001PKV=PLANKV            
      NN0029=REALKV

      SEEK '0030'
      NP0030=PRETH
      NP0030P=PLAN
      NP0001PKV=PLANKV            
      NN0030=REALKV

      SEEK '0031'
      NP0031=PRETH
      NP0031P=PLAN
      NP0001PKV=PLANKV            
      NN0031=REALKV

      SEEK '0032'
      NP0032=PRETH
      NP0032P=PLAN
      NP0001PKV=PLANKV            
      NN0032=REALKV

      SEEK '0033'
      NP0033=PRETH
      NP0033P=PLAN
      NP0001PKV=PLANKV            
      NN0033=REALKV

***********************************************
      SEEK '0035'
      NP0035=PRETH
      NP0035P=PLAN
      NP0001PKV=PLANKV            
      NN0035=REALKV

      SEEK '0036'
      NP0036=PRETH
      NP0036P=PLAN
      NP0001PKV=PLANKV            
      NN0036=REALKV

      SEEK '0037'
      NP0037=PRETH
      NP0037P=PLAN
      NP0001PKV=PLANKV            
      NN0037=REALKV

      SEEK '0038'
      NP0038=PRETH
      NP0038P=PLAN
      NP0001PKV=PLANKV            
      NN0038=REALKV

      SEEK '0039'
      NP0039=PRETH
      NP0039P=PLAN
      NP0001PKV=PLANKV            
      NN0039=REALKV

      SEEK '0040'
      NP0040=PRETH
      NP0040P=PLAN
      NP0001PKV=PLANKV            
      NN0040=REALKV

      SEEK '0041'
      NP0041=PRETH
      NP0041P=PLAN
      NP0001PKV=PLANKV            
      NN0041=REALKV

      SEEK '0042'
      NP0042=PRETH
      NP0042P=PLAN
      NP0001PKV=PLANKV            
      NN0042=REALKV
*********************************

      SEEK '0045'
      NP0045=PRETH
      NP0045P=PLAN
      NP0001PKV=PLANKV            
      NN0045=REALKV

      SEEK '0046'
      NP0046=PRETH
      NP0046P=PLAN
      NP0001PKV=PLANKV            
      NN0046=REALKV

      SEEK '0047'
      NP0047=PRETH
      NP0047P=PLAN
      NP0001PKV=PLANKV            
      NN0047=REALKV

      SEEK '0048'
      NP0048=PRETH
      NP0048P=PLAN
      NP0001PKV=PLANKV            
      NN0048=REALKV

      SEEK '0049'
      NP0049=PRETH
      NP0049P=PLAN
      NP0001PKV=PLANKV            
      NN0049=REALKV

      SEEK '0050'
      NP0050=PRETH
      NP0050P=PLAN
      NP0001PKV=PLANKV            
      NN0050=REALKV


***************-------------
      SEEK '0052'
      NP0052=PRETH
      NP0052P=PLAN
      NP0001PKV=PLANKV            
      NN0052=REALKV

      SEEK '0053'
      NP0053=PRETH
      NP0053P=PLAN
      NP0001PKV=PLANKV            
      NN0053=REALKV

      SEEK '0054'
      NP0054=PRETH
      NP0054P=PLAN
      NP0001PKV=PLANKV            
      NN0054=REALKV

      SEEK '0055'
      NP0055=PRETH
      NP0055P=PLAN
      NP0001PKV=PLANKV            
      NN0055=REALKV

      SEEK '0056'
      NP0056=PRETH
      NP0056P=PLAN
      NP0001PKV=PLANKV            
      NN0056=REALKV

      SEEK '0057'
      NP0057=PRETH
      NP0057P=PLAN
      NP0001PKV=PLANKV            
      NN0057=REALKV

      SEEK '0058'
      NP0058=PRETH
      NP0058P=PLAN
      NP0001PKV=PLANKV            
      NN0058=REALKV

      SEEK '0059'
      NP0059=PRETH
      NP0059P=PLAN
      NP0001PKV=PLANKV            
      NN0059=REALKV

      SEEK '0060'
      NP0060=PRETH
      NP0060P=PLAN
      NP0001PKV=PLANKV            
      NN0060=REALKV

      SEEK '0061'
      NP0061=PRETH
      NP0061P=PLAN
      NP0001PKV=PLANKV            
      NN0061=REALKV
***************************************
      SEEK '0063'
      NP0063=PRETH
      NP0063P=PLAN
      NP0001PKV=PLANKV            
      NN0063=REALKV

      SEEK '0064'
      NP0064=PRETH
      NP0064P=PLAN
      NP0001PKV=PLANKV            
      NN0064=REALKV

      SEEK '0065'
      NP0065=PRETH
      NP0065P=PLAN
      NP0001PKV=PLANKV            
      NN0065=REALKV

      SEEK '0066'
      NP0066=PRETH
      NP0066P=PLAN
      NP0001PKV=PLANKV            
      NN0066=REALKV

      SEEK '0067'
      NP0067=PRETH
      NP0067P=PLAN
      NP0001PKV=PLANKV            
      NN0067=REALKV

      SEEK '0068'
      NP0068=PRETH
      NP0068P=PLAN
      NP0001PKV=PLANKV            
      NN0068=REALKV

      SEEK '0069'
      NP0069=PRETH
      NP0069P=PLAN
      NP0001PKV=PLANKV            
      NN0069=REALKV

      SEEK '0070'
      NP0070=PRETH
      NP0070P=PLAN
      NP0001PKV=PLANKV            
      NN0070=REALKV
*******************************
      SEEK '0072'
      NP0072=PRETH
      NP0072P=PLAN
      NP0001PKV=PLANKV            
      NN0072=REALKV
**PASIVA**************************
*--------------------------------
      SEEK '0403'
      NP0403=PRETH
      NP0403P=PLAN
      NP0001PKV=PLANKV            
      NN0403=REALKV

      SEEK '0404'
      NP0404=PRETH
      NP0404P=PLAN
      NP0001PKV=PLANKV            
      NN0404=REALKV

      SEEK '0405'
      NP0405=PRETH
      NP0405P=PLAN
      NP0001PKV=PLANKV            
      NN0405=REALKV

      SEEK '0406'
      NP0406=PRETH
      NP0406P=PLAN
      NP0001PKV=PLANKV            
      NN0406=REALKV

      SEEK '0407'
      NP0407=PRETH
      NP0407P=PLAN
      NP0001PKV=PLANKV            
      NN0407=REALKV

      SEEK '0408'
      NP0408=PRETH
      NP0408P=PLAN
      NP0001PKV=PLANKV            
      NN0408=REALKV

      SEEK '0409'
      NP0409=PRETH
      NP0409P=PLAN
      NP0001PKV=PLANKV            
      NN0409=REALKV

      SEEK '0410'
      NP0410=PRETH
      NP0410P=PLAN
      NP0001PKV=PLANKV            
      NN0410=REALKV

      SEEK '0411'
      NP0411=PRETH
      NP0411P=PLAN
      NP0001PKV=PLANKV            
      NN0411=REALKV

      SEEK '0412'
      NP0412=PRETH
      NP0412P=PLAN
      NP0001PKV=PLANKV            
      NN0412=REALKV

      SEEK '0413'
      NP0413=PRETH
      NP0413P=PLAN
      NP0001PKV=PLANKV            
      NN0413=REALKV

      SEEK '0414'
      NP0414=PRETH
      NP0414P=PLAN
      NP0001PKV=PLANKV            
      NN0414=REALKV

      SEEK '0415'
      NP0415=PRETH
      NP0415P=PLAN
      NP0001PKV=PLANKV            
      NN0415=REALKV

      SEEK '0416'
      NP0416=PRETH
      NP0416P=PLAN
      NP0001PKV=PLANKV            
      NN0416=REALKV
******************************************
      SEEK '0418'
      NP0418=PRETH
      NP0418P=PLAN
      NP0001PKV=PLANKV            
      NN0418=REALKV

      SEEK '0419'
      NP0419=PRETH
      NP0419P=PLAN
      NP0001PKV=PLANKV            
      NN0419=REALKV

      SEEK '0420'
      NP0420=PRETH
      NP0420P=PLAN
      NP0001PKV=PLANKV            
      NN0420=REALKV
*******************************************
      SEEK '0422'
      NP0422=PRETH
      NP0422P=PLAN
      NP0001PKV=PLANKV            
      NN0422=REALKV

      SEEK '0423'
      NP0423=PRETH
      NP0423P=PLAN
      NP0001PKV=PLANKV            
      NN0423=REALKV
****************************************
      SEEK '0426'
      NP0426=PRETH
      NP0426P=PLAN
      NP0001PKV=PLANKV            
      NN0426=REALKV

      SEEK '0427'
      NP0427=PRETH
      NP0427P=PLAN
      NP0001PKV=PLANKV            
      NN0427=REALKV

      SEEK '0428'
      NP0428=PRETH
      NP0428P=PLAN
      NP0001PKV=PLANKV            
      NN0428=REALKV

      SEEK '0429'
      NP0429=PRETH
      NP0429P=PLAN
      NP0001PKV=PLANKV            
      NN0429=REALKV

      SEEK '0430'
      NP0430=PRETH
      NP0430P=PLAN
      NP0001PKV=PLANKV            
      NN0430=REALKV

      SEEK '0431'
      NP0431=PRETH
      NP0431P=PLAN
      NP0001PKV=PLANKV            
      NN0431=REALKV
**************************************

      SEEK '0433'
      NP0433=PRETH
      NP0433P=PLAN
      NP0001PKV=PLANKV            
      NN0433=REALKV

      SEEK '0434'
      NP0434=PRETH
      NP0434P=PLAN
      NP0001PKV=PLANKV            
      NN0434=REALKV

      SEEK '0435'
      NP0435=PRETH
      NP0435P=PLAN
      NP0001PKV=PLANKV            
      NN0435=REALKV

      SEEK '0436'
      NP0436=PRETH
      NP0436P=PLAN
      NP0001PKV=PLANKV            
      NN0436=REALKV

      SEEK '0437'
      NP0437=PRETH
      NP0437P=PLAN
      NP0001PKV=PLANKV            
      NN0437=REALKV

      SEEK '0438'
      NP0438=PRETH
      NP0438P=PLAN
      NP0001PKV=PLANKV            
      NN0438=REALKV

      SEEK '0439'
      NP0439=PRETH
      NP0439P=PLAN
      NP0001PKV=PLANKV            
      NN0439=REALKV

      SEEK '0440'
      NP0440=PRETH
      NP0440P=PLAN
      NP0001PKV=PLANKV            
      NN0440=REALKV

      SEEK '0441'
      NP0441=PRETH
      NP0441P=PLAN
      NP0001PKV=PLANKV            
      NN0441=REALKV
***************************************

      SEEK '0444'
      NP0444=PRETH
      NP0444P=PLAN
      NP0001PKV=PLANKV            
      NN0444=REALKV

      SEEK '0445'
      NP0445=PRETH
      NP0445P=PLAN
      NP0001PKV=PLANKV            
      NN0445=REALKV

      SEEK '0446'
      NP0446=PRETH
      NP0446P=PLAN
      NP0001PKV=PLANKV            
      NN0446=REALKV

      SEEK '0447'
      NP0447=PRETH
      NP0447P=PLAN
      NP0001PKV=PLANKV            
      NN0447=REALKV

      SEEK '0448'
      NP0448=PRETH
      NP0448P=PLAN
      NP0001PKV=PLANKV      
      NN0448=REALKV

      SEEK '0449'
      NP0449=PRETH
      NP0449P=PLAN
      NP0001PKV=PLANKV            
      NN0449=REALKV

      SEEK '0450'
      NP0450=PRETH
      NP0450P=PLAN
      NP0001PKV=PLANKV            
      NN0450=REALKV
**********************************************

      SEEK '0452'
      NP0452=PRETH
      NP0452P=PLAN
      NP0001PKV=PLANKV            
      NN0452=REALKV

      SEEK '0453'
      NP0453=PRETH
      NP0453P=PLAN
      NP0001PKV=PLANKV            
      NN0453=REALKV

      SEEK '0454'
      NP0454=PRETH
      NP0454P=PLAN
      NP0001PKV=PLANKV            
      NN0454=REALKV

      SEEK '0455'
      NP0455=PRETH
      NP0455P=PLAN
      NP0001PKV=PLANKV            
      NN0455=REALKV

      SEEK '0456'
      NP0456=PRETH
      NP0456P=PLAN
      NP0001PKV=PLANKV            
      NN0456=REALKV

      SEEK '0457'
      NP0457=PRETH
      NP0457P=PLAN
      NP0001PKV=PLANKV            
      NN0457=REALKV

      SEEK '0458'
      NP0458=PRETH
      NP0458P=PLAN
      NP0001PKV=PLANKV            
      NN0458=REALKV

      SEEK '0459'
      NP0459=PRETH
      NP0459P=PLAN
      NP0001PKV=PLANKV      
      NN0459=REALKV

      SEEK '0460'
      NP0460=PRETH
      NP0460P=PLAN
      NP0001PKV=PLANKV            
      NN0460=REALKV

      SEEK '0461'
      NP0461=PRETH
      NP0461P=PLAN
      NP0001PKV=PLANKV            
      NN0461=REALKV

      SEEK '0462'
      NP0462=PRETH
      NP0462P=PLAN
      NP0001PKV=PLANKV            
      NN0462=REALKV
*************************************

      SEEK '0465'
      NP0465=PRETH
      NP0465P=PLAN
      NP0001PKV=PLANKV            
      NN0465=REALKV
*************************************

****BILANS USPEHA********************

      SEEK '1003'
      NP1003=PRETH
      NN1003=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1004'
      NP1004=PRETH
      NN1004=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1005'
      NP1005=PRETH
      NN1005=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1006'
      NP1006=PRETH
      NN1006=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1007'
      NP1007=PRETH
      NN1007=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1008'
      NP1008=PRETH
      NN1008=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*-----------------------------
      SEEK '1010'
      NP1010=PRETH
      NN1010=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1011'
      NP1011=PRETH
      NN1011=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1012'
      NP1012=PRETH
      NN1012=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1013'
      NP1013=PRETH
      NN1013=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1014'
      NP1014=PRETH
      NN1014=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1015'
      NP1015=PRETH
      NN1015=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1016'
      NP1016=PRETH
      NN1016=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1017'
      NP1017=PRETH
      NN1017=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*-------------------------
      SEEK '1019'
      NP1019=PRETH
      NN1019=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1020'
      NP1020=PRETH
      NN1020=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1021'
      NP1021=PRETH
      NN1021=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1022'
      NP1022=PRETH
      NN1022=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1023'
      NP1023=PRETH
      NN1023=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1024'
      NP1024=PRETH
      NN1024=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1025'
      NP1025=PRETH
      NN1025=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1026'
      NP1026=PRETH
      NN1026=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1027'
      NP1027=PRETH
      NN1027=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1028'
      NP1028=PRETH
      NN1028=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1029'
      NP1029=PRETH
      NN1029=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*--------------------------

      SEEK '1034'
      NP1034=PRETH
      NN1034=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1035'
      NP1035=PRETH
      NN1035=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1036'
      NP1036=PRETH
      NN1036=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1037'
      NP1037=PRETH
      NN1037=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1038'
      NP1038=PRETH
      NN1038=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1039'
      NP1039=PRETH
      NN1039=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*******************************

      SEEK '1042'
      NP1042=PRETH
      NN1042=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1043'
      NP1043=PRETH
      NN1043=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1044'
      NP1044=PRETH
      NN1044=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1045'
      NP1045=PRETH
      NN1045=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1046'
      NP1046=PRETH
      NN1046=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1047'
      NP1047=PRETH
      NN1047=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*******************************
      SEEK '1050'
      NP1050=PRETH
      NN1050=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1051'
      NP1051=PRETH
      NN1051=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1052'
      NP1052=PRETH
      NN1052=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            

      SEEK '1053'
      NP1053=PRETH
      NN1053=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*-----------------------
      SEEK '1056'
      NP1056=PRETH
      NN1056=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
                              
      SEEK '1057'
      NP1057=PRETH
      NN1057=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
*--------------------
      SEEK '1060'
      NP1060=PRETH
      NN1060=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
                        
      SEEK '1061'
      NP1061=PRETH
      NN1061=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
                        
      SEEK '1062'
      NP1062=PRETH
      NN1062=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
                         
      SEEK '1063'
      NP1063=PRETH
      NN1063=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
********************************
      SEEK '1066'
      NP1066=PRETH
      NN1066=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
      
      SEEK '1067'
      NP1067=PRETH
      NN1067=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
      
      SEEK '1068'
      NP1068=PRETH
      NN1068=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
      
      SEEK '1069'
      NP1069=PRETH
      NN1069=REALKV
      NP1003P=PLAN
      NP1003PKV=PLANKV            
      
*----------------

      SEEK '0003'
      NP0003=NP0004+NP0005+NP0006+NP0007+NP0008+NP0009
      NP0003p=NP0004p+NP0005p+NP0006p+NP0007p+NP0008p+NP0009p
      NN0003=NN0004+NN0005+NN0006+NN0007+NN0008+NN0009      
      NP0003pKV=NP0004pKV+NP0005pKV+NP0006pKV+NP0007pKV+NP0008pKV+NP0009pKV      
      REPLACE PRETH WITH NP0003
      REPLACE PLAN WITH NP0003P      
      REPLACE REALKV  WITH NN0003
      REPLACE PLANKV WITH NP0003PKV            
***********************************
      SEEK '0010'
      NP0010=NP0011+NP0012+NP0013+NP0014+NP0015+NP0016+NP0017+NP0018
      NP0010p=NP0011P+NP0012P+NP0013P+NP0014P+NP0015P+NP0016P+NP0017P+NP0018P
      NN0010=NN0011+NN0012+NN0013+NN0014+NN0015+NN0016+NN0017+NN0018
      NP0010pKV=NP0011PKV+NP0012PKV+NP0013PKV+NP0014PKV+NP0015PKV+NP0016PKV+NP0017PKV+NP0018PKV      
      REPLACE PRETH WITH NP0010
      REPLACE PLAN WITH NP0010P      
      REPLACE REALKV  WITH NN0010
      REPLACE PLANKV WITH NP0010PKV            
**************************************************
      SEEK '0019'
      NP0019=NP0020+NP0021+NP0022+NP0023
      NP0019p=NP0020P+NP0021P+NP0022P+NP0023P
      NN0019=NN0020+NN0021+NN0022+NN0023
      NP0019pKV=NP0020PKV+NP0021PKV+NP0022PKV+NP0023PKV      
      REPLACE PRETH WITH NP0019
      REPLACE PLAN WITH NP0019P      
      REPLACE REALKV  WITH NN0019
      REPLACE PLANKV WITH NP0019PKV            
***********************************************

      SEEK '0024'
      NP0024=NP0025+NP0026+NP0027+NP0028+NP0029+NP0030+NP0031+NP0032+NP0033
      NP0024p=NP0025P+NP0026P+NP0027P+NP0028P+NP0029P+NP0030P+NP0031P+NP0032P+NP0033P
      NN0024=NN0025+NN0026+NN0027+NN0028+NN0029+NN0030+NN0031+NN0032+NN0033
      NP0024pKV=NP0025PKV+NP0026PKV+NP0027PKV+NP0028PKV+NP0029PKV+NP0030PKV+NP0031PKV+NP0032PKV+NP0033PKV      
      REPLACE PRETH WITH NP0024
      REPLACE PLAN WITH NP0024P      
      REPLACE REALKV  WITH NN0024
      REPLACE PLANKV WITH NP0024PKV            
*******************************************************

      SEEK '0034'
      NP0034=NP0035+NP0036+NP0037+NP0038+NP0039+NP0040+NP0041
      NP0034p=NP0035P+NP0036P+NP0037P+NP0038P+NP0039P+NP0040P+NP0041P
      NN0034=NN0035+NN0036+NN0037+NN0038+NN0039+NN0040+NN0041
      NP0034pKV=NP0035PKV+NP0036PKV+NP0037PKV+NP0038PKV+NP0039PKV+NP0040PKV+NP0041PKV      
      REPLACE PRETH WITH NP0034
      REPLACE PLAN WITH NP0034P      
      REPLACE REALKV  WITH NN0034
      REPLACE PLANKV WITH NP0034PKV            
**********************************************************

      SEEK '0044'
      NP0044=NP0045+NP0046+NP0047+NP0048+NP0049+NP0050
      NP0044p=NP0045P+NP0046P+NP0047P+NP0048P+NP0049P+NP0050P
      NN0044=NN0045+NN0046+NN0047+NN0048+NN0049+NN0050
      NP0044pKV=NP0045PKV+NP0046PKV+NP0047PKV+NP0048PKV+NP0049PKV+NP0050PKV      
      REPLACE PRETH WITH NP0044
      REPLACE PLAN WITH NP0044P      
      REPLACE REALKV  WITH NN0044
      REPLACE PLANKV WITH NP0044PKV            
***********************************************************
      SEEK '0051'
      NP0051=NP0052+NP0053+NP0054+NP0055+NP0056+NP0057+NP0058
      NP0051p=NP0052P+NP0053P+NP0054P+NP0055P+NP0056P+NP0057P+NP0058P
      NN0051=NN0052+NN0053+NN0054+NN0055+NN0056+NN0057+NN0058
      NP0051pKV=NP0052PKV+NP0053PKV+NP0054PKV+NP0055PKV+NP0056PKV+NP0057PKV+NP0058PKV
      REPLACE PRETH WITH NP0051
      REPLACE PLAN WITH NP0051P      
      REPLACE REALKV  WITH NN0051
      REPLACE PLANKV WITH NP0051PKV            
***********************************************************
      SEEK '0062'
      NP0062=NP0063+NP0064+NP0065+NP0066+NP0067
      NP0062p=NP0063P+NP0064P+NP0065P+NP0066P+NP0067P
      NN0062=NN0063+NN0064+NN0065+NN0066+NN0067
      NP0062pKV=NP0063PKV+NP0064PKV+NP0065PKV+NP0066PKV+NP0067PKV      
      REPLACE PRETH WITH NP0062
      REPLACE PLAN WITH NP0062P      
      REPLACE REALKV  WITH NN0062
      REPLACE PLANKV WITH NP0062PKV            
*************PASIVA********************

      SEEK '0402'
      NP0402=NP0403+NP0404+NP0405+NP0406+NP0407+NP0408+NP0409+NP0410
      NP0402p=NP0403P+NP0404P+NP0405P+NP0406P+NP0407P+NP0408P+NP0409P+NP0410P
      NN0402=NN0403+NN0404+NN0405+NN0406+NN0407+NN0408+NN0409+NN0410
      NP0402pKV=NP0403PKV+NP0404PKV+NP0405PKV+NP0406PKV+NP0407PKV+NP0408PKV+NP0409PKV+NP0410PKV      
      REPLACE PRETH WITH NP0402
      REPLACE PLAN WITH NP0402P      
      REPLACE REALKV  WITH NN0402
      REPLACE PLANKV WITH NP0402PKV            
****************************************
      SEEK '0417'
      NP0417=NP0418+NP0419
      NP0417p=NP0418P+NP0419P
      NN0417=NN0418+NN0419
      NP0417pKV=NP0418PKV+NP0419PKV      
      REPLACE PRETH WITH NP0417
      REPLACE PLAN WITH NP0417P      
      REPLACE REALKV  WITH NN0417
      REPLACE PLANKV WITH NP0417PKV            
***************************************
      SEEK '0421'
      NP0421=NP0422+NP0423
      NP0421p=NP0422P+NP0423P
      NN0421=NN0422+NN0423
      NP0421pKV=NP0422PKV+NP0423PKV      
      REPLACE PRETH WITH NP0421
      REPLACE PLAN WITH NP0421P      
      REPLACE REALKV  WITH NN0421
      REPLACE PLANKV WITH NP0421PKV            
*************************************

      SEEK '0425'
      NP0425=NP0426+NP0427+NP0428+NP0429+NP0430+NP0431
      NP0425p=NP0426P+NP0427P+NP0428P+NP0429P+NP0430P+NP0431P
      NN0425=NN0426+NN0427+NN0428+NN0429+NN0430+NN0431
      NP0425pKV=NP0426PKV+NP0427PKV+NP0428PKV+NP0429PKV+NP0430PKV+NP0431PKV      
      REPLACE PRETH WITH NP0425
      REPLACE PLAN WITH NP0425P      
      REPLACE REALKV  WITH NN0425
      REPLACE PLANKV WITH NP0425PKV                  
**************************************************

      SEEK '0432'
      NP0432=NP0433+NP0434+NP0435+NP0436+NP0437+NP0438+NP0439+NP0440
      NP0432p=NP0433P+NP0434P+NP0435P+NP0436P+NP0437P+NP0438P+NP0439P+NP0440P
      NN0432=NN0433+NN0434+NN0435+NN0436+NN0437+NN0438+NN0439+NN0440
      NP0432pKV=NP0433PKV+NP0434PKV+NP0435PKV+NP0436PKV+NP0437PKV+NP0438PKV+NP0439PKV+NP0440PKV      
      REPLACE PRETH WITH NP0432
      REPLACE PLAN WITH NP0432P      
      REPLACE REALKV  WITH NN0432
      REPLACE PLANKV WITH NP0432PKV                  
*************************************************
      SEEK '0443'
      NP0443=NP0444+NP0445+NP0446+NP0447+NP0448+NP0449
      NP0443p=NP0444P+NP0445P+NP0446P+NP0447P+NP0448P+NP0449P
      NN0443=NN0444+NN0445+NN0446+NN0447+NN0448+NN0449
      NP0443pKV=NP0444PKV+NP0445PKV+NP0446PKV+NP0447PKV+NP0448PKV+NP0449PKV      
      REPLACE PRETH WITH NP0443
      REPLACE PLAN WITH NP0443P      
      REPLACE REALKV  WITH NN0443
      REPLACE PLANKV WITH NP0443PKV            
********************************************************
      SEEK '0451'
      NP0451=NP0452+NP0453+NP0454+NP0455+NP0456+NP0457+NP0458
      NP0451p=NP0452P+NP0453P+NP0454P+NP0455P+NP0456P+NP0457P+NP0458P
      NN0451=NN0452+NN0453+NN0454+NN0455+NN0456+NN0457+NN0458
      NP0451pKV=NP0452PKV+NP0453PKV+NP0454PKV+NP0455PKV+NP0456PKV+NP0457PKV+NP0458PKV      
      REPLACE PRETH WITH NP0451
      REPLACE PLAN WITH NP0451P      
      REPLACE REALKV  WITH NN0451
      REPLACE PLANKV WITH NP0451PKV            

************DRUGI NIVO BS************************************
      SEEK '0002'
      NP0002=NP0003+NP0010+NP0019+NP0024+NP0034
      NP0002p=NP0003P+NP0010P+NP0019P+NP0024P+NP0034P
      NN0002=NN0003+NN0010+NN0019+NN0024+NN0034
      NP0002pKV=NP0003PKV+NP0010PKV+NP0019PKV+NP0024PKV+NP0034PKV      
      REPLACE PRETH WITH NP0002
      REPLACE PLAN WITH NP0002P      
      REPLACE REALKV  WITH NN0002
      REPLACE PLANKV WITH NP0002PKV                  
*******************************************************
      SEEK '0043'
      NP0043=NP0044+NP0051+NP0059+NP0060+NP0061+NP0062+NP0068+NP0069+NP0070
      NP0043p=NP0044P+NP0051P+NP0059P+NP0060P+NP0061P+NP0062P+NP0068P+NP0069P+NP0070P
      NN0043=NN0044+NN0051+NN0059+NN0060+NN0061+NN0062+NN0068+NN0069+NN0070
      NP0043pKV=NP0044PKV+NP0051PKV+NP0059PKV+NP0060PKV+NP0061PKV+NP0062PKV+NP0068PKV+NP0069PKV+NP0070PKV      
      REPLACE PRETH WITH NP0043
      REPLACE PLAN WITH NP0043P      
      REPLACE REALKV  WITH NN0043
      REPLACE PLANKV WITH NP0043PKV                  
************TRECI  NIVO BS AKTIVA************************************
      SEEK '0071'
      NP0071=NP0001+NP0002+NP0042+NP0043
      NP0071p=NP0001P+NP0002P+NP0042P+NP0043P
      NN0071=NN0001+NN0002+NN0042+NN0043     
      NP0071pKV=NP0001PKV+NP0002PKV+NP0042PKV+NP0043PKV       
      REPLACE PRETH WITH NP0071
      REPLACE PLAN WITH NP0071P      
      REPLACE REALKV  WITH NN0071
      REPLACE PLANKV WITH NP0071PKV                  
*******************************************************
*************BS PASIVA*********************************
      SEEK '0401'
      NP0401=NP0402+NP0411-NP0412+NP0413+NP0414+NP0415-NP0416+NP0417+NP0420-NP0421
      NP0401p=NP0402P+NP0411P-NP0412P+NP0413P+NP0414P+NP0415P-NP0416P+NP0417P+NP0420P-NP0421P
      NN0401=NN0402+NN0411-NN0412+NN0413+NN0414+NN0415-NN0416+NN0417+NN0420-NN0421
      NP0401pKV=NP0402PKV+NP0411PKV-NP0412PKV+NP0413PKV+NP0414PKV+NP0415PKV-NP0416PKV+NP0417PKV+NP0420PKV-NP0421PKV      
      REPLACE PRETH WITH NP0401
      REPLACE PLAN WITH NP0401P      
      REPLACE REALKV  WITH NN0401
      REPLACE PLANKV WITH NP0401PKV                  
*******************************************************
      SEEK '0424'
      NP0424=NP0425+NP0432
      NP0424p=NP0425P+NP0432P
      NN0424=NN0425+NN0432
      NP0424pKV=NP0425PKV+NP0432PKV      
      REPLACE PRETH WITH NP0424
      REPLACE PLAN WITH NP0424P      
      REPLACE REALKV  WITH NN0424
      REPLACE PLANKV WITH NP0424PKV                  
******************************************************
      SEEK '0442'
      NP0442=NP0443+NP0450+NP0451+NP0459+NP0460+NP0461+NP0462
      NP0442p=NP0443P+NP0450P+NP0451P+NP0459P+NP0460P+NP0461P+NP0462P
      NN0442=NN0443+NN0450+NN0451+NN0459+NN0460+NN0461+NN0462
      NP0442pKV=NP0443PKV+NP0450PKV+NP0451PKV+NP0459PKV+NP0460PKV+NP0461PKV+NP0462PKV      
      REPLACE PRETH WITH NP0442
      REPLACE PLAN WITH NP0442P      
      REPLACE REALKV  WITH NN0442
      REPLACE PLANKV WITH NP0442PKV                  
*******************************************************
      SEEK '0463'
      NP0463=NP0412+NP0416+NP0421-NP0420-NP0417-NP0415-NP0414-NP0413-NP0411-NP0402
      NP0463p=NP0412P+NP0416P+NP0421P-NP0420P-NP0417P-NP0415P-NP0414P-NP0413P-NP0411P-NP0402P
      NN0463=NN0412+NN0416+NN0421-NN0420-NN0417-NN0415-NN0414-NN0413-NN0411-NN0402
      NP0463pKV=NP0412PKV+NP0416PKV+NP0421PKV-NP0420PKV-NP0417PKV-NP0415PKV-NP0414PKV-NP0413PKV-NP0411PKV-NP0402PKV      
      REPLACE PRETH WITH NP0463      
      REPLACE PLAN WITH NP0463P      
      REPLACE REALKV  WITH NN0463
      REPLACE PLANKV WITH NP0463PKV                  
      IF NP0463<0
         REPLACE PRETH WITH 0
         NP0463=0
      ENDIF         
      IF NP0463P<0
         REPLACE PLAN WITH 0
         NP0463P=0
      ENDIF         
      IF NN0463<0
         REPLACE REALKV WITH 0
         NN0463=0
      ENDIF         



*******************************************************
      SEEK '0464'
      NP0464=NP0424+NP0442+NP0441+NP0401-NP0463
      NP0464p=NP0424P+NP0442P+NP0441P+NP0401P-NP0463P
      NN0464=NN0424+NN0442+NN0441+NN0401-NN0463
      NP0464pKV=NP0424PKV+NP0442PKV+NP0441PKV+NP0401PKV-NP0463PKV      
      REPLACE PRETH WITH NP0464
      REPLACE PLAN WITH NP0464P      
      REPLACE REALKV  WITH NN0464
      REPLACE PLANKV WITH NP0464PKV                  
 *     SET STEP ON 
***********************************************************
*************KRAJ BILANSA STANJA***************************


      *BILANS USPEHA
      
      SEEK '1002'
      NP1002=NP1003+NP1004+NP1005+NP1006+NP1007+NP1008
      NN1002=NN1003+NN1004+NN1005+NN1006+NN1007+NN1008
      NP1002P=NP1003P+NP1004P+NP1005P+NP1006P+NP1007P+NP1008P
      NP1002PKV=NP1003PKV+NP1004PKV+NP1005PKV+NP1006PKV+NP1007PKV+NP1008PKV      
            
      REPLACE PRETH WITH NP1002
      REPLACE REALKV  WITH NN1002
      REPLACE PLAN WITH NP1002P     
      REPLACE PLANKV WITH NP1002PKV      

      SEEK '1009'
      NP1009=NP1010+NP1011+NP1012+NP1013+NP1014+NP1015
      NN1009=NN1010+NN1011+NN1012+NN1013+NN1014+NN1015
      NP1009P=NP1010P+NP1011P+NP1012P+NP1013P+NP1014P+NP1015P
      NP1009PKV=NP1010PKV+NP1011PKV+NP1012PKV+NP1013PKV+NP1014PKV+NP1015PKV
      REPLACE PRETH WITH NP1009
      REPLACE REALKV  WITH NN1009
      REPLACE PLAN WITH NP1009P     
      REPLACE PLANKV WITH NP1009PKV      

      SEEK '1018'
      NP1018=NP1019-NP1020-NP1021+NP1022+NP1023+NP1024+NP1025+NP1026+NP1027+NP1028+NP1029
      NN1018=NN1019-NN1020-NN1021+NN1022+NN1023+NN1024+NN1025+NN1026+NN1027+NN1028+NN1029
      NP1018P=NP1019P-NP1020P-NP1021P+NP1022P+NP1023P+NP1024P+NP1025P+NP1026P+NP1027P+NP1028P+NP1029P
      NP1018PKV=NP1019PKV-NP1020PKV-NP1021PKV+NP1022PKV+NP1023PKV+NP1024PKV+NP1025PKV+NP1026PKV+NP1027PKV+NP1028PKV+NP1029PKV
      REPLACE PRETH WITH NP1018
      REPLACE REALKV  WITH NN1018
      REPLACE PLAN WITH NP1018P     
      REPLACE PLANKV WITH NP1018PKV      
************************************************      
      SEEK '1001'
      NP1001=NP1002+NP1009+NP1016+NP1017
      NN1001=NN1002+NN1009+NN1016+NN1017
      NP1001P=NP1002P+NP1009P+NP1016P+NP1017P
      NP1001PKV=NP1002PKV+NP1009PKV+NP1016PKV+NP1017PKV
      REPLACE PRETH WITH NP1001
      REPLACE REALKV  WITH NN1001
      REPLACE PLAN WITH NP1001P     
      REPLACE PLANKV WITH NP1001PKV      


*******************************************************
      SEEK '1030'
      NP1030=NP1001-NP1018
      NN1030=NN1001-NN1018
      NP1030P=NP1001P-NP1018P
      NP1030PKV=NP1001PKV-NP1018PKV
      REPLACE PRETH WITH NP1030
      REPLACE REALKV  WITH NN1030
      REPLACE PLAN WITH NP1030P     
      REPLACE PLANKV WITH NP1030PKV      
*****************************************************
      IF NP1030<0
         REPLACE PRETH WITH 0
         NP1030=0
      ENDIF   
      IF NN1030<0
         REPLACE REALKV WITH 0
         NN1030=0
      ENDIF   
*******************************************************
      SEEK '1031'
      NP1031=NP1018-NP1001
      NN1031=NN1018-NN1001
      NP1031P=NP1018P-NP1001P
      NP1031PKV=NP1018PKV-NP1001PKV
      REPLACE PRETH WITH NP1031
      REPLACE REALKV  WITH NN1031
      REPLACE PLAN WITH NP1031P     
      REPLACE PLANKV WITH NP1031PKV      
*****************************************************
      IF NP1031<0
         REPLACE PRETH WITH 0
         NP1031=0
      ENDIF   
      IF NN1031<0
         REPLACE REALKV WITH 0
         NN1031=0
      ENDIF   
*****************************************************
      SEEK '1033'
      NP1033=NP1034+NP1035+NP1036+NP1037
      NN1033=NN1034+NN1035+NN1036+NN1037
      NP1033P=NP1034P+NP1035P+NP1036P+NP1037P
      NP1033PKV=NP1034PKV+NP1035PKV+NP1036PKV+NP1037PKV
      REPLACE PRETH WITH NP1033
      REPLACE REALKV  WITH NN1033
      REPLACE PLAN WITH NP1033P     
      REPLACE PLANKV WITH NP1033PKV      
****************************************************
      SEEK '1041'
      NP1041=NP1042+NP1043+NP1044+NP1045
      NN1041=NN1042+NN1043+NN1044+NN1045
      NP1041P=NP1042P+NP1043P+NP1044P+NP1045P
      NP1041PKV=NP1042PKV+NP1043PKV+NP1044PKV+NP1045PKV
      REPLACE PRETH WITH NP1041
      REPLACE REALKV  WITH NN1041
      REPLACE PLAN WITH NP1041P     
      REPLACE PLANKV WITH NP1041PKV      
****************************************************
      SEEK '1032'
      NP1032=NP1033+NP1038+NP1039
      NN1032=NN1033+NN1038+NN1039
      NP1032P=NP1033P+NP1038P+NP1039P
      NP1032PKV=NP1033PKV+NP1038PKV+NP1039PKV
      REPLACE PRETH WITH NP1032
      REPLACE REALKV  WITH NN1032
      REPLACE PLAN WITH NP1032P     
      REPLACE PLANKV WITH NP1032PKV      
*****************************************************
      SEEK '1040'
      NP1040=NP1041+NP1046+NP1047
      NN1040=NN1041+NN1046+NN1047      
      NP1040P=NP1041P+NP1046P+NP1047P
      NP1040PKV=NP1041PKV+NP1046PKV+NP1047PKV      
      REPLACE PRETH WITH NP1040
      REPLACE REALKV  WITH NN1040
      REPLACE PLAN WITH NP1040P     
      REPLACE PLANKV WITH NP1040PKV      
*---------------------------
      SEEK '1048'
      NP1048=NP1032-NP1040
      NN1048=NN1032-NN1040
      NP1048P=NP1032P-NP1040P
      NP1048PKV=NP1032PKV-NP1040PKV
      REPLACE PRETH WITH NP1048
      REPLACE REALKV  WITH NN1048
      REPLACE PLAN WITH NP1048P     
      REPLACE PLANKV WITH NP1048PKV      
*--------------------------
      IF NP1048<0
         REPLACE PRETH WITH 0
         NP1048=0
      ENDIF   
      IF NN1048<0
         REPLACE REALKV WITH 0
         NN1048=0
      ENDIF   
****************************************
      SEEK '1049'
      NP1049=NP1040-NP1032
      NN1049=NN1040-NN1032
      NP1049P=NP1040P-NP1032P
      NP1049PKV=NP1040PKV-NP1032PKV
      REPLACE PRETH WITH NP1049
      REPLACE REALKV  WITH NN1049
      REPLACE PLAN WITH NP1049P     
      REPLACE PLANKV WITH NP1049PKV      
*----------------------------------
      IF NP1049<0
         REPLACE PRETH WITH 0
         NP1049=0
      ENDIF   
      IF NN1049<0
         REPLACE REALKV WITH 0
         NN1049=0
      ENDIF   
****************************************
      SEEK '1056'
      IF NP1056<0
         REPLACE PRETH WITH 0
         NP1056=0
      ENDIF   
      IF NN1056<0
         REPLACE REALKV WITH 0
         NN1056=0
      ENDIF
****************************************
      SEEK '1057'
      IF NP1057<0
         REPLACE PRETH WITH 0
         NP1057=0
      ENDIF   
      IF NN1057<0
         REPLACE REALKV WITH 0
         NN1057=0
      ENDIF
****************************************
      SEEK '1054'
      NP1054=NP1030-NP1031+NP1048-NP1049+NP1050-NP1051+NP1052-NP1053
      NN1054=NN1030-NN1031+NN1048-NN1049+NN1050-NN1051+NN1052-NN1053
      NP1054P=NP1030P-NP1031P+NP1048P-NP1049P+NP1050P-NP1051P+NP1052P-NP1053P
      NP1054PKV=NP1030PKV-NP1031PKV+NP1048PKV-NP1049PKV+NP1050PKV-NP1051PKV+NP1052PKV-NP1053PKV
      REPLACE PRETH WITH NP1054
      REPLACE REALKV  WITH NN1054
      REPLACE PLAN WITH NP1054P     
      REPLACE PLANKV WITH NP1054PKV      
      IF NP1054<0
         REPLACE PRETH WITH 0
         NP1054=0
      ENDIF   
      IF NN1054<0
         REPLACE REALKV WITH 0
         NN1054=0
      ENDIF
      
*----------------------------------
      SEEK '1055'
      NP1055=NP1031-NP1030+NP1049-NP1048+NP1051-NP1050+NP1053-NP1052
      NN1055=NN1031-NN1030+NN1049-NN1048+NN1051-NN1050+NN1053-NN1052
      NP1055P=NP1031P-NP1030P+NP1049P-NP1048P+NP1051P-NP1050P+NP1053P-NP1052P
      NP1055PKV=NP1031PKV-NP1030PKV+NP1049PKV-NP1048PKV+NP1051PKV-NP1050PKV+NP1053PKV-NP1052PKV
      REPLACE PRETH WITH NP1055
      REPLACE REALKV  WITH NN1055
      REPLACE PLAN WITH NP1055P     
      REPLACE PLANKV WITH NP1055PKV      
      IF NP1055<0
         REPLACE PRETH WITH 0
         NP1055=0
      ENDIF   
      IF NN1055<0
         REPLACE REALKV WITH 0
         NN1055=0
      ENDIF
            
*----------------------------------
      SEEK '1058'
      NP1058=NP1054-NP1055+NP1056-NP1057
      NN1058=NN1054-NN1055+NN1056-NN1057
      NP1058P=NP1054P-NP1055P+NP1056P-NP1057P
      NP1058PKV=NP1054PKV-NP1055PKV+NP1056PKV-NP1057PKV
      REPLACE PRETH WITH NP1058
      REPLACE REALKV  WITH NN1058
      REPLACE PLAN WITH NP1058P     
      REPLACE PLANKV WITH NP1058PKV      
      IF NP1058<0
         REPLACE PRETH WITH 0
         NP1058=0
      ENDIF   
      IF NN1058<0
         REPLACE REALKV WITH 0
         NN1058=0
      ENDIF

****************************************
      SEEK '1059'
      NP1059=NP1055-NP1054+NP1057-NP1056
      NN1059=NN1055-NN1054+NN1057-NN1056
      NP1059P=NP1055P-NP1054P+NP1057P-NP1056P
      NP1059PKV=NP1055PKV-NP1054PKV+NP1057PKV-NP1056PKV
      REPLACE PRETH WITH NP1059
      REPLACE REALKV  WITH NN1059
      REPLACE PLAN WITH NP1059P     
      REPLACE PLANKV WITH NP1059PKV      
      IF NP1059<0
         REPLACE PRETH WITH 0
         NP1059=0
      ENDIF   
      IF NN1059<0
         REPLACE REALKV WITH 0
         NN1059=0
      ENDIF   
****************************************

      SEEK '1064'
      NP1064=NP1058-NP1059-NP1060-NP1061+NP1062
      NN1064=NN1058-NN1059-NN1060-NN1061+NN1062
      NP1064P=NP1058P-NP1059P-NP1060P-NP1061P+NP1062P
      NP1064PKV=NP1058PKV-NP1059PKV-NP1060PKV-NP1061PKV+NP1062PKV
      REPLACE PRETH WITH NP1064
      REPLACE REALKV  WITH NN1064
      REPLACE PLAN WITH NP1064P     
      REPLACE PLANKV WITH NP1064PKV      
*----------------------------------
      IF NP1064<0
         REPLACE PRETH WITH 0
         NP1064=0
      ENDIF   
      IF NN1064<0
         REPLACE REALKV WITH 0
         NN1064=0
      ENDIF   
****************************************
      SEEK '1065'
      NP1065=NP1059-NP1058+NP1060+NP1061-NP1062
      NN1065=NN1059-NN1058+NN1060+NN1061-NN1062
      NP1065P=NP1059P-NP1058P+NP1060P+NP1061P-NP1062P
      NP1065PKV=NP1059PKV-NP1058PKV+NP1060PKV+NP1061PKV-NP1062PKV
      REPLACE PRETH WITH NP1065
      REPLACE REALKV  WITH NN1065
      REPLACE PLAN WITH NP1065P     
      REPLACE PLANKV WITH NP1065PKV      
******************************************
      IF NP1065<0
         REPLACE PRETH WITH 0
         NP1065=0
      ENDIF   
      IF NN1065<0
         REPLACE REALKV WITH 0
         NN1065=0
      ENDIF   
****************************************


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
         USE NAL IN 0 ORDER 1
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
         USE &KKOCKA2 IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP
         
         MK0001=0
         MK0003=0
         MK0004=0
         MK0005=0
         MK0006=0
         MK0007=0
         MK0008=0
         MK0009=0
         MK0010=0
         MK0011=0
         MK0012=0         
         MK0013=0
         MK0014=0
         MK0015=0
         MK0016=0
         MK0017=0
         MK0018=0
         MK0019=0
         MK0020=0
         MK0021=0
         MK0022=0         
         MK0023=0
         MK0024=0
         MK0025=0     
         MK0026=0    
         MK0027=0         
         MK0028=0         
         MK0029=0         
         MK0030=0         
         MK0031=0         
         MK0032=0         
         MK0033=0                                             
         MK0034=0                           
         MK0036=0                           
         MK0037=0                           
         MK0038=0                           
         MK0039=0                                                      
         MK0040=0                                                      
         MK0041=0                                                      
         MK0042=0
         MK0045=0
         MK0046=0
         MK0047=0
         MK0048=0
         MK0049=0
         MK0050=0         
         MK0051=0
         MK0052=0
         MK0053=0
         MK0054=0
         MK0055=0
         MK0056=0
         MK0057=0
         MK0058=0
         MK0059=0
         MK0060=0
         MK0061=0
         MK0062=0
         MK0063=0
         MK0064=0
         MK0065=0
         MK0066=0
         MK0067=0
         MK0068=0
         MK0069=0
         MK0070=0         
         MK0071=0
         MK0072=0
*********************************
         MK0403=0
         MK0404=0
         MK0405=0
         MK0406=0
         MK0407=0
         MK0408=0
         MK0409=0
         MK0410=0
         MK0411=0
         MK0412=0         
         MK0413=0
         MK0414=0
         MK0415=0
         MK0416=0
         MK0417=0         
         MK0418=0
         MK0419=0
         MK0420=0
         MK0421=0
         MK0422=0         
         MK0423=0
         MK0424=0
         MK0425=0                  
         MK0426=0         
         MK0427=0         
         MK0428=0         
         MK0429=0         
         MK0430=0         
         MK0431=0         
         MK0432=0         
         MK0433=0         
         MK0434=0         
         MK0435=0         
         MK0436=0         
         MK0437=0         
         MK0438=0         
         MK0439=0         
         MK0440=0         
         MK0441=0         
         MK0442=0         
         MK0443=0         
         MK0444=0         
         MK0445=0         
         MK0446=0         
         MK0447=0         
         MK0448=0         
         MK0449=0         
         MK0450=0         
         MK0451=0         
         MK0452=0         
         MK0453=0         
         MK0454=0         
         MK0455=0         
         MK0456=0         
         MK0457=0         
         MK0458=0                           
         MK0459=0         
         MK0460=0         
         MK0461=0         
         MK0462=0         
         MK0463=0         
         MK0464=0         
         MK0465=0         
         
         MK1003=0
         MK1004=0
         MK1005=0
         MK1006=0
         MK1007=0         
         MK1008=0
         MK1009=0
         MK1010=0
         MK1011=0
         MK1012=0
         MK1013=0         
         MK1014=0         
         MK1015=0
         MK1016=0
         MK1017=0
         MK1018=0         
         MK1019=0
         MK1020=0         
         MK1021=0
         MK1022=0
         MK1023=0
         MK1024=0                  
         MK1025=0
         MK1026=0
         MK1027=0
         MK1028=0
         MK1029=0
         MK1030=0
         MK1031=0
         MK1032=0
         MK1033=0
         MK1034=0
         MK1035=0
         MK1036=0
         MK1037=0
         MK1038=0
         MK1039=0
         MK1040=0
         MK1041=0
         MK1042=0
         MK1043=0
         MK1044=0
         MK1045=0
         MK1046=0
         MK1047=0
         MK1048=0
         MK1049=0
         MK1050=0
         MK1051=0
         MK1052=0         
         MK1053=0
         MK1054=0
         MK1055=0
         MK1056=0
         MK1057=0
         MK1058=0
         MK1059=0
         MK1060=0
         MK1061=0
         MK1062=0
         MK1063=0
         MK1064=0                                                                                 
         MK1065=0
         MK1066=0
         MK1067=0
         MK1068=0         
         MK1069=0         
         
         

         MK0001=PUNIZN01('00')
         MK0004=PUNIZN02('010')
         MK0004=MK0004+PUNIZN08('0190')         
         
         MK0005=PUNIZN02('011')
         MK0005=MK0005+PUNIZN02('012')
         MK0005=MK0005+PUNIZN08('0191')         
         MK0005=MK0005+PUNIZN08('0192')                  
         
         MK0006=PUNIZN02('013')
         MK0006=MK0006+PUNIZN08('0193')                           
         
         MK0007=PUNIZN02('014')
         MK0007=MK0007+PUNIZN08('0194')              
        
         MK0008=PUNIZN02('015')
         MK0008=MK0008+PUNIZN08('0195')

         MK0009=PUNIZN02('016')
         MK0009=MK0009+PUNIZN08('0196')
         
                           
         MK0011=PUNIZN02('020')
         MK0011=MK0011+PUNIZN08('0290')
         MK0011=MK0011+PUNIZN02('021')
         MK0011=MK0011+PUNIZN08('0291')

         MK0012=PUNIZN02('022')
         MK0012=MK0012+PUNIZN08('0292')

         MK0013=PUNIZN02('023')
         MK0013=MK0013+PUNIZN08('0293')

         MK0014=PUNIZN02('024')
         MK0014=MK0014+PUNIZN08('0294')

         MK0015=PUNIZN02('025')
         MK0015=MK0015+PUNIZN08('0295')
         MK0016=PUNIZN02('026')
         MK0016=MK0016+PUNIZN08('0296')
         MK0017=PUNIZN02('027')
         MK0017=MK0017+PUNIZN08('0297')
         MK0018=PUNIZN02('028')
         MK0018=MK0018+PUNIZN08('0298')
*****************************************************
         MK0020=PUNIZN02('030')
         MK0020=MK0020+PUNIZN08('0390')
         MK0020=MK0020+PUNIZN02('031')
         MK0020=MK0020+PUNIZN08('0391')

         MK0021=PUNIZN02('032')
         MK0021=MK0021+PUNIZN08('0392')

         MK0022=PUNIZN02('037')
         MK0022=MK0021+PUNIZN08('0397')

         MK0023=PUNIZN02('038')
         MK0023=MK0021+PUNIZN08('0398')

         MK0025=PUNIZN02('040')
         MK0025=MK0025+PUNIZN08('0490')

         MK0026=PUNIZN02('041')
         MK0026=MK0026+PUNIZN08('0491')

         MK0027=PUNIZN02('042')
         MK0027=MK0027+PUNIZN08('0492')

         MK0028=PUNIZN08('0430')
         MK0028=MK0028+PUNIZN09('04930')
         MK0028=MK0028+PUNIZN08('0440')
         MK0028=MK0028+PUNIZN09('04940')

         MK0029=PUNIZN08('0431')
         MK0029=MK0029+PUNIZN09('04931')
         MK0029=MK0029+PUNIZN08('0441')
         MK0029=MK0029+PUNIZN09('04941')

*************DEO 045***********************
         MK0030=PUNIZN08('0450')
         MK0030=MK0030+PUNIZN09('04950')

         MK0031=PUNIZN08('0451')
         MK0031=MK0031+PUNIZN09('04951')

         MK0032=PUNIZN02('046')
         MK0032=MK0032+PUNIZN08('0496')

         MK0033=PUNIZN02('048')
         MK0033=MK0033+PUNIZN08('0498')
***************************************
         MK0035=PUNIZN02('050')
         MK0035=MK0035+PUNIZN08('0590')
         MK0036=PUNIZN02('051')
         MK0036=MK0035+PUNIZN08('0591')
         MK0037=PUNIZN02('052')
         MK0037=MK0035+PUNIZN08('0592')
         MK0038=PUNIZN02('053')
         MK0038=MK0035+PUNIZN08('0593')
         MK0039=PUNIZN02('054')
         MK0039=MK0035+PUNIZN08('0594')
         MK0040=PUNIZN02('055')
         MK0040=MK0035+PUNIZN08('0595')
         MK0041=PUNIZN02('056')
         MK0041=MK0035+PUNIZN08('0596')
         MK0042=PUNIZN02('288')
         MK0045=PUNIZN01('10')
         MK0046=PUNIZN01('11')
         MK0047=PUNIZN01('12')
         MK0048=PUNIZN01('13')
         MK0049=PUNIZN01('14')
         MK0050=PUNIZN01('15')         

         MK0052=PUNIZN02('200')
         MK0052=MK0052+PUNIZN08('2090')
         MK0053=PUNIZN02('201')
         MK0053=MK0053+PUNIZN08('2091')
         MK0054=PUNIZN02('202')
         MK0054=MK0054+PUNIZN08('2092')
         MK0055=PUNIZN02('203')
         MK0055=MK0055+PUNIZN08('2093')
         MK0056=PUNIZN02('204')
         MK0056=MK0056+PUNIZN08('2094')
         MK0057=PUNIZN02('205')
         MK0057=MK0057+PUNIZN08('2095')
         MK0058=PUNIZN02('206')
         MK0058=MK0058+PUNIZN08('2096')

************************************
         MK0059=PUNIZN01('21')
         MK0060=PUNIZN01('22')
         MK0061=PUNIZN02('236')
         MK0062=PUNIZN01('23')
         MK0062=MK0062-PUNIZN02('236')
         MK0062=MK0062-PUNIZN02('237')

         MK0063=PUNIZN02('230')
         MK0063=MK0063+PUNIZN08('2390')
         MK0064=PUNIZN02('231')
         MK0064=MK0064+PUNIZN08('2391')
         MK0065=PUNIZN02('232')
         MK0065=MK0065+PUNIZN08('2392')
         MK0066=PUNIZN02('233')
         MK0066=MK0066+PUNIZN08('2393')


         MK0067=PUNIZN02('234')
         MK0067=MK0067+PUNIZN08('2394')
         MK0067=MK0067+PUNIZN02('235')
         MK0067=MK0067+PUNIZN08('2395')
         MK0067=MK0067+PUNIZN02('238')
         MK0067=MK0067+PUNIZN08('2398')
         MK0068=PUNIZN01('24')
         MK0069=PUNIZN01('27')
         MK0070=PUNIZN01('28')
         MK0070=MK0070-PUNIZN02('288')
         MK0072=PUNIZN01('88')

         MK0403=PUNIZN04('300')
         MK0404=PUNIZN04('301')
         MK0405=PUNIZN04('302')
         MK0406=PUNIZN04('303')
         MK0407=PUNIZN04('304')
         MK0408=PUNIZN04('305')
         MK0409=PUNIZN04('306')
         MK0410=PUNIZN04('309')
         MK0411=PUNIZN03('31')
         MK0412=PUNIZN04('047')
         MK0412=MK0412+PUNIZN04('237')
         MK0413=PUNIZN03('32')
         MK0414=PUNIZN04('330')
         
         MK0415=PUNIZN10('33')
         MK0415=MK0415-PUNIZN11('330')
         MK0416=PUNIZN12('33')
         MK0416=MK0416-PUNIZN13('330')
         MK0418=PUNIZN04('340')
         MK0419=PUNIZN04('341')
         MK0422=PUNIZN04('350')
         MK0423=PUNIZN04('351')
         MK0426=PUNIZN04('400')
         MK0427=PUNIZN04('401')
         MK0428=PUNIZN04('403')
         MK0429=PUNIZN04('404')
         MK0430=PUNIZN04('405')
         MK0431=PUNIZN04('402')
         MK0431=MK0431+PUNIZN04('409')         
         MK0433=PUNIZN04('410')
         MK0434=PUNIZN04('411')
         MK0435=PUNIZN04('412')
         MK0436=PUNIZN04('413')
         MK0437=PUNIZN04('414')
         MK0438=PUNIZN04('415')         
         MK0439=PUNIZN04('416')
         MK0440=PUNIZN04('419')         
         MK0441=PUNIZN04('498')
         MK0444=PUNIZN04('420')
         MK0445=PUNIZN04('421')
         MK0446=PUNIZN04('422')
         MK0447=PUNIZN04('423')
         MK0448=PUNIZN04('427')
         MK0449=PUNIZN04('424')
         MK0449=MK0449+PUNIZN04('425')         
         MK0449=MK0449+PUNIZN04('426')         
         MK0449=MK0449+PUNIZN04('429')         
         MK0450=PUNIZN04('430')
         MK0452=PUNIZN04('431')
         MK0453=PUNIZN04('432')
         MK0454=PUNIZN04('433')
         MK0455=PUNIZN02('434')
         MK0456=PUNIZN04('435')
         MK0457=PUNIZN04('436')
         MK0458=PUNIZN04('439')                                                      
         MK0459=PUNIZN03('44')
         MK0459=MK0459+PUNIZN03('45')         
         MK0459=MK0459+PUNIZN03('46')         
         MK0460=PUNIZN03('47')
         MK0461=PUNIZN03('48')         
         MK0462=PUNIZN03('49')
         MK0462=MK0462-PUNIZN04('498')         
         MK0465=PUNIZN03('89')
**************************KRAJ BILANSA STANJA*****************
*******************BILANS USPEHA******************************
         MK1003=PUNIZN04('600')
         MK1004=PUNIZN04('601')
         MK1005=PUNIZN04('602')
         MK1006=PUNIZN04('603')
         MK1007=PUNIZN04('604')
         MK1008=PUNIZN04('605')
         MK1010=PUNIZN04('610')
         MK1011=PUNIZN04('611')
         MK1012=PUNIZN04('612')
         MK1013=PUNIZN04('613')
         MK1014=PUNIZN04('614')
         MK1015=PUNIZN04('615')                  
         MK1016=PUNIZN03('64')
         MK1017=PUNIZN03('65')         
         MK1019=PUNIZN01('50')                  
         MK1020=PUNIZN03('62')
         MK1021=PUNIZN04('630')
         MK1022=PUNIZN04('631')         
         MK1023=PUNIZN01('51')                           
         MK1023=MK1023-PUNIZN02('513')
         MK1024=PUNIZN02('513')         
         MK1025=PUNIZN01('52')
         MK1026=PUNIZN01('53')
         MK1027=PUNIZN02('540')                  
         MK1028=PUNIZN02('541')
         MK1028=MK1028+PUNIZN02('542')
         MK1028=MK1028+PUNIZN02('543')         
         MK1028=MK1028+PUNIZN02('544')         
         MK1028=MK1028+PUNIZN02('545')         
         MK1028=MK1028+PUNIZN02('546')
         MK1028=MK1028+PUNIZN02('547')
         MK1028=MK1028+PUNIZN02('548')
         MK1028=MK1028+PUNIZN02('549')
         MK1029=PUNIZN01('55')
         MK1034=PUNIZN04('660')
         MK1035=PUNIZN04('661')
         MK1038=PUNIZN04('662')                  
         MK1039=PUNIZN04('663')
         MK1039=MK1039+PUNIZN04('664')
         MK1036=PUNIZN04('665')                  
         MK1037=PUNIZN04('669')                  
         
         MK1042=PUNIZN02('560')
         MK1043=PUNIZN02('561')
         MK1044=PUNIZN02('565')
         MK1045=PUNIZN02('566')
         MK1045=MK1045+PUNIZN02('569')
         MK1046=PUNIZN02('562')
         MK1047=PUNIZN02('563')
         MK1047=MK1047+PUNIZN02('564')

         MK1050=PUNIZN04('683')
         MK1050=MK1050+PUNIZN04('685')
         MK1051=PUNIZN02('583')
         MK1051=MK1047+PUNIZN02('585')
         MK1052=PUNIZN03('67')
         MK1052=MK1052+PUNIZN03('68')
         MK1052=MK1052-PUNIZN04('683')
         MK1052=MK1052-PUNIZN04('685')

         MK1053=PUNIZN01('57')
         MK1053=MK1053+PUNIZN01('58')
         MK1053=MK1053-PUNIZN02('583')
         MK1053=MK1053-PUNIZN02('585')

         MK1057=PUNIZN02('590')
         MK1057=MK1056+PUNIZN02('591')
         MK1057=MK1056+PUNIZN02('592')         
         
         MK1056=PUNIZN04('690')
         MK1056=MK1056+PUNIZN04('691')
         MK1056=MK1056+PUNIZN04('692')         

         
         MK1060=PUNIZN07('721')
         MK1061=PUNIZN07('722')           
         MK1062=PUNIZN11('722')                    
         MK1063=PUNIZN07('723')                    
         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN05 WITH '0001'
         DO PUNIZN05 WITH '0003'
         DO PUNIZN05 WITH '0004'
         DO PUNIZN05 WITH '0005'
         DO PUNIZN05 WITH '0006'
         DO PUNIZN05 WITH '0007'
         DO PUNIZN05 WITH '0008'
         DO PUNIZN05 WITH '0009'

         DO PUNIZN05 WITH '0011'         
         DO PUNIZN05 WITH '0012'
         DO PUNIZN05 WITH '0013'
         DO PUNIZN05 WITH '0014'
         DO PUNIZN05 WITH '0015'
         DO PUNIZN05 WITH '0016'
         DO PUNIZN05 WITH '0017'
         DO PUNIZN05 WITH '0018'

         DO PUNIZN05 WITH '0020'
         DO PUNIZN05 WITH '0021'
         DO PUNIZN05 WITH '0022'
         DO PUNIZN05 WITH '0023'

         DO PUNIZN05 WITH '0025'
         DO PUNIZN05 WITH '0026'         
         DO PUNIZN05 WITH '0027'
         DO PUNIZN05 WITH '0028'
         DO PUNIZN05 WITH '0029'
         DO PUNIZN05 WITH '0030'
         DO PUNIZN05 WITH '0031'
         DO PUNIZN05 WITH '0032'
         DO PUNIZN05 WITH '0033'
         
         DO PUNIZN05 WITH '0035'
         DO PUNIZN05 WITH '0036'
         DO PUNIZN05 WITH '0037'
         DO PUNIZN05 WITH '0038'
         DO PUNIZN05 WITH '0039'
         DO PUNIZN05 WITH '0040'
         DO PUNIZN05 WITH '0041'
         DO PUNIZN05 WITH '0042'

         DO PUNIZN05 WITH '0045'
         DO PUNIZN05 WITH '0046'
         DO PUNIZN05 WITH '0047'
         DO PUNIZN05 WITH '0048'
         DO PUNIZN05 WITH '0049'
         DO PUNIZN05 WITH '0050'
         
         DO PUNIZN05 WITH '0052'
         DO PUNIZN05 WITH '0053'
         DO PUNIZN05 WITH '0054'
         DO PUNIZN05 WITH '0055'
         DO PUNIZN05 WITH '0056'
         DO PUNIZN05 WITH '0057'
         DO PUNIZN05 WITH '0058'
         DO PUNIZN05 WITH '0059'
         DO PUNIZN05 WITH '0060'
         DO PUNIZN05 WITH '0061'


         DO PUNIZN05 WITH '0063'
         DO PUNIZN05 WITH '0064'
         DO PUNIZN05 WITH '0065'
         DO PUNIZN05 WITH '0066'
         DO PUNIZN05 WITH '0067'
         DO PUNIZN05 WITH '0068'
         DO PUNIZN05 WITH '0069'
         DO PUNIZN05 WITH '0070'
         DO PUNIZN05 WITH '0072'                                             
         
         
         
         DO PUNIZN05 WITH '0403'
         DO PUNIZN05 WITH '0404'
         DO PUNIZN05 WITH '0405'
         DO PUNIZN05 WITH '0406'
         DO PUNIZN05 WITH '0407'
         DO PUNIZN05 WITH '0408'
         DO PUNIZN05 WITH '0409'
         DO PUNIZN05 WITH '0410'
         DO PUNIZN05 WITH '0411'
         DO PUNIZN05 WITH '0412'
         DO PUNIZN05 WITH '0413'
         DO PUNIZN05 WITH '0414'
         DO PUNIZN05 WITH '0415'
         DO PUNIZN05 WITH '0416'
         
         
         DO PUNIZN05 WITH '0418'
         DO PUNIZN05 WITH '0419'
         DO PUNIZN05 WITH '0420'
                  
         DO PUNIZN05 WITH '0422'
         DO PUNIZN05 WITH '0423'
         
         
         DO PUNIZN05 WITH '0426'
         DO PUNIZN05 WITH '0427'
         DO PUNIZN05 WITH '0428'
         DO PUNIZN05 WITH '0429'
         DO PUNIZN05 WITH '0430'
         DO PUNIZN05 WITH '0431'
         
         
         DO PUNIZN05 WITH '0433'
         DO PUNIZN05 WITH '0434'
         DO PUNIZN05 WITH '0435'
         DO PUNIZN05 WITH '0436'
         
         
         DO PUNIZN05 WITH '0437'
         DO PUNIZN05 WITH '0438'
         DO PUNIZN05 WITH '0439'
         DO PUNIZN05 WITH '0439'         
         DO PUNIZN05 WITH '0441'

         DO PUNIZN05 WITH '0444'
         DO PUNIZN05 WITH '0445'
         DO PUNIZN05 WITH '0446'
         DO PUNIZN05 WITH '0447'
         DO PUNIZN05 WITH '0448'
         DO PUNIZN05 WITH '0449'
         DO PUNIZN05 WITH '0450'

         DO PUNIZN05 WITH '0452'
         DO PUNIZN05 WITH '0453'
         DO PUNIZN05 WITH '0454'
         DO PUNIZN05 WITH '0455'
         DO PUNIZN05 WITH '0456'
         DO PUNIZN05 WITH '0457'
         DO PUNIZN05 WITH '0458'                           
         DO PUNIZN05 WITH '0459'         
         DO PUNIZN05 WITH '0460'
         DO PUNIZN05 WITH '0461'
         DO PUNIZN05 WITH '0462'                           
         DO PUNIZN05 WITH '0465'                           

         DO PUNIZN05 WITH '1003'
         DO PUNIZN05 WITH '1004'
         DO PUNIZN05 WITH '1005'
         DO PUNIZN05 WITH '1006'
         DO PUNIZN05 WITH '1007'
         DO PUNIZN05 WITH '1008'

         DO PUNIZN05 WITH '1010'
         DO PUNIZN05 WITH '1011'
         DO PUNIZN05 WITH '1012'
         DO PUNIZN05 WITH '1013'
         DO PUNIZN05 WITH '1014'
         DO PUNIZN05 WITH '1015'
         DO PUNIZN05 WITH '1016'
         DO PUNIZN05 WITH '1017'

         DO PUNIZN05 WITH '1019'
         DO PUNIZN05 WITH '1020'
         DO PUNIZN05 WITH '1021'
         DO PUNIZN05 WITH '1022'
         DO PUNIZN05 WITH '1023'
         DO PUNIZN05 WITH '1024'
         DO PUNIZN05 WITH '1025'
         DO PUNIZN05 WITH '1026'
         DO PUNIZN05 WITH '1027'
         DO PUNIZN05 WITH '1028'
         DO PUNIZN05 WITH '1029'

         DO PUNIZN05 WITH '1034'
         DO PUNIZN05 WITH '1035'
         DO PUNIZN05 WITH '1036'
         DO PUNIZN05 WITH '1037'
         DO PUNIZN05 WITH '1038'                  
         DO PUNIZN05 WITH '1039'

         DO PUNIZN05 WITH '1042'
         DO PUNIZN05 WITH '1043'
         DO PUNIZN05 WITH '1044'
         DO PUNIZN05 WITH '1045'         
         DO PUNIZN05 WITH '1046'
         DO PUNIZN05 WITH '1047'
         
         DO PUNIZN05 WITH '1050'
         DO PUNIZN05 WITH '1051'
         DO PUNIZN05 WITH '1052'                  
         DO PUNIZN05 WITH '1053'
         DO PUNIZN05 WITH '1056'
         DO PUNIZN05 WITH '1057'
         DO PUNIZN05 WITH '1060'
         DO PUNIZN05 WITH '1061'                           
         DO PUNIZN05 WITH '1062'
         DO PUNIZN05 WITH '1063'
         DO PUNIZN05 WITH '1066'
         DO PUNIZN05 WITH '1067'
         DO PUNIZN05 WITH '1068'
         DO PUNIZN05 WITH '1069'                                    
         
         *----------pounjenje kolone prethodne godine
                    
         USE &KKOCKA IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP

         MK0001=0
         MK0003=0
         MK0004=0
         MK0005=0
         MK0006=0
         MK0007=0
         MK0008=0
         MK0009=0
         MK0010=0
         MK0011=0
         MK0012=0         
         MK0013=0
         MK0014=0
         MK0015=0
         MK0016=0
         MK0017=0
         MK0018=0
         MK0019=0
         MK0020=0
         MK0021=0
         MK0022=0         
         MK0023=0
         MK0024=0
         MK0025=0     
         MK0026=0    
         MK0027=0         
         MK0028=0         
         MK0029=0         
         MK0030=0         
         MK0031=0         
         MK0032=0         
         MK0033=0                                             
         MK0034=0                           
         MK0036=0                           
         MK0037=0                           
         MK0038=0                           
         MK0039=0                                                      
         MK0040=0                                                      
         MK0041=0                                                      
         MK0042=0
         MK0045=0
         MK0046=0
         MK0047=0
         MK0048=0
         MK0049=0
         MK0050=0         
         MK0051=0
         MK0052=0
         MK0053=0
         MK0054=0
         MK0055=0
         MK0056=0
         MK0057=0
         MK0058=0
         MK0059=0
         MK0060=0
         MK0061=0
         MK0062=0
         MK0063=0
         MK0064=0
         MK0065=0
         MK0066=0
         MK0067=0
         MK0068=0
         MK0069=0
         MK0070=0         
         MK0071=0
         MK0072=0
*********************************
         MK0403=0
         MK0404=0
         MK0405=0
         MK0406=0
         MK0407=0
         MK0408=0
         MK0409=0
         MK0410=0
         MK0411=0
         MK0412=0         
         MK0413=0
         MK0414=0
         MK0415=0
         MK0416=0
         MK0417=0         
         MK0418=0
         MK0419=0
         MK0420=0
         MK0421=0
         MK0422=0         
         MK0423=0
         MK0424=0
         MK0425=0                  
         MK0426=0         
         MK0427=0         
         MK0428=0         
         MK0429=0         
         MK0430=0         
         MK0431=0         
         MK0432=0         
         MK0433=0         
         MK0434=0         
         MK0435=0         
         MK0436=0         
         MK0437=0         
         MK0438=0         
         MK0439=0         
         MK0440=0         
         MK0441=0         
         MK0442=0         
         MK0443=0         
         MK0444=0         
         MK0445=0         
         MK0446=0         
         MK0447=0         
         MK0448=0         
         MK0449=0         
         MK0450=0         
         MK0451=0         
         MK0452=0         
         MK0453=0         
         MK0454=0         
         MK0455=0         
         MK0456=0         
         MK0457=0         
         MK0458=0                           
         MK0459=0         
         MK0460=0         
         MK0461=0         
         MK0462=0         
         MK0463=0         
         MK0464=0         
         MK0465=0         
         
         MK1003=0
         MK1004=0
         MK1005=0
         MK1006=0
         MK1007=0         
         MK1008=0
         MK1009=0
         MK1010=0
         MK1011=0
         MK1012=0
         MK1013=0         
         MK1014=0         
         MK1015=0
         MK1016=0
         MK1017=0
         MK1018=0         
         MK1019=0
         MK1020=0         
         MK1021=0
         MK1022=0
         MK1023=0
         MK1024=0                  
         MK1025=0
         MK1026=0
         MK1027=0
         MK1028=0
         MK1029=0
         MK1030=0
         MK1031=0
         MK1032=0
         MK1033=0
         MK1034=0
         MK1035=0
         MK1036=0
         MK1037=0
         MK1038=0
         MK1039=0
         MK1040=0
         MK1041=0
         MK1042=0
         MK1043=0
         MK1044=0
         MK1045=0
         MK1046=0
         MK1047=0
         MK1048=0
         MK1049=0
         MK1050=0
         MK1051=0
         MK1052=0         
         MK1053=0
         MK1054=0
         MK1055=0
         MK1056=0
         MK1057=0
         MK1058=0
         MK1059=0
         MK1060=0
         MK1061=0
         MK1062=0
         MK1063=0
         MK1064=0                                                                                 
         MK1065=0
         MK1066=0
         MK1067=0
         MK1068=0         
         MK1069=0         
************POCETAK BILANSA STANJA*******************
         MK0001=PUNIZN01('00')
         MK0004=PUNIZN02('010')
         MK0004=MK0004+PUNIZN08('0190')         
         
         MK0005=PUNIZN02('011')
         MK0005=MK0005+PUNIZN02('012')
         MK0005=MK0005+PUNIZN08('0191')         
         MK0005=MK0005+PUNIZN08('0192')                  
         
         MK0006=PUNIZN02('013')
         MK0006=MK0006+PUNIZN08('0193')                           
         
         MK0007=PUNIZN02('014')
         MK0007=MK0007+PUNIZN08('0194')              
        
         MK0008=PUNIZN02('015')
         MK0008=MK0008+PUNIZN08('0195')

         MK0009=PUNIZN02('016')
         MK0009=MK0009+PUNIZN08('0196')
         
                           
         MK0011=PUNIZN02('020')
         MK0011=MK0011+PUNIZN08('0290')
         MK0011=MK0011+PUNIZN02('021')
         MK0011=MK0011+PUNIZN08('0291')

         MK0012=PUNIZN02('022')
         MK0012=MK0012+PUNIZN08('0292')

         MK0013=PUNIZN02('023')
         MK0013=MK0013+PUNIZN08('0293')

         MK0014=PUNIZN02('024')
         MK0014=MK0014+PUNIZN08('0294')

         MK0015=PUNIZN02('025')
         MK0015=MK0015+PUNIZN08('0295')
         MK0016=PUNIZN02('026')
         MK0016=MK0016+PUNIZN08('0296')
         MK0017=PUNIZN02('027')
         MK0017=MK0017+PUNIZN08('0297')
         MK0018=PUNIZN02('028')
         MK0018=MK0018+PUNIZN08('0298')
*****************************************************
         MK0020=PUNIZN02('030')
         MK0020=MK0020+PUNIZN08('0390')
         MK0020=MK0020+PUNIZN02('031')
         MK0020=MK0020+PUNIZN08('0391')

         MK0021=PUNIZN02('032')
         MK0021=MK0021+PUNIZN08('0392')

         MK0022=PUNIZN02('037')
         MK0022=MK0021+PUNIZN08('0397')

         MK0023=PUNIZN02('038')
         MK0023=MK0021+PUNIZN08('0398')

         MK0025=PUNIZN02('040')
         MK0025=MK0025+PUNIZN08('0490')

         MK0026=PUNIZN02('041')
         MK0026=MK0026+PUNIZN08('0491')

         MK0027=PUNIZN02('042')
         MK0027=MK0027+PUNIZN08('0492')

         MK0028=PUNIZN08('0430')
         MK0028=MK0028+PUNIZN09('04930')
         MK0028=MK0028+PUNIZN08('0440')
         MK0028=MK0028+PUNIZN09('04940')

         MK0029=PUNIZN08('0431')
         MK0029=MK0029+PUNIZN09('04931')
         MK0029=MK0029+PUNIZN08('0441')
         MK0029=MK0029+PUNIZN09('04941')

*************DEO 045***********************
         MK0030=PUNIZN08('0450')
         MK0030=MK0030+PUNIZN09('04950')

         MK0031=PUNIZN08('0451')
         MK0031=MK0031+PUNIZN09('04951')

         MK0032=PUNIZN02('046')
         MK0032=MK0032+PUNIZN08('0496')

         MK0033=PUNIZN02('048')
         MK0033=MK0033+PUNIZN08('0498')
***************************************
         MK0035=PUNIZN02('050')
         MK0035=MK0035+PUNIZN08('0590')
         MK0036=PUNIZN02('051')
         MK0036=MK0035+PUNIZN08('0591')
         MK0037=PUNIZN02('052')
         MK0037=MK0035+PUNIZN08('0592')
         MK0038=PUNIZN02('053')
         MK0038=MK0035+PUNIZN08('0593')
         MK0039=PUNIZN02('054')
         MK0039=MK0035+PUNIZN08('0594')
         MK0040=PUNIZN02('055')
         MK0040=MK0035+PUNIZN08('0595')
         MK0041=PUNIZN02('056')
         MK0041=MK0035+PUNIZN08('0596')
         MK0042=PUNIZN02('288')
         MK0045=PUNIZN01('10')
         MK0046=PUNIZN01('11')
         MK0047=PUNIZN01('12')
         MK0048=PUNIZN01('13')
         MK0049=PUNIZN01('14')
         MK0050=PUNIZN01('15')         

         MK0052=PUNIZN02('200')
         MK0052=MK0052+PUNIZN08('2090')
         MK0053=PUNIZN02('201')
         MK0053=MK0053+PUNIZN08('2091')
         MK0054=PUNIZN02('202')
         MK0054=MK0054+PUNIZN08('2092')
         MK0055=PUNIZN02('203')
         MK0055=MK0055+PUNIZN08('2093')
         MK0056=PUNIZN02('204')
         MK0056=MK0056+PUNIZN08('2094')
         MK0057=PUNIZN02('205')
         MK0057=MK0057+PUNIZN08('2095')
         MK0058=PUNIZN02('206')
         MK0058=MK0058+PUNIZN08('2096')

************************************
         MK0059=PUNIZN01('21')
         MK0060=PUNIZN01('22')
         MK0061=PUNIZN02('236')
         MK0062=PUNIZN01('23')
         MK0062=MK0062-PUNIZN02('236')
         MK0062=MK0062-PUNIZN02('237')

         MK0063=PUNIZN02('230')
         MK0063=MK0063+PUNIZN08('2390')
         MK0064=PUNIZN02('231')
         MK0064=MK0064+PUNIZN08('2391')
         MK0065=PUNIZN02('232')
         MK0065=MK0065+PUNIZN08('2392')
         MK0066=PUNIZN02('233')
         MK0066=MK0066+PUNIZN08('2393')


         MK0067=PUNIZN02('234')
         MK0067=MK0067+PUNIZN08('2394')
         MK0067=MK0067+PUNIZN02('235')
         MK0067=MK0067+PUNIZN08('2395')
         MK0067=MK0067+PUNIZN02('238')
         MK0067=MK0067+PUNIZN08('2398')
         MK0068=PUNIZN01('24')
         MK0069=PUNIZN01('27')
         MK0070=PUNIZN01('28')
         MK0070=MK0070-PUNIZN02('288')
         MK0072=PUNIZN01('88')

         MK0403=PUNIZN04('300')
         MK0404=PUNIZN04('301')
         MK0405=PUNIZN04('302')
         MK0406=PUNIZN04('303')
         MK0407=PUNIZN04('304')
         MK0408=PUNIZN04('305')
         MK0409=PUNIZN04('306')
         MK0410=PUNIZN04('309')
         MK0411=PUNIZN03('31')
         MK0412=PUNIZN04('047')
         MK0412=MK0412+PUNIZN04('237')
         MK0413=PUNIZN03('32')
         MK0414=PUNIZN04('330')
         
         MK0415=PUNIZN10('33')
         MK0415=MK0415-PUNIZN11('330')
         MK0416=PUNIZN12('33')
         MK0416=MK0416-PUNIZN13('330')
         MK0418=PUNIZN04('340')
         MK0419=PUNIZN04('341')
         MK0422=PUNIZN04('350')
         MK0423=PUNIZN04('351')
         MK0426=PUNIZN04('400')
         MK0427=PUNIZN04('401')
         MK0428=PUNIZN04('403')
         MK0429=PUNIZN04('404')
         MK0430=PUNIZN04('405')
         MK0431=PUNIZN04('402')
         MK0431=MK0431+PUNIZN04('409')         
         MK0433=PUNIZN04('410')
         MK0434=PUNIZN04('411')
         MK0435=PUNIZN04('412')
         MK0436=PUNIZN04('413')
         MK0437=PUNIZN04('414')
         MK0438=PUNIZN04('415')         
         MK0439=PUNIZN04('416')
         MK0440=PUNIZN04('419')         
         MK0441=PUNIZN04('498')
         MK0444=PUNIZN04('420')
         MK0445=PUNIZN04('421')
         MK0446=PUNIZN04('422')
         MK0447=PUNIZN04('423')
         MK0448=PUNIZN04('427')
         MK0449=PUNIZN04('424')
         MK0449=MK0449+PUNIZN04('425')         
         MK0449=MK0449+PUNIZN04('426')         
         MK0449=MK0449+PUNIZN04('429')         
         MK0450=PUNIZN04('430')
         MK0452=PUNIZN04('431')
         MK0453=PUNIZN04('432')
         MK0454=PUNIZN04('433')
         MK0455=PUNIZN02('434')
         MK0456=PUNIZN04('435')
         MK0457=PUNIZN04('436')
         MK0458=PUNIZN04('439')                                                      
         MK0459=PUNIZN03('44')
         MK0459=MK0459+PUNIZN03('45')         
         MK0459=MK0459+PUNIZN03('46')         
         MK0460=PUNIZN03('47')
         MK0461=PUNIZN03('48')         
         MK0462=PUNIZN03('49')
         MK0462=MK0462-PUNIZN04('498')         
         MK0465=PUNIZN03('89')




****************************KRAJ BILANS STANJA****************
********************BUILANS USPEHA*****************************

*******************BILANS USPEHA******************************
         MK1003=PUNIZN04('600')
         MK1004=PUNIZN04('601')
         MK1005=PUNIZN04('602')
         MK1006=PUNIZN04('603')
         MK1007=PUNIZN04('604')
         MK1008=PUNIZN04('605')
         MK1010=PUNIZN04('610')
         MK1011=PUNIZN04('611')
         MK1012=PUNIZN04('612')
         MK1013=PUNIZN04('613')
         MK1014=PUNIZN04('614')
         MK1015=PUNIZN04('615')                  
         MK1016=PUNIZN03('64')
         MK1017=PUNIZN03('65')         
         MK1018=PUNIZN01('50')                  
         MK1020=PUNIZN03('62')
         MK1021=PUNIZN04('630')
         MK1022=PUNIZN04('631')         
         MK1023=PUNIZN01('51')                           
         MK1023=MK1023-PUNIZN02('513')
         MK1024=PUNIZN02('513')         
         MK1025=PUNIZN01('52')
         MK1026=PUNIZN01('53')
         MK1027=PUNIZN02('540')                  
         MK1028=PUNIZN02('541')
         MK1028=MK1028+PUNIZN02('542')
         MK1028=MK1028+PUNIZN02('543')         
         MK1028=MK1028+PUNIZN02('544')         
         MK1028=MK1028+PUNIZN02('545')         
         MK1028=MK1028+PUNIZN02('546')
         MK1028=MK1028+PUNIZN02('547')
         MK1028=MK1028+PUNIZN02('548')
         MK1028=MK1028+PUNIZN02('549')
         MK1029=PUNIZN01('55')
         MK1034=PUNIZN04('660')
         MK1035=PUNIZN04('661')
         MK1038=PUNIZN04('662')                  
         MK1039=PUNIZN04('663')
         MK1039=MK1039+PUNIZN04('664')
         MK1036=PUNIZN04('665')                  
         MK1037=PUNIZN04('669')                  
         
         MK1042=PUNIZN02('560')
         MK1043=PUNIZN02('561')
         MK1044=PUNIZN02('565')
         MK1045=PUNIZN02('566')
         MK1045=MK1045+PUNIZN02('569')
         MK1046=PUNIZN02('562')
         MK1047=PUNIZN02('563')
         MK1047=MK1047+PUNIZN02('564')

         MK1050=PUNIZN04('683')
         MK1050=MK1050+PUNIZN04('685')
         MK1051=PUNIZN02('583')
         MK1051=MK1047+PUNIZN02('585')
         MK1052=PUNIZN03('67')
         MK1052=MK1052+PUNIZN03('68')
         MK1052=MK1052-PUNIZN04('683')
         MK1052=MK1052-PUNIZN04('685')

         MK1053=PUNIZN01('57')
         MK1053=MK1053+PUNIZN01('58')
         MK1053=MK1053-PUNIZN02('583')
         MK1053=MK1053-PUNIZN02('585')

         MK1056=PUNIZN03('69')
         MK1056=MK1056-PUNIZN01('59')

         MK1057=PUNIZN01('59')
         MK1057=MK1054-PUNIZN03('69')
         
         MK1060=PUNIZN07('721')
         MK1061=PUNIZN07('722')           
         MK1062=PUNIZN11('722')                    
         MK1063=PUNIZN07('723')                    
           
**********************************************         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN06 WITH '0001'
         DO PUNIZN06 WITH '0003'
         DO PUNIZN06 WITH '0004'
         DO PUNIZN06 WITH '0005'
         DO PUNIZN06 WITH '0006'
         DO PUNIZN06 WITH '0007'
         DO PUNIZN06 WITH '0008'
         DO PUNIZN06 WITH '0009'

         DO PUNIZN06 WITH '0011'         
         DO PUNIZN06 WITH '0012'
         DO PUNIZN06 WITH '0013'
         DO PUNIZN06 WITH '0014'
         DO PUNIZN06 WITH '0015'
         DO PUNIZN06 WITH '0016'
         DO PUNIZN06 WITH '0017'
         DO PUNIZN06 WITH '0018'

         DO PUNIZN06 WITH '0020'
         DO PUNIZN06 WITH '0021'
         DO PUNIZN06 WITH '0022'
         DO PUNIZN06 WITH '0023'

         DO PUNIZN06 WITH '0025'
         DO PUNIZN06 WITH '0026'         
         DO PUNIZN06 WITH '0027'
         DO PUNIZN06 WITH '0028'
         DO PUNIZN06 WITH '0029'
         DO PUNIZN06 WITH '0030'
         DO PUNIZN06 WITH '0031'
         DO PUNIZN06 WITH '0032'
         DO PUNIZN06 WITH '0033'
         
         DO PUNIZN06 WITH '0035'
         DO PUNIZN06 WITH '0036'
         DO PUNIZN06 WITH '0037'
         DO PUNIZN06 WITH '0038'
         DO PUNIZN06 WITH '0039'
         DO PUNIZN06 WITH '0040'
         DO PUNIZN06 WITH '0041'
         DO PUNIZN06 WITH '0042'


         DO PUNIZN06 WITH '0045'
         DO PUNIZN06 WITH '0046'
         DO PUNIZN06 WITH '0047'
         DO PUNIZN06 WITH '0048'
         DO PUNIZN06 WITH '0049'
         DO PUNIZN06 WITH '0050'
         
         DO PUNIZN06 WITH '0052'
         DO PUNIZN06 WITH '0053'
         DO PUNIZN06 WITH '0054'
         DO PUNIZN06 WITH '0055'
         DO PUNIZN06 WITH '0056'
         DO PUNIZN06 WITH '0057'
         DO PUNIZN06 WITH '0058'
         DO PUNIZN06 WITH '0059'
         DO PUNIZN06 WITH '0060'
         DO PUNIZN06 WITH '0061'


         DO PUNIZN06 WITH '0063'
         DO PUNIZN06 WITH '0064'
         DO PUNIZN06 WITH '0065'
         DO PUNIZN06 WITH '0066'
         DO PUNIZN06 WITH '0067'
         DO PUNIZN06 WITH '0068'
         DO PUNIZN06 WITH '0069'
         DO PUNIZN06 WITH '0070'
         DO PUNIZN06 WITH '0072'                                             
         
         
         
         DO PUNIZN06 WITH '0403'
         DO PUNIZN06 WITH '0404'
         DO PUNIZN06 WITH '0405'
         DO PUNIZN06 WITH '0406'
         DO PUNIZN06 WITH '0407'
         DO PUNIZN06 WITH '0408'
         DO PUNIZN06 WITH '0409'
         DO PUNIZN06 WITH '0410'
         DO PUNIZN06 WITH '0411'
         DO PUNIZN06 WITH '0412'
         DO PUNIZN06 WITH '0413'
         DO PUNIZN06 WITH '0414'
         DO PUNIZN06 WITH '0415'
         DO PUNIZN06 WITH '0416'
         
         
         DO PUNIZN06 WITH '0418'
         DO PUNIZN06 WITH '0419'
         DO PUNIZN06 WITH '0420'
                  
         DO PUNIZN06 WITH '0422'
         DO PUNIZN06 WITH '0423'
         
         
         DO PUNIZN06 WITH '0426'
         DO PUNIZN06 WITH '0427'
         DO PUNIZN06 WITH '0428'
         DO PUNIZN06 WITH '0429'
         DO PUNIZN06 WITH '0430'
         DO PUNIZN06 WITH '0431'
         
         
         DO PUNIZN06 WITH '0433'
         DO PUNIZN06 WITH '0434'
         DO PUNIZN06 WITH '0435'
         DO PUNIZN06 WITH '0436'
         
         
         DO PUNIZN06 WITH '0437'
         DO PUNIZN06 WITH '0438'
         DO PUNIZN06 WITH '0439'
         DO PUNIZN06 WITH '0439'         
         DO PUNIZN06 WITH '0441'

         DO PUNIZN06 WITH '0444'
         DO PUNIZN06 WITH '0445'
         DO PUNIZN06 WITH '0446'
         DO PUNIZN06 WITH '0447'
         DO PUNIZN06 WITH '0448'
         DO PUNIZN06 WITH '0449'
         DO PUNIZN06 WITH '0450'

         DO PUNIZN06 WITH '0452'
         DO PUNIZN06 WITH '0453'
         DO PUNIZN06 WITH '0454'
         DO PUNIZN06 WITH '0455'
         DO PUNIZN06 WITH '0456'
         DO PUNIZN06 WITH '0457'
         DO PUNIZN06 WITH '0458'                           
         DO PUNIZN06 WITH '0459'         
         DO PUNIZN06 WITH '0460'
         DO PUNIZN06 WITH '0461'
         DO PUNIZN06 WITH '0462'                           
         DO PUNIZN06 WITH '0465'                           

         DO PUNIZN06 WITH '1003'
         DO PUNIZN06 WITH '1004'
         DO PUNIZN06 WITH '1005'
         DO PUNIZN06 WITH '1006'
         DO PUNIZN06 WITH '1007'
         DO PUNIZN06 WITH '1008'

         DO PUNIZN06 WITH '1010'
         DO PUNIZN06 WITH '1011'
         DO PUNIZN06 WITH '1012'
         DO PUNIZN06 WITH '1013'
         DO PUNIZN06 WITH '1014'
         DO PUNIZN06 WITH '1015'
         DO PUNIZN06 WITH '1016'
         DO PUNIZN06 WITH '1017'

         DO PUNIZN06 WITH '1019'
         DO PUNIZN06 WITH '1020'
         DO PUNIZN06 WITH '1021'
         DO PUNIZN06 WITH '1022'
         DO PUNIZN06 WITH '1023'
         DO PUNIZN06 WITH '1024'
         DO PUNIZN06 WITH '1025'
         DO PUNIZN06 WITH '1026'
         DO PUNIZN06 WITH '1027'
         DO PUNIZN06 WITH '1028'
         DO PUNIZN06 WITH '1029'

         DO PUNIZN06 WITH '1034'
         DO PUNIZN06 WITH '1035'
         DO PUNIZN06 WITH '1036'
         DO PUNIZN06 WITH '1037'
         DO PUNIZN06 WITH '1038'         
         DO PUNIZN06 WITH '1039'

         DO PUNIZN06 WITH '1042'
         DO PUNIZN06 WITH '1043'
         DO PUNIZN06 WITH '1044'
         DO PUNIZN06 WITH '1045'         
         DO PUNIZN06 WITH '1046'
         DO PUNIZN06 WITH '1047'
         
         DO PUNIZN06 WITH '1050'
         DO PUNIZN06 WITH '1051'
         DO PUNIZN06 WITH '1052'                  
         DO PUNIZN06 WITH '1053'
         DO PUNIZN06 WITH '1056'
         DO PUNIZN06 WITH '1057'
         DO PUNIZN06 WITH '1060'
         DO PUNIZN06 WITH '1061'                           
         DO PUNIZN06 WITH '1062'
         DO PUNIZN06 WITH '1063'
         DO PUNIZN06 WITH '1066'
         DO PUNIZN06 WITH '1067'
         DO PUNIZN06 WITH '1068'
         DO PUNIZN06 WITH '1069'                                    

         SET EXACT ON
         replace ALL realkv WITH REALKV
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
               REPLACE NETO WITH MMK
   POP KEY
ENDPROC

PROCEDURE PUNIZN06
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
            REPLACE PRETH WITH MMK
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

FUNCTION PUNIZN08(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,4)<>AKON
                  EXIT
               ENDIF
               MK=MK+DUG-POT
               SKIP
            ENDDO
         ENDIF
    POP KEY
 RETURN(MK)

FUNCTION PUNIZN09(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,5)<>AKON
                  EXIT
               ENDIF
               MK=MK+DUG-POT
               SKIP
            ENDDO
         ENDIF
    POP KEY
 RETURN(MK)
FUNCTION PUNIZN10(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,2)<>AKON
                  EXIT
               ENDIF
               MK=MK+POT
               SKIP
            ENDDO
         ENDIF
    POP KEY
 RETURN(MK)

FUNCTION PUNIZN11(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,3)<>AKON
                  EXIT
               ENDIF
               MK=MK+POT
               SKIP
            ENDDO
         ENDIF
    POP KEY
 RETURN(MK)

FUNCTION PUNIZN12(AKON)
   PUSH KEY CLEAR
         SELECT kocka
         SEEK AKON
         MK=0
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF SUBSTR(KONTO,1,2)<>AKON
                  EXIT
               ENDIF
               MK=MK+DUG
               SKIP
            ENDDO
         ENDIF
    POP KEY
 RETURN(MK)

FUNCTION PUNIZN13(AKON)
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