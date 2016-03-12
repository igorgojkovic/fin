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
      NP002P=PLAN
      NN002=PLANKV
      NR002=REALKV

      SEEK '003'
      NP003=PRETH
      NP003P=PLAN
      NN003=PLANKV
      NR003=REALKV


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


      SEEK '010'
      NP010=PRETH
      NP010P=PLAN
      NN010=PLANKV
      NR010=REALKV

      SEEK '011'
      NP011=PRETH
      NP011P=PLAN
      NN011=PLANKV
      NR011=REALKV

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

      SEEK '021'
      NP021=PRETH
      NP021P=PLAN
      NN021=PLANKV
      NR021=REALKV


      SEEK '023'
      NP023=PRETH
      NP023P=PLAN
      NN023=PLANKV
      NR023=REALKV

      SEEK '025'
      NP025=PRETH
      NP025P=PLAN
      NN025=PLANKV
      NR025=REALKV
*--------------------------------
      SEEK '102'
      NP102=PRETH
      NP102P=PLAN
      NN102=PLANKV
      NR102=REALKV

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
*-----------------------

      SEEK '111'
      NP111=PRETH
      NP111P=PLAN
      NN111=PLANKV
      NR111=REALKV
*-----------------------

      SEEK '112'
      NP112=PRETH
      NP112P=PLAN
      NN112=PLANKV
      NR112=REALKV
*-----------------------

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

*---------------------------
      SEEK '117'
      NP117=PRETH
      NP117P=PLAN
      NN117=PLANKV
      NR117=REALKV

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

      SEEK '121'
      NP121=PRETH
      NP121P=PLAN
      NN121=PLANKV
      NR121=REALKV

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
      SEEK '125'
      NP125=PRETH
      NP125P=PLAN
      NN125=PLANKV
      NR125=REALKV




*-----------------------------
      SEEK '202'
      NP202=PRETH
      NP202P=PLAN
      NN202=PLANKV
      NR202=REALKV

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

*------------------------------
      SEEK '208'
      NP208=PRETH
      NP208P=PLAN
      NN208=PLANKV
      NR208=REALKV

      SEEK '209'
      NP209=PRETH
      NP209P=PLAN
      NN209=PLANKV
      NR209=REALKV

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

*-------------------
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

      SEEK '218'
      NP218=PRETH
      NP218P=PLAN
      NN218=PLANKV
      NR218=REALKV

*-------------------------

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
*-------------------------

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

*--------------------------
      SEEK '231'
      NP231=PRETH
      NP231P=PLAN
      NN231=PLANKV
      NR231=REALKV

      SEEK '232'
      NP232=PRETH
      NP232P=PLAN
      NN232=PLANKV
      NR232=REALKV

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

*----------------
      SEEK '009'
      NP009=NP010+NP011
      NP009p=NP010p+NP011p
      NN009=NN010+NN011
      NR009=NR010+NR011
      REPLACE PRETH WITH NP009
      REPLACE PLAN WITH NP009P      
      REPLACE PLANKV  WITH NN009
      REPLACE REALKV WITH NR009

      SEEK '005'
      NP005=NP006+NP007+NP008
      NP005p=NP006p+NP007p+NP008p
      NN005=NN006+NN007+NN008
      NR005=NR006+NR007+NR008
      REPLACE PRETH WITH NP005
      REPLACE PLAN WITH NP005P      
      REPLACE PLANKV  WITH NN005
      REPLACE REALKV WITH NR005


      SEEK '001'
      NP001=NP002+NP003+NP004+NP005+NP009
      NP001p=NP002p+NP003p+NP004p+NP005p+NP009p
      NN001=NN002+NN003+NN004+NN005+NN009
      NR001=NR002+NR003+NR004+NR005+NR009
      REPLACE PRETH WITH NP001
      REPLACE PLAN WITH NP001P      
      REPLACE PLANKV  WITH NN001
      REPLACE REALKV WITH NR001

*-----------------------------
      SEEK '012'
      NP012=NP013+NP014+NP015
      NP012p=NP013P+NP014P+NP015P
      NN012=NN013+NN014+NN015
      NR012=NR013+NR014+NR015
      REPLACE PRETH WITH NP012
      REPLACE PLAN WITH NP012P      
      REPLACE PLANKV  WITH NN012
      REPLACE REALKV WITH NR012
*-------------------------------
      SEEK '015'
      NP015=NP016+NP017+NP018+NP019+NP020
      NP015p=NP016P+NP017P+NP018P+NP019P+NP020P
      NN015=NN016+NN017+NN018+NN019+Nn020
      NR015=NR016+NR017+NR018+NR019+NR020
      REPLACE PRETH WITH NP015
      REPLACE PLAN WITH NP015P      
      REPLACE PLANKV  WITH NN015
      REPLACE REALKV WITH NR015

*--------------------------------------
      SEEK '022'
      NP022=NP001+NP012+NP021
      NP022p=NP001P+NP012P+NP021P
      NN022=NN001+NN012+NN021
      NR022=NR001+NR012+NR021
      REPLACE PRETH WITH NP022
      REPLACE PLAN WITH NP022P      
      REPLACE PLANKV  WITH NN022
      REPLACE REALKV WITH NR022

*---------24------------

      SEEK '024'
      NP024=NP022+NP023
      NP024p=NP022P+NP023P
      NN024=NN022+NN023
      NR024=NR022+NR023
      REPLACE PRETH WITH NP024
      REPLACE PLAN WITH NP024P      
      REPLACE PLANKV  WITH NN024
      REPLACE REALKV WITH NR024

*----------------------------------------
      SEEK '101'
      NP101=NP102+NP103+NP104+NP105+NP106+NP107+NP108-NP109-NP110
      NP101p=NP103P+NP104P+NP105P+NP106P+NP107P+NP108P-NP109P-NP110P
      NN101=NN103+NN104+NN105+NN106+NN107+NN108-NN109-NN110
      NR101=NR103+NR104+NR105+NR106+NR107+NR108-NR109-NR110      
      REPLACE PRETH WITH NP101
      REPLACE PLAN WITH NP101P      
      REPLACE PLANKV  WITH NN101
      REPLACE REALKV WITH NR101
*----------------------------------------

      SEEK '113'
      NP113=NP114+NP115
      NP113p=NP114P+NP115P
      NN113=NN114+NN115
      NR113=NR114+NR115
      REPLACE PRETH WITH NP113
      REPLACE PLAN WITH NP113P      
      REPLACE PLANKV  WITH NN113
      REPLACE REALKV WITH NR113

*----------------------------------------
      SEEK '116'
      NP116=NP117+NP118+NP119+NP120+NP121+NP122
      NP116p=NP117P+NP118P+NP119P+NP120P+NP121P+NP122P
      NN116=NN117+NN118+NN119+NN120+NN121+NN122
      NR116=NR117+NR118+NR119+NR120+NR121+NR122
      REPLACE PRETH WITH NP116
      REPLACE PLAN WITH NP116P      
      REPLACE PLANKV  WITH NN116
      REPLACE REALKV WITH NR116

*--------------------------------------
      SEEK '111'
      NP111=NP112+NP113+NP116
      NP111p=NP112P+NP113p+NP116P
      NN111=NN112+NN113+NN116
      NR111=NR112+NR113+NR116
      REPLACE PRETH WITH NP111
      REPLACE PLAN WITH NP111P      
      REPLACE PLANKV  WITH NN111
      REPLACE REALKV WITH NR111


*---------------------------
      SEEK '124'
      NP124=NP101+NP111+NP123
      NP124p=NP101P+NP111P+NP111P
      NN124=NN101+NN111+NN123
      NR124=NR101+NR111+NR123
      REPLACE PRETH WITH NP124
      REPLACE PLAN WITH NP124P      
      REPLACE PLANKV  WITH NN124
      REPLACE REALKV WITH NR124



      *BILANS USPEHA
      
      SEEK '201'
      NP201=NP202+NP203+NP204+NP205+NP206
      NP201P=NP202P+NP203P+NP204P+NP205P+NP206P
      NN201=NN202+NN203+NN204+NN205+NN206
      NR201=NR202+NR203+NR204+NR205+NR206
      REPLACE PRETH WITH NP201
      REPLACE PLANKV  WITH NN201
      REPLACE PLAN WITH NP201P
      REPLACE REALKV  WITH NR201

      SEEK '207'
      NP207=NP208+NP209+NP210+NP211+NP212
      NP207P=NP208P+NP209P+NP210P+NP211P+NP212P
      NN207=NN208+NN209+NN210+NN211+NN212
      NR207=NR208+NR209+NR210+NR211+NR212
      REPLACE PRETH WITH NP207
      REPLACE PLANKV  WITH NN207
      REPLACE PLAN WITH NP207P
      REPLACE REALKV  WITH NR207
*----------------------------------------
      SEEK '213'
      NP213=NP201-NP207
      NP213P=NP201P-NP207P
      NN213=NN201-NN207
      NR213=NR201-NR207
      REPLACE PRETH WITH NP213
      REPLACE PLANKV  WITH NN213
      REPLACE PLAN WITH NP213P
      REPLACE REALKV  WITH NR213
      IF NP213<0
         REPLACE PRETH WITH 0
         NP213=0
      ENDIF   
      IF NN213<0
         REPLACE PLANKV WITH 0
         NN213=0
      ENDIF   
      IF NP213P<0
         REPLACE PLAN WITH 0
         NP213P=0
      ENDIF   
      IF NR213<0
         REPLACE REALKV WITH 0
         NR213=0
      ENDIF   

*-----------------------------
      SEEK '214'
      NP214=NP207-NP201
      NP214P=NP207P-NP201P
      NN214=NN207-NN201
      NR214=NR207-NR201
      REPLACE PRETH WITH NP214
      REPLACE PLANKV  WITH NN214
      REPLACE PLAN WITH NP214P
      REPLACE REALKV  WITH NR214
      IF NP214<0
         REPLACE PRETH WITH 0
         NP214=0
      ENDIF   
      IF NN214<0
         REPLACE PLANKV WITH 0
         NN214=0
      ENDIF   
      IF NP214P<0
         REPLACE PLAN WITH 0
         NP214P=0
      ENDIF   
      IF NR214<0
         REPLACE REALKV WITH 0
         NR214=0
      ENDIF   

*----------------------------------------
      SEEK '219'
      NP219=NP213-NP214+NP215-NP216+NP217-NP218
      NP219P=NP213p-NP214p+NP215p-NP216p+NP217p-NP218p
      NN219=NN213-NN214+NN215-NN216+NN217-NN218
      NR219=NR213-NR214+NR215-NR216+NR217-NR218
      REPLACE PRETH WITH NP219
      REPLACE PLANKV  WITH NN219
      REPLACE PLAN WITH NP219P
      REPLACE REALKV  WITH NR219
      IF NP219<0
         REPLACE PRETH WITH 0
         NP219=0
      ENDIF   
      IF NN219<0
         REPLACE PLANKV WITH 0
         NN219=0
      ENDIF   
      IF NP219P<0
         REPLACE PLAN WITH 0
         NP219P=0
      ENDIF   
      IF NR219<0
         REPLACE REALKV WITH 0
         NR219=0
      ENDIF   
*--------------------------------------
      SEEK '220'
      NP220=NP214-NP213-NP215+NP216-NP217+NP218
      NP220P=NP214p-NP213p-NP215p+NP216p-NP217p+NP218p
      NN220=NN214-NN213-NN215+NN216-NN217+NN218
      NR220=NR214-NR213-NR215+NR216-NR217+NR218
      REPLACE PRETH WITH NP220
      REPLACE PLANKV  WITH NN220
      REPLACE PLAN WITH NP220P
      REPLACE REALKV  WITH NR220
      IF NP220<0
         REPLACE PRETH WITH 0
         NP220=0
      ENDIF   
      IF NN220<0
         REPLACE PLANKV WITH 0
         NN220=0
      ENDIF   
      IF NP220P<0
         REPLACE PLAN WITH 0
         NP220P=0
      ENDIF   
      IF NR220<0
         REPLACE REALKV WITH 0
         NR220=0
      ENDIF   
*----------------------
      SEEK '221'
      IF NP221<0
         REPLACE PRETH WITH 0
         NP221=0
      ENDIF   
      IF NN221<0
         REPLACE PLANKV WITH 0
         NN221=0
      ENDIF   
      IF NP221P<0
         REPLACE PLAN WITH 0
         NP221P=0
      ENDIF   
      IF NR221<0
         REPLACE REALKV WITH 0
         NR221=0
      ENDIF   

*----------------------
      SEEK '222'
      IF NP222<0
         REPLACE PRETH WITH 0
         NP222=0
      ENDIF   
      IF NN222<0
         REPLACE PLANKV WITH 0
         NN222=0
      ENDIF   
      IF NP222P<0
         REPLACE PLAN WITH 0
         NP222P=0
      ENDIF   
      IF NR222<0
         REPLACE REALKV WITH 0
         NR222=0
      ENDIF   


*----------------------------------------
      SEEK '223'
*      SET STEP ON 
      NP223=NP219-NP220+NP221-NP222
      NP223P=NP219p-NP220p+NP221p-NP222p
      NN223=NN219-NN220+NN221-NN222
      NR223=NR219-NR220+NR221-NR222
      REPLACE PRETH WITH NP223
      REPLACE PLANKV  WITH NN223
      REPLACE PLAN WITH NP223P
      REPLACE REALKV  WITH NR223
      IF NP223<0
         REPLACE PRETH WITH 0
         NP223=0
      ENDIF   
      IF NN223<0
         REPLACE PLANKV WITH 0
         NN223=0
      ENDIF   
      IF NP223P<0
         REPLACE PLAN WITH 0
         NP223P=0
      ENDIF   
      IF NR223<0
         REPLACE REALKV WITH 0
         NR223=0
      ENDIF   

      SEEK '224'
      NP224=NP220-NP219+NP222-NP221
      NP224P=NP220p-NP219p+NP222p-NP221p
      NN224=NN220-NN219+NN222-NN221
      NR224=NR220-NR219+NR222-NR221
      REPLACE PRETH WITH NP224
      REPLACE PLANKV  WITH NN224
      REPLACE PLAN WITH NP224P
      REPLACE REALKV  WITH NR224
      IF NP224<0
         REPLACE PRETH WITH 0
         NP224=0
      ENDIF   
      IF NN224<0
         REPLACE PLANKV WITH 0
         NN224=0
      ENDIF   
      IF NP224P<0
         REPLACE PLAN WITH 0
         NP224P=0
      ENDIF   
      IF NR224<0
         REPLACE REALKV WITH 0
         NR224=0
      ENDIF   

*----------------------------------------
      SEEK '229'
      NP229=NP223-NP224-NP225-NP226+NP227-NP228
      NP229P=NP223P-NP224P-NP225P-NP226P+NP227P-NP228P
      NN229=NN223-NN224-NN225-NN226+NN227-NN228
      NR229=NR223-NR224-NR225-NR226+NR227-NR228            
      REPLACE PRETH WITH NP229
      REPLACE PLANKV  WITH NN229
      REPLACE PLAN WITH NP229P
      REPLACE REALKV  WITH NR229
      IF NP229<0
         REPLACE PRETH WITH 0
         NP229=0
      ENDIF   
      IF NN229<0
         REPLACE PLANKV WITH 0
         NN229=0
      ENDIF   
      IF NP229P<0
         REPLACE PLAN WITH 0
         NP229P=0
      ENDIF   
      IF NR229<0
         REPLACE REALKV WITH 0
         NR229=0
      ENDIF   


*----------------------------------------
      SEEK '230'
      NP230=NP224-NP223+NP225+NP226-NP227+NP228
      NP230P=NP224P-NP223P+NP225P+NP226P-NP227P+NP228P
      NN230=NN224-NN223+NN225+NN226-NN227+NN228
      NR230=NR224-NR223+NR225+NR226-NR227+NR228            
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