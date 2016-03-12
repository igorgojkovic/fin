procedure BILPUNIn  
PUSH KEY CLEAR
SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH '   ','                ','  AKTIVA                                                  ',' ' 
     DO PUNIBIL WITH '0001','                ','  A.STALNA IMOVINA(0002+0003+0009+0010+0011)             ','*' 
     DO PUNIBIL WITH '0002','       01       ','I.NEMATERIJALNA IMOVINA                                  ','*' 
     DO PUNIBIL WITH '0003','                ','II.NEKRETNINE, POSTROJENJA I OPREMA                      ',' ' 
     DO PUNIBIL WITH '    ','        02      ','    (0004+0005+0006+0007+0008)                      ','*' 
     DO PUNIBIL WITH '0004','020,021i deo 029','  1.Zemljište                                            ','*' 
     DO PUNIBIL WITH '0005','022 i deo 029   ','  2.Gradjevinski objekti                                 ','*' 
     DO PUNIBIL WITH '0006','023 i deo 029   ','  3.Postrojenja i oprema                                 ','*' 
     DO PUNIBIL WITH '0007','024 i deo 029   ','  4.Investicione nekretnine                              ','*' 
     DO PUNIBIL WITH '    ','02 osim 020,021 ','                                                         ',' ' 
     DO PUNIBIL WITH '0008','022,023,024 i   ','  5.Ostale nekretnine,potrojenja i oprema                ',' ' 
     DO PUNIBIL WITH '    ','dela 029        ','                                                         ','*' 
     DO PUNIBIL WITH '0009','        03      ','III.BIOLOŠKA SREDSTVA                                    ','*' 
     DO PUNIBIL WITH '0010','        04      ','IV.DUGOROÈNI FINANSIJSKI PLASMANI                        ','*' 
     DO PUNIBIL WITH '0011','        05      ','  V.DUGOROÈNA POTRAŽIVANJA                               ','*' 
     DO PUNIBIL WITH '0012','                ','  B.OBRTNA IMOVINA(0013+0018+0019+0020+0021+0022+0023)   ',' ' 
     DO PUNIBIL WITH '0013','    Klasa 1     ','  I.ZALIHE (0014+0015+0016+0017)                         ','*' 
     DO PUNIBIL WITH '0014','        10      ','  1.Zalihe materijala                                    ','*' 
     DO PUNIBIL WITH '0015','    11 i 12     ','  2.Nedovršena proizvodnja,nedovršene usluge i gotovi pr.','*' 
     DO PUNIBIL WITH '0016','        13      ','  3.Roba                                                 ','*'      
     DO PUNIBIL WITH '0017','        15      ','  6.Plaæeni avansi za zalihe i usluge                    ','*' 
     DO PUNIBIL WITH '0018','        20      ','   II.POTRAŽIVANJA PO OSNOVU PRODAJE                     ','*' 
     DO PUNIBIL WITH '0019','        22      ','  III.DRUGA POTRAŽIVANJA                                 ','*' 
     DO PUNIBIL WITH '0020','        23      ','   IV.KRATKOROÈNI FINANSIJSKI PLASMANI                   ','*' 
     DO PUNIBIL WITH '0021','        24      ','    V.GOTOVINSKI EKVIVALENTI I GOTOVINA                  ','*' 
     DO PUNIBIL WITH '0022','        27      ','   VI.POREZ NA DODATU VREDNOST                           ','*'      
     DO PUNIBIL WITH '0023','        28      ',' VII.AKTIVNA VREMENSKA RAZGRANIÈENJA                     ','*' 
     DO PUNIBIL WITH '0024','                ','  V.UKUPNA AKTIVA=POSLOVNA IMOVINA (0001+0012)           ','*' 
     DO PUNIBIL WITH '0025','        88      ','  G.VANBILANSNA AKTIVA                                   ','*' 


     DO PUNIBIL WITH '    ','                ','  PASIVA                                                 ','*' 
     DO PUNIBIL WITH '0401','                ','  A.ULOZI(0402+0403-0406) >=0                            ','*' 
     DO PUNIBIL WITH '0402','        30      ','  I.ULOZI(SOPSTVENI IZVORI) OSNIVAÈA I DRUGIH LICA)      ','*' 
     DO PUNIBIL WITH '0403','        34      ',' II.NERASPOREÐENI VIŠAK PRIHODA NAD RASHODIMA(0404+0405) ','*' 
     DO PUNIBIL WITH '0404','       340      ','   1.Nerasporeðeni višak prihoda nad rashodima           ',' ' 
     DO PUNIBIL WITH '    ','                ','     ranijih godina                                      ','*'      
     DO PUNIBIL WITH '0405','       341      ','   1.Nerasporeðeni višak prihoda nad rashodima           ',' ' 
     DO PUNIBIL WITH '    ','                ','     tekuæe godina                                       ','*'      
     DO PUNIBIL WITH '0406','        35      ',' III. VIŠAK RASHODA NAD PRIHODIMA(0407+0408)             ','*' 
     DO PUNIBIL WITH '0407','       350      ','   1.Višak rashoda nad prihodima ranijih godina          ','*' 
     DO PUNIBIL WITH '0408','       351      ','   2.Višak rashoda nad prihodima tekuæe godine           ','*' 
     DO PUNIBIL WITH '0409','                ','  B.DUGOROÈNA REZERVISANJA I OBAVEZE                     ',' '      
     DO PUNIBIL WITH '    ','                ','    (0410+0411+0414+0415+0416+0417+0418+0419)            ','*' 
     DO PUNIBIL WITH '0410','        40      ','  I.DUGOROÈNA REZERVISANJA                               ','*'      
     DO PUNIBIL WITH '0411','        41      ',' II.DUGOROÈNE OBAVEZE (0412+0413)                        ','*'      
     DO PUNIBIL WITH '0412','  413 i 414     ','   1.Dugoroèni krediti                                   ','*' 
     DO PUNIBIL WITH '0413','41osim 413i414  ','   2.Ostale dugoroène obaveze                            ','*' 
     DO PUNIBIL WITH '0414','       42       ',' III.KRATKOROÈNE FINANSIJSKE OBAVEZE                     ','*'
     DO PUNIBIL WITH '0415','       43       ',' IV. OBAVEZE IZ POSLOVANJA                               ','*'      
     DO PUNIBIL WITH '0416','   45 i 46      ','  V.OSTALE KRATKOROÈNE OBAVEZE                        ','*' 
     DO PUNIBIL WITH '0417','        47      ',' VI.OBAVEZE PO OSNOVU POREZA NA DODATU VREDNOST       ','*' 
     DO PUNIBIL WITH '0418','        48      ',' VII.OBAVEZE ZA POREZE, DOPRINOSE I DRUGE DAŽB.        ','*' 
     DO PUNIBIL WITH '0419','        49      ',' VIII.PASIVNA VREMENSKA RAZGRANIÈENJA                  ','*' 
     DO PUNIBIL WITH '    ','                ','  V.VIŠAK RASHODA NAD PRIHODIMA IZNAD VISINE ULOGA       ',' ' 
     DO PUNIBIL WITH '0420','                ','   (SOPSTVENI IZVORI)(0409-0024)>=0                      ',' '
     DO PUNIBIL WITH '    ','                ','   =(0402+0403-0406<=0                                   ','*'
     DO PUNIBIL WITH '0421','                ','  G UKUPNA PASIVA(0401+0409-0420>=0                      ','*' 
     DO PUNIBIL WITH '0422','      89        ','  D. VANBILANSNA PASIVA                                  ','*'


     
     DO PUNIBIL WITH '    ','                ','    PRIHODI I RASHODI  IZ REDOVNOG POSLOVANJA            ','*' 
     DO PUNIBIL WITH '1001','60 do 65        ','  A.POSLOVNI PRIHODI(1002+1003+1004+1005+1006)           ',' ' 
     DO PUNIBIL WITH '    ','osim 61 i 62    ','                                                         ','*' 
     DO PUNIBIL WITH '1002','      60        ',' I.PRIHODI OD PRODAJE ROBE,PROIZVODA I USLUGA            ','*' 
     DO PUNIBIL WITH '1003','630 I 631       ',' II.PRIHODI OD ÈLANARINA I ÈLANSKIH DOPRINOSA            ','*' 
     DO PUNIBIL WITH '1004','632 I 639       ',' IIII.PRIHODI PO POSEBNIM PROPISIMA IZ BUDŽETA I         ',' ' 
     DO PUNIBIL WITH '    ','                ','   OSTALIH IZVORA                                        ','*' 
     DO PUNIBIL WITH '1005','        64      ',' IV.PRIHODI OD DOTACIJA,DONACIJA,SUBVENCIJA I SL         ','*' 
     DO PUNIBIL WITH '1006','        65      ',' V.PRIHODI OD NEFINANSIJSKE IMOVINE                      ','*' 
     DO PUNIBIL WITH '1007',' 50 do 55 61,620',' B.POSLOVNI RASHODI(1008-1009-1010+1011+1012+1013+1014+  ',' ' 
     DO PUNIBIL WITH '   ','    i 621        ','    1015+1016+1017+1018)                                 ','*' 
     DO PUNIBIL WITH '1008','        50      ','  I.NABAVNA VREDNOST PRODATE ROBE                        ','*' 
     DO PUNIBIL WITH '1009','        61      ','  II.PRIHODI OD AKTIVIRANJA ROBE,PROIZVODA I USLUGA      ','*' 
     DO PUNIBIL WITH '1010','       620      ','  III.POVEÆANJE VREDNOSTI ZALIHA NEDOVRŠENIH I GOTOVIH   ',' ' 
     DO PUNIBIL WITH '   ','                ','    PROIZVODA I NEDOVRŠENIH USLUGA                        ','*' 
     DO PUNIBIL WITH '1011','       621      ',' IV.SMANJENJE VREDNOSTI ZALIHA NEDOVRŠENIH I GOTOVIH     ',' ' 
     DO PUNIBIL WITH '   ','                ','    PROIZVODA I NEDOVRŠENIH USLUGA                        ','*' 
     DO PUNIBIL WITH '1012','        51      ','  V.TROŠKOVI MATERIJALA I ENERGIJE                       ','*' 
     DO PUNIBIL WITH '1013','        52      ','  VII.TROŠKOVI ZARADA,NAKNADA ZARADA I OSTALI LIÈNI RASHODI','*' 
     DO PUNIBIL WITH '1014','        53      ','  VIII.TROŠKOVI PROIZVODNIH USLUGA                           ','*' 
     DO PUNIBIL WITH '1015','       540      ','  IX.TROŠKOVI AMORTIZACIJE                                  ','*' 
     DO PUNIBIL WITH '1016','       541      ',' X.TROŠKOVI REZERVISANJA                                    ','*' 
     DO PUNIBIL WITH '1017','       557      ',' X.TROŠKOVI DONACIJA                                        ','*'      
     DO PUNIBIL WITH '1018','  55 osim 557   ',' XI.NEMATERIJALNI TROŠKOVI                                  ','*' 
     DO PUNIBIL WITH '1019','                ','  V.POSLOVNI DOBITAK(1001-1007)>=0                          ','*' 
     DO PUNIBIL WITH '1020','                ','  G.POSLOVNI GUBITAK(1007-1001)>=0                          ','*' 
     DO PUNIBIL WITH '1021','      66        ','  I.PRIHODI OD FINANSIJSKE IMOVINE                          ','*' 
     DO PUNIBIL WITH '    ','                ','     FINANSIJSKI PRIHODI (1022+1023+1024+1025+1026)         ','*'      
     DO PUNIBIL WITH '1022','     660        ',' 1.Prihodi od finansijske imovine od matiènih,zavisnih      ',' ' 
     DO PUNIBIL WITH '    ','                ','   i ostalih pravnih lica                                   ','*'  
     DO PUNIBIL WITH '1023','     661         ','2.Prihodi od kamata                                        ','*'      
     DO PUNIBIL WITH '1024','  662 I 663     ',' 3.Pozitivne kursne razlike i prihodi po osnovu efekata     ',' ' 
     DO PUNIBIL WITH '    ','                ','    valutne klauzule i ostalih efekata zaštite od  rizika   ','*' 
     DO PUNIBIL WITH '1025','     664        ',' 4.Prihodi od dividendi                                     ','*'        
     DO PUNIBIL WITH '1026','     669        ',' 5.Ostali prihodi od finansijske imovine                    ','*'             
     DO PUNIBIL WITH '1027','      56        ','  II.FINANSIJSKI RASHODI (1028+1029+1030+1031)              ','*'           
     DO PUNIBIL WITH '1028','     560        ','  1.Finansijski rashodi iz odnosa sa matiènim,zavisnim      ',' ' 
     DO PUNIBIL WITH '   ','                 ','    i ostalim povezanim licima                               ','*' 
     DO PUNIBIL WITH '1029','     562        ','  2.Rashodi kamata                                        ','*'      
     DO PUNIBIL WITH '1030','  563,564 i 566 ','  3.Negativne kursne razlike i rashodi po osnovu efekata     ',' ' 
     DO PUNIBIL WITH '    ','                ','    valutne klauzule i ostalih efekata zaštite od rizika   ','*' 
     DO PUNIBIL WITH '1031','     569        ','  4.Ostali finansijski rashodi                              ','*'           
     DO PUNIBIL WITH '1032','                ','  III.DOBITAK IZ FINANSIRANJA (1021-1027)                  ','*' 
     DO PUNIBIL WITH '1033','                ','  IV..GUBITAK IZ FINANSIRANJA (1027-1021)                  ','*' 
     DO PUNIBIL WITH '    ','                ','  V.PRIHODI OD USKLAÐIVANJA VREDNOSTI KRATKOROÈNIH       ',' ' 
     DO PUNIBIL WITH '1034','  683 I 685     ','    I DUGOROÈNIH FINANSIJSKIOH PLASMANA I POTRAŽIVANJA   ','*' 
     DO PUNIBIL WITH '    ','                ','  VI.RASHODI OD USKLAÐIVANJA VREDNOSTI KRATKOROÈNIH       ',' ' 
     DO PUNIBIL WITH '1035','  583 I 585     ','    I DUGOROÈNIH FINANSIJSKIOH PLASMANA I POTRAŽIVANJA   ','*' 
     DO PUNIBIL WITH '    ','                ','  VII.VIŠAK PRIHODA NAD RASHODIMA  PO OSNOVU USKLAÐIVANJA  ',' ' 
     DO PUNIBIL WITH '1036','                ','    USKLAÐIVANJA VREDNOSTI KRATKOROÈNIH I DUGORÆNIH       ',' '  
     DO PUNIBIL WITH '    ','  683 I 685     ','    FINANSIJSKIOH PLASMANA I POTRAŽIVANJA  1034-1035      ','*' 
     DO PUNIBIL WITH '    ','                ','  VIII.VIŠAK RASHODA NAD PRIHODIMA  PO OSNOVU USKLAÐIVANJA  ',' ' 
     DO PUNIBIL WITH '1037','                ','    USKLAÐIVANJA VREDNOSTI KRATKOROÈNIH I DUGORÆNIH       ',' '  
     DO PUNIBIL WITH '    ','                ','    FINANSIJSKIOH PLASMANA I POTRAŽIVANJA 1035-1034     ','*' 
     DO PUNIBIL WITH '1038','67i68osim683i685','  IX.OSTALI PRIHODI                                      ','*' 
     DO PUNIBIL WITH '1039','57i58osim583i585','   X.OSTALI RASHODI                                      ','*' 

     DO PUNIBIL WITH '    ','                ','  XI.VIŠAK PRIHODA NAD RASHODIMA IZ REDOVNOG POSLOVANJA  ',' '      
     DO PUNIBIL WITH '1040','                ','    PRE OPOREZIVANJA                                    ',' '           
     DO PUNIBIL WITH '   ','                ','     (1019-1020+1032-1033+1036-1037+1038-1039)           ','*' 
     DO PUNIBIL WITH '    ','                ','  XII.VIŠAK RASHODA NAD PRIHODIMA IZ REDOVNOG POSLOVANJA  ',' '      
     DO PUNIBIL WITH '1041','                ','    PRE OPOREZIVANJA                                    ',' '           
     DO PUNIBIL WITH '   ','                ','     (1020-1019+1033-1032+1037-1036+1039-1038)           ','*' 
     DO PUNIBIL WITH '    ','                ','  XIII.VIŠAK PRIHODA NAD RASHODIMA                         ',' '      
     DO PUNIBIL WITH '1042','  69-59         ','      EFEKTI PROMENE RAÈUNOVODSTVENE POLITIKE            ',' '      
     DO PUNIBIL WITH '    ','                ','      I ISPRAVKA GREŠAKA IZ RANIJIH PERIODA              ','*'      
     DO PUNIBIL WITH '    ','                ','  XIV.VIŠAK RASHODA NAD PRIHODIMA                         ',' '      
     DO PUNIBIL WITH '1043','  69-59         ','      EFEKTI PROMENE RAÈUNOVODSTVENE POLITIKE            ',' '      
     DO PUNIBIL WITH '    ','                ','      I ISPRAVKA GREŠAKA IZ RANIJIH PERIODA              ','*'      
     DO PUNIBIL WITH '1044','               ','   D.VIŠAK PRIHODA NAD RASHODIMA PRE OPOREZIVANJA         ',' ' 
     DO PUNIBIL WITH '    ','               ','     (1040-1041+1042-1043)                                ','*' 
     DO PUNIBIL WITH '1045','               ','   DJ.VIŠAK RASHODA NAD PRIHODIMA PRE OPOREZIVANJA         ',' ' 
     DO PUNIBIL WITH '    ','               ','     (1041-1040+1043-1042)                                ','*' 
     DO PUNIBIL WITH '    ','                ','  E.POREZ NA RAZLIKU PRIHODA I RASHODA                   ','*' 
     DO PUNIBIL WITH '1046','       721      ','   I.PORESKI RASHOD PERIODA                              ','*' 
     DO PUNIBIL WITH '1047','                ','   ZJ.NETO VIŠAK PRIHODA NAD RASHODIMA (1044-1045-1046)    ','*' 
     DO PUNIBIL WITH '1048','                ','   Z.NETO VIŠAK RASHODA NAD PRIHODIMA (1045-1044+1046)    ','*' 

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
      SEEK '0001'
      NP0001=PRETH
      NN0001=NETO
      SEEK '0002'
      NP0002=PRETH
      NN0002=NETO
      SEEK '0003'
      NP0003=PRETH
      NN0003=NETO
      SEEK '0004'
      NP0004=PRETH
      NN0004=NETO
      SEEK '0005'
      NP0005=PRETH
      NN0005=NETO
      SEEK '0006'
      NP0006=PRETH
      NN0006=NETO
      SEEK '0007'
      NP0007=PRETH
      NN0007=NETO
      SEEK '0008'
      NP0008=PRETH
      NN0008=NETO
      SEEK '0009'
      NP0009=PRETH
      NN0009=NETO
      SEEK '0010'
      NP0010=PRETH
      NN0010=NETO
      SEEK '0011'
      NP0011=PRETH
      NN0011=NETO
      SEEK '0012'
      NP0012=PRETH
      NN0012=NETO
      SEEK '0013'
      NP0013=PRETH
      NN0013=NETO
      SEEK '0014'
      NP0014=PRETH
      NN0014=NETO
      SEEK '0015'
      NP0015=PRETH
      NN0015=NETO
      SEEK '0016'
      NP0016=PRETH
      NN0016=NETO
      SEEK '0017'
      NP0017=PRETH
      NN0017=NETO
      SEEK '0018'
      NP0018=PRETH
      NN0018=NETO
      SEEK '0019'
      NP0019=PRETH
      NN0019=NETO
      SEEK '0020'
      NP0020=PRETH
      NN0020=NETO
      SEEK '0021'
      NP0021=PRETH
      NN0021=NETO
      SEEK '0022'
      NP0022=PRETH
      NN0022=NETO
      SEEK '0023'
      NP0023=PRETH
      NN0023=NETO
      SEEK '0024'
      NP0024=PRETH
      NN0024=NETO
      SEEK '0025'
      NP0025=PRETH
      NN0025=NETO

      SEEK '0401'
      NP0401=PRETH
      NN0401=NETO
      SEEK '0402'
      NP0402=PRETH
      NN0402=NETO
      SEEK '0403'
      NP0403=PRETH
      NN0403=NETO
      SEEK '0404'
      NP0404=PRETH
      NN0404=NETO
      SEEK '0405'
      NP0405=PRETH
      NN0405=NETO
      SEEK '0406'
      NP0406=PRETH
      NN0406=NETO
      SEEK '0407'
      NP0407=PRETH
      NN0407=NETO
      SEEK '0408'
      NP0408=PRETH
      NN0408=NETO
      SEEK '0409'
      NP0409=PRETH
      NN0409=NETO

      SEEK '0410'
      NP0410=PRETH
      NN0410=NETO

      SEEK '0411'
      NP0411=PRETH
      NN0411=NETO

      SEEK '0412'
      NP0412=PRETH
      NN0412=NETO

      SEEK '0413'
      NP0413=PRETH
      NN0413=NETO

      SEEK '0414'
      NP0414=PRETH
      NN0414=NETO

      SEEK '0415'
      NP0415=PRETH
      NN0415=NETO

      SEEK '0416'
      NP0416=PRETH
      NN0416=NETO

      SEEK '0417'
      NP0417=PRETH
      NN0417=NETO

      SEEK '0418'
      NP0418=PRETH
      NN0418=NETO

      SEEK '0419'
      NP0419=PRETH
      NN0419=NETO

      SEEK '0420'
      NP0420=PRETH
      NN0420=NETO

      SEEK '0421'
      NP0421=PRETH
      NN0421=NETO

      SEEK '0422'
      NP0422=PRETH
      NN0422=NETO
**************************************
      SEEK '1001'
      NP1001=PRETH
      NN1001=NETO

      SEEK '1002'
      NP1002=PRETH
      NN1002=NETO

      SEEK '1003'
      NP1003=PRETH
      NN1003=NETO

      SEEK '1004'
      NP1004=PRETH
      NN1004=NETO

      SEEK '1005'
      NP1005=PRETH
      NN1005=NETO

      SEEK '1006'
      NP1006=PRETH
      NN1006=NETO

      SEEK '1007'
      NP1007=PRETH
      NN1007=NETO

      SEEK '1008'
      NP1008=PRETH
      NN1008=NETO

      SEEK '1009'
      NP1009=PRETH
      NN1009=NETO

      SEEK '1010'
      NP1010=PRETH
      NN1010=NETO

      SEEK '1011'
      NP1011=PRETH
      NN1011=NETO

      SEEK '1012'
      NP1012=PRETH
      NN1012=NETO

      SEEK '1013'
      NP1013=PRETH
      NN1013=NETO

      SEEK '1014'
      NP1014=PRETH
      NN1014=NETO

      SEEK '1015'
      NP1015=PRETH
      NN1015=NETO

      SEEK '1016'
      NP1016=PRETH
      NN1016=NETO

      SEEK '1017'
      NP1017=PRETH
      NN1017=NETO

      SEEK '1018'
      NP1018=PRETH
      NN1018=NETO

      SEEK '1019'
      NP1019=PRETH
      NN1019=NETO

      SEEK '1020'
      NP1020=PRETH
      NN1020=NETO

      SEEK '1021'
      NP1021=PRETH
      NN1021=NETO

      SEEK '1022'
      NP1022=PRETH
      NN1022=NETO

      SEEK '1023'
      NP1023=PRETH
      NN1023=NETO

      SEEK '1024'
      NP1024=PRETH
      NN1024=NETO

      SEEK '1025'
      NP1025=PRETH
      NN1025=NETO

      SEEK '1026'
      NP1026=PRETH
      NN1026=NETO

      SEEK '1027'
      NP1027=PRETH
      NN1027=NETO

      SEEK '1028'
      NP1028=PRETH
      NN1028=NETO

      SEEK '1029'
      NP1029=PRETH
      NN1029=NETO

      SEEK '1030'
      NP1030=PRETH
      NN1030=NETO

      SEEK '1031'
      NP1031=PRETH
      NN1031=NETO

      SEEK '1032'
      NP1032=PRETH
      NN1032=NETO

      SEEK '1033'
      NP1033=PRETH
      NN1033=NETO

      SEEK '1034'
      NP1034=PRETH
      NN1034=NETO

      SEEK '1035'
      NP1035=PRETH
      NN1035=NETO

      SEEK '1036'
      NP1036=PRETH
      NN1036=NETO

      SEEK '1037'
      NP1037=PRETH
      NN1037=NETO

      SEEK '1038'
      NP1038=PRETH
      NN1038=NETO

      SEEK '1039'
      NP1039=PRETH
      NN1039=NETO

      SEEK '1040'
      NP1040=PRETH
      NN1040=NETO

      SEEK '1041'
      NP1041=PRETH
      NN1041=NETO

      SEEK '1042'
      NP1042=PRETH
      NN1042=NETO

      SEEK '1043'
      NP1043=PRETH
      NN1043=NETO

      SEEK '1044'
      NP1044=PRETH
      NN1044=NETO

      SEEK '1045'
      NP1045=PRETH
      NN1045=NETO

      SEEK '1046'
      NP1046=PRETH
      NN1046=NETO

      SEEK '1047'
      NP1047=PRETH
      NN1047=NETO

      SEEK '1048'
      NP1048=PRETH
      NN1048=NETO
*----------------

      SEEK '0003'
      NP0003=NP0004+NP0005+NP0006+NP0007+NP0008
      NN0003=NN0004+NN0005+NN0006+NN0007+NN0008
      REPLACE PRETH WITH NP0003
      REPLACE NETO  WITH NN0003

      SEEK '0013'
      NP0013=NP0014+NP0015+NP0016+NP0017
      NN0013=NN0014+NN0015+NN0016+NN0017
      REPLACE PRETH WITH NP0013
      REPLACE NETO  WITH NN0013


      SEEK '0001'
      NP0001=NP0002+NP0003+NP0009+NP0010+NP0011
      NN0001=NN0002+NN0003+NN0009+NN0010+NN0011
      REPLACE PRETH WITH NP0001
      REPLACE NETO  WITH NN0001

      SEEK '0012'
      NP0012=NP0013+NP0018+NP0019+NP0020+NP0021+NP0022+NP0023
      NN0012=NN0013+NN0018+NN0019+NN0020+NN0021+NN0022+NN0023
      REPLACE PRETH WITH NP0012
      REPLACE NETO  WITH NN0012

      SEEK '0024'
      NP0024=NP0001+NP0012
      NN0024=NN0001+NN0012
      REPLACE PRETH WITH NP0024
      REPLACE NETO  WITH NN0024

      SEEK '0403'
      NP0403=NP0404+NP0405
      
      NN0403=NN0404+NN0405
      REPLACE PRETH WITH NP0403
      REPLACE NETO  WITH NN0403

      SEEK '0406'
      NP0406=NP0407+NP0408
      NN0406=NN0407+NN0408
      REPLACE PRETH WITH NP0406 
      REPLACE NETO  WITH NN0406

      SEEK '0409'
      NP0409=NP0410+NP0411+NP0414+NP0415+NP0416+NP0417+NP0418+NP0419
      NN0409=NN0410+NN0411+NN0414+NN0415+NN0416+NN0417+NN0418+NN0419
      REPLACE PRETH WITH NP0409 
      REPLACE NETO  WITH NN0409

      SEEK '0411'
      NP0411=NP0412+NP0413
      NN0411=NN0412+NN0413
      REPLACE PRETH WITH NP0411 
      REPLACE NETO  WITH NN0411

      SEEK '0401'
      NP0401=NP0402+NP0403-NP0406
      NN0401=NN0402+NN0403-NN0406
      IF np0401<0
         np0401=0
      endif   
      IF nn0401<0
         nn0401=0
      endif   
      
      REPLACE PRETH WITH NP0401 
      REPLACE NETO  WITH NN0401

      SEEK '0420'
      NP0420=NP0409-NP0024       
      NN0420=NN0409-NN0024       
      IF NP0420<0
         NP0420=0       
      ENDIF
      REPLACE PRETH WITH NP0420 
      
      IF NN0420<0
         NN0420=0      
      ENDIF
      REPLACE neto WITH NN0420 

      
      SEEK '0421'
      NP0421=NP0401+NP0409-NP0420
      NN0421=NN0401+NN0409-NN0420
      IF NP0421>0
          REPLACE PRETH WITH NP0421 
      ELSE
         NP0421=0
          REPLACE PRETH WITH NP0421          
      ENDIF
      IF NN0421>0
          REPLACE neto WITH NN0421 
      ELSE
         NN0421=0
          REPLACE neto WITH NN0421          
      ENDIF
*************KRAJ BILANSA STANJA***************************
    *BILANS USPEHA
      

      SEEK '1001'
      NP1001=NP1002+NP1003+NP1004+NP1005+NP1006
      NN1001=NN1002+NN1003+NN1004+NN1005+NN1006
      REPLACE PRETH WITH NP1001
      REPLACE NETO  WITH NN1001

      SEEK '1007'
      NP1007=NP1008-NP1009-NP1010+NP1011+NP1012+NP1013+NP1014+NP1015+NP1016+NP1017+NP1018
      NN1007=NN1008-NN1009-NN1010+NN1011+NN1012+NN1013+NN1014+NN1015+NN1016+NN1017+NN1018
      REPLACE PRETH WITH NP1007
      REPLACE NETO  WITH NN1007

      SEEK '1019'
      NP1019=NP1001-NP1007
      NN1019=NN1001-NN1007
      IF NP1019>0
          REPLACE PRETH WITH NP1019 
      ELSE
         NP1019=0
          REPLACE PRETH WITH NP1019          
      ENDIF
      IF NN1019>0
          REPLACE neto WITH NN1019 
      ELSE
         NN1019=0
          REPLACE neto WITH NN1019          
      ENDIF

      SEEK '1020'
      NP1020=NP1007-NP1001
      NN1020=NN1007-NN1001
      IF NP1020>0
          REPLACE PRETH WITH NP1020 
      ELSE
         NP1020=0
          REPLACE PRETH WITH NP1020          
      ENDIF
      IF NN1020>0
          REPLACE neto WITH NN1020 
      ELSE
         NN1020=0
          REPLACE neto WITH NN1020          
      ENDIF

      SEEK '1021'
      NP1021=NP1022+NP1023+NP1024+NP1025+NP1026
      NN1021=NN1022+NN1023+NN1024+NN1025+NN1026
      REPLACE PRETH WITH NP1021
      REPLACE NETO  WITH NN1021

      SEEK '1027'
      NP1027=NP1028+NP1029+NP1030+NP1031
      NN1027=NN1028+NN1029+NN1030+NN1031
      REPLACE PRETH WITH NP1027
      REPLACE NETO  WITH NN1027


      SEEK '1032'
      NP1032=NP1021-NP1027
      NN1032=NN1021-NN1027
      IF NP1032>0
          REPLACE PRETH WITH NP1032 
      ELSE
         NP1032=0
          REPLACE PRETH WITH NP1032          
      ENDIF
      IF NN1032>0
          REPLACE neto WITH NN1032 
      ELSE
         NN1032=0
          REPLACE neto WITH NN1032          
      ENDIF

      SEEK '1033'
      NP1033=NP1027-NP1021
      NN1033=NN1027-NN1021
      IF NP1033>0
          REPLACE PRETH WITH NP1033 
      ELSE
         NP1033=0
          REPLACE PRETH WITH NP1033          
      ENDIF
      IF NN1033>0
          REPLACE neto WITH NN1033 
      ELSE
         NN1033=0
          REPLACE neto WITH NN1033          
      ENDIF


      SEEK '1040'
      NP1040=NP1019-NP1020+NP1032-NP1033+NP1036-NP1037+NP1038-NP1039
      NN1040=NN1019-NN1020+NN1032-NN1033+NN1036-NN1037+NN1038-NN1039
      REPLACE PRETH WITH NP1040
      REPLACE NETO  WITH NN1040
      IF NP1040>0
          REPLACE PRETH WITH NP1040 
      ELSE
         NP1040=0
          REPLACE PRETH WITH NP1040          
      ENDIF
      IF NN1040>0
          REPLACE neto WITH NN1040 
      ELSE
         NN1040=0
          REPLACE neto WITH NN1040          
      ENDIF

      SEEK '1041'
      NP1041=NP1020-NP1019+NP1033-NP1032+NP1037-NP1036+NP1039-NP1038
      NN1041=NN1020-NN1019+NN1033-NN1032+NN1037-NN1036+NN1039-NN1038
      REPLACE PRETH WITH NP1041
      REPLACE NETO  WITH NN1041
      IF NP1041>0
          REPLACE PRETH WITH NP1041 
      ELSE
         NP1041=0
          REPLACE PRETH WITH NP1041          
      ENDIF
      IF NN1041>0
          REPLACE neto WITH NN1041 
      ELSE
         NN1041=0
          REPLACE neto WITH NN1041          
      ENDIF

      SEEK '1044'
      NP1044=NP1040-NP1041+NP1042-NP1043
      NN1044=NN1040-NN1041+NN1042-NN1043
      REPLACE PRETH WITH NP1044
      REPLACE NETO  WITH NN1044
      IF NP1044>0
          REPLACE PRETH WITH NP1044 
      ELSE
         NP1044=0
          REPLACE PRETH WITH NP1044          
      ENDIF
      IF NN1044>0
          REPLACE neto WITH NN1044
      ELSE
         NN1044=0
          REPLACE neto WITH NN1044         
      ENDIF

      SEEK '1045'
      NP1045=NP1041-NP1040+NP1043-NP1042
      NN1045=NN1041-NN1040+NN1043-NN1042
      REPLACE PRETH WITH NP1045
      REPLACE NETO  WITH NN1045
      IF NP1045>0
          REPLACE PRETH WITH NP1045 
      ELSE
         NP1045=0
          REPLACE PRETH WITH NP1045          
      ENDIF
      IF NN1045>0
          REPLACE neto WITH NN1045
      ELSE
         NN1045=0
          REPLACE neto WITH NN1045         
      ENDIF

      SEEK '1047'
      NP1047=NP1044-NP1045-NP1046
      NN1047=NN1044-NN1045-NN1046
      REPLACE PRETH WITH NP1047
      REPLACE NETO  WITH NN1047
      IF NP1047>0
          REPLACE PRETH WITH NP1047 
      ELSE
         NP1047=0
          REPLACE PRETH WITH NP1047          
      ENDIF
      IF NN1047>0
          REPLACE neto WITH NN1047
      ELSE
         NN1047=0
          REPLACE neto WITH NN1047         
      ENDIF

      SEEK '1048'
      NP1048=NP1045-NP1044+NP1046
      NN1048=NN1045-NN1044+NN1046
      REPLACE PRETH WITH NP1048
      REPLACE NETO  WITH NN1048
      IF NP1048>0
          REPLACE PRETH WITH NP1048 
      ELSE
         NP1048=0
          REPLACE PRETH WITH NP1048          
      ENDIF
      IF NN1048>0
          REPLACE neto WITH NN1048
      ELSE
         NN1048=0
          REPLACE neto WITH NN1048         
      ENDIF


****************************************

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
         IF MNOVAGK=0
            USE NAL IN 0 ORDER 1
         ELSE
            USE NALNOVI IN 0 ALIAS NAL
         ENDIF
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
         MK0002=0
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
*********************************
         MK0401=0
         MK0402=0
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
         
         MK1001=0
         MK1002=0
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

         MK0001=PUNIZN01('01')

         MK0004=PUNIZN02('020')
         MK0004=MK0004+PUNIZN08('0290')
         MK0004=MK0004+PUNIZN02('021')
         MK0004=MK0004+PUNIZN08('0291')

         MK0005=PUNIZN02('022')
         MK0005=MK0005+PUNIZN08('0292')

         MK0006=PUNIZN02('023')
         MK0006=MK0006+PUNIZN08('0293')

         MK0007=PUNIZN02('024')
         MK0007=MK0007+PUNIZN08('0294')

         MK0008=PUNIZN01('02')
         MK0008=MK0008-PUNIZN02('020')
         MK0008=MK0008-PUNIZN02('021')         
         MK0008=MK0008-PUNIZN02('022')
         MK0008=MK0008-PUNIZN02('023')
         MK0008=MK0008-PUNIZN02('024')
         MK0008=MK0008-PUNIZN08('0291')
         MK0008=MK0008-PUNIZN08('0292')
         MK0008=MK0008-PUNIZN08('0293')
         MK0008=MK0008-PUNIZN08('0294')
         
         MK0009=PUNIZN01('03')
         MK0010=PUNIZN01('04')
         MK0011=PUNIZN01('05')
         MK0014=PUNIZN01('10')

         MK0015=PUNIZN01('11')
         MK0015=MK0015+PUNIZN01('12')

         MK0016=PUNIZN01('13')

         MK0017=PUNIZN01('15')
         MK0018=PUNIZN01('20')         
         MK0019=PUNIZN01('22')         
         MK0020=PUNIZN01('23')         
         MK0021=PUNIZN01('24')         
         MK0022=PUNIZN01('27')         
         MK0023=PUNIZN01('28')         
         MK0025=PUNIZN01('88')                  
*/////////////////////////////////////////////////

         MK0402=PUNIZN03('30')
         MK0403=PUNIZN03('34')         
         MK0404=PUNIZN04('340')
         MK0405=PUNIZN04('341')
         MK0406=PUNIZN01('35')         
         MK0407=PUNIZN02('350')
         MK0408=PUNIZN02('351')
         MK0410=PUNIZN03('40')         
         MK0411=PUNIZN03('41')         
         MK0412=PUNIZN04('413')
         MK0412=MK0412+PUNIZN04('414')
         MK0413=PUNIZN03('41')
         MK0413=MK0413-PUNIZN04('413')         
         MK0413=MK0413-PUNIZN04('414')         
         MK0414=PUNIZN03('42')         
         MK0415=PUNIZN03('43')                  
         MK0416=PUNIZN03('45')
         MK0416=MK0416+PUNIZN03('46')
         MK0417=PUNIZN03('47')
         MK0418=PUNIZN03('48')
         MK0419=PUNIZN03('49')
         MK0422=PUNIZN03('89')

**************************KRAJ BILANSA STANJA*****************
*******************BILANS USPEHA******************************
         MK1001=PUNIZN03('60')
         MK1001=MK1001+PUNIZN03('63')         
         MK1001=MK1001+PUNIZN03('64')         
         MK1001=MK1001+PUNIZN03('65')                                             
         MK1002=PUNIZN03('60')         
         MK1003=PUNIZN04('630')
         MK1003=MK1003+PUNIZN04('631')         
         MK1004=PUNIZN04('632')
         MK1004=MK1004+PUNIZN04('639')         
         MK1005=PUNIZN03('64')                  
         MK1006=PUNIZN03('65')                           
         MK1008=PUNIZN01('50')                                    
         MK1009=PUNIZN03('61') 
         MK1010=PUNIZN04('620')          
         MK1011=PUNIZN04('621')                   
         MK1012=PUNIZN01('51')          
         MK1013=PUNIZN01('52')          
         MK1014=PUNIZN01('53')                   
         MK1015=PUNIZN02('540')                                     
         MK1016=PUNIZN02('541')                                              
         MK1017=PUNIZN02('557')                   
         MK1018=PUNIZN01('55')                            
         MK1018=MK1018+PUNIZN02('557')  

         MK1021=PUNIZN03('66')          
         MK1022=PUNIZN04('660')                   
         MK1023=PUNIZN04('661')                            
         MK1024=PUNIZN04('662')                                     
         MK1024=MK1024+PUNIZN04('663')                                                              
         MK1025=PUNIZN04('664') 
         MK1026=PUNIZN04('669') 
         MK1028=PUNIZN02('560') 
         MK1029=PUNIZN02('562') 
         MK1030=PUNIZN02('563')                            
         MK1030=MK1030+PUNIZN02('564') 
         MK1030=MK1030+PUNIZN02('566')  
         MK1031=PUNIZN02('569')                            
         MK1034=PUNIZN04('683')                            
         MK1034=MK1034+PUNIZN04('685') 
         MK1035=PUNIZN02('583')                            
         MK1035=MK1035+PUNIZN04('585') 
         MK1038=PUNIZN03('67')
         MK1038=MK1038+PUNIZN03('68') 
         MK1038=MK1038-PUNIZN04('683') 
         MK1038=MK1038-PUNIZN04('685') 
         MK1039=PUNIZN01('57')
         MK1039=MK1039+PUNIZN01('58') 
         MK1039=MK1039-PUNIZN02('583') 
         MK1039=MK1039-PUNIZN02('585') 
         MK1042=PUNIZN03('69')
         MK1042=MK1042-PUNIZN04('699') 
         MK1043=PUNIZN01('59')
         MK1043=MK1043-PUNIZN02('599') 
         MK1046=PUNIZN02('721')         
        *********************************
         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN05 WITH '0001'         
         DO PUNIZN05 WITH '0002'         
         DO PUNIZN05 WITH '0003'
         DO PUNIZN05 WITH '0004'
         DO PUNIZN05 WITH '0005'
         DO PUNIZN05 WITH '0006'
         DO PUNIZN05 WITH '0007'
         DO PUNIZN05 WITH '0008'
         DO PUNIZN05 WITH '0009'
         DO PUNIZN05 WITH '0010'
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
         
         DO PUNIZN05 WITH '0401'
         DO PUNIZN05 WITH '0402'         
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
         DO PUNIZN05 WITH '0417'         
         DO PUNIZN05 WITH '0418'
         DO PUNIZN05 WITH '0419'
         DO PUNIZN05 WITH '0420'
         DO PUNIZN05 WITH '0421'                  
         DO PUNIZN05 WITH '0422'

         DO PUNIZN05 WITH '1001'
         DO PUNIZN05 WITH '1002'
         DO PUNIZN05 WITH '1003'         
         DO PUNIZN05 WITH '1004'
         DO PUNIZN05 WITH '1005'
         DO PUNIZN05 WITH '1006'
         DO PUNIZN05 WITH '1007'
         DO PUNIZN05 WITH '1008'
         DO PUNIZN05 WITH '1009'
         DO PUNIZN05 WITH '1010'
         DO PUNIZN05 WITH '1011'
         DO PUNIZN05 WITH '1012'
         DO PUNIZN05 WITH '1013'
         DO PUNIZN05 WITH '1014'
         DO PUNIZN05 WITH '1015'
         DO PUNIZN05 WITH '1016'
         DO PUNIZN05 WITH '1017'
         DO PUNIZN05 WITH '1018'
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
         DO PUNIZN05 WITH '1030'
         DO PUNIZN05 WITH '1031'         
         DO PUNIZN05 WITH '1032'         
         DO PUNIZN05 WITH '1033'         
         DO PUNIZN05 WITH '1034'
         DO PUNIZN05 WITH '1035'
         DO PUNIZN05 WITH '1036'
         DO PUNIZN05 WITH '1037'
         DO PUNIZN05 WITH '1038'                  
         DO PUNIZN05 WITH '1039'
         DO PUNIZN05 WITH '1040'
         DO PUNIZN05 WITH '1041'         
         DO PUNIZN05 WITH '1042'
         DO PUNIZN05 WITH '1043'
         DO PUNIZN05 WITH '1044'
         DO PUNIZN05 WITH '1045'         
         DO PUNIZN05 WITH '1046'
         DO PUNIZN05 WITH '1047'
         DO PUNIZN05 WITH '1048'
         
         *----------pounjenje kolone prethodne godine
                    
         USE &KKOCKA IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP

         MK0001=0
         MK0002=0
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
*********************************
         MK0401=0
         MK0402=0
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
         
         MK1001=0
         MK1002=0
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

         MK0001=PUNIZN01('01')

         MK0004=PUNIZN02('020')
         MK0004=MK0004+PUNIZN08('0290')
         MK0004=MK0004+PUNIZN02('021')
         MK0004=MK0004+PUNIZN08('0291')

         MK0005=PUNIZN02('022')
         MK0005=MK0005+PUNIZN08('0292')

         MK0006=PUNIZN02('023')
         MK0006=MK0006+PUNIZN08('0293')

         MK0007=PUNIZN02('024')
         MK0007=MK0007+PUNIZN08('0294')

         MK0008=PUNIZN01('02')
         MK0008=MK0008-PUNIZN02('020')
         MK0008=MK0008-PUNIZN02('021')         
         MK0008=MK0008-PUNIZN02('022')
         MK0008=MK0008-PUNIZN02('023')
         MK0008=MK0008-PUNIZN02('024')
         MK0008=MK0008-PUNIZN08('0291')
         MK0008=MK0008-PUNIZN08('0292')
         MK0008=MK0008-PUNIZN08('0293')
         MK0008=MK0008-PUNIZN08('0294')
         
         MK0009=PUNIZN01('03')
         MK0010=PUNIZN01('04')
         MK0011=PUNIZN01('05')
         MK0014=PUNIZN01('10')

         MK0015=PUNIZN01('11')
         MK0015=MK0015+PUNIZN01('12')

         MK0016=PUNIZN01('13')

         MK0017=PUNIZN01('15')
         MK0018=PUNIZN01('20')         
         MK0019=PUNIZN01('22')         
         MK0020=PUNIZN01('23')         
         MK0021=PUNIZN01('24')         
         MK0022=PUNIZN01('27')         
         MK0023=PUNIZN01('28')         
         MK0025=PUNIZN01('88')                  
*/////////////////////////////////////////////////

         MK0402=PUNIZN03('30')
         MK0403=PUNIZN03('34')         
         MK0404=PUNIZN04('340')
         MK0405=PUNIZN04('341')
         MK0406=PUNIZN01('35')         
         MK0407=PUNIZN02('350')
         MK0408=PUNIZN02('351')
         MK0410=PUNIZN03('40')         
         MK0411=PUNIZN03('41')         
         MK0412=PUNIZN04('413')
         MK0412=MK0412+PUNIZN04('414')
         MK0413=PUNIZN03('41')
         MK0413=MK0413-PUNIZN04('413')         
         MK0413=MK0413-PUNIZN04('414')         
         MK0414=PUNIZN03('42')         
         MK0415=PUNIZN03('43')                  
         MK0416=PUNIZN03('45')
         MK0416=MK0416+PUNIZN03('46')
         MK0417=PUNIZN03('47')
         MK0418=PUNIZN03('48')
         MK0419=PUNIZN03('49')
         MK0422=PUNIZN03('89')

**************************KRAJ BILANSA STANJA*****************
*******************BILANS USPEHA******************************
         MK1001=PUNIZN03('60')
         MK1001=MK1001+PUNIZN03('63')         
         MK1001=MK1001+PUNIZN03('64')         
         MK1001=MK1001+PUNIZN03('65')                                             
         MK1002=PUNIZN03('60')         
         MK1003=PUNIZN04('630')
         MK1003=MK1003+PUNIZN04('631')         
         MK1004=PUNIZN04('632')
         MK1004=MK1004+PUNIZN04('639')         
         MK1005=PUNIZN03('64')                  
         MK1006=PUNIZN03('65')                           
         MK1008=PUNIZN01('50')                                    
         MK1009=PUNIZN03('61') 
         MK1010=PUNIZN04('620')          
         MK1011=PUNIZN04('621')                   
         MK1012=PUNIZN01('51')          
         MK1013=PUNIZN01('52')          
         MK1014=PUNIZN01('53')                   
         MK1015=PUNIZN02('540')                                     
         MK1016=PUNIZN02('541')                                              
         MK1017=PUNIZN02('557')                   
         MK1018=PUNIZN01('55')                            
         MK1018=MK1018+PUNIZN02('557')  

         MK1021=PUNIZN03('66')          
         MK1022=PUNIZN04('660')                   
         MK1023=PUNIZN04('661')                            
         MK1024=PUNIZN04('662')                                     
         MK1024=MK1024+PUNIZN04('663')                                                              
         MK1025=PUNIZN04('664') 
         MK1026=PUNIZN04('669') 
         MK1028=PUNIZN02('560') 
         MK1029=PUNIZN02('562') 
         MK1030=PUNIZN02('563')                            
         MK1030=MK1030+PUNIZN02('564') 
         MK1030=MK1030+PUNIZN02('566')  
         MK1031=PUNIZN02('569')                            
         MK1034=PUNIZN04('683')                            
         MK1034=MK1034+PUNIZN04('685') 
         MK1035=PUNIZN02('583')                            
         MK1035=MK1035+PUNIZN04('585') 
         MK1038=PUNIZN03('67')
         MK1038=MK1038+PUNIZN03('68') 
         MK1038=MK1038-PUNIZN04('683') 
         MK1038=MK1038-PUNIZN04('685') 
         MK1039=PUNIZN01('57')
         MK1039=MK1039+PUNIZN01('58') 
         MK1039=MK1039-PUNIZN02('583') 
         MK1039=MK1039-PUNIZN02('585') 
         MK1042=PUNIZN03('69')
         MK1042=MK1042-PUNIZN04('699') 
         MK1043=PUNIZN01('59')
         MK1043=MK1043-PUNIZN02('599') 
         MK1046=PUNIZN02('721')         
        *********************************
         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN06 WITH '0001'         
         DO PUNIZN06 WITH '0002'         
         DO PUNIZN06 WITH '0003'
         DO PUNIZN06 WITH '0004'
         DO PUNIZN06 WITH '0005'
         DO PUNIZN06 WITH '0006'
         DO PUNIZN06 WITH '0007'
         DO PUNIZN06 WITH '0008'
         DO PUNIZN06 WITH '0009'
         DO PUNIZN06 WITH '0010'
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
         
         DO PUNIZN06 WITH '0401'
         DO PUNIZN06 WITH '0402'         
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
         DO PUNIZN06 WITH '0417'         
         DO PUNIZN06 WITH '0418'
         DO PUNIZN06 WITH '0419'
         DO PUNIZN06 WITH '0420'
         DO PUNIZN06 WITH '0421'                  
         DO PUNIZN06 WITH '0422'

         DO PUNIZN06 WITH '1001'
         DO PUNIZN06 WITH '1002'
         DO PUNIZN06 WITH '1003'         
         DO PUNIZN06 WITH '1004'
         DO PUNIZN06 WITH '1005'
         DO PUNIZN06 WITH '1006'
         DO PUNIZN06 WITH '1007'
         DO PUNIZN06 WITH '1008'
         DO PUNIZN06 WITH '1009'
         DO PUNIZN06 WITH '1010'
         DO PUNIZN06 WITH '1011'
         DO PUNIZN06 WITH '1012'
         DO PUNIZN06 WITH '1013'
         DO PUNIZN06 WITH '1014'
         DO PUNIZN06 WITH '1015'
         DO PUNIZN06 WITH '1016'
         DO PUNIZN06 WITH '1017'
         DO PUNIZN06 WITH '1018'
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
         DO PUNIZN06 WITH '1030'
         DO PUNIZN06 WITH '1031'         
         DO PUNIZN06 WITH '1032'         
         DO PUNIZN06 WITH '1033'         
         DO PUNIZN06 WITH '1034'
         DO PUNIZN06 WITH '1035'
         DO PUNIZN06 WITH '1036'
         DO PUNIZN06 WITH '1037'
         DO PUNIZN06 WITH '1038'                  
         DO PUNIZN06 WITH '1039'
         DO PUNIZN06 WITH '1040'
         DO PUNIZN06 WITH '1041'         
         DO PUNIZN06 WITH '1042'
         DO PUNIZN06 WITH '1043'
         DO PUNIZN06 WITH '1044'
         DO PUNIZN06 WITH '1045'         
         DO PUNIZN06 WITH '1046'
         DO PUNIZN06 WITH '1047'
         DO PUNIZN06 WITH '1048'
         SET EXACT ON
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