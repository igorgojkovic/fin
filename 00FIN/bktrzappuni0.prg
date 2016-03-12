PROCEDURE bkTRZAPpuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO punitrzap WITH ' 1 ','Masa neto zarada                                            ','*' 
     DO punitrzap WITH ' 2 ','Broj zaposleniha                                            ','*' 
     DO punitrzap WITH ' 3 ','Proseèna neto zarada (1/2)                                  ','*' 
     DO punitrzap WITH ' 4 ','Masa bruto I zarada                                         ','*' 
     DO punitrzap WITH ' 5 ','Broj zaposleniha                                            ','*' 
     DO punitrzap WITH ' 6 ','Proseèna bruto I zarada (4/5)                               ','*' 
     DO punitrzap WITH ' 7 ','Masa bruto II zarada                                        ','*' 
     DO punitrzap WITH ' 8 ','Broj zaposleniha                                            ','*' 
     DO punitrzap WITH ' 9 ','Proseèna bruto II zarada (7/8)                              ','*' 
     DO punitrzap WITH '10 ','Naknada po ugovoru o delu                                   ','*' 
     DO punitrzap WITH '11 ','Broj angažovanih lica                                       ','*' 
     DO punitrzap WITH '12 ','Proseèan iznos naknade (10/11)                              ','*' 
     DO punitrzap WITH '13 ','Naknada po autorskim ugovorima                              ','*' 
     DO punitrzap WITH '14 ','Broj angažovanih lica                                       ','*' 
     DO punitrzap WITH '15 ','Proseèan iznos naknade (13/14)                              ','*' 
     DO punitrzap WITH '16 ','Naknada po ugovoru o privremenim i povremenim poslovima     ','*' 
     DO punitrzap WITH '17 ','Broj angažovanih lica                                       ','*' 
     DO punitrzap WITH '18 ','Proseèan iznos naknade (16/17)                              ','*' 
     DO punitrzap WITH '19 ','Naknada fizièkim licima po posnovu ostalih ugovora          ','*' 
     DO punitrzap WITH '20 ','Broj angažovanih lica                                       ','*' 
     DO punitrzap WITH '21 ','Proseèan iznos naknade (19/20)                              ','*' 
     DO punitrzap WITH '22 ','Naknada èlanovima upravnog/nadzornog odbora                 ','*' 
     DO punitrzap WITH '23 ','Broj èlanova upravnog/nadzornog odbora                      ','*' 
     DO punitrzap WITH '24 ','Proseèan iznos naknade (22/23)                              ','*' 
     DO punitrzap WITH '25 ','Prevoz zaposlenih na posao i sa posla                       ','*'      
     DO punitrzap WITH '26 ','Dnevnice na službenom putu (26a +26b)                       ','*'      
     DO punitrzap WITH '26a','U zemlji                                                    ','*'      
     DO punitrzap WITH '26b','U inostranstvu                                              ','*'      
     DO punitrzap WITH '27 ','Naknade troškova na službenom putu(27a +27b)                ','*'      
     DO punitrzap WITH '27a','U zemlji                                                    ','*'      
     DO punitrzap WITH '27b','U inostranstvu                                              ','*'      
     DO punitrzap WITH '28 ','Otpremnine za odlazak u penziju                             ','*'      
     DO punitrzap WITH '29 ','broj primalaca                                              ','*'           
     DO punitrzap WITH '30 ','Jubilarne nagrade                                           ','*'      
     DO punitrzap WITH '31 ','broj primalaca                                              ','*'           
     DO punitrzap WITH '32 ','Smeštaj i ishrana na terenu                                 ','*'           
     DO punitrzap WITH '33 ','Pomoæ radnicima i porodici radnika                          ','*'           
     DO punitrzap WITH '34 ','Stipendije                                                  ','*'           
     DO punitrzap WITH '35 ','Ostale naknade troškova zaposlenima i ostalim fizièkim licima ','*'           
     
     
     


ENDIF
POP KEY
ENDPROC

procedure punitrzap
   PARAMETERS Mredbr,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE redbr WITH mredbr
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
