procedure BILPUNI

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH '   ','                ','  AKTIVA                                                 ',' ' 
     DO PUNIBIL WITH '001','                ','  A.STALNA IMOVINA(002+003+004+005+009)                  ','*' 
     DO PUNIBIL WITH '002','       00       ','  I.NEUPLAÆENI UPISANI KAPITAL                           ','*' 
     DO PUNIBIL WITH '003','       012      ','  II.GOODWILL                                            ','*' 
     DO PUNIBIL WITH '004',' 01 BEZ 012     ','  III.NEMATERIJALNA ULAGANJA                              ','*' 
     DO PUNIBIL WITH '   ','                ','  IV.NEKRETNINE, POSTROJENJA,                           ',' ' 
     DO PUNIBIL WITH '005','                ','  OPREMA I BIOLOŠKA SREDSTVA                             ',' ' 
     DO PUNIBIL WITH '   ','                ','  (006+007+008)                                          ','*' 
     DO PUNIBIL WITH '   ',' 020,022,023,   ','                                                         ',' ' 
     DO PUNIBIL WITH '006',' 026,027(deo),  ','  1.Nekretnine postrojenja i oprema                      ',' ' 
     DO PUNIBIL WITH '   ','028(deo)029     ','                                                         ','*' 
     DO PUNIBIL WITH '007',' 024,027(deo)   ','  2.Investicione nekretnine                              ',' ' 
     DO PUNIBIL WITH '   ',' 028(deo)       ','                                                         ','*' 
     DO PUNIBIL WITH '008',' 021,025,027,   ','  3.Biološka sredstva                                    ',' ' 
     DO PUNIBIL WITH '   ','(deo  i 028(deo)','                                                         ','*' 
     DO PUNIBIL WITH '009','                ','  V.DUGOROÈNI FINANSIJSKI PLASMANI                       ',' ' 
     DO PUNIBIL WITH '   ','                ','  (010+011)                                              ','*' 
     DO PUNIBIL WITH '010',' 030 do 032     ','  1.Uèesæa u kapitalu                                    ',' ' 
     DO PUNIBIL WITH '   ',' 039(deo)       ','                                                         ','*' 
     DO PUNIBIL WITH '011',' 033 do 038 039 ','  2.Ostali dugoroèni finansijski plasmani                ',' ' 
     DO PUNIBIL WITH '   ',' (deo)minus 037 ','                                                         ','*' 
     DO PUNIBIL WITH '012','                ','  B.OBRTNA IMOVINA(013+014+015)                       ','*' 
     DO PUNIBIL WITH '013',' 10 do 13,15    ','  I.ZALIHE                                               ','*' 
     DO PUNIBIL WITH '014','       14       ','  II.STALNA SREDSTVA NAMENJENA PRODAJI I SREDSTVA        ',' ' 
     DO PUNIBIL WITH '   ','                ','     POSLOVANJA KOJE SE OBUSTAVLJA                       ','*' 
     DO PUNIBIL WITH '   ','                ','  III.KRATKOROÈNA POTRAŽIVANJA,                          ',' ' 
     DO PUNIBIL WITH '015','                ','  PLASMANI I GOTOVINA                                    ',' ' 
     DO PUNIBIL WITH '   ','                ','  (016+017+018+019+020)                                  ','*' 
     DO PUNIBIL WITH '016',' 20,21i22osim223','  1.Potraživanja                                         ','*' 
     DO PUNIBIL WITH '017','        223     ','  2.Potraživanja za više plaæen porez na dobitak         ','*' 
     DO PUNIBIL WITH '018',' 23 minus 237   ','  3.Kratkoroèni finansijski plasmani                     ','*' 
     DO PUNIBIL WITH '019','        24      ','  4.Gotovinski ekvivalenti i gotovina                    ','*' 
     DO PUNIBIL WITH '020',' 27 i 28 osim   ','  5.Porez na dodatu vrednost i                           ',' ' 
     DO PUNIBIL WITH '   ','       288      ','    aktivna vremenska razgranièenja                      ','*' 
     DO PUNIBIL WITH '021','       288      ','  V.ODLOŽENA PORESKA SREDSTVA                           ','*' 
     DO PUNIBIL WITH '022','                ','  G.POSLOVNA IMOVINA(001+012+021)                        ','*' 
     DO PUNIBIL WITH '023','       29       ','  D.GUBITAK IZNAD VISINE KAPITALA                        ','*' 
     DO PUNIBIL WITH '024','                ','  Ð.UKUPNA AKTIVA(022+023)                               ','*' 
     DO PUNIBIL WITH '025','       88       ','  E.VANBILANSNA AKTIVA                                   ','*' 
     DO PUNIBIL WITH '   ','                ','  PASIVA                                                 ',' ' 
     DO PUNIBIL WITH '101','                ','  A.KAPITAL(102+103+104+105+106-107+108-109-110)         ','*' 
     DO PUNIBIL WITH '102','       30       ','  I.OSNOVNI KAPITAL                                      ','*' 
     DO PUNIBIL WITH '103','       31       ','  II.NEUPLAÆENI UPISANI KAPITAL                          ','*' 
     DO PUNIBIL WITH '104','       32       ','  III.REZERVE                                            ','*' 
     DO PUNIBIL WITH '105','    330 I 331   ','  IV.REVALORIZACIONE REZERVE                             ','*' 

     DO PUNIBIL WITH '106','      332       ','  V.NEREALIZOVANI DOBICI PO OSNOVU HARTIJA               ',' ' 
     DO PUNIBIL WITH '   ','                ','    OD VREDNOSTI                                         ','*' 
     DO PUNIBIL WITH '107','      333       ','  VI.NEREALIZOVANI GUBICI PO OSNOVU HARTIJA              ',' ' 
     DO PUNIBIL WITH '   ','                ','    OD VREDNOSTI                                         ','*' 
     DO PUNIBIL WITH '108','       34       ','  VII.NERASPOREDJENA DOBIT                               ','*' 
     DO PUNIBIL WITH '109','       35       ','  VIII.GUBITAK                                           ','*' 
     DO PUNIBIL WITH '110','   037 i 237    ','  IX.OTKUPLJENE SOPSTVENE AKCIJE                         ','*' 
     DO PUNIBIL WITH '111','                ','  B.DUGOROÈNA REZERVISANJA I OBAVEZE                     ',' ' 
     DO PUNIBIL WITH '   ','                ','  (112+113+116)                                          ','*' 
     DO PUNIBIL WITH '112','       40       ','  I.DUGOROÈNA REZERVISANJA                               ','*' 
     DO PUNIBIL WITH '113','       41       ','  II.DUGOROÈNE OBAVEZE(114+115)                          ','*' 
     DO PUNIBIL WITH '114','    414,415     ','  1.Dugoroèni krediti                                    ','*' 
     DO PUNIBIL WITH '115','41 BEZ 414 I 415','  2.Ostale dugoroène obaveze                             ','*' 
     DO PUNIBIL WITH '116','                ','  III.KRATKOROÈNE OBAVEZE(117+118+119+120+121+122)       ','*' 
     DO PUNIBIL WITH '117',' 42 OSIM 427    ','  1.Kratkoroène finansijske obaveze                      ','*' 
     DO PUNIBIL WITH '118','     427        ','  2.Obaveze po osnovu sredstava namenjenih prodaji       ',' ' 
     DO PUNIBIL WITH '   ','                ','    i sredstava poslovanja koje se obustavlja            ','*' 
     DO PUNIBIL WITH '119','    43 i 44     ','  3.Obaveze iz poslovanja                                ','*' 
     DO PUNIBIL WITH '120','    45 i 46     ','  4.Ostale kratkoroène obaveze                           ','*' 
     DO PUNIBIL WITH '121','47,48 osim 481  ','  5.Obaveze po osnovu poreza na dodatu vrednost i ostalih',' ' 
     DO PUNIBIL WITH '   ','i 49 osim 498   ','    javnih prihoda i pasivna vremenska razgranièenja     ','*' 
     DO PUNIBIL WITH '122','      481       ','  6.Obaveze po osnovu poreza na dobitak                  ','*' 
     DO PUNIBIL WITH '123','      498       ','  V.ODLOŽENE PORESKE OBAVEZE                             ','*' 
     DO PUNIBIL WITH '124','                ','  G UKUPNA PASIVA(101+111+123)                           ','*' 
     DO PUNIBIL WITH '125','      89        ','  D. VANBILANSNA PASIVA                                  ','*' 
     
     DO PUNIBIL WITH '   ','                ','  A.PRIHODI I RASHODI IZ REDOVNOG POSLOVANJA             ',' ' 
     DO PUNIBIL WITH '201','                ','  I.POSLOVNI PRIHODI(202+203+204-205+206)                ','*' 
     DO PUNIBIL WITH '202','      60 i 61   ','  1.Prihodi od prodaje                                   ','*' 
     DO PUNIBIL WITH '203','      62        ','  2.Prihodi od aktiviranja uèinaka i robe                ','*' 
     DO PUNIBIL WITH '204','      630       ','  3.Poveæanje vrednosti zaliha uèinaka                   ','*' 
     DO PUNIBIL WITH '205','      631       ','  4.Smanjenje vrednosti zaliha uèinaka                   ','*' 
     DO PUNIBIL WITH '206','      64 i 65   ','  5.Ostali poslovni prihodi                              ','*' 
     DO PUNIBIL WITH '207','                ','  II.POSLOVNI RASHODI(208 do 212)                        ','*' 
     DO PUNIBIL WITH '208','      50        ','  1.Nabavna vrednost prodate robe                        ','*' 
     DO PUNIBIL WITH '209','      51        ','  2.Troškovi materijala                                  ','*' 
     DO PUNIBIL WITH '210','      52        ','  3.Troškovi zarada,naknada zarada i ostali lièni rashodi','*' 
     DO PUNIBIL WITH '211','      54        ','  4.Troškovi amortizacije i rezervisanja                 ','*' 
     DO PUNIBIL WITH '212','      53 i 55   ','  5.Ostali poslovni rashodi                              ','*' 
     DO PUNIBIL WITH '213','                ','  III.POSLOVNA DOBIT(201-207)                            ','*' 
     DO PUNIBIL WITH '214','                ','  IV. POSLOVNI GUBITAK(207-201)                          ','*' 
     DO PUNIBIL WITH '215','      66        ','  V.  FINANSIJSKI PRIHODI                                ','*' 
     DO PUNIBIL WITH '216','      56        ','  VI. FINANSIJSKI RASHODI                                ','*' 
     DO PUNIBIL WITH '217','   67 i 68      ','  VII.OSTALI PRIHODI                                     ','*' 
     DO PUNIBIL WITH '218','   57 i 58      ','  VIII.OSTALI RASHODI                                    ','*' 
     DO PUNIBIL WITH '219','                ','  IX.DOBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA     ',' ' 
     DO PUNIBIL WITH '   ','                ','  (213-214+215-216+217-218)                              ','*' 
     DO PUNIBIL WITH '220','                ','  X.GUBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA      ',' ' 
     DO PUNIBIL WITH '   ','                ','  (214-213-215+216-217+218)                              ','*' 
     DO PUNIBIL WITH '221','     69-59      ','  XI.NETO DOBITAK POSLOVANJA KOJE SE OBUSTAVLJA          ','*' 
     DO PUNIBIL WITH '222','     59-69      ','  XII.NETO GUBITAK POSLOVANJA KOJE SE OBUSTAVLJA          ','*' 
     DO PUNIBIL WITH '223','                ','  B.DOBITAK PRE OPOREZIVANJA (219-220+221-222)           ','*' 
     DO PUNIBIL WITH '224','                ','  V.GUBITAK PRE OPOREZIVANJA (220-219+222-221)           ','*' 
     DO PUNIBIL WITH '   ','                ','  G.POREZ NA DOBITAK                                     ','*' 
     DO PUNIBIL WITH '225','      721       ','  1.Poreski rashod perioda                               ','*' 
     DO PUNIBIL WITH '226','      722       ','  2.Odloženi poreski rashodi perioda                     ','*' 
     DO PUNIBIL WITH '227','      722       ','  2.Odloženi poreski prihodi perioda                     ','*' 
     DO PUNIBIL WITH '228','      723       ','  D.ISPLAÆENA LIÈNA PRIMANJA POSLODAVCU                  ','*' 
     DO PUNIBIL WITH '229','                ','  DJ.NETO DOBITAK (223-224-225-226+227-228)              ','*' 
     DO PUNIBIL WITH '230','                ','  E. NETO GUBITAK (224-223+225+226-227+228)              ','*' 
     DO PUNIBIL WITH '231','                ','  Ž.NETO DOBITAK KOJI PRIPADA MANJINSKIM ULAGAÈIMA      ','*' 
     DO PUNIBIL WITH '232','                ','  Z.NETO DOBITAK KOJI PRIPADA VLASNICIMA MATIÈNOG       ',' ' 
     DO PUNIBIL WITH '   ','                ','    PRAVNOG LICA                                        ','*' 
     DO PUNIBIL WITH '   ','                ','  I.ZARADA PO AKCIJI                                    ','*' 
     DO PUNIBIL WITH '233','                ','  1.Osnovna zarada po akciji                            ','*' 
     DO PUNIBIL WITH '234','                ','  2.Umanjena (razvodnjena zarada po akciji)             ','*' 

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
      SEEK '002'
      NP002=PRETH
      NN002=NETO
      SEEK '003'
      NP003=PRETH
      NN003=NETO
      SEEK '004'
      NP004=PRETH
      NN004=NETO
      SEEK '005'
      NP005=PRETH
      NN005=NETO
      SEEK '006'
      NP006=PRETH
      NN006=NETO
      SEEK '007'
      NP007=PRETH
      NN007=NETO
      SEEK '008'
      NP008=PRETH
      NN008=NETO

      SEEK '010'
      NP010=PRETH
      NN010=NETO
      SEEK '011'
      NP011=PRETH
      NN011=NETO

      SEEK '013'
      NP013=PRETH
      NN013=NETO
      SEEK '014'
      NP014=PRETH
      NN014=NETO

      SEEK '016'
      NP016=PRETH
      NN016=NETO
      SEEK '017'
      NP017=PRETH
      NN017=NETO
      SEEK '017'
      NP017=PRETH
      NN017=NETO
      SEEK '018'
      NP018=PRETH
      NN018=NETO
      SEEK '019'
      NP019=PRETH
      NN019=NETO
      SEEK '020'
      NP020=PRETH
      NN020=NETO
      SEEK '021'
      NP021=PRETH
      NN021=NETO

      SEEK '023'
      NP023=PRETH
      NN023=NETO
      SEEK '023'
      NP023=PRETH
      NN023=NETO
      SEEK '025'
      NP025=PRETH
      NN025=NETO


      SEEK '102'
      NP102=PRETH
      NN102=NETO
      SEEK '103'
      NP103=PRETH
      NN103=NETO
      SEEK '104'
      NP104=PRETH
      NN104=NETO
      SEEK '105'
      NP105=PRETH
      NN105=NETO
      SEEK '106'
      NP106=PRETH
      NN106=NETO
      SEEK '107'
      NP107=PRETH
      NN107=NETO
      SEEK '108'
      NP108=PRETH
      NN108=NETO

      SEEK '110'
      NP110=PRETH
      NN110=NETO
      
      
      SEEK '112'
      NP112=PRETH
      NN112=NETO
      SEEK '114'
      NP114=PRETH
      NN114=NETO
      SEEK '115'
      NP115=PRETH
      NN115=NETO

      SEEK '117'
      NP117=PRETH
      NN117=NETO
      SEEK '118'
      NP118=PRETH
      NN118=NETO
      SEEK '119'
      NP119=PRETH
      NN119=NETO
      SEEK '120'
      NP120=PRETH
      NN120=NETO
      SEEK '121'
      NP121=PRETH
      NN121=NETO
      SEEK '122'
      NP122=PRETH
      NN122=NETO
      SEEK '123'
      NP123=PRETH
      NN123=NETO

      SEEK '125'
      NP125=PRETH
      NN125=NETO

      SEEK '202'
      NP202=PRETH
      NN202=NETO
      SEEK '203'
      NP203=PRETH
      NN203=NETO
      SEEK '204'
      NP204=PRETH
      NN204=NETO
      SEEK '205'
      NP205=PRETH
      NN205=NETO
      SEEK '206'
      NP206=PRETH
      NN206=NETO

      SEEK '208'
      NP208=PRETH
      NN208=NETO
      SEEK '209'
      NP209=PRETH
      NN209=NETO
      SEEK '210'
      NP210=PRETH
      NN210=NETO
      SEEK '211'
      NP211=PRETH
      NN211=NETO
      SEEK '212'
      NP212=PRETH
      NN212=NETO

      SEEK '215'
      NP215=PRETH
      NN215=NETO
      SEEK '216'
      NP216=PRETH
      NN216=NETO

      SEEK '217'
      NP217=PRETH
      NN217=NETO
      SEEK '218'
      NP218=PRETH
      NN218=NETO

      SEEK '221'
      NP221=PRETH
      NN221=NETO
      SEEK '222'
      NP222=PRETH
      NN222=NETO

      SEEK '225'
      NP225=PRETH
      NN225=NETO
      SEEK '226'
      NP226=PRETH
      NN226=NETO
      SEEK '227'
      NP227=PRETH
      NN227=NETO
      SEEK '228'
      NP228=PRETH
      NN228=NETO


      SEEK '231'
      NP231=PRETH
      NN231=NETO
      SEEK '232'
      NP232=PRETH
      NN232=NETO
      SEEK '233'
      NP233=PRETH
      NN233=NETO
      SEEK '234'
      NP234=PRETH
      NN234=NETO





      SEEK '005'
      NP005=NP006+NP007+NP008
      NN005=NN006+NN007+NN008
      REPLACE PRETH WITH NP005
      REPLACE NETO  WITH NN005


      SEEK '009'
      NP009=NP010+NP011
      NN009=NN010+NN011
      REPLACE PRETH WITH NP009
      REPLACE NETO  WITH NN009

      SEEK '015'
      NP015=NP016+NP017+NP018+NP019+NP020
      NN015=NN016+NN017+NN018+NN019+NN020
      REPLACE PRETH WITH NP015
      REPLACE NETO  WITH NN015

      SEEK '012'
      NP012=NP013+NP014+NP015
      NN012=NN013+NN014+NN015
      
      REPLACE PRETH WITH NP012
      REPLACE NETO  WITH NN012


      SEEK '001'
      NP001=NP002+NP003+NP004+NP005+NP009
      NN001=NN002+NN003+NN004+NN005+NN009
      REPLACE PRETH WITH NP001
      REPLACE NETO  WITH NN001

      SEEK '022'
      NP022=NP001+NP012+NP021
      NN022=NN001+NN012+NN021
      REPLACE PRETH WITH NP022
      REPLACE NETO  WITH NN022

      SEEK '024'
      NP024=NP022+NP023
      NN024=NN022+NN023
      REPLACE PRETH WITH NP024
      REPLACE NETO  WITH NN024

      *-------PASIVA--------------
      SEEK '102'
      NP102=PRETH
      NN102=NETO
      SEEK '103'
      NP103=PRETH
      NN103=NETO
      SEEK '104'
      NP104=PRETH
      NN104=NETO
      SEEK '105'
      NP105=PRETH
      NN105=NETO
      SEEK '106'
      NP106=PRETH
      NN106=NETO
      SEEK '107'
      NP107=PRETH
      NN107=NETO
      SEEK '108'
      NP108=PRETH
      NN108=NETO

      SEEK '109'
      NP109=PRETH
      NN109=NETO

      SEEK '110'
      NP110=PRETH
      NN110=NETO
 
      SEEK '112'
      NP112=PRETH
      NN112=NETO
      SEEK '113'
      NP113=PRETH
      NN113=NETO
 
      SEEK '115'
      NP115=PRETH
      NN115=NETO
      SEEK '116'
      NP116=PRETH
      NN116=NETO
      SEEK '117'
      NP117=PRETH
      NN117=NETO
      SEEK '118'
      NP118=PRETH
      NN118=NETO
      SEEK '119'
      NP119=PRETH
      NN119=NETO
      SEEK '120'
      NP120=PRETH
      NN120=NETO
 
      SEEK '121'
      NP121=PRETH
      NN121=NETO

      SEEK '123'
      NP123=PRETH
      NN123=NETO


      SEEK '101'
      NP101=NP102+NP103+NP104+NP105+NP106-NP107+NP108-NP109-NP110
      NN101=NN102+NN103+NN104+NN105+NN106-NN107+NN108-NN109-NN110
      REPLACE PRETH WITH NP101
      REPLACE NETO  WITH NN101

      SEEK '113'
      NP113=NP114+NP115
      NN113=NN114+NN115
      REPLACE PRETH WITH NP113
      REPLACE NETO  WITH NN113

      SEEK '116'
      NP116=NP117+NP118+NP119+NP120+NP121+NP122
      NN116=NN117+NN118+NN119+NN120+NN121+NN122
      REPLACE PRETH WITH NP116
      REPLACE NETO  WITH NN116

      SEEK '111'
      NP111=NP112+NP113+NP116
      NN111=NN112+NN113+NN116
      REPLACE PRETH WITH NP111
      REPLACE NETO  WITH NN111


      SEEK '124'
      NP124=NP101+NP111+NP123
      NN124=NN101+NN111+NN123
      REPLACE PRETH WITH NP124
      REPLACE NETO  WITH NN124

      *-------BILANS USPEHA--------------
      SEEK '202'
      NP202=PRETH
      NN202=NETO
      SEEK '203'
      NP203=PRETH
      NN203=NETO
      SEEK '204'
      NP204=PRETH
      NN204=NETO
      SEEK '205'
      NP205=PRETH
      NN205=NETO
      SEEK '206'
      NP206=PRETH
      NN206=NETO

      SEEK '208'
      NP208=PRETH
      NN208=NETO
      SEEK '209'
      NP209=PRETH
      NN209=NETO
      SEEK '210'
      NP210=PRETH
      NN210=NETO
      SEEK '211'
      NP211=PRETH
      NN211=NETO
      SEEK '212'
      NP212=PRETH
      NN212=NETO

      SEEK '215'
      NP215=PRETH
      NN215=NETO
      SEEK '216'
      NP216=PRETH
      NN216=NETO
      SEEK '217'
      NP217=PRETH
      NN217=NETO
      SEEK '218'
      NP218=PRETH
      NN218=NETO


      SEEK '221'
      NP221=PRETH
      NN221=NETO
      SEEK '222'
      NP222=PRETH
      NN222=NETO

      SEEK '225'
      NP225=PRETH
      NN225=NETO
      SEEK '226'
      NP226=PRETH
      NN226=NETO
      SEEK '227'
      NP227=PRETH
      NN227=NETO
      SEEK '228'
      NP228=PRETH
      NN228=NETO

      SEEK '233'
      NP233=PRETH
      NN233=NETO
      SEEK '234'
      NP234=PRETH
      NN234=NETO


      SEEK '201'
      NP201=NP202+NP203+NP204-NP205+NP206
      NN201=NN202+NN203+NN204-NN205+NN206
      REPLACE PRETH WITH NP201
      REPLACE NETO  WITH NN201

      SEEK '207'
      NP207=NP208+NP209+NP210+NP211+NP212
      NN207=NN208+NN209+NN210+NN211+NN212
      REPLACE PRETH WITH NP207
      REPLACE NETO  WITH NN207


      NP213=NP201-NP207
      NN213=NN201-NN207
      NP214=NP207-NP201
      NN214=NN207-NN201


      SEEK '213'
         IF NP213>0
         REPLACE PRETH WITH NP213
         ELSE
         REPLACE PRETH WITH 0
         ENDIF
         IF NN213>0
         REPLACE NETO  WITH NN213
         ELSE
         REPLACE NETO  WITH 0
         ENDIF
      NP213=PRETH
      NN213=NETO

      SEEK '214'
         IF NP214>0
         REPLACE PRETH WITH NP214
         ELSE
         REPLACE PRETH WITH 0
         ENDIF
         IF NN214>0
         REPLACE NETO  WITH NN214
         ELSE
         REPLACE NETO  WITH 0
         ENDIF
      NP214=PRETH
      NN214=NETO


      SEEK '219'
      NP219=NP213-NP214+NP215-NP216+NP217-NP218
      NN219=NN213-NN214+NN215-NN216+NN217-NN218

         IF NP219>0
            REPLACE PRETH WITH NP219
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN219>0
            REPLACE NETO  WITH NN219
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP219=PRETH
      NN219=NETO

      SEEK '220'
      NP220=NP214-NP213-NP215+NP216-NP217+NP218
      NN220=NN214-NN213-NN215+NN216-NN217+NN218
         IF NP220>0
            REPLACE PRETH WITH NP220
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN220>0
            REPLACE NETO  WITH NN220
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP220=PRETH
      NN220=NETO


      SEEK '223'
      NP223=NP219-NP220+NP221-NP222
      NN223=NN219-NN220+NN221-NN222
         IF NP223>0
            REPLACE PRETH WITH NP223
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN223>0
            REPLACE NETO  WITH NN223
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP223=PRETH
      NN223=NETO

      SEEK '224'
      NP224=NP220-NP219+NP222-NP221
      NN224=NN220-NN219+NN222-NN221

         IF NP224>0
            REPLACE PRETH WITH NP224
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN224>0
            REPLACE NETO  WITH NN224
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP224=PRETH
      NN224=NETO

      SEEK '229'
      NP229=NP223-NP224-NP225-NP226+NP227-NP228
      NN229=NN223-NN224-NN225-NN226+NN227-NN228
         IF NP229>0
            REPLACE PRETH WITH NP229
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN229>0
            REPLACE NETO  WITH NN229
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP229=PRETH
      NN229=NETO


      SEEK '230'
      NP230=NP224-NP223+NP225+NP226-NP227+NP228
      NN230=NN224-NN223+NN225+NN226-NN227+NN228
         IF NP230>0
            REPLACE PRETH WITH NP230
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN230>0
            REPLACE NETO  WITH NN230
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP230=PRETH
      NN230=NETO

      SEEK '232' 
         IF NP229>0
            REPLACE PRETH WITH NP229
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN229>0
            REPLACE NETO  WITH NN229
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP232=PRETH
      NN232=NETO

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
         
         MK002=0
         MK003=0
         MK005=0
         MK006=0
         MK007=0
         MK008=0
         MK010=0
         MK011=0
         MK013=0
         MK014=0
         MK015=0
         MK016=0
         MK017=0
         MK018=0
         MK019=0
         MK020=0
         MK021=0
         MK023=0
         MK025=0

         MK102=0
         MK103=0
         MK104=0
         MK105=0
         MK106=0
         MK107=0
         MK108=0
         MK109=0

         MK110=0
         MK111=0
         MK112=0
         MK113=0
         MK114=0
         
         MK115=0
         MK116=0
         MK117=0
         MK118=0
         MK119=0
         MK120=0
         MK121=0
         MK122=0
         MK123=0
         MK125=0
         
         MK202=0
         MK203=0
         MK204=0
         MK205=0
         MK206=0

         MK208=0
         MK209=0
         MK210=0
         MK211=0
         MK212=0

         MK215=0
         MK216=0
         MK217=0
         MK218=0

         MK221=0
         MK222=0
         MK225=0
         MK226=0
         MK227=0
         MK228=0


         MK002=PUNIZN01('00')
         MK003=PUNIZN02('012')
         MK004=PUNIZN02('010')
         MK004=MK004+PUNIZN02('011')
         MK004=MK004+PUNIZN02('013')
         MK004=MK004+PUNIZN02('014')
         MK004=MK004+PUNIZN02('015')
         MK004=MK004+PUNIZN02('016')
         MK004=MK004+PUNIZN02('017')
         MK004=MK004+PUNIZN02('018')
         MK004=MK004+PUNIZN02('019')
        
         MK006=PUNIZN02('020')
         MK006=MK006+PUNIZN02('022')
         MK006=MK006+PUNIZN02('023')
         MK006=MK006+PUNIZN02('026')
*         MK006=MK006+PUNIZN02('026')
         MK006=MK006+PUNIZN02('027')
         MK006=MK006+PUNIZN02('028')
         MK006=MK006+PUNIZN02('029')

         MK007=MK007+PUNIZN02('024')

         MK010=PUNIZN02('030')
         MK010=MK010+PUNIZN02('031')
         MK010=MK010+PUNIZN02('032')
         MK010=MK010+PUNIZN02('039')
         
         MK011=PUNIZN02('033')
         MK011=MK011+PUNIZN02('034')
         MK011=MK011+PUNIZN02('035')
         MK011=MK011+PUNIZN02('036')
         MK011=MK011+PUNIZN02('038')
         *MK011=MK011-PUNIZN02('037')
         
         MK013=PUNIZN01('10')
         MK013=MK013+PUNIZN01('11')
         MK013=MK013+PUNIZN01('12')
         MK013=MK013+PUNIZN01('13')
         MK013=MK013+PUNIZN01('15')

         MK014=PUNIZN01('14')


         MK016=MK016+PUNIZN01('20')
         MK016=MK016+PUNIZN01('21')
         MK016=MK016+PUNIZN01('22')
*         MK016=MK016+PUNIZN01('23')
         MK016=MK016-PUNIZN02('223')

         MK017=PUNIZN02('223')

         MK018=PUNIZN01('23')
         MK018=MK018-PUNIZN02('237')

         MK019=MK019+PUNIZN01('24')

         MK020=MK020+PUNIZN01('27')
         MK020=MK020+PUNIZN01('28')
         MK020=MK020-PUNIZN02('288')

         MK021=MK021+PUNIZN02('288')

         MK023=MK023+PUNIZN01('29')

         MK025=MK025+PUNIZN01('88')

         MK102=MK102+PUNIZN03('30')
         MK103=MK103+PUNIZN03('31')
         MK104=MK104+PUNIZN03('32')
         MK105=MK105+PUNIZN04('330')
         MK105=MK105+PUNIZN04('331')
         MK106=MK106+PUNIZN04('332')
         MK107=MK107+PUNIZN04('333')

         MK108=MK108+PUNIZN03('34')
         MK109=MK109+PUNIZN02('35')

         MK110=MK110+PUNIZN02('037')
         MK110=MK110+PUNIZN02('237')

         MK112=MK112+PUNIZN03('40')
         MK113=MK113+PUNIZN03('41')

         MK114=MK114+PUNIZN04('414')
         MK114=MK114+PUNIZN04('415')
       
         MK115=MK115+PUNIZN03('41')
         MK115=MK115-PUNIZN04('414')
         MK115=MK115-PUNIZN04('415')

         MK117=MK117+PUNIZN03('42')
         MK117=MK117-PUNIZN04('427')

         MK118=MK118+PUNIZN04('427')


         MK119=MK119+PUNIZN03('43')
         MK119=MK119+PUNIZN03('44')
         
         MK120=MK120+PUNIZN03('45')
         MK120=MK120+PUNIZN03('46')
         
         MK121=MK121+PUNIZN03('49')
         MK121=MK121-PUNIZN04('498')
         MK121=MK121+PUNIZN03('47')
         MK121=MK121+PUNIZN03('48')
         MK121=MK121-PUNIZN04('481')

         MK122=MK122+PUNIZN04('481')

         MK123=MK123+PUNIZN04('498')

         MK125=MK125+PUNIZN03('89')
         

         MK202=MK202+PUNIZN03('60')
         MK202=MK202+PUNIZN03('61')
         MK203=MK203+PUNIZN03('62')

         MK204=MK204+PUNIZN04('630')
         MK205=MK205+PUNIZN02('631')

         MK206=MK206+PUNIZN03('64')
         MK206=MK206+PUNIZN03('65')

         MK208=MK208+PUNIZN01('50')
         MK209=MK209+PUNIZN01('51')
         MK210=MK210+PUNIZN01('52')

         MK211=MK211+PUNIZN01('54')

         MK212=MK212+PUNIZN01('53')
         MK212=MK212+PUNIZN01('55')

         MK215=MK215+PUNIZN03('66')

         MK216=MK216+PUNIZN01('56')

         MK217=MK217+PUNIZN03('67')
         MK217=MK217+PUNIZN03('68')

         MK218=MK218+PUNIZN01('57')
         MK218=MK218+PUNIZN01('58')


         MK221=MK221+PUNIZN03('69')
         MK221=MK221-PUNIZN04('699')
         IF MK221<0
            MK221=0
         ENDIF   
         
         MK222=MK222+PUNIZN01('59')
         MK222=MK222-PUNIZN02('599')
         IF MK222<0
            MK222=0
         ENDIF   
         
         MK225=PUNIZN07('721')
         MK226=PUNIZN07('722')
         MK226=PUNIZN07('723')
         
           
         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN05 WITH '002'
         DO PUNIZN05 WITH '003'
         DO PUNIZN05 WITH '004'

         DO PUNIZN05 WITH '006'
         DO PUNIZN05 WITH '007'
         DO PUNIZN05 WITH '008'

         DO PUNIZN05 WITH '010'
         DO PUNIZN05 WITH '011'
         
         DO PUNIZN05 WITH '013'
         DO PUNIZN05 WITH '014'
         
         DO PUNIZN05 WITH '016'
         DO PUNIZN05 WITH '017'
         DO PUNIZN05 WITH '018'
         DO PUNIZN05 WITH '019'
         DO PUNIZN05 WITH '020'
         
         DO PUNIZN05 WITH '021'

         DO PUNIZN05 WITH '023'

         DO PUNIZN05 WITH '025'
         

         DO PUNIZN05 WITH '102'
         DO PUNIZN05 WITH '103'
         DO PUNIZN05 WITH '104'
         DO PUNIZN05 WITH '105'
         DO PUNIZN05 WITH '106'
         DO PUNIZN05 WITH '107'
         DO PUNIZN05 WITH '108'
         DO PUNIZN05 WITH '109'
         DO PUNIZN05 WITH '110'

         DO PUNIZN05 WITH '112'

         DO PUNIZN05 WITH '114'
         DO PUNIZN05 WITH '115'

         DO PUNIZN05 WITH '117'
         DO PUNIZN05 WITH '118'
         DO PUNIZN05 WITH '119'
         DO PUNIZN05 WITH '120'
         DO PUNIZN05 WITH '121'
         DO PUNIZN05 WITH '122'
         DO PUNIZN05 WITH '123'

         DO PUNIZN05 WITH '125'
         
         DO PUNIZN05 WITH '202'
         DO PUNIZN05 WITH '203'
         DO PUNIZN05 WITH '204'
         DO PUNIZN05 WITH '205'
         DO PUNIZN05 WITH '206'

         DO PUNIZN05 WITH '208'
         DO PUNIZN05 WITH '209'
         DO PUNIZN05 WITH '210'
         DO PUNIZN05 WITH '211'
         DO PUNIZN05 WITH '212'

         DO PUNIZN05 WITH '215'
         DO PUNIZN05 WITH '216'
         DO PUNIZN05 WITH '217'
         DO PUNIZN05 WITH '218'
         DO PUNIZN05 WITH '221'
         DO PUNIZN05 WITH '222'

         DO PUNIZN05 WITH '225'
         DO PUNIZN05 WITH '226'
         DO PUNIZN05 WITH '228'
         
         *----------pounjenje kolone prethodne godine
                    
         USE &KKOCKA IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP

         MK002=0
         MK003=0
         MK005=0
         MK006=0
         MK007=0
         MK008=0
         MK010=0
         MK011=0
         MK013=0
         MK014=0
         MK015=0
         MK016=0
         MK017=0
         MK018=0
         MK019=0
         MK020=0
         MK021=0
         MK023=0
         MK025=0

         MK102=0
         MK103=0
         MK104=0
         MK105=0
         MK106=0
         MK107=0
         MK108=0
         MK109=0
         MK110=0

         MK112=0
         MK114=0
         MK115=0
         
         MK117=0
         MK118=0
         MK119=0
         MK120=0
         MK121=0
         MK122=0
         MK123=0
         MK124=0
         
         MK202=0
         MK203=0
         MK204=0
         MK205=0
         MK206=0

         MK208=0
         MK209=0
         MK210=0
         MK211=0
         MK212=0

         MK215=0
         MK216=0
         MK217=0
         MK218=0

         MK221=0
         MK222=0
         MK225=0
         MK226=0
         MK227=0
         MK228=0


         MK002=PUNIZN01('00')
         MK003=PUNIZN02('012')
         MK004=PUNIZN02('010')
         MK004=MK004+PUNIZN02('011')
         MK004=MK004+PUNIZN02('013')
         MK004=MK004+PUNIZN02('014')
         MK004=MK004+PUNIZN02('015')
         MK004=MK004+PUNIZN02('016')
         MK004=MK004+PUNIZN02('017')
         MK004=MK004+PUNIZN02('018')
         MK004=MK004+PUNIZN02('019')
        
         MK006=PUNIZN02('020')
         MK006=MK006+PUNIZN02('022')
         MK006=MK006+PUNIZN02('023')
         MK006=MK006+PUNIZN02('026')
*         MK006=MK006+PUNIZN02('026')
         MK006=MK006+PUNIZN02('027')
         MK006=MK006+PUNIZN02('028')
         MK006=MK006+PUNIZN02('029')

         MK007=MK007+PUNIZN02('024')

         MK010=PUNIZN02('030')
         MK010=MK010+PUNIZN02('031')
         MK010=MK010+PUNIZN02('032')
         MK010=MK010+PUNIZN02('039')
         
         MK011=PUNIZN02('033')
         MK011=MK011+PUNIZN02('034')
         MK011=MK011+PUNIZN02('035')
         MK011=MK011+PUNIZN02('036')
         MK011=MK011+PUNIZN02('038')
         MK011=MK011-PUNIZN02('037')
         
         MK013=PUNIZN01('10')
         MK013=MK013+PUNIZN01('11')
         MK013=MK013+PUNIZN01('12')
         MK013=MK013+PUNIZN01('13')
         MK013=MK013+PUNIZN01('15')

         MK014=PUNIZN01('14')


         MK016=MK016+PUNIZN01('20')
         MK016=MK016+PUNIZN01('21')
         MK016=MK016+PUNIZN01('22')
 *        MK016=MK016+PUNIZN01('23')
         MK016=MK016-PUNIZN02('223')

         MK017=PUNIZN02('223')

         MK018=PUNIZN01('23')
         MK018=MK018-PUNIZN02('237')

         MK019=MK019+PUNIZN01('24')

         MK020=MK020+PUNIZN01('27')
         MK020=MK020+PUNIZN01('28')
         MK020=MK020-PUNIZN02('288')

         MK021=MK021+PUNIZN02('288')

         MK023=MK023+PUNIZN01('29')

         MK025=MK025+PUNIZN01('88')

         MK102=MK102+PUNIZN03('30')
         MK103=MK103+PUNIZN03('31')
         MK104=MK104+PUNIZN03('32')
         MK105=MK105+PUNIZN04('330')
         MK105=MK105+PUNIZN04('331')

         MK106=MK106+PUNIZN04('332')

         MK107=MK107+PUNIZN04('333')

         MK108=MK108+PUNIZN03('34')
         MK109=MK109+PUNIZN02('35')

         MK110=MK110+PUNIZN02('037')
         MK110=MK110+PUNIZN02('237')

         MK112=MK112+PUNIZN03('40')
         MK113=MK113+PUNIZN03('41')

         MK114=MK114+PUNIZN04('414')
         MK114=MK114+PUNIZN04('415')
       
         MK115=MK115+PUNIZN03('41')
         MK115=MK115-PUNIZN04('414')
         MK115=MK115-PUNIZN04('415')

         MK117=MK117+PUNIZN03('42')
         MK117=MK117-PUNIZN04('427')

         MK118=MK118+PUNIZN04('427')


         MK119=MK119+PUNIZN03('43')
         MK119=MK119+PUNIZN03('44')
         
         MK120=MK120+PUNIZN03('45')
         MK120=MK120+PUNIZN03('46')
         
         MK121=MK121+PUNIZN03('47')
         MK121=MK121+PUNIZN03('48')
         MK121=MK121+PUNIZN03('49')
         MK121=MK121-PUNIZN04('498')
         MK121=MK121-PUNIZN04('481')

         MK122=MK122+PUNIZN04('481')

         MK123=MK123+PUNIZN04('498')

         MK125=MK125+PUNIZN03('89')
         

         MK202=MK202+PUNIZN03('60')
         MK202=MK202+PUNIZN03('61')
  
         MK203=MK203+PUNIZN03('62')

         MK204=MK204+PUNIZN04('630')
         MK205=MK205+PUNIZN02('631')

         MK206=MK206+PUNIZN03('64')
         MK206=MK206+PUNIZN03('65')

         MK208=MK208+PUNIZN01('50')
         MK209=MK209+PUNIZN01('51')
         MK210=MK210+PUNIZN01('52')

         MK211=MK211+PUNIZN01('54')

         MK212=MK212+PUNIZN01('53')
         MK212=MK212+PUNIZN01('55')

         MK215=MK215+PUNIZN03('66')

         MK216=MK216+PUNIZN01('56')

         MK217=MK217+PUNIZN03('67')
         MK217=MK217+PUNIZN03('68')

         MK218=MK218+PUNIZN01('57')
         MK218=MK218+PUNIZN01('58')


         MK221=MK221+PUNIZN03('69')
         MK221=MK221-PUNIZN04('699')
         
         MK222=MK222+PUNIZN01('59')
         MK222=MK222-PUNIZN02('599')
         
         MK225=PUNIZN07('721')
         MK226=PUNIZN07('722')
         MK226=PUNIZN07('723')
        
           
         
         
         SELECT KOCKA
         USE
         SELECT BILSEMA
         DO PUNIZN06 WITH '002'
         DO PUNIZN06 WITH '003'
         DO PUNIZN06 WITH '004'

         DO PUNIZN06 WITH '006'
         DO PUNIZN06 WITH '007'
         DO PUNIZN06 WITH '008'

         DO PUNIZN06 WITH '010'
         DO PUNIZN06 WITH '011'
         
         DO PUNIZN06 WITH '013'
         DO PUNIZN06 WITH '014'
         
         DO PUNIZN06 WITH '016'
         DO PUNIZN06 WITH '017'
         DO PUNIZN06 WITH '018'
         DO PUNIZN06 WITH '019'
         DO PUNIZN06 WITH '020'
         
         DO PUNIZN06 WITH '021'

         DO PUNIZN06 WITH '023'

         DO PUNIZN06 WITH '025'
         

         DO PUNIZN06 WITH '102'
         DO PUNIZN06 WITH '103'
         DO PUNIZN06 WITH '104'
         DO PUNIZN06 WITH '105'
         DO PUNIZN06 WITH '106'
         DO PUNIZN06 WITH '107'
         DO PUNIZN06 WITH '108'
         DO PUNIZN06 WITH '109'
         DO PUNIZN06 WITH '110'

         DO PUNIZN06 WITH '112'
         DO PUNIZN06 WITH '114'
         DO PUNIZN06 WITH '115'
         
         DO PUNIZN06 WITH '117'
         DO PUNIZN06 WITH '118'
         DO PUNIZN06 WITH '119'
         DO PUNIZN06 WITH '120'
         DO PUNIZN06 WITH '121'
         DO PUNIZN06 WITH '122'
         
         DO PUNIZN06 WITH '123'
         DO PUNIZN06 WITH '125'
         
         DO PUNIZN06 WITH '202'
         DO PUNIZN06 WITH '203'
         DO PUNIZN06 WITH '204'
         DO PUNIZN06 WITH '205'
         DO PUNIZN06 WITH '206'

         DO PUNIZN06 WITH '208'
         DO PUNIZN06 WITH '209'
         DO PUNIZN06 WITH '210'
         DO PUNIZN06 WITH '211'
         DO PUNIZN06 WITH '212'

         DO PUNIZN06 WITH '215'
         DO PUNIZN06 WITH '216'
         DO PUNIZN06 WITH '217'
         DO PUNIZN06 WITH '218'
         DO PUNIZN06 WITH '221'
         DO PUNIZN06 WITH '222'

         DO PUNIZN06 WITH '225'
         DO PUNIZN06 WITH '226'
         DO PUNIZN06 WITH '228'


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
