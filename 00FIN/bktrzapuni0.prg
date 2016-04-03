PROCEDURE bkTRZApuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO punitrza WITH ' 1 ','Masa NETO zarada (zarada po odbitku pripadaju�ih poreza     ',' ' 
     DO punitrza WITH '   ','i doprinosa na teret zaposlenog)                            ','*' 
     DO punitrza WITH ' 2 ','Masa BRUTO zarada (zarada sa pripadaju�im porezima          ',' ' 
     DO punitrza WITH '   ','i doprinosima na teret zaposlenog)                          ','*' 
     DO punitrza WITH ' 3 ','Masa BRUTO zarada (zarada sa pripadaju�im porezima          ',' ' 
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
     DO punitrza WITH '11 ','Naknada fizi�kim licima po osnovu ostalih ugovora           ','*' 
     DO punitrza WITH '12 ','Broj primalaca naknade po osnovu ostalih ugovora            ','*' 
     DO punitrza WITH '13 ','Naknada �lanovima skup�tine                                 ','*' 
     DO punitrza WITH '14 ','Broj �lanova skup�tine                                      ','*'      
     DO punitrza WITH '15 ','Naknada �lanovima upravnog odbora                           ','*' 
     DO punitrza WITH '16 ','Broj �lanova upravnog odbora                                ','*'      
     DO punitrza WITH '17 ','Naknada �lanovima nadzornog odbora                          ','*' 
     DO punitrza WITH '18 ','Broj �lanova nadzornog odbora                               ','*'      
     DO punitrza WITH '19 ','Prevoz zaposlenih na posao i sa posla                       ','*'      
     DO punitrza WITH '20 ','Dnevnice na slu�benom putu                                  ','*'      
     DO punitrza WITH '21 ','Naknade tro�kova na slu�benom putu                          ','*'      
     DO punitrza WITH '22 ','Otpremnine za odlazak u penziju                             ','*'      
     DO punitrza WITH '23 ','broj primalaca                                              ','*'           
     DO punitrza WITH '24 ','Jubilarne nagrade                                           ','*'      
     DO punitrza WITH '25 ','broj primalaca                                              ','*'           
     DO punitrza WITH '26 ','Sme�taj i ishrana na terenu                                 ','*'           
     DO punitrza WITH '27 ','Pomo� radnicima i porodici radnika                          ','*'           
     DO punitrza WITH '28 ','Stipendije                                                  ','*'           
     DO punitrza WITH '29 ','Ostale naknade tro�kova zaposlenima i ostalim fizi�kim licima ','*'           
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