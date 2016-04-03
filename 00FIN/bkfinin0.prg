procedure BKFININ

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1

     DO PUNIBIL WITH '   ','   ','  AKTIVA                                                        ','                   ','*' 
     DO PUNIBIL WITH ' 1.','   ','  KRATKORO�NI FINANSIJSKI PLASMANI                              ','      018          ','*' 
     DO PUNIBIL WITH '1.1','   ','  Plasmani sektoru stanovni�tva                                 ','                   ','*' 
     DO PUNIBIL WITH '1.2','   ','  Plasmani javnim preduze�ima                                   ','                   ','*' 
     DO PUNIBIL WITH '1.3','   ','  Plasmani privrednim dru�tvima                                 ','                   ','*' 
     DO PUNIBIL WITH '1.4','   ','  Plasmani finansijskim institucijama                           ','                   ','*'      
     DO PUNIBIL WITH '1.5','   ','  Ostali plasmani                                               ','                   ','*'      
     DO PUNIBIL WITH ' 2.','   ','  OSTALI DUGORO�NI  FINANSIJSKI PLASMANI                        ','       011         ','*' 
     DO PUNIBIL WITH '2.1','   ','  Plasmani sektoru stanovni�tva                                 ','                   ','*' 
     DO PUNIBIL WITH '2.2','   ','  Plasmani javnim preduze�ima                                   ','                   ','*' 
     DO PUNIBIL WITH '2.3','   ','  Plasmani privrednim dru�tvima                                 ','                   ','*' 
     DO PUNIBIL WITH '2.4','   ','  Plasmani finansijskim institucijama                           ','                   ','*'      
     DO PUNIBIL WITH '2.5','   ','  Ostali plasmani                                               ','                   ','*'      
     DO PUNIBIL WITH ' 3.','   ','  U�E��E U KAPITALU                                             ','       010         ','*' 
     DO PUNIBIL WITH '3.1','   ','  Vlasni�ki udeli u javnim preduze�ima                          ','                   ','*' 
     DO PUNIBIL WITH '3.2','   ','  Vlasni�ki udeli u privrednim dru�tvima                        ','                   ','*' 
     DO PUNIBIL WITH '3.3','   ','  Vlasni�ki udeli u finansijskim institucijama                  ','                   ','*'      
     DO PUNIBIL WITH '3.4','   ','  Ostala u�e��a u kapitalu                                      ','                   ','*'      
     DO PUNIBIL WITH ' 4.','   ','  POTRA�IVANJA                                                  ','       016         ','*' 
     DO PUNIBIL WITH '4.1','   ','  Potra�ivanja od sektora stanovni�tva                          ','                   ','*' 
     DO PUNIBIL WITH '4.2','   ','  Potra�ivanja od javnih preduze�a                              ','                   ','*' 
     DO PUNIBIL WITH '4.3','   ','  Potra�ivanja od privrednih dru�tava u ste�aju i likvidaciji   ','                   ','*' 
     DO PUNIBIL WITH '4.4','   ','  Potra�ivanja od privrednih dru�tava u resktruktuiranju        ','                   ','*'      
     DO PUNIBIL WITH '4.5','   ','  Ostala potra�ivanja                                           ','                   ','*'      
     DO PUNIBIL WITH ' 5.','   ','  OSTALA POTRA�IVANJA                                           ','    017 i 020      ','*' 
     DO PUNIBIL WITH '5.1','   ','  Potra�ivanja od sektora stanovni�tva                          ','                   ','*' 
     DO PUNIBIL WITH '5.2','   ','  Potra�ivanja od javnih preduze�a                              ','                   ','*' 
     DO PUNIBIL WITH '5.3','   ','  Potra�ivanja od privrednih dru�tava u ste�aju i likvidaciji   ','                   ','*' 
     DO PUNIBIL WITH '5.4','   ','  Potra�ivanja od privrednih dru�tava u resktruktuiranju        ','                   ','*'      
     DO PUNIBIL WITH '5.5','   ','  Potra�ivanja za vi�e pla�en porez na dobitak,PDV i            ','                   ',' '      
     DO PUNIBIL WITH '   ','   ','  ostala potra�ivanja                                           ','                   ','*'      

     DO PUNIBIL WITH '   ','   ','  PASIVA                                                        ','                   ','*' 
     DO PUNIBIL WITH ' 6.','   ','  KRATKORO�NE FINANSIJSKE OBAVEZE                               ','       117            ','*' 
     DO PUNIBIL WITH '6.1','   ','  Primljeni krediti od privrednih dru�tava                      ','                   ','*' 
     DO PUNIBIL WITH '6.1','   ','  Primljeni krediti od finansijskih institucija                 ','                   ','*' 
     DO PUNIBIL WITH '6.3','   ','  Ostali primljeni krediti                                      ','                   ','*'      

     DO PUNIBIL WITH ' 7.','   ','  DUGORO�NI KREDITI I OSTALE DUGORO�NE OBAVEZE                  ','    114 i 115      ','*' 
     DO PUNIBIL WITH '7.1','   ','  Primljeni krediti/ostale dugoro�ne obaveze prema              ','                   ',' ' 
     DO PUNIBIL WITH '   ','   ','  privrednim dru�tvima                                          ','                   ','*' 
          
     DO PUNIBIL WITH '7.2','   ','  Primljeni krediti/ostale dugoro�ne obaveze prema              ','                   ',' ' 
     DO PUNIBIL WITH '   ','   ','  finansijskim institucijama                                    ','                   ','*' 
     DO PUNIBIL WITH '7.3','   ','  Ostali primljeni krediti/ostale dugoro�ne obaveze             ','                   ',' ' 

     DO PUNIBIL WITH ' 8.','   ','  UDELI U KAPITALU                                              ','        102        ','*' 
     DO PUNIBIL WITH '8.1','   ','  Udeli republi�kih organa i organizacija                       ','                   ','*' 
     DO PUNIBIL WITH '8.2','   ','  Udeli jedinica lokalne samouprave i autonomne pokrajine       ','                   ','*'      
     DO PUNIBIL WITH '8.3','   ','  Udeli ostalih osniva�a                                        ','                   ','*'      

     DO PUNIBIL WITH ' 9.','   ','  OBAVEZE IZ POSLOVANJA                                         ','        119        ','*' 
     DO PUNIBIL WITH '9.1','   ','  Obaveze prema sektoru stanovni�tva                            ','                   ','*' 
     DO PUNIBIL WITH '9.2','   ','  Obaveze prema javnim preduze�ima                              ','                   ','*' 
     DO PUNIBIL WITH '9.3','   ','  Obaveze prema privrednim dru�tvima u ste�aju i likvidaciji    ','                   ','*' 
     DO PUNIBIL WITH '9.4','   ','  Obaveze prema privrednim dru�tvima u resktruktuiranju         ','                   ','*'      
     DO PUNIBIL WITH '9.5','   ','  Ostale obaveze iz poslovanja                                  ','                   ','*'      

     DO PUNIBIL WITH '10. ','   ','  OSTALE OBAVEZE                                                ',' 118,120 i 121     ','*' 
     DO PUNIBIL WITH '10.1','   ','  Obaveze prema sektoru stanovni�tva                            ','                   ','*' 
     DO PUNIBIL WITH '10.2','   ','  Obaveze prema javnim preduze�ima                              ','                   ','*' 
     DO PUNIBIL WITH '10.3','   ','  Obaveze prema privrednim dru�tvima u ste�aju i likvidaciji    ','                   ','*' 
     DO PUNIBIL WITH '10.4','   ','  Obaveze prema privrednim dru�tvima u resktruktuiranju         ','                   ','*'      
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