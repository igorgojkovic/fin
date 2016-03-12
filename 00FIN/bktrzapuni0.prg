PROCEDURE bkTRZApuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO punitrza WITH ' 1 ','Masa NETO zarada (zarada po odbitku pripadajuæih poreza     ',' ' 
     DO punitrza WITH '   ','i doprinosa na teret zaposlenog)                            ','*' 
     DO punitrza WITH ' 2 ','Masa BRUTO zarada (zarada sa pripadajuæim porezima          ',' ' 
     DO punitrza WITH '   ','i doprinosima na teret zaposlenog)                          ','*' 
     DO punitrza WITH ' 3 ','Masa BRUTO zarada (zarada sa pripadajuæim porezima          ',' ' 
     DO punitrza WITH '   ','i doprinosima na teret poslodavca)                          ','*' 
     DO punitrza WITH ' 4 ','Broj zaposlenih po kadrovskoj evidenciji                    ','*' 
     DO punitrza WITH '4.1','-na neodredjeno vreme                                       ','*' 
     DO punitrza WITH '4.2','-na odredjeno vreme                                         ','*' 
     DO punitrza WITH ' 5 ','Naknada po ugovoru o delu                                   ','*' 
     DO punitrza WITH ' 6 ','Broj primalaca naknade po ugovoru o delu                    ','*' 
     DO punitrza WITH ' 7 ','Naknada po autorskim ugovorima                              ','*' 
     DO punitrza WITH ' 8 ','Broj primalaca naknade po autorskim ugovorima               ','*' 
     DO punitrza WITH ' 9 ','Naknada po ugovoru o privremenim i povremenim poslovima     ','*' 
     DO punitrza WITH '10 ','Broj primalaca naknade po ugovoru o privremenim i           ','*' 
     DO punitrza WITH '   ','povremenim poslovima                                        ','*'      
     DO punitrza WITH '11 ','Naknada fizièkim licima po osnovu ostalih ugovora           ','*' 
     DO punitrza WITH '12 ','Broj primalaca naknade po osnovu ostalih ugovora            ','*' 
     DO punitrza WITH '13 ','Naknada èlanovima skupštine                                 ','*' 
     DO punitrza WITH '14 ','Broj èlanova skupštine                                      ','*'      
     DO punitrza WITH '15 ','Naknada èlanovima upravnog odbora                           ','*' 
     DO punitrza WITH '16 ','Broj èlanova upravnog odbora                                ','*'      
     DO punitrza WITH '17 ','Naknada èlanovima nadzornog odbora                          ','*' 
     DO punitrza WITH '18 ','Broj èlanova nadzornog odbora                               ','*'      
     DO punitrza WITH '19 ','Prevoz zaposlenih na posao i sa posla                       ','*'      
     DO punitrza WITH '20 ','Dnevnice na službenom putu                                  ','*'      
     DO punitrza WITH '21 ','Naknade troškova na službenom putu                          ','*'      
     DO punitrza WITH '22 ','Otpremnine za odlazak u penziju                             ','*'      
     DO punitrza WITH '23 ','broj primalaca                                              ','*'           
     DO punitrza WITH '24 ','Jubilarne nagrade                                           ','*'      
     DO punitrza WITH '25 ','broj primalaca                                              ','*'           
     DO punitrza WITH '26 ','Smeštaj i ishrana na terenu                                 ','*'           
     DO punitrza WITH '27 ','Pomoæ radnicima i porodici radnika                          ','*'           
     DO punitrza WITH '28 ','Stipendije                                                  ','*'           
     DO punitrza WITH '29 ','Ostale naknade troškova zaposlenima i ostalim fizièkim licima ','*'           
ENDIF

ENDPROC

procedure punitrza
   PARAMETERS Mredbr,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE redbr WITH mredbr
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
