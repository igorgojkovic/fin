PROCEDURE PB1PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 151
         APPEND BLANK
      next
      DO PB1POP
   endif
POP KEY
ENDPROC

PROCEDURE PB1POP
PUSH KEY CLEAR

   DO PB1POP2  WITH  1,'    A. DOBIT I GUBITAK PRE OPOREZIVANJA                                ',' ','      ',' '
   DO PB1POP2  WITH  2,'                                                                       ',' ','      ','*'
   DO PB1POP2  WITH  3,'      I. REZULTAT U BILANSU USPEHA                                     ',' ','      ',' '
   DO PB1POP2  WITH  4,'                                                                       ',' ','      ','*'
   DO PB1POP2  WITH  5,' 1. Dobit poslovne godine...................................           ','*','  1.  ','*'
   DO PB1POP2  WITH  6,' 2 .Dobit ostvarena po osnovu prihoda od predmeta koncesije.           ','*','  2.  ','*'
   DO PB1POP2  WITH  7,' 3. Gubitak poslovne godine.................................           ','*','  3.  ','*'
   DO PB1POP2  WITH  8,'                                                                       ',' ','      ',' '
   DO PB1POP2  WITH  9,'     II. DOBICI I GUBICI OD PRODAJE IMOVINE IZ ÈLANA                   ',' ','      ',' '
   DO PB1POP2  WITH 10,'         27 ZAKONA (ISKAZANI U BILANSU USPEHA)                         ',' ','      ',' '
   DO PB1POP2  WITH 11,'                                                                       ',' ','      ','*'
   DO PB1POP2  WITH 12,' 4. Dobici od prodaje imovine                                          ','*','  4.  ','*'
   DO PB1POP2  WITH 13,' 5. Gubici od prodaje imovine                                          ','*','  5.  ','*'
   DO PB1POP2  WITH 14,'                                                                       ',' ','      ',' '
   DO PB1POP2  WITH 15,'    III. USKLADJIVANJE RASHODA                                         ',' ','      ',' '
   DO PB1POP2  WITH 16,'                                                                       ',' ','      ','*'
   DO PB1POP2  WITH 17,' 6. Troškovi koji nisu dokumentovani                                   ','*','  6.  ','*'
   DO PB1POP2  WITH 18,' 7. Ispravka vrednosti pojedinaènih potraživanja od lica               ','*','  7.  ',' '
   DO PB1POP2  WITH 19,'    kojima se istovremeno i duguje do iznosa obaveze prema tom licu    ',' ','      ','*'
   DO PB1POP2  WITH 20,' 8. Pokloni i prilozi dati politièkim organizacijama........           ','*','  8.  ','*'
   DO PB1POP2  WITH 21,' 9. Pokloni èiji je primalac povezano lice                             ','*','  9.  ','* '
   DO PB1POP2  WITH 22,'10. Kamate zbog neblagovremeno placenih poreza, doprinosa i            ','*',' 10.  ',' '
   DO PB1POP2  WITH 23,'    drugih javnih dazbina                                              ',' ','      ','*'
   DO PB1POP2  WITH 24,'11. Troskovi postupka prinudne naplate poreza i drugih dugo            ','*',' 11.  ',' '
   DO PB1POP2  WITH 25,'    vanja,troškovi poreskoprekrsajnog i drugih prekršajnih postupaka   ',' ','      ',' '
   DO PB1POP2  WITH 26,'    koji se vode pred nadležnim organom                                ',' ','      ','*'
   DO PB1POP2  WITH 27,'12. Novèane kazne, ugovorne kazne i penali                             ','*',' 12.  ','*'
   DO PB1POP2  WITH 28,'13. Zatezne kamate izmeðu povezanih lica                               ','*',' 13.  ','*'
   DO PB1POP2  WITH 29,'14. Troškovi koji nisu nastali u svrhu obavljanja poslovne delatnosti  ','*',' 14.  ','*'
   DO PB1POP2  WITH 30,'15. Troškovi materijala i nabavne vrednosti prodate robe iznad iznosa  ','*',' 15.  ',' '
   DO PB1POP2  WITH 31,'    obraèunatog primenom metode ponderis.prosecne cene ili FIFO metode ',' ','      ','*'
   DO PB1POP2  WITH 32,'16. Otpremnine i novcane naknade po osnovu prestanka radnog odnosa,    ','*',' 16.  ',' '
   DO PB1POP2  WITH 33,'    obraèunate a neisplacene u poreskom periodu                        ',' ','      ','*'
   DO PB1POP2  WITH 34,'17. Otpremnine i novèane naknade po osnovu prestanka radnog odnosa,    ','*',' 17.  ',' '
   DO PB1POP2  WITH 35,'    koje  su obraæunate u prethodnom a isplaæene u poreskom periodu    ',' ','      ',' '
   DO PB1POP2  WITH 36,'    za koji se podnosi poreski bilans                                  ',' ','      ','*'
   DO PB1POP2  WITH 37,'18. Ukupan iznos amortizacije obraèunat u finansijskim izveštajima     ','*',' 18.  ','*'
   DO PB1POP2  WITH 38,'19. Ukupan iznos amortizacije obraèunat za poreske svrhe               ','*',' 19.  ','*'
   DO PB1POP2  WITH 39,'20. Izdaci za zdravstvene,obrazovne,nauène,humanitarne,verske          ','*',' 20.  ',' '
   DO PB1POP2  WITH 40,'    zaštitu æovekove sredine i sportske namene i davanja uæinjena      ',' ','      ',' '
   DO PB1POP2  WITH 41,'    vama socijalne zaštite                                             ',' ','      ','*'   
   DO PB1POP2  WITH 42,'21. Izdaci za ulaganja u oblasti kulture                               ','*',' 21.  ','*'
   DO PB1POP2  WITH 43,'22. Èlanarine komorama, savezima i udruženjima                         ','*',' 22.  ','*'
   DO PB1POP2  WITH 44,'23. Rashodi za reklamu i propagandu                                    ','*',' 23.  ','*'   
   DO PB1POP2  WITH 45,'24. Rashodi po osnovu reprezentacije                                   ','*',' 24.  ','*'   
   DO PB1POP2  WITH 46,'25. Ispravka vrednosti pojedinaènih potraživanja ako od roka za njihovu','*',' 25.  ',' '
   DO PB1POP2  WITH 47,'    naplatu nije prošlo najmanje 60 dana, kao i otpis vrednosti pojedi ',' ','      ',' '
   DO PB1POP2  WITH 48,'    naènih potrazivanja koja prethodno nisu bila ukljucena u prihode,  ',' ','      ',' '
   DO PB1POP2  WITH 49,'    nisu otpisana kao nenaplativa i za koje nije pružen dokaz o neuspe ',' ','      ',' '
   DO PB1POP2  WITH 50,'    loj naplati                                                        ',' ','      ','*'
   DO PB1POP2  WITH 51,'26. Troškovi koje ogranak nerezidentnog obveznika iskazuje u skladu    ','*',' 26.  ',' '
   DO PB1POP2  WITH 52,'    sa èlanom 20.Zakona                                                ',' ','      ','*'
   DO PB1POP2  WITH 53,'27. Porezi doprinosi takse i druge javne dazbine koje ne zavise od     ','*',' 27.  ',' '
   DO PB1POP2  WITH 54,'    rezultata poslovanja i nisu plaæene u poreskom periodu, a po osnovu',' ','      ',' '
   DO PB1POP2  WITH 55,'    kojih je u poslovnim knjigama obveznika iskazan rashod             ',' ','      ','*'
   DO PB1POP2  WITH 56,'28. Porezi doprinosi takse i druge javne dažbine koje ne zavise od     ','*',' 28.  ',' '
   DO PB1POP2  WITH 57,'    rezultata poslovanja placene u poreskom periodu, a koje nisu bile  ',' ','      ',' '
   DO PB1POP2  WITH 58,'    placene u prethodnom poreskom periodu u kome je po tom osnovu      ',' ','      ',' '
   DO PB1POP2  WITH 59,'    u poslovnim knjigama obveznika bio iskazan rashod                  ',' ','      ','*'
   DO PB1POP2  WITH 60,'29. Uveæanje ispravke vrednosti potraživanja banke iznad iznosa        ','*',' 29.  ',' '
   DO PB1POP2  WITH 61,'    utvrdjenog propisima Narodne Banke Srbije                          ',' ','      ','*'
   DO PB1POP2  WITH 62,'30. Uveæanje indirektnog otpisa potrazivanja osiguravajuceg drustva    ','*',' 30.  ',' '
   DO PB1POP2  WITH 63,'    iznad iznosa utvrdjenog propisima Narodne Banke Srbije             ',' ','      ','*'
   DO PB1POP2  WITH 64,'31. Dugoroèna rezervisanja koja se ne priznaju u poreskom bilansu      ','*',' 31.  ','*'
   DO PB1POP2  WITH 65,'32. Iskorišæena dugoroèna rezervisanja za izdate garancije i druga     ','*',' 32.  ',' '
   DO PB1POP2  WITH 66,'    jemstva koja nisu bila priznata kao  rashod u poreskom periodu     ',' ','      ',' '
   DO PB1POP2  WITH 67,'    u kome su izvrsena                                                 ',' ','      ','*'
   DO PB1POP2  WITH 68,'33. Rashodi po osnovu obezvredjenja imovine                            ','*',' 33.  ','*'
   DO PB1POP2  WITH 69,'34. Rashodi po osnovu obezvredjenja imovine koji se priznaju u poreskom','*',' 34.  ',' '
   DO PB1POP2  WITH 70,'    periodu za koji se podnosi poreski bilans, a u kome je ta imovina  ',' ','      ',' '
   DO PB1POP2  WITH 71,'    otudjena, upotrebljena ili je došlo do oštecenja imovine usled     ',' ','      ',' '
   DO PB1POP2  WITH 72,'    više sile                                                          ',' ','      ','*'

   DO PB1POP2  WITH 73,'     IV. USKLAÐIVANJE PRIHODA                                          ',' ','      ','*'
  
   DO PB1POP2  WITH 74,'35. Porez na dobit pravnih lica koji je u drugoj državi platila        ','*',' 35.  ',' '
   DO PB1POP2  WITH 75,'    nerezidentna  filijala rezidentnog matiènog pravnog lica           ',' ','      ','*'
  
   DO PB1POP2  WITH 76,'36. Porez po odbitku na dividende koji je u drugoj državi platila      ','*',' 36.  ',' '
   DO PB1POP2  WITH 77,'    nerezidentna filijala rezidentnog matiènog pravnog lica            ',' ','      ','*'
  
   DO PB1POP2  WITH 78,'37. Prihod po odbitku na kamate,autorske naknade, naknade po osnovu    ','*',' 37.  ',' '
   DO PB1POP2  WITH 79,'    zakupa nepokretnosti i pokretnih stvari i dividende koje ne ispu   ',' ','      ',' '
   DO PB1POP2  WITH 80,'    njavaju uslove za poreski kredit po èl.52 Zakona plaæen u drugoj   ',' ','      ',' '
   DO PB1POP2  WITH 81,'    državi                                                             ',' ','      ','*'
  
   DO PB1POP2 WITH  82,'38. Ispravka vrednosti pojedinacnih potrazivanja koje su bile priznate ','*',' 38.  ',' '
   DO PB1POP2 WITH  83,'    na teret rashoda, a za koje u poreskom periodu u kome se vrsi      ',' ','      ',' '
   DO PB1POP2 WITH  84,'    otpis, nisu kumulativno ispunjeni uslovi iz cl.16 stav 1           ',' ','      ',' '
   DO PB1POP2 WITH  85,'    tacka 1) di 3) Zakona                                              ',' ','      ','*'

   DO PB1POP2 WITH  86,'39. Ispravka vrednosti pojedinacnih potrazivanja koje su bile priznate ','*',' 39.  ',' '
   DO PB1POP2 WITH  87,'    na teret rashoda, a za koje u poreskom periodu u kome se vrsi      ',' ','      ',' '
   DO PB1POP2 WITH  88,'    otpis, nisu kumulativno ispunjeni uslovi iz cl.16 stav 1           ',' ','      ',' '
   DO PB1POP2 WITH  89,'    tacka 1) di 3) Zakona                                              ',' ','      ','*'

   DO PB1POP2 WITH  90,'40. Prihodi po osnovu dividendi i udela u dobiti od dobiti od          ','*',' 40.  ',' '
   DO PB1POP2 WITH  91,'    drugog rezidentnog obveznika                                       ',' ','      ','*'
   
   DO PB1POP2 WITH  92,'41. Prihodi od kamata po osnovu dužnièkih hartija od vrednosti  èiji   ','*',' 41.  ',' '
   DO PB1POP2 WITH  93,'    je izdavalac Republika, autonomna pokrajina, jedinica lokalne      ',' ','      ',' '
   DO PB1POP2 WITH  94,'    samouprave ili NBS                                                 ',' ','      ','*'   
   
   DO PB1POP2 WITH  95,'42. Prihodi po osnovu neiskorišæenih dugoroènih rezervisanja koja      ','*',' 42.  ',' '
   DO PB1POP2 WITH  96,'    nisu bila priznata kao rashod u poreskom periodu u kome su         ',' ','      ',' '
   DO PB1POP2 WITH  97,'    izvršena                                                           ',' ','      ','*'   
   
   DO PB1POP2 WITH  98,'43. Prihodi nastali u vezi sa rashodima koji nisu bili priznati        ','*',' 43.  ','*'
   
   
   DO PB1POP2  WITH 99,'     V. RASHODI I PRIHODI PO OSNOVU TRANSFERNIH CENA                   ',' ','      ',' '
   DO PB1POP2 WITH 100,'    (osim kamata na zajmove,odnosno kredite)                           ',' ','      ','*'
   
   DO PB1POP2 WITH 101,'44. Obraèunati troškovi po osnovu transfernih cena                     ','*',' 44.  ','* '
   
   DO PB1POP2 WITH 102,'45. Obraèunati troškovi po osnovu transfernih cena za koje se          ','*',' 45.  ','  '
   DO PB1POP2 WITH 103,'    podnosi izveštaj u skraæenom obliku                                ',' ','      ','* '
   
   DO PB1POP2 WITH 104,'46. Obraèunati prihodi  po osnovu transfernih cena                     ','*',' 46.  ','* '
   
   DO PB1POP2 WITH 105,'47. Obraèunati prihodi  po osnovu transfernih cena za koje se          ','*',' 47.  ','  '
   DO PB1POP2 WITH 106,'    podnosi izveštaj u skraæenom obliku                                ',' ','      ','* '
   
   DO PB1POP2 WITH 107,'     VI.RASHODI I PRIHODI PO OSNOVU KAMATA NA ZAJMOVE,ODNOSNO KREDITE  ',' ','      ',' '
   DO PB1POP2 WITH 108,'     IZMEDJU POVEZANIH LICA                                            ',' ','      ','*'
   
   DO PB1POP2 WITH 109,'48. Obraèunati rashodi po osnovu kamata (na dohvat ruke) na zajmove    ','*',' 48.  ','  '
   DO PB1POP2 WITH 110,'    odnosno kredite dobijene od povezanih lica                         ',' ','      ','* '
   
   DO PB1POP2 WITH 111,'49. Obraèunati prihodi po osnovu kamata (na dohvat ruke) na zajmove    ','*',' 49.  ','  '
   DO PB1POP2 WITH 112,'    odnosno kredite dobijene od povezanih lica                         ',' ','      ','* '
   
   DO PB1POP2 WITH 113,'     VII.KOREKCIJA RAHODA I PRIHODA PO OSNOVU TRANSFERNIH CENA ,       ',' ','      ',' '
   DO PB1POP2 WITH 114,'         UKLJUÈUJUÆI I KAMATE NA ZAJMOVE,ODNOSNO KREDITE IZMEDJU       ',' ','      ',' '
   DO PB1POP2 WITH 115,'         POVEZANIH LICA                                                ',' ','      ','*'
   
   DO PB1POP2 WITH 116,'50. Zbir konaènih korekcija (rashoda i prihoda) po osnovu transakcija  ','*',' 50.  ',' '
   DO PB1POP2 WITH 117,'    sa svim pojedinaènim povezanim licima utvrdjen u zakljuèku         ',' ','      ',' '
   DO PB1POP2 WITH 118,'    dokumentacije o transfernim cenama                                 ',' ','      ','*'   

   DO PB1POP2 WITH 119,'   VIII.KOREKCIJA RAHODA PO OSNOVU SPREÈAVANJA UTANJENE KAPITALIZACIJE ',' ','      ','*'

   DO PB1POP2 WITH 120,'51. Kamata i pripadajuæi troškovi na zajam, odnosno kredit iznad nivoa ','*',' 51.  ',' '
   DO PB1POP2 WITH 121,'    æetvorostruke (desetrostruke) vrednosti obveznikovog sopstvenog    ',' ','      ',' '
   DO PB1POP2 WITH 122,'    kapitala (red.br.13 obrasca OK)                                    ',' ','      ','*'   
   
   DO PB1POP2 WITH 123,'                                                                       ',' ','      ',' '
   DO PB1POP2 WITH 124,'     IX. OPOREZIVA DOBIT                                               ',' ','      ',' '
   DO PB1POP2 WITH 125,'                                                                       ',' ','      ','*'
   DO PB1POP2 WITH 126,'52. Oporeziva dobit(r.br 1-2-4+5 do 16-17+18-19+20 do 27-28+29 do 31   ','*',' 52.  ',' '
   DO PB1POP2 WITH 127,'    -32+33-34+35 do 38-39 do 43+50+51)>0 ili negativan iznos sa        ',' ','      ',' '
   DO PB1POP2 WITH 128,'    rednog broja 53                                                    ',' ','      ','*'   
   
   DO PB1POP2 WITH 129,'53. Gubitak (3+4-5 do 16+17-18+19-20 do 27+28-29 do 31+32-33+34-35     ','*',' 53.  ',' '
   DO PB1POP2 WITH 130,'    do 38+39 do 43-50-51)>0 ili negativan iznos sa                     ',' ','      ',' '
   DO PB1POP2 WITH 131,'    rednog broja 52                                                    ',' ','      ','*'   
   
   DO PB1POP2 WITH 132,'------------------------------------------------------------           ',' ','      ',' '
   DO PB1POP2 WITH 133,'54. Iznos gubitka iz poreskog bilansa iz prethodnih godina..           ','*',' 54.  ',' '
   DO PB1POP2 WITH 134,'    do visine oporezive dobiti                                         ',' ','      ',' '
   DO PB1POP2 WITH 135,'------------------------------------------------------------           ',' ','      ','*'
   DO PB1POP2 WITH 136,'55. Ostatak oporezive dobiti (r.br 52-54)>0.................           ','*',' 55.  ',' '
   DO PB1POP2 WITH 137,'------------------------------------------------------------           ',' ','      ','*'
   DO PB1POP2 WITH 138,'                                                                       ',' ','      ',' '
   DO PB1POP2 WITH 139,'     B. KAPITALNI DOBICI I GUBICI                                      ',' ','      ',' '
   DO PB1POP2 WITH 140,'                                                                       ',' ','      ','*'
   DO PB1POP2 WITH 141,'56. Ukupni kapitalni dobici tekuce god.obracunati u skladu sa Zakonom  ','*',' 56.  ','*'
   DO PB1POP2 WITH 142,'57. Ukupni kapitalni gubici tekuce god.obracunati u skladu sa Zakonom  ','*',' 57.  ','*'
   DO PB1POP2 WITH 143,'58. Kapitalni dobici (red.br 56-57>0)......................            ','*',' 58.  ','*'
   DO PB1POP2 WITH 144,'59. Kapitalni gubici (red.br 57-56>0).......................           ','*',' 59.  ','*'
   DO PB1POP2 WITH 145,'60. Preneti kapitalni gubici iz ranijih godina do visine....           ','*',' 60.  ',' '
   DO PB1POP2 WITH 146,'    iznosa pod rednim brojem 58                                        ',' ','      ','*'
   DO PB1POP2 WITH 147,'61. Ostatak kapitalnog dobitka (red.br.58-60)>=0.............          ','*',' 61.  ','*'
   DO PB1POP2 WITH 148,'                                                                       ',' ','      ',' '
   DO PB1POP2 WITH 149,  '  V. PORESKA OSNOVICA                                                ',' ','      ',' '
   DO PB1POP2 WITH 150,'                                                                       ',' ','      ','*'
   DO PB1POP2 WITH 151,'62. Poreska osnovica (red.br 55 +61)>0......................           ','*',' 62.  ','*'
   DO PB1RAC
POP KEY
ENDPROC

procedure PB1POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
       POP KEY
endproc


procedure PB1RAC
PUSH KEY CLEAR

  LOCATE FOR KOD='  1.  '
  M1 =IZNOS
  LOCATE FOR KOD='  2.  '
  M2=IZNOS
  LOCATE FOR KOD='  3.  '
  M3=IZNOS
  LOCATE FOR KOD='  4.  '
  M4=IZNOS
  LOCATE FOR KOD='  5.  '
  M5=IZNOS
  LOCATE FOR KOD='  6.  '
  M6=IZNOS
  LOCATE FOR KOD='  7.  '
  M7=IZNOS
  LOCATE FOR KOD='  8.  '
  M8=IZNOS
  LOCATE FOR KOD='  9.  '
  M9=IZNOS
  LOCATE FOR KOD=' 10.  '
  M10=IZNOS
  LOCATE FOR KOD=' 11.  '
  M11=IZNOS
  LOCATE FOR KOD=' 12.  '
  M12=IZNOS
  LOCATE FOR KOD=' 13.  '
  M13=IZNOS
  LOCATE FOR KOD=' 14.  '
  M14=IZNOS
  LOCATE FOR KOD=' 15.  '
  M15=IZNOS
  LOCATE FOR KOD=' 16.  '
  M16=IZNOS
  LOCATE FOR KOD=' 17.  '
  M17=IZNOS
  LOCATE FOR KOD=' 18.  '
  M18=IZNOS
  LOCATE FOR KOD=' 19.  '
  M19=IZNOS
  LOCATE FOR KOD=' 20.  '
  M20=IZNOS
  LOCATE FOR KOD=' 21.  '
  M21=IZNOS
  LOCATE FOR KOD=' 22.  '
  M22=IZNOS
  LOCATE FOR KOD=' 23.  '
  M23=IZNOS
  LOCATE FOR KOD=' 24.  '
  M24=IZNOS
  LOCATE FOR KOD=' 25.  '
  M25=IZNOS
  LOCATE FOR KOD=' 26.  '
  M26=IZNOS
  LOCATE FOR KOD=' 27.  '
  M27=IZNOS
  LOCATE FOR KOD=' 28.  '
  M28=IZNOS
  LOCATE FOR KOD=' 29.  '
  M29=IZNOS
  LOCATE FOR KOD=' 30.  '
  M30=IZNOS
  LOCATE FOR KOD=' 31.  '
  M31=IZNOS
  LOCATE FOR KOD=' 32.  '
  M32=IZNOS
  LOCATE FOR KOD=' 33.  '
  M33=IZNOS
  LOCATE FOR KOD=' 34.  '
  M34=IZNOS
  LOCATE FOR KOD=' 35.  '
  M35=IZNOS
  LOCATE FOR KOD=' 36.  '
  M36=IZNOS
  LOCATE FOR KOD=' 37.  '
  M37=IZNOS
  LOCATE FOR KOD=' 38.  '
  M38=IZNOS
  LOCATE FOR KOD=' 39.  '
  M39=IZNOS
  LOCATE FOR KOD=' 40.  '
  M40=IZNOS
  LOCATE FOR KOD=' 31.  '
  M41=IZNOS
  LOCATE FOR KOD=' 42.  '
  M42=IZNOS
  LOCATE FOR KOD=' 43.  '
  M43=IZNOS
  LOCATE FOR KOD=' 44.  '
  M44=IZNOS
  LOCATE FOR KOD=' 45.  '
  M45=IZNOS
  LOCATE FOR KOD=' 46.  '
  M46=IZNOS
  LOCATE FOR KOD=' 47.  '
  M47=IZNOS
  LOCATE FOR KOD=' 48.  '
  M48=IZNOS
  LOCATE FOR KOD=' 49.  '
  M49=IZNOS
  LOCATE FOR KOD=' 50.  '
  M50=IZNOS
  LOCATE FOR KOD=' 51.  '
  M51=IZNOS
  LOCATE FOR KOD=' 52.  '
  M52=IZNOS
  LOCATE FOR KOD=' 53.  '
  M53=IZNOS
  LOCATE FOR KOD=' 54.  '
  M54=IZNOS
  LOCATE FOR KOD=' 55.  '
  M55=IZNOS
  LOCATE FOR KOD=' 56.  '
  M56=IZNOS
  LOCATE FOR KOD=' 57.  '
  M57=IZNOS
  LOCATE FOR KOD=' 58.  '
  M58=IZNOS
  LOCATE FOR KOD=' 59.  '
  M59=IZNOS
  LOCATE FOR KOD=' 60.  '
  M60=IZNOS
  LOCATE FOR KOD=' 61.  '
  M61=IZNOS

 
  M52=M1+m2-m3-M4+M5+M6+M7+M8+M9+M10+M11+M12+M13+M14+M15+M16-M17+M18-M19+M20+M21+M22+M23+M24;
      +m25+m26+M27-M28+M29+M30+M31-M32+M33-m34+m35+m36+m37+m38-m39+m40+m41+m42+m43+m50+m51

  M53=M3+M4-M5-M6-M7-M8-M9-M10-M11-M12-M13-M14-M15-M16+M17-M18+M19-M20-M21-M22-M23-M24;
      -m25-m26-M27+M28-M29-M30-M31+M32-M33+m34-m35-m36-m37-m38+m39+m40+m41+m42+m43-m50-m51


  IF M52>0
     M53=0
  ELSE
     m52=0
  ENDIF

  LOCATE FOR KOD=' 52.  '
  REPLACE IZNOS WITH M52

  LOCATE FOR KOD=' 53.  '
  REPLACE IZNOS WITH M53

  m55=m52-m54
  if m55<0
     m55=0
  endif
  LOCATE FOR KOD=' 55.  '
  REPLACE IZNOS WITH M55


  m58=m56-m57
  if m58<0
     m58=0
  endif
  LOCATE FOR KOD=' 58.  '
  REPLACE IZNOS WITH M58

  m59=m57-m56
  if m59<0
     m59=0
  endif
  LOCATE FOR KOD=' 59.  '
  REPLACE IZNOS WITH M59

  m61=m58-m60
  if m61<0
     m61=0
  endif
  LOCATE FOR KOD=' 61.  '
  REPLACE IZNOS WITH M61

  m62=m55+m61
  if m62<0
     m62=0
  endif
  LOCATE FOR KOD=' 62.  '
  REPLACE IZNOS WITH M62

POP KEY
ENDPROC
*------------------OBRAZAC ANEKS PB-1--------------------------
PROCEDURE PB1APUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 13
         APPEND BLANK
      next
      DO PB1APOP
   ENDIF
   POP KEY
ENDPROC

PROCEDURE PB1APOP
PUSH KEY CLEAR

   DO PB1aPOP2  WITH  1,'Bruto dividenda koju je obveznik ostvario od svoje nerezidentne filijale  ','*',' 1.',' '

   DO PB1aPOP2  WITH  2,'Porez koji je nerezidentna filijala platila u drugoj državi               ','*',' 2.',' '
   DO PB1aPOP2  WITH  3,'na dobit iz koje je isplaæena dividenda                                   ','*','   ',' '

   DO PB1aPOP2  WITH  4,'Porez po odbitku koji je nerezidentna filijala platila na isplaæene       ','*',' 3.',' '
   DO PB1aPOP2  WITH  5,'dividende                                                                 ','*','   ',' '

   DO PB1aPOP2  WITH  6,'Osnovica za obraèun poreskog kredita (1+2)                                ','*',' 4.',' '

   DO PB1aPOP2  WITH  7,'Ukupan iznos poreza na dobit i poreza po odbitku koji je nerezidentna     ','*',' 5.',' '
   DO PB1aPOP2  WITH  8,'filijala platila u drugoj državi (2+3)                                    ','*','   ',' '

   DO PB1aPOP2  WITH  9,'Iznos poreskog kredita (4x__%) ili iznos sa red.br.5.                     ','*',' 6.',' '

   DO PB1aPOP2  WITH 10,'Neiskorišæeni deo poreskog kredita iz ranijih godina                      ','*',' 7.','*'
   DO PB1aPOP2  WITH 11,'Ukupan poreski kredit    (r.br. 6+7)                                      ','*',' 8.','*'
   DO PB1aPOP2  WITH 12,'Iskorišæeni poreski kredit u tekuæoj godini                               ','*',' 9.','*'
   DO PB1aPOP2  WITH 13,'Neiskorišæeni poreski kredit koji se prenosi u naredne godine (rbr 8-9)   ','*','10.','*'
POP KEY
endproc




procedure PB1aPOP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
PUSH KEY CLEAR
   
    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
POP KEY
endproc


PROCEDURE pb1arac
PUSH KEY CLEAR

  LOCATE FOR KOD=' 1.'
  M1 =IZNOS
  LOCATE FOR KOD=' 2.'
  M2 =IZNOS
  LOCATE FOR KOD=' 3.'
  M3 =IZNOS
  LOCATE FOR KOD=' 4.'
  M4 =IZNOS
  LOCATE FOR KOD=' 5.'
  M5 =IZNOS
  LOCATE FOR KOD=' 6.'
  M6 =IZNOS
  LOCATE FOR KOD=' 7.'
  M7 =IZNOS
  LOCATE FOR KOD=' 8.'
  M8 =IZNOS
  LoCATE FOR KOD=' 9.'
  M9 =IZNOS
  LOCATE FOR KOD='10.'
  M10=IZNOS
   

  LOCATE FOR KOD=' 4.'
  replace iznos WITH m1+m2
   
  LOCATE FOR KOD=' 5.'
  replace iznos WITH m2+m3

  LOCATE FOR KOD=' 8.'
  replace iznos WITH m6+m7

  LOCATE FOR KOD='10.'
  replace iznos WITH m8-m9
POP KEY
ENDPROC

*------------------OBRAZAC ANEKS 1 PB-1--------------------------


PROCEDURE PB1A1PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 20
         APPEND BLANK
      next
      DO PB1A1POP
   ENDIF
   POP KEY
ENDPROC

PROCEDURE PB1A1POP
PUSH KEY CLEAR

   DO PB1a1POP2  WITH  1,'Prihod ostvaren iz druge države  (1.1.+1.2.+1.3.+1.4.)                    ','*','  1.','*'
   DO PB1a1POP2  WITH  2,'Od kamata                                                                 ','*','1.1.','*'
   DO PB1a1POP2  WITH  3,'Od autorskih naknada                                                      ','*','1.2.','*'
   DO PB1a1POP2  WITH  4,'Od naknada po osnovu zakupa nepokretnosti i pokretnih stvari              ','*','1.3.','*'
   DO PB1a1POP2  WITH  5,'Od dividendi                                                              ','*','1.4.','*'
   DO PB1a1POP2  WITH  6,'Porez po odbitku plaæen u drugoj državi (2.1.+2.2.+2.3.+2.4.)             ','*','  2.','*'
   DO PB1a1POP2  WITH  7,'na kamate                                                                 ','*','2.1.','*'
   DO PB1a1POP2  WITH  8,'na autorske  naknada                                                      ','*','2.2.','*'
   DO PB1a1POP2  WITH  9,'na naknada po osnovu zakupa nepokretnosti i pokretnih stvari              ','*','2.3.','*'
   DO PB1a1POP2  WITH 10,'na dividende                                                              ','*','2.4.','*'
   DO PB1a1POP2  WITH 11,'Osnovica za obraèun poreskog kredita    (3.1.+3.2.+3.3.+3.4.)             ','*','  3.','*'
   DO PB1a1POP2  WITH 12,'40% (1.1.+2.1.)                                                           ','*','3.1.','*'
   DO PB1a1POP2  WITH 13,'40% (1.2.+2.2.)                                                           ','*','3.2.','*'
   DO PB1a1POP2  WITH 14,'40% (1.3.+2.3.)                                                           ','*','3.3.','*'
   DO PB1a1POP2  WITH 15,'40% (1.4.+2.4.)                                                           ','*','3.4.','*'      
   DO PB1a1POP2  WITH 16,'Iznos poreskog kredita(4.1.+4.2.+4.3.+4.4.) odnosno iznos sa r.br 2.      ','*','  4.','*'
   DO PB1a1POP2  WITH 17,'3.1.x__%                                                                  ','*','4.1.','*'
   DO PB1a1POP2  WITH 18,'3.2.x__%                                                                  ','*','4.2.','*'
   DO PB1a1POP2  WITH 19,'3.3.x__%                                                                  ','*','4.3.','*'
   DO PB1a1POP2  WITH 20,'3.4.x__%                                                                  ','*','4.4.','*'

POP KEY
endproc




procedure PB1a1POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
PUSH KEY CLEAR
   
    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
POP KEY
endproc


PROCEDURE pb1a1rac
PUSH KEY CLEAR

  LOCATE FOR KOD='  1.'
  M1 =IZNOS
  LOCATE FOR KOD='1.1.'
  M11=IZNOS
  LOCATE FOR KOD='1.2.'
  M12=IZNOS
  LOCATE FOR KOD='1.3.'
  M13=IZNOS
  LOCATE FOR KOD='1.4.'
  M14=IZNOS

  LOCATE FOR KOD='  2.'
  M2 =IZNOS
  LOCATE FOR KOD='2.1.'
  M21=IZNOS
  LOCATE FOR KOD='2.2.'
  M22=IZNOS
  LOCATE FOR KOD='2.3.'
  M23=IZNOS
  LOCATE FOR KOD='2.4.'
  M24=IZNOS
   
  LOCATE FOR KOD='  3.'
  M3 =IZNOS
  LOCATE FOR KOD='3.1.'
  M31=IZNOS
  LOCATE FOR KOD='3.2.'
  M32=IZNOS
  LOCATE FOR KOD='3.3.'
  M33=IZNOS
  LOCATE FOR KOD='3.4.'
  M34=IZNOS

  LOCATE FOR KOD='  4.'
  M4 =IZNOS
  LOCATE FOR KOD='4.1.'
  M41=IZNOS
  LOCATE FOR KOD='4.2.'
  M42=IZNOS
  LOCATE FOR KOD='4.3.'
  M43=IZNOS
  LOCATE FOR KOD='4.4.'
  M44=IZNOS

  LOCATE FOR KOD='  1.'
  replace iznos WITH m11+m12+m13+m14
  LOCATE FOR KOD='  2.'
  replace iznos WITH m21+m22+m23+m24
  LOCATE FOR KOD='  3.'
  replace iznos WITH m31+m32+m33+m34
  LOCATE FOR KOD='  4.'
  replace iznos WITH m41+m42+m43+m44

POP KEY
ENDPROC


*------------------OBRAZAC PK--------------------------


PROCEDURE PKPUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 34
         APPEND BLANK
      next
      DO PKPOP
   endif
POP KEY
ENDPROC

PROCEDURE PKPOP
PUSH KEY CLEAR

   DO PKPOP2  WITH  1,'Ukupan iznos ulaganja u osnovna sredstva po osnovu kojij je plaæanje    ','*',' 1.',' '
   DO PKPOP2  WITH  2,'izvršeno u tekuæem poreskom periodu                                     ',' ','   ','*'   

   DO PKPOP2  WITH  3,'Iznos ulaganja u opremu placenu u tekucem poreskom periodu              ','*',' 2.',' '
   DO PKPOP2  WITH  4,'a koja je bila u upotrebi na teritoriji republike                       ',' ','   ','*'   

   DO PKPOP2  WITH  5,'Iznos ulaganja u osnovna sredstva za koja se priznaje pravo na          ','*',' 3.',' '
   DO PKPOP2  WITH  6,'poreski kredit (1-2)                                                    ',' ','   ','*'   

   DO PKPOP2  WITH  7,'Ulaganja u razvoj kao nematerijalnu imovinu                             ','*',' 4.','*'

   DO PKPOP2  WITH  8,'Ukupan iznos ulaganja u osnovna sredstva i razvoj kao nematerijalnu     ','*',' 5.',' '
   DO PKPOP2  WITH  9,'imovinu (3+4)                                                           ',' ','   ','*'

   DO PKPOP2  WITH 10,'Iznos obracunatog poreskog kredita za tekuci poreski period             ','*',' 6.',' '
   DO PKPOP2  WITH 11,'(red br 3 x 20% odnosno  40% )                                          ',' ','   ','*'   

   DO PKPOP2  WITH 12,'Iznos obracunatog poreskog kredita koji se koristi u tekucem poreskom   ','*',' 7.',' '
   DO PKPOP2  WITH 13,'periodu a najvise do 33% odnosno 70% obraèunatog poreza                 ',' ','   ','*'   

   DO PKPOP2  WITH 14,'Neiskorišæeni deo poreskog kredita iz tekuceg poreskog perioda koji se  ','*',' 8.',' '
   DO PKPOP2  WITH 15,'prenosi na racun poreza na dobit iz buducih obracunskih perioda (6-7)   ',' ','   ','*'

   DO PKPOP2  WITH 16,'Neiskorišæeni deo poreskog kredita iz ranijih poreskih perioda koji se  ','*',' 9.',' '
   DO PKPOP2  WITH 17,'prenosi na raèun poreza na dobit iz buduæih obraèunskih perioda         ',' ','   ','*'

   DO PKPOP2  WITH 18,'Iznos korekcije neiskoriscenog dela poreskog kredita iz ranijih poreskih','*','10.',' '
   DO PKPOP2  WITH 19,'perioda usled otudjenja osnovnih sredstava i nematerijalne imovine,     ',' ','   ',' '
   DO PKPOP2  WITH 20,'odnosno gubitka prva na poreski kredit                                  ',' ','   ','*'   
   
   DO PKPOP2  WITH 21,'Neiskorišæeni deo poreskog kredita iz ranijih poreskih perioda koji     ','*','11.',' '
   DO PKPOP2  WITH 22,'posle korekcije,može da se koristi u tekuæem poreskom periodu po        ',' ','   ',' '
   DO PKPOP2  WITH 23,'redosledu ulaganja  (9-10)                                              ',' ','   ','*'   
      
   DO PKPOP2  WITH 24,'Neiskorišæeni deo poreskog kredita iz ranijih poreskih perioda,koji se  ','*','12.',' '
   DO PKPOP2  WITH 25,'koristi u tekuæem poreskom periodu                                      ',' ','   ','*'

   DO PKPOP2  WITH 26,'Neiskorišæeni deo poreskog kredita iz ranijih poreskih perioda koji se  ','*','13.',' '
   DO PKPOP2  WITH 27,'prenosi na raèun poreza na dobit iz buduæih obraèunskih perioda  (11-12)',' ','   ','*'

   DO PKPOP2  WITH 28,'Ukupni poreski kredit koji se koristi u tekucem poreskom periodu-zbir   ','*','14.',' '
   DO PKPOP2  WITH 29,'poreskog kredita tekuceg peioda i prenetih poreskih kredita iz ranijih  ',' ','   ',' '
   DO PKPOP2  WITH 30,'perioda po redosledu ulaganja a najvise do 33% odnosno 70% obracunatog  ',' ','   ',' '
   DO PKPOP2  WITH 31,'poreza  (7+12)                                                          ',' ','   ','*'

   DO PKPOP2  WITH 32,'Neiskorišæeni deo poreskog kredita koji se prenosi na racun poreza na   ','*','15.',' '
   DO PKPOP2  WITH 33,'dobit iz buduæih perioda - zbir neiskoriscenog poreskog kredita tekuceg ',' ','   ',' '
   DO PKPOP2  WITH 34,'poreskog perioda i prenetog poreskog kredita iz ranijih godina (8+13)   ',' ','   ','*'

POP KEY
endproc







procedure PkPOP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
   POP KEY
endproc



PROCEDURE pkrac
PUSH KEY CLEAR

  LOCATE FOR KOD=' 1.'
  M1 =IZNOS
  LOCATE FOR KOD=' 2.'
  M2 =IZNOS
  LOCATE FOR KOD=' 3.'
  M3 =IZNOS
  LOCATE FOR KOD=' 4.'
  M4 =IZNOS
  LOCATE FOR KOD=' 5.'
  M5 =IZNOS
  LOCATE FOR KOD=' 6.'
  M6 =IZNOS
  LOCATE FOR KOD=' 7.'
  M7 =IZNOS
  LOCATE FOR KOD=' 8.'
  M8 =IZNOS
  LOCATE FOR KOD=' 9.'
  M9 =IZNOS
  LOCATE FOR KOD='10.'
  M10=IZNOS
  LOCATE FOR KOD='11.'
  M11=IZNOS
  LOCATE FOR KOD='12.'
  M12=IZNOS
  LOCATE FOR KOD='13.'
  M13=IZNOS
  LOCATE FOR KOD='14.'
  M14=IZNOS
  LOCATE FOR KOD='15.'
  M15=IZNOS
   

  LOCATE FOR KOD=' 3.'
  replace iznos WITH m1-m2
  M3 =IZNOS  

  LOCATE FOR KOD=' 5.'
  replace iznos WITH m3+m4
  M5 =IZNOS     

  LOCATE FOR KOD=' 8.'
  replace iznos WITH m6-m7
  M8 =IZNOS     

  LOCATE FOR KOD='11.'
  replace iznos WITH m9-m10
  M11=IZNOS     

  LOCATE FOR KOD='13.'
  replace iznos WITH m11-m12
  M13=IZNOS     

  LOCATE FOR KOD='14.'
  replace iznos WITH m7+m12
  M14=IZNOS     

  LOCATE FOR KOD='15.'
  replace iznos WITH m8+m13
  M15=IZNOS     

POP KEY
ENDPROC



*------------------OBRAZAC PK 2--------------------------



PROCEDURE PK2PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 36
         APPEND BLANK
      next
      DO PK2POP
   endif
POP KEY
ENDPROC

PROCEDURE PK2POP
PUSH KEY CLEAR

   DO PK2POP2  WITH  1,'Ukupan iznos ulaganja u osnovna sredstva koja su placena u tekucem      ','*',' 1.',' '
   DO PK2POP2  WITH  2,'poreskom periodu                                                        ',' ','   ','*'   

   DO PK2POP2  WITH  3,'Iznos ulaganja u opremu placenu u tekucem poreskom periodu              ','*',' 2.',' '
   DO PK2POP2  WITH  4,'a koja je bila u upotrebi na teritoriji Republike                       ',' ','   ','*'   

   DO PK2POP2  WITH  5,'Iznos ulaganja u osnovna sredstva za koja se priznaje pravo na          ','*',' 3.',' '
   DO PK2POP2  WITH  6,'poreski kredit (1-2)                                                    ',' ','   ','*'   

   DO PK2POP2  WITH  7,'Ulaganja izvršena u razvoj koja se u poreskom periodu u kojem su        ','*',' 4.',' '
   DO PK2POP2  WITH  8,'ispunjeni uslovi za priznavanje takvih ulaganja kao nematerijalnih      ',' ','   ',' '   
   DO PK2POP2  WITH  9,'ulaganja u skladu sa propisima o raèunovodstvu i MRS, odnosno MSFI      ',' ','   ',' '   
   DO PK2POP2  WITH 10,'i to u iznosu koji je u poslovnim knjigama obveznika iskazan na         ',' ','   ',' '   
   DO PK2POP2  WITH 11,'odgovarajuæem raèunu grupe 01 - Nematerijalna ulaganja                  ',' ','   ','*'   

   DO PK2POP2  WITH 12,'Ukupan iznos ulaganja po osnovu koga obveznik ostvaruje pravo na        ','*',' 5.',' '
   DO PK2POP2  WITH 13,'poreski kredit, iskazan kao zbir iznosa sa red.br. 3 i 4                ',' ','   ','*'   

   DO PK2POP2  WITH 14,'Iznos obracunatog poreskog kredita za tekuci poreski period             ','*',' 6.',' '
   DO PK2POP2  WITH 15,'(red br 3 x 40% )                                                       ',' ','   ','*'   

   DO PK2POP2  WITH 16,'Iznos obracunatog poreskog kredita koji se koristi u tekucem poreskom   ','*',' 7.',' '
   DO PK2POP2  WITH 17,'periodu a najvise do 70% obracunatog poreza                             ',' ','   ','*'   

   DO PK2POP2  WITH 18,'Neiskorišæeni deo poreskog kredita iz tekuceg poreskog perioda koji se  ','*',' 8.',' '
   DO PK2POP2  WITH 19,'prenosi na racun pripadajuæeg poreza iz buducih obracunskih perioda(6-7)',' ','   ','*'

   DO PK2POP2  WITH 20,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se prenosi na ','*',' 9.',' '
   DO PK2POP2  WITH 21,'raèun pripadajuæeg poreza iz buduæih obraèunskih perioda                ',' ','   ','*'

   DO PK2POP2  WITH 22,'Iznos korekcije neiskoriscenog dela poreskog kredita iz ranijih godina  ','*','10.',' '
   DO PK2POP2  WITH 23,'usled otudjenja osnovnih sredstava odnosno gubitka prava na poreski kred',' ','   ','*'

   DO PK2POP2  WITH 24,'Neiskorišæeni deo poreskog kredita iz ranijih perioda koji,posle korek  ','*','11.',' '
   DO PK2POP2  WITH 25,'cije, može da se koristi u tekucem poreskom periodu po redosledu        ',' ','   ',' '
   DO PK2POP2  WITH 26,'ulaganja (9-10)                                                         ',' ','   ','*'

   DO PK2POP2  WITH 27,'Neiskorišæeni deo poreskog kredita iz ranijih perioda koji se koristi   ','*','12.',' '
   DO PK2POP2  WITH 28,'u tekuæem poreskom periodu                                              ',' ','   ','*'

   DO PK2POP2  WITH 29,'Neiskorišæeni deo poreskog kredita iz ranijih perioda koji se prenosi na','*','13.',' '
   DO PK2POP2  WITH 30,'raèun pripadajuæeg poreza iz buduæih obraèunskih perioda  (11-12)       ',' ','   ','*'

   DO PK2POP2  WITH 31,'Ukupni poreski kredit koji se koristi u tekucem poreskom periodu-zbir   ','*','14.',' '
   DO PK2POP2  WITH 32,'poreskog kredita tekuceg perioda i prenetih poreskih kredita iz ranijih ',' ','   ',' '
   DO PK2POP2  WITH 33,'perioda po redosledu ulaganja a najvise do 70% obracunatog poreza (7+12)',' ','   ','*'

   DO PK2POP2  WITH 34,'Neiskorišæeni deo poreskog kredita koji se prenosi na racun pripadajuæeg','*','15.',' '
   DO PK2POP2  WITH 35,'poreza iz buduæih perioda - zbir neiskoriscenog poreskog kredita tekuceg',' ','   ',' '
   DO PK2POP2  WITH 36,'poreskog perioda i prenetog poreskog kredita iz ranijih perioda  (8+13) ',' ','   ','*'


POP KEY
endproc







procedure Pk2POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
   POP KEY
endproc



PROCEDURE pk2rac
PUSH KEY CLEAR

  LOCATE FOR KOD=' 1.   '
  M1 =IZNOS
  LOCATE FOR KOD=' 2.   '
  M2 =IZNOS
  LOCATE FOR KOD=' 4.   '
  M4 =IZNOS
  LOCATE FOR KOD=' 5.   '
  M5 =IZNOS
  LOCATE FOR KOD=' 6.   '
  M6 =IZNOS
  LOCATE FOR KOD=' 7.   '
  M7 =IZNOS
  LOCATE FOR KOD=' 8.   '
  M8 =IZNOS
  LOCATE FOR KOD=' 9.   '
  M9 =IZNOS
  LOCATE FOR KOD='10.   '
  M10=IZNOS
  LOCATE FOR KOD='11.   '
  M11=IZNOS
  LOCATE FOR KOD='12.   '
  M12=IZNOS
  LOCATE FOR KOD='13.   '
  M13=IZNOS
  LOCATE FOR KOD='14.   '
  M14=IZNOS
  LOCATE FOR KOD='15.   '
  M15=IZNOS
   

  LOCATE FOR KOD=' 3.   '
  replace iznos WITH m1-m2
  M3 =IZNOS  

  LOCATE FOR KOD=' 5.   '
  replace iznos WITH m3+m4
  M5 =IZNOS  
  *SET STEP ON  
  LOCATE FOR KOD=' 6.   '
  replace iznos WITH ROUND(m3*0.4,0)
  M6 =IZNOS  

  LOCATE FOR KOD=' 8.   '
  replace iznos WITH m6-m7
  M8 =IZNOS     


  LOCATE FOR KOD='11.   '
  replace iznos WITH m9-m10
  M11=IZNOS     

  LOCATE FOR KOD='13.   '
  replace iznos WITH m11-m12
  M13=IZNOS     

  LOCATE FOR KOD='14.   '
  replace iznos WITH m7+m12
  M14=IZNOS     

  LOCATE FOR KOD='15.   '
  replace iznos WITH m8+m13
  M15=IZNOS     

POP KEY
ENDPROC



*------------------OBRAZAC SU--------------------------


PROCEDURE SUPUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 11
         APPEND BLANK
      next
      DO suPOP
   endif
POP KEY
ENDPROC

PROCEDURE SUPOP
PUSH KEY CLEAR

   DO SUPOP2  WITH  1,'Vrednost ukupno nabavljenih osnovnih sredstava nabavljenih u skladu sa    ','*',' 1.',' '
   DO SUPOP2  WITH  2,'èlanom 50a Zakona                                                         ',' ','  .','*'
   DO SUPOP2  WITH  3,'Vrednost plaæene opreme koja je bila u upotrebi na                        ','*',' 2.',' '
   DO SUPOP2  WITH  4,'teritoriji Republike Srbije                                               ',' ','   ','*'
   DO SUPOP2  WITH  5,'Vrednost plaæenih osnovnih sredstava nabavljenih u skladu sa èlanom       ','*',' 3.',' '
   DO SUPOP2  WITH  6,' 50a Zakona (1-2)                                                         ',' ','   ','*'   
   DO SUPOP2  WITH  7,'Vrednost ukupnih osnovnih sredstava                                       ','*',' 4.','*'
   DO SUPOP2  WITH  8,'Srazmera ulaganja (red.br 3 / red.br 4 x 100)                             ','*',' 5.','*'
   DO SUPOP2  WITH  9,'Umanjenje obraèunatog poreza (red.br.5 x red.br iz  obrasca PDP na kome   ','*',' 6.',' '
   DO SUPOP2  WITH 10,'se utvrdjuje obraèunati porez, i to množenjem poreske osnovice            ',' ','   ',' '   
   DO SUPOP2  WITH 11,'sa poreskom stopom                                                        ',' ','   ','*'      
   
POP KEY
endproc




procedure SUPOP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
       POP KEY
endproc




*------------------OBRAZAC SI--------------------------


PROCEDURE SIPUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 8    
         APPEND BLANK
      NEXT
      DO siPOP
   endif
POP KEY
ENDPROC

PROCEDURE SipOP
PUSH KEY CLEAR

   DO SiPOP2  WITH  1,'Vrednost imovine (izražene u osnovnim sredstvima) steèene statusnom prom. ','*',' 1.','*'
   DO SiPOP2  WITH  2,'Ukupna vrednost imovine (izražene u osnovnim sredstvima)                  ','*',' 2.',' '
   DO SiPOP2  WITH  3,'Srazmerno uèešæe imovine (izražene u osnovnim sredstvima) steèene status- ','*',' 3.',' '
   DO SiPOP2  WITH  4,'nom promenom izraženo u % (red.br 1 / red.br.2 x 100)                     ',' ','   ','*'
   DO SiPOP2  WITH  5,'Obraèunati porez srazmerno imovini (izraženoj u osnovnim sredstvima)      ','*',' 4.',' '
   DO SiPOP2  WITH  6,'steèenoj statusnom promenom (red.br.3x redni broj iz obrasca PDP, na      ',' ','   ',' '
   DO SiPOP2  WITH  7,'kome se utvrdjuje obraèunati porez, i to množenjem poreske osnovice       ',' ','   ',' '   
   DO SiPOP2  WITH  8,'sa poreskom stopom)                                                       ',' ','   ','*'      
POP KEY
endproc


procedure SiPOP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
PUSH KEY CLEAR
   
    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
POP KEY
endproc



PROCEDURE PB2PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 135
         APPEND BLANK
      next
      DO PB2POP
   endif
POP KEY
ENDPROC

PROCEDURE PB2POP
PUSH KEY CLEAR

   DO PB2POP2  WITH  1,'    A. DOBIT I GUBITAK PRE OPOREZIVANJA                                ',' ','      ',' '
   DO PB2POP2  WITH  2,'                                                                       ',' ','      ',' '
   DO PB2POP2  WITH  3,'      I. REZULTAT U BILANSU USPEHA                                     ',' ','      ',' '
   DO PB2POP2  WITH  4,'                                                                       ',' ','      ','*'
   DO PB2POP2  WITH  5,' 1. Dobit poslovne godine...................................           ','*','  1.  ','*'
   DO PB2POP2  WITH  7,' 2. Gubitak poslovne godine.................................           ','*','  2.  ','*'
   DO PB2POP2  WITH  8,'                                                                       ',' ','      ',' '
   DO PB2POP2  WITH  9,'     II. DOBICI I GUBICI OD PRODAJE IMOVINE IZ ÈLANA                   ',' ','      ',' '
   DO PB2POP2  WITH 10,'         27 ZAKONA (ISKAZANI U BILANSU USPEHA)                         ',' ','      ',' '
   DO PB2POP2  WITH 11,'                                                                       ',' ','      ','*'
   DO PB2POP2  WITH 12,' 3. Dobici od prodaje imovine                                          ','*','  3.  ','*'
   DO PB2POP2  WITH 13,' 4. Gubici od prodaje imovine                                          ','*','  4.  ','*'
   DO PB2POP2  WITH 14,'                                                                       ',' ','      ',' '
   DO PB2POP2  WITH 15,'    III. USKLADJIVANJE RASHODA                                         ',' ','      ',' '
   DO PB2POP2  WITH 16,'                                                                       ',' ','      ','*'

   DO PB2POP2  WITH 17,' 5. Ulaganje liène imovine u poslovnu imovinu                          ','*','  5.  ','*'
   DO PB2POP2  WITH 18,' 6. Troškovi službenog putovanja iznad propisanog iznosa               ','*','  6.  ','*'
   DO PB2POP2  WITH 19,' 7. Troškovi koji nisu dokumentovani                                   ','*','  7.  ','*'
   DO PB2POP2  WITH 20,' 8. Ispravka vrednosti pojedinaènih potraživanja od lica               ','*','  8.  ',' '
   DO PB2POP2  WITH 21,'    kojima se istovremeno i duguje do iznosa obaveze prema tom licu    ',' ','      ','*'
   DO PB2POP2  WITH 22,' 9. Pokloni i prilozi dati politièkim organizacijama........           ','*','  9.  ','*'
   DO PB2POP2  WITH 23,'10. Pokloni æiji je primalac povezano lice                             ','*',' 10.  ',' '
   DO PB2POP2  WITH 24,'11. Kamate zbog neblagovremeno placenih poreza, doprinosa i            ','*',' 11.  ',' '
   DO PB2POP2  WITH 25,'    drugih javnih dazbina                                              ',' ','      ','*'

   DO PB2POP2  WITH 26,'12. Troskovi postupka prinudne naplate poreza i drugih dugo            ','*',' 12.  ',' '
   DO PB2POP2  WITH 27,'    vanja,troškovi poreskoprekrsajnog i drugih prekršajnih postupaka   ',' ','      ',' '
   DO PB2POP2  WITH 28,'    koji se vode pred nadležnim organom                                ',' ','      ','*'

   DO PB2POP2  WITH 29,'13. Novèane kazne, ugovorne kazne i penali                             ','*',' 13.  ','*'
   DO PB2POP2  WITH 30,'14. Zatezne kamate izmeðu povezanih lica                               ','*',' 14.  ','*'
   DO PB2POP2  WITH 31,'15. Troškovi koji nisu nastali u svrhu obavljanja poslovne delatnosti  ','*',' 15.  ','*'


   DO PB2POP2  WITH 32,'16. Troškovi materijala i nabavne vrednosti prodate robe iznad iznosa  ','*',' 16.  ',' '
   DO PB2POP2  WITH 33,'    obraèunatog primenom metode ponderis.prosecne cene ili FIFO metode ',' ','      ','*'
   DO PB2POP2  WITH 34,'17. Otpremnine i novcane naknade po osnovu prestanka radnog odnosa,    ','*',' 17.  ',' '
   DO PB2POP2  WITH 35,'    obraèunate a neisplacene u poreskom periodu                        ',' ','      ','*'

   DO PB2POP2  WITH 36,'18. Otpremnine i novèane naknade po osnovu prestanka radnog odnosa,    ','*',' 18.  ',' '
   DO PB2POP2  WITH 37,'    koje  su obraæunate u prethodnom a isplaæene u poreskom periodu    ',' ','      ',' '
   DO PB2POP2  WITH 38,'    za koji se podnosi poreski bilans                                  ',' ','      ','*'

   DO PB2POP2  WITH 39,'19. Ukupan iznos amortizacije obraèunat u finansijskim izveštajima     ','*',' 19.  ','*'

   DO PB2POP2  WITH 40,'20. Ukupan iznos amortizacije obraèunat za poreske svrhe               ','*',' 20.  ','*'

   DO PB2POP2  WITH 41,'21. Izdaci za zdravstvene,obrazovne,nauène,humanitarne,verske          ','*',' 21.  ',' '
   DO PB2POP2  WITH 42,'    zaštitu æovekove sredine i sportske namene i davanja uæinjena      ',' ','      ',' '
   DO PB2POP2  WITH 43,'    vama socijalne zaštite                                             ',' ','      ','*'   

   DO PB2POP2  WITH 44,'22. Izdaci za ulaganja u oblasti kulture                               ','*',' 22.  ','*'
   DO PB2POP2  WITH 45,'23. Èlanarine komorama, savezima i udruženjima                         ','*',' 23.  ','*'

   DO PB2POP2  WITH 46,'24. Rashodi za reklamu i propagandu                                    ','*',' 24.  ','*'   

   DO PB2POP2  WITH 47,'25. Rashodi po osnovu reprezentacije                                   ','*',' 25.  ','*'   

   DO PB2POP2  WITH 48,'26. Ispravka vrednosti pojedinaènih potraživanja ako od roka za njihovu','*',' 26.  ',' '
   DO PB2POP2  WITH 49,'    naplatu nije prošlo najmanje 60 dana, kao i otpis vrednosti pojedi ',' ','      ',' '
   DO PB2POP2  WITH 50,'    naènih potrazivanja koja prethodno nisu bila ukljucena u prihode,  ',' ','      ',' '
   DO PB2POP2  WITH 51,'    nisu otpisana kao nenaplativa i za koje nije pružen dokaz o neuspe ',' ','      ',' '
   DO PB2POP2  WITH 52,'    loj naplati                                                        ',' ','      ','*'

   DO PB2POP2  WITH 53,'27. Porezi doprinosi takse i druge javne dazbine koje ne zavise od     ','*',' 27.  ',' '
   DO PB2POP2  WITH 54,'    rezultata poslovanja i nisu plaæene u poreskom periodu, a po osnovu',' ','      ',' '
   DO PB2POP2  WITH 55,'    kojih je u poslovnim knjigama obveznika iskazan rashod,uklju       ',' ','      ',' '
   DO PB2POP2  WITH 56,'    èujuæi obraèunatu a neisplaæenu liænu zaradu preduzetnika          ',' ','      ','*'

   DO PB2POP2  WITH 57,'28. Porezi doprinosi takse i druge javne dažbine koje ne zavise od     ','*',' 28.  ',' '
   DO PB2POP2  WITH 58,'    rezultata poslovanja placene u poreskom periodu, a koje nisu bile  ',' ','      ',' '
   DO PB2POP2  WITH 59,'    placene u prethodnom poreskom periodu u kome je po tom osnovu      ',' ','      ',' '
   DO PB2POP2  WITH 60,'    u poslovnim knjigama obveznika bio iskazan rashod                  ',' ','      ','*'

   DO PB2POP2  WITH 61,'29. Dugoroèna rezervisanja koja se ne priznaju u poreskom bilansu      ','*',' 29.  ','*'

   DO PB2POP2  WITH 62,'30. Iskorišæena dugoroèna rezervisanja za izdate garancije i druga     ','*',' 30.  ',' '
   DO PB2POP2  WITH 63,'    jemstva koja nisu bila priznata kao  rashod u poreskom periodu     ',' ','      ',' '
   DO PB2POP2  WITH 64,'    u kome su izvrsena                                                 ',' ','      ','*'

   DO PB2POP2  WITH 65,'31. Rashodi po osnovu obezvredjenja imovine                            ','*',' 31.  ','*'

   DO PB2POP2  WITH 66,'32. Rashodi po osnovu obezvredjenja imovine koji se priznaju u poreskom','*',' 32.  ',' '
   DO PB2POP2  WITH 67,'    periodu za koji se podnosi poreski bilans, a u kome je ta imovina  ',' ','      ',' '
   DO PB2POP2  WITH 68,'    otudjena, upotrebljena ili je došlo do oštecenja imovine usled     ',' ','      ',' '
   DO PB2POP2  WITH 69,'    više sile                                                          ',' ','      ','*'

   DO PB2POP2  WITH 70,'     IV. USKLAÐIVANJE PRIHODA                                          ',' ','      ',' '
  
   DO PB2POP2  WITH 71,'33. Uzimanje iz poslovne imovine                                       ','*',' 33.  ','*'

   DO PB2POP2 WITH  72,'34. Ispravka vrednosti pojedinacnih potrazivanja koje su bile priznate ','*',' 34.  ',' '
   DO PB2POP2 WITH  73,'    na teret rashoda, a za koje u poreskom periodu u kome se vrsi      ',' ','      ',' '
   DO PB2POP2 WITH  74,'    otpis, nisu kumulativno ispunjeni uslovi iz cl.16 stav 1           ',' ','      ',' '
   DO PB2POP2 WITH  75,'    tacka 1) di 3) Zakona                                              ',' ','      ','*'


   DO PB2POP2 WITH  76,'35. Prihodi po osnovu neiskorišæenih dugoroènih rezervisanja koja      ','*',' 35.  ',' '
   DO PB2POP2 WITH  77,'    nisu bila priznata kao rashod u poreskom periodu u kome su         ',' ','      ',' '
   DO PB2POP2 WITH  78,'    izvršena                                                           ',' ','      ','*'   


   DO PB2POP2 WITH  79,'36. Prihodi ostvareni u poreskom periodu po osnovu otpisanih,ispravlje-','*',' 36.  ',' '
   DO PB2POP2 WITH  80,'    nih i drugih potraživanja koja nisu bila proznata kao rshod        ',' ','      ','*'

   DO PB2POP2 WITH  81,'37. Prihodi od kamata po osnovu dužnièkih hartija od vrednosti  èiji   ','*',' 37.  ',' '
   DO PB2POP2 WITH  82,'    je izdavalac Republika, autonomna pokrajina, jedinica lokalne      ',' ','      ',' '
   DO PB2POP2 WITH  83,'    samouprave ili NBS                                                 ',' ','      ','*'   

   DO PB2POP2 WITH  84,'38. Prihodi nastali u vezi sa rashodima koji nisu bili priznati        ','*',' 38.  ','*'

   DO PB2POP2 WITH  85,'39. Primanja ostvarena po osnovu premija,subvencija,regresa i drugih   ','*',' 39.  ',' '
   DO PB2POP2 WITH  86,'    sredstava koja su iyuyeta iz dohotka za oporezivanje               ',' ','      ','*'

   
   DO PB2POP2  WITH 87,'     V. RASHODI I PRIHODI PO OSNOVU TRANSFERNIH CENA                   ',' ','      ',' '
   DO PB2POP2 WITH  88,'    (osim kamata na zajmove,odnosno kredite)                           ',' ','      ','*'
   
   DO PB2POP2 WITH  89,'40. Obraèunati troškovi po osnovu transfernih cena                     ','*',' 40.  ','* '
   
   DO PB2POP2 WITH  90,'41. Obraèunati troškovi po osnovu transfernih cena za koje se          ','*',' 41.  ','  '
   DO PB2POP2 WITH  91,'    podnosi izveštaj u skraæenom obliku                                ',' ','      ','* '
   
   DO PB2POP2 WITH  92,'42. Obraèunati prihodi  po osnovu transfernih cena                     ','*',' 42.  ','* '
   DO PB2POP2 WITH  93,'43. Obraèunati prihodi  po osnovu transfernih cena za koje se          ','*',' 43.  ','  '
   DO PB2POP2 WITH  94,'    podnosi izveštaj u skraæenom obliku                                ',' ','      ','* '
   DO PB2POP2 WITH  95,'     VI.RASHODI I PRIHODI PO OSNOVU KAMATA NA ZAJMOVE,ODNOSNO KREDITE  ',' ','      ',' '
   DO PB2POP2 WITH  96,'     IZMEDJU POVEZANIH LICA                                            ',' ','      ','*'
   DO PB2POP2 WITH  97,'44. Obraèunati rashodi po osnovu kamata (na dohvat ruke) na zajmove    ','*',' 44.  ','  '
   DO PB2POP2 WITH  98,'    odnosno kredite dobijene od povezanih lica                         ',' ','      ','* '
   DO PB2POP2 WITH  99,'45. Obraèunati prihodi po osnovu kamata (na dohvat ruke) na zajmove    ','*',' 45.  ','  '
   DO PB2POP2 WITH 100,'    odnosno kredite dobijene od povezanih lica                         ',' ','      ','* '
   DO PB2POP2 WITH 101,'     VII.KOREKCIJA RAHODA I PRIHODA PO OSNOVU TRANSFERNIH CENA ,       ',' ','      ',' '
   DO PB2POP2 WITH 102,'         UKLJUÈUJUÆI I KAMATE NA ZAJMOVE,ODNOSNO KREDITE IZMEDJU       ',' ','      ',' '
   DO PB2POP2 WITH 103,'         POVEZANIH LICA                                                ',' ','      ','*'
   DO PB2POP2 WITH 104,'46. Zbir konaènih korekcija (rashoda i prihoda) po osnovu transakcija  ','*',' 46.  ',' '
   DO PB2POP2 WITH 105,'    sa svim pojedinaènim povezanim licima utvrdjen u zakljuèku         ',' ','      ',' '
   DO PB2POP2 WITH 106,'    dokumentacije o transfernim cenama                                 ',' ','      ','*'   
   DO PB2POP2 WITH 107,'                                                                       ',' ','      ',' '
   DO PB2POP2 WITH 108,'     VIII. OPOREZIVA DOBIT                                             ',' ','      ',' '
   DO PB2POP2 WITH 109,'                                                                       ',' ','      ','*'
   DO PB2POP2 WITH 110,'47. Oporeziva dobit(r.br 1-2+4-5+6 do 17-18+19-20 do 27-28+29-30+31    ','*',' 47.  ',' '
   DO PB2POP2 WITH 111,'    -32+33+34-35 do 39+46)>0 ili negativan iznos sa                    ',' ','      ',' '
   DO PB2POP2 WITH 112,'    rednog broja 48                                                    ',' ','      ','*'   
   DO PB2POP2 WITH 113,'48. Gubitak (2+3-4+5-6 do 17+18-19+20-21 do 27+28-29+30-31+32-33-34+35 ','*',' 48.  ',' '
   DO PB2POP2 WITH 114,'    do 39-46)>0 ili negativan iznos sa                                 ',' ','      ',' '
   DO PB2POP2 WITH 115,'    rednog broja 47                                                    ',' ','      ','*' 
   DO PB2POP2 WITH 116,'------------------------------------------------------------           ',' ','      ','*'
   DO PB2POP2 WITH 117,'49. Iznos gubitka iz poreskog bilansa iz prethodnih godina..           ','*',' 49.  ',' '
   DO PB2POP2 WITH 118,'    do visine oporezive dobiti                                         ',' ','      ',' '
   DO PB2POP2 WITH 119,'------------------------------------------------------------           ',' ','      ','*'
   DO PB2POP2 WITH 120,'50. Ostatak oporezive dobiti (r.br 47-49)>0.................           ','*',' 50.  ',' '
   DO PB2POP2 WITH 121,'------------------------------------------------------------           ',' ','      ','*'
   DO PB2POP2 WITH 122,'                                                                       ',' ','      ',' '
   DO PB2POP2 WITH 123,'     B. KAPITALNI DOBICI I GUBICI                                      ',' ','      ',' '
   DO PB2POP2 WITH 124,'                                                                       ',' ','      ','*'
   DO PB2POP2 WITH 125,'51. Ukupni kapitalni dobici tekuce godine                              ','*',' 51.  ','*'
   DO PB2POP2 WITH 126,'52. Ukupni kapitalni gubici tekuce godine                              ','*',' 52.  ','*'
   DO PB2POP2 WITH 127,'53. Kapitalni dobici (red.br 51-52>0)......................            ','*',' 53.  ','*'
   DO PB2POP2 WITH 128,'54. Kapitalni gubici (red.br 52-51>0).......................           ','*',' 54.  ','*'
   DO PB2POP2 WITH 129,'55. Preneti kapitalni gubici iz ranijih godina do visine....           ','*',' 55.  ',' '
   DO PB2POP2 WITH 130,'    iznosa pod rednim brojem 53                                        ',' ','      ','*'
   DO PB2POP2 WITH 131,'56. Ostatak kapitalnog dobitka (red.br.53-55)>=0.............          ','*',' 56.  ','*'
   DO PB2POP2 WITH 132,'                                                                       ',' ','      ',' '
   DO PB2POP2 WITH 133,  '  V. PORESKA OSNOVICA                                                ',' ','      ',' '
   DO PB2POP2 WITH 134,'                                                                       ',' ','      ','*'
   DO PB2POP2 WITH 135,'57. Poreska osnovica (red.br 50 +56)>0......................           ','*',' 57.  ','*'
   DO PB2RAC
POP KEY
ENDPROC

procedure PB2POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
       POP KEY
endproc


procedure PB2RAC
PUSH KEY CLEAR

  LOCATE FOR KOD='  1.  '
  M1 =IZNOS
  LOCATE FOR KOD='  2.  '
  M2=IZNOS
  LOCATE FOR KOD='  3.  '
  M3=IZNOS
  LOCATE FOR KOD='  4.  '
  M4=IZNOS
  LOCATE FOR KOD='  5.  '
  M5=IZNOS
  LOCATE FOR KOD='  6.  '
  M6=IZNOS
  LOCATE FOR KOD='  7.  '
  M7=IZNOS
  LOCATE FOR KOD='  8.  '
  M8=IZNOS
  LOCATE FOR KOD='  9.  '
  M9=IZNOS
  LOCATE FOR KOD=' 10.  '
  M10=IZNOS
  LOCATE FOR KOD=' 11.  '
  M11=IZNOS
  LOCATE FOR KOD=' 12.  '
  M12=IZNOS
  LOCATE FOR KOD=' 13.  '
  M13=IZNOS
  LOCATE FOR KOD=' 14.  '
  M14=IZNOS
  LOCATE FOR KOD=' 15.  '
  M15=IZNOS
  LOCATE FOR KOD=' 16.  '
  M16=IZNOS
  LOCATE FOR KOD=' 17.  '
  M17=IZNOS
  LOCATE FOR KOD=' 18.  '
  M18=IZNOS
  LOCATE FOR KOD=' 19.  '
  M19=IZNOS
  LOCATE FOR KOD=' 20.  '
  M20=IZNOS
  LOCATE FOR KOD=' 21.  '
  M21=IZNOS
  LOCATE FOR KOD=' 22.  '
  M22=IZNOS
  LOCATE FOR KOD=' 23.  '
  M23=IZNOS
  LOCATE FOR KOD=' 24.  '
  M24=IZNOS
  LOCATE FOR KOD=' 25.  '
  M25=IZNOS
  LOCATE FOR KOD=' 26.  '
  M26=IZNOS
  LOCATE FOR KOD=' 27.  '
  M27=IZNOS
  LOCATE FOR KOD=' 28.  '
  M28=IZNOS
  LOCATE FOR KOD=' 29.  '
  M29=IZNOS
  LOCATE FOR KOD=' 30.  '
  M30=IZNOS
  LOCATE FOR KOD=' 31.  '
  M31=IZNOS
  LOCATE FOR KOD=' 32.  '
  M32=IZNOS
  LOCATE FOR KOD=' 33.  '
  M33=IZNOS
  LOCATE FOR KOD=' 34.  '
  M34=IZNOS
  LOCATE FOR KOD=' 35.  '
  M35=IZNOS
  LOCATE FOR KOD=' 36.  '
  M36=IZNOS
  LOCATE FOR KOD=' 37.  '
  M37=IZNOS
  LOCATE FOR KOD=' 38.  '
  M38=IZNOS
  LOCATE FOR KOD=' 39.  '
  M39=IZNOS
  LOCATE FOR KOD=' 40.  '
  M40=IZNOS
  LOCATE FOR KOD=' 41.  '
  M41=IZNOS
  LOCATE FOR KOD=' 42.  '
  M42=IZNOS
  LOCATE FOR KOD=' 43.  '
  M43=IZNOS
  LOCATE FOR KOD=' 44.  '
  M44=IZNOS
  LOCATE FOR KOD=' 45.  '
  M45=IZNOS
  LOCATE FOR KOD=' 46.  '
  M46=IZNOS
  LOCATE FOR KOD=' 47.  '
  M47=IZNOS
  LOCATE FOR KOD=' 48.  '
  M48=IZNOS
  LOCATE FOR KOD=' 49.  '
  M49=IZNOS
  LOCATE FOR KOD=' 50.  '
  M50=IZNOS
  LOCATE FOR KOD=' 51.  '
  M51=IZNOS
  LOCATE FOR KOD=' 52.  '
  M52=IZNOS
  LOCATE FOR KOD=' 53.  '
  M53=IZNOS
  LOCATE FOR KOD=' 54.  '
  M54=IZNOS
  LOCATE FOR KOD=' 55.  '
  M55=IZNOS
  LOCATE FOR KOD=' 56.  '
  M56=IZNOS
  LOCATE FOR KOD=' 57.  '
  M57=IZNOS
  *SET STEP on
 
  M47=M1-M2+M4-M5+M6+M7+M8+M9+M10+M11+M12+M13+M14+M15+M16+M17-M18+M19-M20+M21+M22+M23+M24;
      +m25+m26+M27-M28+M29-M30+M31-M32+M33+m34-m35+m36+m37+m38+m39+m46

  *M48=M2+M3-M4+M5-M6+m7+M8+M9+M10+M11+M12+M13+M14+M15+M16+M17+M18-M19+M20-M21+M22+M23+M24;
      +m25+m26+M27+M28-M29+M30-M31+M32-M33-m34+m35+m36+m37+m38+m39-m46
  m48=ABS(M47)
   
  IF m47<0
     m47=0
     m48=ABS(M48)
  ELSE
     M48=0
  endif    



  LOCATE FOR KOD=' 47.  '
  REPLACE IZNOS WITH M47

  LOCATE FOR KOD=' 48.  '
  REPLACE IZNOS WITH M48



  m50=m47-m49
  if m50<0
     m50=0
  endif
  LOCATE FOR KOD=' 50.  '
  REPLACE IZNOS WITH M50


  m53=m51-m52
  if m53<0
     m53=0
  endif
  LOCATE FOR KOD=' 53.  '
  REPLACE IZNOS WITH M53

  m54=m52-m53
  if m54<0
     m54=0
  endif
  LOCATE FOR KOD=' 54.  '
  REPLACE IZNOS WITH M54


  m56=m53-m55
  if m56<0
     m56=0
  endif
  LOCATE FOR KOD=' 56.  '
  REPLACE IZNOS WITH M56

  m57=m50+m56
  if m57<0
     m57=0
  endif
  LOCATE FOR KOD=' 57.  '
  REPLACE IZNOS WITH M57

POP KEY
ENDPROC








*------------------OBRAZAC PK1--------------------------


PROCEDURE PK1PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 28
         APPEND BLANK
      next
      DO PK1POP
   endif
POP KEY
ENDPROC

PROCEDURE PK1POP
PUSH KEY CLEAR

   DO PK1POP2  WITH  1,'Ukupan iznos ulaganja u osnovna sredstva koja su placena u tekucem      ','*',' 1.',' '
   DO PK1POP2  WITH  2,'poreskom periodu                                                        ',' ','   ','*'   

   DO PK1POP2  WITH  3,'Iznos ulaganja u opremu placenu u tekucem poreskom periodu              ','*',' 2.',' '
   DO PK1POP2  WITH  4,'a koja je bila u upotrebi na teritoriji Republike                       ',' ','   ','*'   

   DO PK1POP2  WITH  5,'Iznos ulaganja u osnovna sredstva za koja se priznaje pravo na          ','*',' 3.',' '
   DO PK1POP2  WITH  6,'poreski kredit (1-2)                                                    ',' ','   ','*'   

   DO PK1POP2  WITH  7,'Iznos obracunatog poreskog kredita za tekuci poreski period             ','*',' 4.',' '
   DO PK1POP2  WITH  8,'(red br 3 x 80% )                                                       ',' ','   ','*'   

   DO PK1POP2  WITH  9,'Iznos poreskog kredita koji se koristi u tekucem poreskom periodu       ','*',' 5.','*'


   DO PK1POP2  WITH 10,'Neiskorišæeni deo poreskog kredita iz tekuceg poreskog perioda koji se  ','*',' 6.',' '
   DO PK1POP2  WITH 11,'prenosi na racun poreza na dobit iz buducih obracunskih perioda (4-5)   ',' ','   ','*'

   DO PK1POP2  WITH 12,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se prenosi na ','*',' 7.',' '
   DO PK1POP2  WITH 13,'raèun poreza na dobit iz buduæih obraèunskih perioda                    ',' ','   ','*'

   DO PK1POP2  WITH 14,'Iznos korekcije neiskoriscenog dela poreskog kredita iz ranijih godina  ','*',' 8.',' '
   DO PK1POP2  WITH 15,'usled otudjenja osnovnih sredstava                                      ',' ','   ','*'

   DO PK1POP2  WITH 16,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se posle korek','*',' 9.',' '
   DO PK1POP2  WITH 17,'cije prenosi na racun poreza na dobit iz buducih obracunskih perioda    ',' ','   ',' '
   DO PK1POP2  WITH 18,'(7-8)                                                                   ',' ','   ','*'

   DO PK1POP2  WITH 19,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji moze da se    ','*','10.',' '
   DO PK1POP2  WITH 20,'koristi u tekucoj godini                                                ',' ','   ','*'

   DO PK1POP2  WITH 21,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se prenosi na ','*','11.',' '
   DO PK1POP2  WITH 22,'raèun poreza na dobit iz buduæih obraèunskih perioda  (9-10)            ',' ','   ','*'

   DO PK1POP2  WITH 23,'Ukupni poreski kredit koji se koristi u tekucem poreskom periodu-zbir   ','*','12.',' '
   DO PK1POP2  WITH 24,'poreskog kredita tekuce godine i prenetih poreskih kredita iz ranijih   ',' ','   ',' '
   DO PK1POP2  WITH 25,'godina po redosledu ulaganja (5+10)                                     ',' ','   ','*'

   DO PK1POP2  WITH 26,'Neiskorišæeni deo poreskog kredita koji se prenosi na racun poreza na   ','*','13.',' '
   DO PK1POP2  WITH 27,'dobit iz buduæih perioda - zbir neiskoriscenog poreskog kredita tekuce  ',' ','   ',' '
   DO PK1POP2  WITH 28,'godine i prenetog poreskog kredita iz ranijih godina (6+11)             ',' ','   ','*'


POP KEY
endproc


procedure Pk1POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
   POP KEY
endproc



PROCEDURE pk1rac
PUSH KEY CLEAR

  LOCATE FOR KOD=' 1.'
  M1 =IZNOS
  LOCATE FOR KOD=' 2.'
  M2 =IZNOS
  LOCATE FOR KOD=' 4.'
  M4 =IZNOS
  LOCATE FOR KOD=' 5.'
  M5 =IZNOS
  LOCATE FOR KOD=' 6.'
  M6 =IZNOS
  LOCATE FOR KOD=' 7.'
  M7 =IZNOS
  LOCATE FOR KOD=' 8.'
  M8 =IZNOS
  LOCATE FOR KOD='10.'
  M10=IZNOS
   

  LOCATE FOR KOD=' 3.'
  replace iznos WITH m1-m2
  M3 =IZNOS  

  LOCATE FOR KOD=' 6.'
  replace iznos WITH m4-m5
  M6 =IZNOS     

  LOCATE FOR KOD=' 9.'
  replace iznos WITH m7-m8
  M9 =IZNOS     

  LOCATE FOR KOD='11.'
  replace iznos WITH m9-m10
  M11=IZNOS     

  LOCATE FOR KOD='12.'
  replace iznos WITH m5+m10
  M12=IZNOS     

  LOCATE FOR KOD='13.'
  replace iznos WITH m6+m11
  M13=IZNOS     

POP KEY
ENDPROC


*------------------OBRAZAC PK 3--------------------------



PROCEDURE pk3PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 30
         APPEND BLANK
      next
      DO pk3POP
   endif
POP KEY
ENDPROC

PROCEDURE pk3POP
PUSH KEY CLEAR

   DO pk3POP2  WITH  1,'Ukupan iznos ulaganja u osnovna sredstva koja su placena u tekucem      ','*',' 1.',' '
   DO pk3POP2  WITH  2,'poreskom periodu                                                        ',' ','   ','*'   

   DO pk3POP2  WITH  3,'Iznos ulaganja u opremu placenu u tekucem poreskom periodu              ','*',' 2.',' '
   DO pk3POP2  WITH  4,'a koja je bila u upotrebi na teritoriji republike                       ',' ','   ','*'   

   DO pk3POP2  WITH  5,'Iznos ulaganja u osnovna sredstva za koja se priznaje pravo na          ','*',' 3.',' '
   DO pk3POP2  WITH  6,'poreski kredit (1-2)                                                    ',' ','   ','*'   

   DO pk3POP2  WITH  7,'Iznos obracunatog poreskog kredita za tekuci poreski period             ','*',' 4.',' '
   DO pk3POP2  WITH  8,'(red br 3 x 80% )                                                       ',' ','   ','*'   

   DO pk3POP2  WITH  9,'Iznos poreskog kredita koji se koristi u tekucem poreskom periodu       ','*',' 5.','*'

   DO pk3POP2  WITH 10,'Neiskorišæeni deo poreskog kredita iz tekuceg poreskog perioda koji se  ','*',' 6.',' '
   DO pk3POP2  WITH 11,'prenosi na racun poreza iz buducih obracunskih perioda (4-5)            ',' ','   ','*'

   DO pk3POP2  WITH 12,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se prenosi na ','*',' 7.',' '
   DO pk3POP2  WITH 13,'raèun pripadajuæeg poreza iz buduæih obraèunskih perioda                ',' ','   ','*'

   DO pk3POP2  WITH 14,'Iznos korekcije neiskoriscenog dela poreskog kredita iz ranijih godina  ','*',' 8.',' '
   DO pk3POP2  WITH 15,'usled otudjenja osnovnih sredstava odnosno gubitka prava na poreski kred',' ','   ','*'

   DO pk3POP2  WITH 16,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji, posle korek  ','*',' 9.',' '
   DO pk3POP2  WITH 17,'cije, može da se koristi u tekucem poreskom periodu po redosledu        ',' ','   ',' '
   DO pk3POP2  WITH 18,'ulaganja (7-8)                                                          ',' ','   ','*'

   DO pk3POP2  WITH 19,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se koristi    ','*','10.',' '
   DO pk3POP2  WITH 20,'u tekucoj godini                                                        ',' ','   ','*'

   DO pk3POP2  WITH 22,'Neiskorišæeni deo poreskog kredita iz ranijih godina koji se prenosi na ','*','11.',' '
   DO pk3POP2  WITH 23,'raèun pripadajuæeg poreza iz buduæih obraèunskih perioda  (9-10)        ',' ','   ','*'

   DO pk3POP2  WITH 24,'Ukupni poreski kredit koji se koristi u tekucem poreskom periodu-zbir   ','*','12.',' '
   DO pk3POP2  WITH 25,'poreskog kredita tekuce godine i prenetih poreskih kredita iz ranijih   ',' ','   ',' '
   DO pk3POP2  WITH 26,'godina po redosledu ulaganja a najvise do 70% obracunatog poreza (5+10) ',' ','   ','*'

   DO pk3POP2  WITH 28,'Neiskorišæeni deo poreskog kredita koji se prenosi na racun pripadajuæeg','*','13.',' '
   DO pk3POP2  WITH 29,'poreza iz buduæih perioda - zbir neiskoriscenog poreskog kredita tekuceg ',' ','   ',' '
   DO pk3POP2  WITH 30,'poreskog perioda i prenetog poreskog kredita iz ranijih godina (6+11)   ',' ','   ','*'


POP KEY
endproc







procedure pk3POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
   POP KEY
endproc



PROCEDURE pk3rac
PUSH KEY CLEAR

  LOCATE FOR KOD=' 1.'
  M1 =IZNOS
  LOCATE FOR KOD=' 2.'
  M2 =IZNOS
  LOCATE FOR KOD=' 4.'
  M4 =IZNOS
  LOCATE FOR KOD=' 5.'
  M5 =IZNOS
  LOCATE FOR KOD=' 6.'
  M6 =IZNOS
  LOCATE FOR KOD=' 7.'
  M7 =IZNOS
  LOCATE FOR KOD=' 8.'
  M8 =IZNOS
  LOCATE FOR KOD='10.'
  M10=IZNOS
   

  LOCATE FOR KOD=' 3.'
  replace iznos WITH m1-m2
  M3 =IZNOS  

  LOCATE FOR KOD=' 6.'
  replace iznos WITH m4-m5
  M6 =IZNOS     

  LOCATE FOR KOD=' 9.'
  replace iznos WITH m7-m8
  M9 =IZNOS     

  LOCATE FOR KOD='11.'
  replace iznos WITH m9-m10
  M11=IZNOS     

  LOCATE FOR KOD='12.'
  replace iznos WITH m5+m10
  M12=IZNOS     

  LOCATE FOR KOD='13.'
  replace iznos WITH m6+m11
  M13=IZNOS     

POP KEY
ENDPROC

*------------------OBRAZAC SU 1--------------------------


PROCEDURE SU1PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 9
         APPEND BLANK
      next
      DO su1POP
   endif
POP KEY
ENDPROC

PROCEDURE SU1POP
PUSH KEY CLEAR

   DO SU1POP2  WITH  1,'Vrednost ukupno plaæenih osnovnih sredstava nabavljenih u skladu sa       ','*',' 1.',' '
   DO SU1POP2  WITH  2,'èlanom 50a Zakona o porezu na dobit pravnih lica                          ',' ','   ','*'
   DO SU1POP2  WITH  3,'Vrednost plaæene opreme koja je bila u upotrebi na                        ','*',' 2.',' '
   DO SU1POP2  WITH  4,'teritoriji Republike Srbije                                               ',' ','   ','*'
   DO SU1POP2  WITH  5,'Vrednost plaæenih osnovnih sredstava nabavljenih u skladu sa              ','*',' 3.',' '
   DO SU1POP2  WITH  6,'èlanom 50a Zakona o porezu na dobit pravnih lica (1-2)                    ',' ','   ','*'
   DO SU1POP2  WITH  7,'Vrednost ukupnih osnovnih sredstava                                       ','*',' 4.','*'
   DO SU1POP2  WITH  8,'Srazmera ulaganja (red.br 3 / red.br 4 x 100)                             ','*',' 5.','*'
   DO SU1POP2  WITH  9,'Umanjenje obraèunatog poreza (red.br.5x odgovarajuci r.br.obrasca PPDG-1S)','*',' 6.','*'
POP KEY
endproc




procedure SU1POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
POP KEY
endproc



*------------------OBRAZAC SU 3-------------------------


PROCEDURE su3PUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 9
         APPEND BLANK
      next
      DO su3POP
   endif
POP KEY
ENDPROC

PROCEDURE su3POP
PUSH KEY CLEAR

   DO su3POP2  WITH  1,'Vrednost ukupno plaæenih osnovnih sredstava nabavljenih u skladu sa       ','*',' 1.',' '
   DO su3POP2  WITH  2,'èlanom 50b st.1 i 6. Zakona                                               ',' ','   ','*'
   DO su3POP2  WITH  3,'Vrednost plaæene opreme koja je bila u upotrebi na                        ','*',' 2.',' '
   DO su3POP2  WITH  4,'teritoriji Republike Srbije                                               ',' ','   ','*'
   DO su3POP2  WITH  5,'Vrednost nabavljenih osnovnih sredstava nabavljenih u skladu sa           ','*',' 3.',' '
   DO su3POP2  WITH  6,'èlanom 50b st.1 i 6. Zakona (1-2)                                         ',' ','   ','*'
   DO su3POP2  WITH  7,'Vrednost ukupnih osnovnih sredstava                                       ','*',' 4.','*'
   DO su3POP2  WITH  8,'Srazmera ulaganja (red.br 3 / red.br 4 x 100)                             ','*',' 5.','*'
   DO su3POP2  WITH  9,'Umanjenje obraèunatog poreza (red.br.5 x red.br 58 obrasca PB 2)          ','*',' 6.','*'
POP KEY
endproc




procedure su3POP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
POP KEY
endproc



*-----------OBRAYAC OK

PROCEDURE OBROKPUNI
PUSH KEY CLEAR

   if recCOUNT()<1
      for i=1 to 19
         APPEND BLANK
      next
      DO OBROKPOP
   endif
POP KEY
ENDPROC

PROCEDURE OBROKPOP
PUSH KEY CLEAR

   DO OBROKPOP2  WITH  1,'    1. AKTIVA NA DAN 1.JANUARA                                      ','*','  1.  ','*'
   DO OBROKPOP2  WITH  2,'    2. AKTIVA NA DAN 31.DECEMBRA - dan izrade bilansa               ','*','  2.  ','*'   
   DO OBROKPOP2  WITH  3,'    3. Proseèno stanje aktive (1+2):2                               ','*','  3.  ','*'   
   DO OBROKPOP2  WITH  4,'    4. OBAVEZE NA DAN 1.JANUARA                                     ','*','  4.  ','*'
   DO OBROKPOP2  WITH  5,'    5. OBAVEZE NA DAN 31.DECEMBRA - dan izrade bilansa              ','*','  5.  ','*'   
   DO OBROKPOP2  WITH  6,'    6. Proseèno stanje obaveza (4+5):2                              ','*','  6.  ','*'   
   DO OBROKPOP2  WITH  7,'    7. Sopstveni kapital (3-6)>0                                    ','*','  7.  ','*'   
   DO OBROKPOP2  WITH  8,'    8. Stanje zajmova, odnosno kredita,uproseèeno na dnevnom nivou  ','*','  8.  ','*'   
   DO OBROKPOP2  WITH  9,'    9. Èetvorostruka odnosno desetostruka vrednost sostvenog        ','*','  9.  ',' '   
   DO OBROKPOP2  WITH 10,'       kapitala obveznika (7 x 4 odnosno 7 x 10)                    ',' ','      ','*'   
   DO OBROKPOP2  WITH 11,'   10. Odnos èetvorostruke odnosno desetostruke vrednosti sopstvenog','*',' 10.  ',' '   
   DO OBROKPOP2  WITH 12,'       kapitala i stanja zajmova, odnosno kredita uproseèenog na    ',' ','      ',' '   
   DO OBROKPOP2  WITH 13,'       dnevnom nivou (9:8)                                          ',' ','      ','*'   
   DO OBROKPOP2  WITH 14,'   11. Iznos ukupno obraèunate kamate i pripadajuæih troškova na    ','*',' 11.  ',' '     
   DO OBROKPOP2  WITH 15,'       zajmove odnosno kredite                                      ',' ','      ','*'   
   DO OBROKPOP2  WITH 16,'   12. Iznos kamate i pripadajuæih troškova na                      ','*',' 12.  ','*'        
   DO OBROKPOP2  WITH 17,'       zajmove odnosno kredite koji može biti priznat (11 x 10)     ',' ','      ','*'   
   DO OBROKPOP2  WITH 18,'   13. Iznos kamate i pripadajuæih troškova na                      ','*',' 13.  ',' '   
   DO OBROKPOP2  WITH 19,'       zajmove odnosno kredite koji se ne priznaje (11-12)          ',' ','      ','*'   


   DO OBROKRAC
POP KEY
ENDPROC

procedure OBROKPOP2 
   parameters RED,PODATAK,MMOZE,mkod,MRLINI
   PUSH KEY CLEAR

    GOTO RED
       REPLACE OPIS WITH PODATAK
       REPLACE MOZE WITH MMOZE
       REPLACE kod WITH Mkod
       REPLACE RLINI WITH MRLINI
       POP KEY
endproc


procedure OBROKRAC
PUSH KEY CLEAR

  LOCATE FOR KOD='  1.  '
  M1 =IZNOS
  LOCATE FOR KOD='  2.  '
  M2=IZNOS
  LOCATE FOR KOD='  3.  '
  M3=IZNOS
  LOCATE FOR KOD='  4.  '
  M4=IZNOS
  LOCATE FOR KOD='  5.  '
  M5=IZNOS
  LOCATE FOR KOD='  6.  '
  M6=IZNOS
  LOCATE FOR KOD='  7.  '
  M7=IZNOS
  LOCATE FOR KOD='  8.  '
  M8=IZNOS
  LOCATE FOR KOD='  9.  '
  M9=IZNOS
  LOCATE FOR KOD=' 10.  '
  M10=IZNOS
  LOCATE FOR KOD=' 11.  '
  M11=IZNOS
  LOCATE FOR KOD=' 12.  '
  M12=IZNOS
  LOCATE FOR KOD=' 13.  '
  M13=IZNOS

  m3=ROUND((m1+m2)/2,0)
  LOCATE FOR KOD='  3.  '
  REPLACE IZNOS WITH M3

  m6=ROUND((m4+m5)/2,0)
  LOCATE FOR KOD='  6.  '
  REPLACE IZNOS WITH M6

  m7=m3-m6
  IF m7<0
     m7=0
  endif   
  LOCATE FOR KOD='  7.  '
  REPLACE IZNOS WITH M7

  IF m8<>0
     m10=ROUND(m9/m8,0)
  ELSE
     m10=0
  endif      
  LOCATE FOR KOD=' 10.  '
  REPLACE IZNOS WITH M10

  m12=ROUND(m11*m10,0)

  LOCATE FOR KOD=' 12.  '
  REPLACE IZNOS WITH M12

  m13=ROUND(m11-m12,0)

  LOCATE FOR KOD=' 13.  '
  REPLACE IZNOS WITH M13


POP KEY
ENDPROC



