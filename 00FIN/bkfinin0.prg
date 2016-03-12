procedure BKFININ

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1

     DO PUNIBIL WITH '   ','   ','  AKTIVA                                                        ','                   ','*' 
     DO PUNIBIL WITH ' 1.','   ','  KRATKOROÈNI FINANSIJSKI PLASMANI                              ','      018          ','*' 
     DO PUNIBIL WITH '1.1','   ','  Plasmani sektoru stanovništva                                 ','                   ','*' 
     DO PUNIBIL WITH '1.2','   ','  Plasmani javnim preduzeæima                                   ','                   ','*' 
     DO PUNIBIL WITH '1.3','   ','  Plasmani privrednim društvima                                 ','                   ','*' 
     DO PUNIBIL WITH '1.4','   ','  Plasmani finansijskim institucijama                           ','                   ','*'      
     DO PUNIBIL WITH '1.5','   ','  Ostali plasmani                                               ','                   ','*'      
     DO PUNIBIL WITH ' 2.','   ','  OSTALI DUGOROÈNI  FINANSIJSKI PLASMANI                        ','       011         ','*' 
     DO PUNIBIL WITH '2.1','   ','  Plasmani sektoru stanovništva                                 ','                   ','*' 
     DO PUNIBIL WITH '2.2','   ','  Plasmani javnim preduzeæima                                   ','                   ','*' 
     DO PUNIBIL WITH '2.3','   ','  Plasmani privrednim društvima                                 ','                   ','*' 
     DO PUNIBIL WITH '2.4','   ','  Plasmani finansijskim institucijama                           ','                   ','*'      
     DO PUNIBIL WITH '2.5','   ','  Ostali plasmani                                               ','                   ','*'      
     DO PUNIBIL WITH ' 3.','   ','  UÈEŠÆE U KAPITALU                                             ','       010         ','*' 
     DO PUNIBIL WITH '3.1','   ','  Vlasnièki udeli u javnim preduzeæima                          ','                   ','*' 
     DO PUNIBIL WITH '3.2','   ','  Vlasnièki udeli u privrednim društvima                        ','                   ','*' 
     DO PUNIBIL WITH '3.3','   ','  Vlasnièki udeli u finansijskim institucijama                  ','                   ','*'      
     DO PUNIBIL WITH '3.4','   ','  Ostala uèešæa u kapitalu                                      ','                   ','*'      
     DO PUNIBIL WITH ' 4.','   ','  POTRAŽIVANJA                                                  ','       016         ','*' 
     DO PUNIBIL WITH '4.1','   ','  Potraživanja od sektora stanovništva                          ','                   ','*' 
     DO PUNIBIL WITH '4.2','   ','  Potraživanja od javnih preduzeæa                              ','                   ','*' 
     DO PUNIBIL WITH '4.3','   ','  Potraživanja od privrednih društava u steèaju i likvidaciji   ','                   ','*' 
     DO PUNIBIL WITH '4.4','   ','  Potraživanja od privrednih društava u resktruktuiranju        ','                   ','*'      
     DO PUNIBIL WITH '4.5','   ','  Ostala potraživanja                                           ','                   ','*'      
     DO PUNIBIL WITH ' 5.','   ','  OSTALA POTRAŽIVANJA                                           ','    017 i 020      ','*' 
     DO PUNIBIL WITH '5.1','   ','  Potraživanja od sektora stanovništva                          ','                   ','*' 
     DO PUNIBIL WITH '5.2','   ','  Potraživanja od javnih preduzeæa                              ','                   ','*' 
     DO PUNIBIL WITH '5.3','   ','  Potraživanja od privrednih društava u steèaju i likvidaciji   ','                   ','*' 
     DO PUNIBIL WITH '5.4','   ','  Potraživanja od privrednih društava u resktruktuiranju        ','                   ','*'      
     DO PUNIBIL WITH '5.5','   ','  Potraživanja za više plaæen porez na dobitak,PDV i            ','                   ',' '      
     DO PUNIBIL WITH '   ','   ','  ostala potraživanja                                           ','                   ','*'      

     DO PUNIBIL WITH '   ','   ','  PASIVA                                                        ','                   ','*' 
     DO PUNIBIL WITH ' 6.','   ','  KRATKOROÈNE FINANSIJSKE OBAVEZE                               ','       117            ','*' 
     DO PUNIBIL WITH '6.1','   ','  Primljeni krediti od privrednih društava                      ','                   ','*' 
     DO PUNIBIL WITH '6.1','   ','  Primljeni krediti od finansijskih institucija                 ','                   ','*' 
     DO PUNIBIL WITH '6.3','   ','  Ostali primljeni krediti                                      ','                   ','*'      

     DO PUNIBIL WITH ' 7.','   ','  DUGOROÈNI KREDITI I OSTALE DUGOROÈNE OBAVEZE                  ','    114 i 115      ','*' 
     DO PUNIBIL WITH '7.1','   ','  Primljeni krediti/ostale dugoroène obaveze prema              ','                   ',' ' 
     DO PUNIBIL WITH '   ','   ','  privrednim društvima                                          ','                   ','*' 
          
     DO PUNIBIL WITH '7.2','   ','  Primljeni krediti/ostale dugoroène obaveze prema              ','                   ',' ' 
     DO PUNIBIL WITH '   ','   ','  finansijskim institucijama                                    ','                   ','*' 
     DO PUNIBIL WITH '7.3','   ','  Ostali primljeni krediti/ostale dugoroène obaveze             ','                   ',' ' 

     DO PUNIBIL WITH ' 8.','   ','  UDELI U KAPITALU                                              ','        102        ','*' 
     DO PUNIBIL WITH '8.1','   ','  Udeli republièkih organa i organizacija                       ','                   ','*' 
     DO PUNIBIL WITH '8.2','   ','  Udeli jedinica lokalne samouprave i autonomne pokrajine       ','                   ','*'      
     DO PUNIBIL WITH '8.3','   ','  Udeli ostalih osnivaèa                                        ','                   ','*'      

     DO PUNIBIL WITH ' 9.','   ','  OBAVEZE IZ POSLOVANJA                                         ','        119        ','*' 
     DO PUNIBIL WITH '9.1','   ','  Obaveze prema sektoru stanovništva                            ','                   ','*' 
     DO PUNIBIL WITH '9.2','   ','  Obaveze prema javnim preduzeæima                              ','                   ','*' 
     DO PUNIBIL WITH '9.3','   ','  Obaveze prema privrednim društvima u steèaju i likvidaciji    ','                   ','*' 
     DO PUNIBIL WITH '9.4','   ','  Obaveze prema privrednim društvima u resktruktuiranju         ','                   ','*'      
     DO PUNIBIL WITH '9.5','   ','  Ostale obaveze iz poslovanja                                  ','                   ','*'      

     DO PUNIBIL WITH '10. ','   ','  OSTALE OBAVEZE                                                ',' 118,120 i 121     ','*' 
     DO PUNIBIL WITH '10.1','   ','  Obaveze prema sektoru stanovništva                            ','                   ','*' 
     DO PUNIBIL WITH '10.2','   ','  Obaveze prema javnim preduzeæima                              ','                   ','*' 
     DO PUNIBIL WITH '10.3','   ','  Obaveze prema privrednim društvima u steèaju i likvidaciji    ','                   ','*' 
     DO PUNIBIL WITH '10.4','   ','  Obaveze prema privrednim društvima u resktruktuiranju         ','                   ','*'      
     DO PUNIBIL WITH '10.5','   ','  Obaveze po osnovu PDV i ostale obaveze                        ','                   ','*'      


ENDIF
POP KEY
ENDPROC

procedure punibil
   PARAMETERS mredbr,MAOP,mopis,mkonta,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   replace redbr WITH mredbr
   REPLACE AOP WITH MAOP
   replace kontA with Mkonta
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc

