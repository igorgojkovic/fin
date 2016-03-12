PROCEDURE TOKPUNI  

PUSH KEY CLEAR

IF RECCOUNT()<1
     DO PUNINTOK WITH  '   ','     A.TOKOVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI                       ',' '
     DO PUNINTOK WITH  '3001','  I.PRILIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI(1 DO 3)                 ','*'
     DO PUNINTOK WITH  '3002','     1.Prodaja i primljeni avansi                                    ','*'
     DO PUNINTOK WITH  '3003','     2.Primljene kamate iz poslovnih aktivnosti                      ','*'
     DO PUNINTOK WITH  '3004','     3.Ostali prilivi iz redovnog poslovanja                         ','*'
     DO PUNINTOK WITH  '3005','  II.ODLIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI (1 DO 5)                ','*'
     DO PUNINTOK WITH  '3006','     1.Isplate dobavljaèima i dati avansi                            ','*'
     DO PUNINTOK WITH  '3007','     2.Zarade,naknade zarada i ostali lièni rashodi                  ','*'
     DO PUNINTOK WITH  '3008','     3.Plaæene kamate                                                ','*'
     DO PUNINTOK WITH  '3009','     4.Porez na dobitak                                              ','*'
     DO PUNINTOK WITH  '3010','     5.Odlivi po osnovu ostalih javnih prihoda                     ','*'
     DO PUNINTOK WITH  '3011','  III.NETO PRILIV GOTOVINE IZ POSLOVNIH AKTIVNOSTI(I-II)             ','*'
     DO PUNINTOK WITH  '3012','  IV .NETO ODLIV  GOTOVINE IZ POSLOVNIH AKTIVNOSTI(II-I)             ','*'
     DO PUNINTOK WITH  '   ','     B.TOKOVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA                    ',' '
     DO PUNINTOK WITH  '3013','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 5)              ','*'
     DO PUNINTOK WITH  '3014','     1.Prodaja akcija i udela (neto prilivi)                         ','*'
     DO PUNINTOK WITH  '3015','     2.Prodaja nematerijalne imovine,nekretnina,postrojenja          ',' '
     DO PUNINTOK WITH  '   ','       opreme i bioloških sredstava                                   ','*'
     DO PUNINTOK WITH  '3016','     3.Ostali finansijski plasmani (neto prilivi)                    ','*'
     DO PUNINTOK WITH  '3017','     4.Primljene kamate iz aktivnosti investiranja                   ','*'
     DO PUNINTOK WITH  '3018','     5.Primljene dividende                                           ','*'
     DO PUNINTOK WITH  '3019','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 3)             ','*'
     DO PUNINTOK WITH  '3020','     1.Kupovina akcija i udela (neto odlivi)                         ','*'
     DO PUNINTOK WITH  '3021','     2.Kupovina nematerijalne imovine,nekretnina,postrojenja         ',' '
     DO PUNINTOK WITH  '   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '3022','     3.Ostali finansijski plasmani (neto odlivi)                     ','*'
     DO PUNINTOK WITH  '3023','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '3024','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '   ','     V.TOKOVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA                    ',' '
     DO PUNINTOK WITH  '3025','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 5)              ','*'
     DO PUNINTOK WITH  '3026','     1.Uveæanje osnovnog kapitala                                    ','*'
     DO PUNINTOK WITH  '3027','     2.Dugoroèni krediti(neto prilivi)                               ','*'
     DO PUNINTOK WITH  '3028','     3.Kratkoroèni krediti(neto prilivi)                             ','*'
     DO PUNINTOK WITH  '3029','     4.Ostale dugoroène obaveze                                      ','*'     
     DO PUNINTOK WITH  '3030','     5.Ostale kratkoroène obaveze                                    ','*'
     DO PUNINTOK WITH  '3031','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 6)             ','*'
     DO PUNINTOK WITH  '3032','     1.Otkup sopstvenih akcija i udela                               ','*'
     DO PUNINTOK WITH  '3033','     2.Dugoroèni krediti (odlivi)                                    ','*'
     DO PUNINTOK WITH  '3034','     3.Kratkoroèni krediti (odlivi)                                  ','*'
     DO PUNINTOK WITH  '3035','     4.Ostale obaveze (odlivi)                                       ','*'
     DO PUNINTOK WITH  '3036','     5.Finansijski lizing                                            ','*'
     DO PUNINTOK WITH  '3037','     6.Isplaæene dividende                                           ','*'
     DO PUNINTOK WITH  '3038','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '3039','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '3040','     G.SVEGA PRILIVI GOTOVINE (3001+3013+3025)                       ','*'
     DO PUNINTOK WITH  '3041','     D.SVEGA ODLIVI  GOTOVINE (3005+3019+3031)                          ','*'
     DO PUNINTOK WITH  '3042','     Ð.NETO PRILIV GOTOVINE (3040-3041)                                ','*'
     DO PUNINTOK WITH  '3043','     E.NETO ODLIV  GOTOVINE (3041-3040)                                ','*'
     DO PUNINTOK WITH  '3044','     Ž.GOTOVINA NA POÈETKU OBRAÈUNSKOG PERIODA                       ','*'
     DO PUNINTOK WITH  '3045','     Z.POZITIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '3046','     I.NEGATIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '3047','     J.GOTOVINA NA KRAJU OBRAÈUNSKOG PERIODA                         ',' '
     DO PUNINTOK WITH  '    ','       (3042-3043+3044+3045-3046)   ','*'
ENDIF                                                                                   
POP KEY
ENDPROC

procedure PUNINTOK
PARAMETERS MAOP,mopis,MRLINI
PUSH KEY CLEAR

   APPEND BLANK
      REPLACE AOP WITH MAOP
      replace opis with mopis
      replace RLINI with MRLINI
POP KEY
ENDPROC

*------------AUTOMATSKO POPUNJAVANJE BILANSA----------------
PROCEDURE TOKRAC
PUSH KEY CLEAR

      SELECT BTG
      SET ORDER TO 1
      GO TOP
      SEEK '3002'
      NP3002=PRETH
      NN3002=NETO
      SEEK '3003'
      NP3003=PRETH
      NN3003=NETO
      SEEK '3004'
      NP3004=PRETH
      NN3004=NETO

      SEEK '3006'
      NP3006=PRETH
      NN3006=NETO
      SEEK '3007'
      NP3007=PRETH
      NN3007=NETO
      SEEK '3008'
      NP3008=PRETH
      NN3008=NETO
      SEEK '3009'
      NP3009=PRETH
      NN3009=NETO
      SEEK '3010'
      NP3010=PRETH
      NN3010=NETO
*-----------------------
      SEEK '3014'
      NP3014=PRETH
      NN3014=NETO
      SEEK '3015'
      NP3015=PRETH
      NN3015=NETO
      SEEK '3016'
      NP3016=PRETH
      NN3016=NETO
      SEEK '3017'
      NP3017=PRETH
      NN3017=NETO
      SEEK '3018'
      NP3018=PRETH
      NN3018=NETO
*------------------------
      SEEK '3020'
      NP3020=PRETH
      NN3020=NETO
      SEEK '3021'
      NP3021=PRETH
      NN3021=NETO
      SEEK '3022'
      NP3022=PRETH
      NN3022=NETO

      SEEK '3026'
      NP3026=PRETH
      NN3026=NETO
      SEEK '3027'
      NP3027=PRETH
      NN3027=NETO
      SEEK '3028'
      NP3028=PRETH
      NN3028=NETO

      SEEK '3029'
      NP3029=PRETH
      NN3029=NETO

      SEEK '3030'
      NP3030=PRETH
      NN3030=NETO


      SEEK '3032'
      NP3032=PRETH
      NN3032=NETO

      SEEK '3033'
      NP3033=PRETH
      NN3033=NETO

      SEEK '3034'
      NP3034=PRETH
      NN3034=NETO

      SEEK '3035'
      NP3035=PRETH
      NN3035=NETO

      SEEK '3036'
      NP3036=PRETH
      NN3036=NETO

      SEEK '3037'
      NP3037=PRETH
      NN3037=NETO



      SEEK '3044'
      NP3044=PRETH
      NN3044=NETO

      SEEK '3045'
      NP3045=PRETH
      NN3045=NETO

      SEEK '3046'
      NP3046=PRETH
      NN3046=NETO
*------------------------------
      SEEK '3001'
      NP3001=NP3002+NP3003+NP3004
      NN3001=NN3002+NN3003+NN3004
      
      REPLACE PRETH WITH NP3001
      REPLACE NETO  WITH NN3001
    
*----------------------------------------
      SEEK '3005'
      NP3005=NP3006+NP3007+NP3008+NP3009+NP3010
      NN3005=NN3006+NN3007+NN3008+NN3009+NN3010
     
         REPLACE PRETH WITH NP3005
         REPLACE NETO  WITH NN3005
*-----------------------------
      SEEK '3011'
      NP3011=NP3001-NP3005
      NN3011=NN3001-NN3005
    
         IF NP3011>0
            REPLACE PRETH WITH NP3011
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN3011>0
            REPLACE NETO WITH NN3011
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NP3011=PRETH
         NN3011=NETO
  *-----------------------------
      SEEK '3012'
      NP3012=NP3005-NP3001
      NN3012=NN3005-NN3001
        IF NP3012>0
            REPLACE PRETH WITH NP3012
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN3012>0
            REPLACE NETO WITH NN3012
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NP3012=PRETH
         NN3012=NETO
    
*'''''''''''''''''''''''''''''''''''''''''''''''''''''''

      SEEK '3013'
      NP3013=NP3014+NP3015+NP3016+NP3017+NP3018
      NN3013=NN3014+NN3015+NN3016+NN3017+NN3018
   
         REPLACE PRETH WITH NP3013
         REPLACE NETO  WITH NN3013
 
      SEEK '3019'
      NP3019=NP3020+NP3021+NP3022
      NN3019=NN3020+NN3021+NN3022
       
         REPLACE PRETH WITH NP3019
         REPLACE NETO  WITH NN3019
*-------------------------
      SEEK '3023'
      NP3023=NP3013-NP3019
      NN3023=NN3013-NN3019
         IF NP3023>0
            REPLACE PRETH WITH NP3023
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN3023>0
            REPLACE NETO WITH NN3023
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NP3023=PRETH
         NN3023=NETO
   
      SEEK '3024'
      NP3024=NP3019-NP3013
      NN3024=NN3019-NN3013
   
         IF NP3024>0
            REPLACE PRETH WITH NP3024
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP3024=PRETH
         IF NN3024>0
            REPLACE NETO WITH NN3024
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NN3024=NETO
 *----------------
      SEEK '3025'
      NP3025=NP3026+NP3027+NP3028+NP3029+NP3030
      NN3025=NN3026+NN3027+NN3028+NN3029+NN3030
    
         REPLACE PRETH WITH NP3025
         REPLACE NETO  WITH NN3025
   
      SEEK '3031'
      NP3031=NP3032+NP3033+NP3034+NP3035+NP3036+NP3037
      NN3031=NN3032+NN3033+NN3034+NN3035+NN3036+NN3037

     
         REPLACE PRETH WITH NP3031
         REPLACE NETO  WITH NN3031
 
*---------------------------------
      SEEK '3038'
      NP3038=NP3025-NP3031
      NN3038=NN3025-NN3031
 
         IF NP3038>0
            REPLACE PRETH WITH NP3038
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP3038=PRETH
         IF NN3038>0
            REPLACE NETO  WITH NN3038
         ELSE
            REPLACE NETO  WITH 0
         ENDIF
         NN3038=NETO

*----------------------------
      SEEK '3039'
      NP3039=NP3031-NP3025
      NN3039=NN3031-NN3025
   
         IF NP3039>0
            REPLACE PRETH WITH NP3039
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP3039=PRETH
         IF NN3039>0
            REPLACE NETO  WITH NN3039
         ELSE
            REPLACE NETO  WITH 0
         ENDIF
         NN3039=NETO
 
      SEEK '3040'
      NP3040=NP3001+NP3013+NP3025
      NN3040=NN3001+NN3013+NN3025
   
         REPLACE PRETH WITH NP3040
         REPLACE NETO  WITH NN3040
    
      SEEK '3041'
      NP3041=NP3005+NP3019+NP3031
      NN3041=NN3005+NN3019+NN3031

         REPLACE PRETH WITH NP3041
         REPLACE NETO  WITH NN3041
*----------------------------
      SEEK '3042'
      NP3042=NP3040-NP3041
      NN3042=NN3040-NN3041
 
         IF NP3042>0
            REPLACE PRETH WITH NP3042
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP3042=PRETH
         IF NN3042>0
            REPLACE NETO  WITH NN3042
         ELSE
            REPLACE NETO  WITH 0
         ENDIF
         NN3042=NETO
 *-----------------------
      SEEK '3043'
      NP3043=NP3041-NP3040
      NN3043=NN3041-NN3040
   
         IF NP3043>0
            REPLACE PRETH WITH NP3043
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP3043=PRETH
         IF NN3043>0
            REPLACE NETO WITH NN3043
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NN3043=NETO
*-----------------------
        SEEK '3047'
      NP3047=NP3042-NP3043+NP3044+NP3045-NP3046
      NN3047=NN3042-NN3043+NN3044+NN3045-NN3046
    
         IF NP3047>0
            REPLACE PRETH WITH NP3047
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN3047>0
            REPLACE NETO WITH NN3047
         ELSE
            REPLACE NETO WITH 0
         ENDIF
   POP KEY  
   SET ORDER TO 
ENDPROC


PROCEDURE TOKPRE
   PARAMETERS MDDAT0,MDDAT1,MCIFRE
   PUSH KEY CLEAR

   SET EXACT OFF
         SELECT BTG
         SET ORDER TO 1
   DO idel WITH (kkockax)
   DO idel WITH (kkockax2)
   DO idel WITH (kkockax3)
   
   
         IF MKOMUNAL=1
             SET DEFAULT TO &MDATA02
         endif   
         
            IF MNOVAGK=0    
               USE NAL IN 0 ORDER 1
            ELSE
               USE NALNOVI IN 0 ORDER 1  ALIAS NAL          
            ENDIF   
         
         IF MKOMUNAL=1
             SET DEFAULT TO &MDATA02K
         ENDIF    
         

         SELECT NAL 
         TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK=MDDAT0
         TOTAL ON KONTO TO &KKOCKA2 FIELDS DUG,POT FOR DATDOK>MDDAT0.AND.DATDOK<=MDDAT1
         TOTAL ON KONTO TO &KKOCKA3 FIELDS DUG,POT FOR DATDOK>=MDDAT0.AND.DATDOK<=MDDAT1
         SELECT NAL
         USE
         USE &KKOCKA IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP
         USE &KKOCKA2 IN 0 ALIAS KOCKA2 exclu
         SELECT KOCKA2
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         USE &KKOCKA3 IN 0 ALIAS KOCKA3 exclu
         SELECT KOCKA3
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         SELECT KOCKA2
         GO TOP
         
         *----------402----------------------
         MB3002=0
         MB3002=MB3002+BILTOKPOT3('200')
         MB3002=MB3002+BILTOKPOT3('201')
         MB3002=MB3002+BILTOKPOT3('202')
         MB3002=MB3002+BILTOKPOT3('203')
         MB3002=MB3002+BILTOKPOT3('204')
         MB3002=MB3002+BILTOKPOT3('205')
         MB3002=MB3002+BILTOKPOT3('206')
         MB3002=MB3002+BILTOKPOT3('430')         
         MB3002=MB3002+BILTOKPOT3('675')                  
         MB3002=MB3002+BILTOKPOT3('210')
         MB3002=MB3002+BILTOKPOT3('211')
         MB3002=MB3002+BILTOKPOT3('212')
         MB3002=MB3002+BILTOKPOT3('218')
         MB3002=MB3002+BILTOKPOT3('3030')
         
         *----------403----------------------
         MB3003=0
         MB3003=MB3003+BILTOKPOT3('660')
         MB3003=MB3003+BILTOKPOT3('661')
         MB3003=MB3003+BILTOKPOT3('662')
         MB3003=MB3003+BILTOKSAL3('663')
         MB3003=MB3003+BILTOKSAL3('664')         
         MB3003=MB3003+BILTOKPOT3('220')         
                  
         *----------304----------------------
         MB3004=0
         MB3004=MB3004+BILTOKPOT2('64')
         MB3004=MB3004+BILTOKPOT2('65')
         MB3004=MB3004+BILTOKPOT3('662')
         MB3004=MB3004+BILTOKPOT3('221')
         MB3004=MB3004+BILTOKPOT3('222')
         MB3004=MB3004+BILTOKPOT3('228')
         
         *----------306----------------------
         MB3006=0
         MB3006=MB3006+BILTOKDUG3('431')
         MB3006=MB3006+BILTOKDUG3('432')
         MB3006=MB3006+BILTOKDUG3('433')
         MB3006=MB3006+BILTOKDUG3('434')
         MB3006=MB3006+BILTOKDUG3('435')
         MB3006=MB3006+BILTOKDUG3('436')         
         MB3006=MB3006+BILTOKDUG3('150')         
         MB3006=MB3006+BILTOKDUG3('151')         
         MB3006=MB3006+BILTOKDUG3('152')         
         MB3006=MB3006+BILTOKDUG3('153')         
         MB3006=MB3006+BILTOKDUG3('154')                                                      
         MB3006=MB3006+BILTOKDUG3('155')         
         
         *----------407----------------------
         MB3007=0
         MB3007=MB3007+BILTOKDUG3('305')
         
         
         *----------408----------------------
         MB3008=0
         MB3008=MB3008+BILTOKDUG3('460')
         MB3008=MB3008+BILTOKDUG3('562')         
         
         *----------409----------------------
         MB3009=0
         MB3009=MB3009+BILTOKDUG3('481')
         
         *----------410----------------------
         MB3010=0
         MB3010=MB3010+BILTOKDUG2('48')
         MB3010=MB3010-BILTOKDUG3('481')
         
         *----------314----------------------
         MB3014=0
         MB3014=MB3014+BILTOKDUG3('030')
         MB3014=MB3014+BILTOKDUG3('031')
         MB3014=MB3014+BILTOKDUG3('032')
         MB3014=MB3014+BILTOKPOT3('672')
         
         *----------415----------------------
         MB3015=0
         MB3015=MB3015+BILTOKPOT3('020')
         MB3015=MB3015+BILTOKPOT3('021')
         MB3015=MB3015+BILTOKPOT3('022')
         MB3015=MB3015+BILTOKPOT3('023')
                           
         
         *----------46----------------------
         MB3016=0
         MB3016=MB3016+BILTOKPOT3('040')
         MB3016=MB3016+BILTOKPOT3('041')
         MB3016=MB3016+BILTOKPOT3('042')
         MB3016=MB3016+BILTOKPOT3('043')
         MB3016=MB3016+BILTOKPOT3('044')
         MB3016=MB3016+BILTOKPOT3('045')
         MB3016=MB3016+BILTOKPOT3('046')
         MB3016=MB3016+BILTOKPOT3('047')
         MB3016=MB3016+BILTOKPOT3('048')
         MB3016=MB3016+BILTOKPOT2('23')
         

         SELECT KOCKA2
         
         MB3020=0
         MB3020=MB3020+BILTOKSAL3P('300')
         MB3020=MB3020+BILTOKSAL3P('301')
         
         SELECT KOCKA2
         MB3020=MB3020-BILTOKSAL2('30')
         MB3020=MB3020-BILTOKSAL2('31')
         MB3020=MB3020-BILTOKSAL3('320')
         
         SELECT KOCKA3
         
         MB3021=0
         MB3021=MB3021+BILTOKSAL3P('414')
         MB3021=MB3021+BILTOKSAL3P('415')
         MB3021=MB3021+BILTOKSAL3P('420')
         MB3021=MB3021+BILTOKSAL3P('421')
         MB3021=MB3021+BILTOKSAL3P('422')
         MB3021=MB3021+BILTOKSAL3P('423')
         MB3021=MB3021+BILTOKSAL3P('424')
         
         SELECT KOCKA3
         
         MB3021=MB3021-BILTOKSAL3P('414')
         MB3021=MB3021-BILTOKSAL3P('415')
         MB3021=MB3021-BILTOKSAL3P('420')
         MB3021=MB3021-BILTOKSAL3P('421')
         MB3021=MB3021-BILTOKSAL3P('422')
         MB3021=MB3021-BILTOKSAL3P('423')
         MB3021=MB3021-BILTOKSAL3P('424')
         
         
         SELECT KOCKA3
         
         MB3022=0
         MB3022=MB3022+BILTOKSAL3P('419')
         MB3022=MB3022+BILTOKSAL3P('425')
         MB3022=MB3022+BILTOKSAL3P('426')
         MB3022=MB3022+BILTOKSAL3P('427')
         MB3022=MB3022+BILTOKSAL3P('428')
         MB3022=MB3022+BILTOKSAL3P('429')
         
         SELECT KOCKA3
         
         MB3022=MB3022-BILTOKSAL3P('419')
         MB3022=MB3022-BILTOKSAL3P('425')
         MB3022=MB3022-BILTOKSAL3P('426')
         MB3022=MB3022-BILTOKSAL3P('427')
         MB3022=MB3022-BILTOKSAL3P('428')
         MB3022=MB3022-BILTOKSAL3P('429')


         SELECT KOCKA3
         
         MB3023=0
         MB3023=MB3023+BILTOKSAL3('037')
         MB3023=MB3023+BILTOKSAL3('237')

         SELECT KOCKA2
         

        *------------426
         SELECT KOCKA2
         MB3027=0
         MB3027=MB3027+BILTOKSAL3P('414')
         MB3027=MB3027+BILTOKSAL3P('415')

         *------428----
         SELECT KOCKA2
         
         MB3028=0
         MB3028=MB3028+BILTOKSAL3P('420')
         MB3028=MB3028+BILTOKSAL3P('421')
         MB3028=MB3028+BILTOKSAL3P('422')
         MB3028=MB3028+BILTOKSAL3P('423')
         MB3028=MB3028+BILTOKSAL3P('424')



         *------429----
         SELECT KOCKA2
         
         MB3029=0
         MB3029=MB3029+BILTOKSAL3P('419')

         *------430--
         SELECT KOCKA2
         
         MB3030=0
         MB3030=MB3030+BILTOKSAL3P('499')
         
         
         SELECT KOCKA2
         *----433-----------
         MB3033=0
         MB3033=MB3033+BILTOKDUG3('414')
         MB3033=MB3033+BILTOKDUG3('415')
         MB3033=MB3033-BILTOKPOT3('414')
         MB3033=MB3033-BILTOKPOT3('415')
         

         *----434-----------
         MB3034=0
         MB3034=MB3034+BILTOKDUG3('420')
         MB3034=MB3034+BILTOKDUG3('421')
         MB3034=MB3034+BILTOKDUG3('422')
         MB3034=MB3034+BILTOKDUG3('423')
         MB3034=MB3034-BILTOKPOT3('420')
         MB3034=MB3034-BILTOKPOT3('421')
         MB3034=MB3034-BILTOKPOT3('422')
         MB3034=MB3034-BILTOKPOT3('423')

         SELECT KOCKA2
         *----435-----------
         MB3035=0
         MB3035=MB3035+BILTOKDUG3('419')
         MB3035=MB3035+BILTOKDUG3('429')
         MB3035=MB3035-BILTOKPOT3('419')
         MB3035=MB3035-BILTOKPOT3('429')


         SELECT KOCKA2
         *----436-----------
         MB3036=0
         MB3036=MB3036+BILTOKDUG3('416')

         IF MCIFRE='H'
            MB3002=ROUND(MB3002/1000,0)
            MB3003=ROUND(MB3003/1000,0)
            MB3004=ROUND(MB3004/1000,0)
            MB3006=ROUND(MB3006/1000,0)
            MB3007=ROUND(MB3007/1000,0)
            MB3008=ROUND(MB3008/1000,0)
            MB3009=ROUND(MB3009/1000,0)
            MB3010=ROUND(MB3010/1000,0)
            MB3014=ROUND(MB3014/1000,0)
            MB3015=ROUND(MB3015/1000,0)
            MB3016=ROUND(MB3016/1000,0)
            MB3027=ROUND(MB3027/1000,0)
            MB3028=ROUND(MB3028/1000,0)
            MB3030=ROUND(MB3030/1000,0)
            MB3033=ROUND(MB3033/1000,0)
            MB3034=ROUND(MB3034/1000,0)
            MB3035=ROUND(MB3035/1000,0)
            MB3036=ROUND(MB3036/1000,0)
        ENDIF         



         SELECT KOCKA
         USE
         SELECT KOCKA2
         USE
         SELECT KOCKA3
         USE
         
         SELECT BTG
         SET ORDER TO 
         GO TOP
         
         LOCATE FOR AOP='3002'
         IF MB3002>0
            REPLACE NETO WITH MB3002
         ENDIF
         LOCATE FOR AOP='3003'
         IF MB3003>0
            REPLACE NETO WITH MB3003
         ENDIF
         LOCATE FOR AOP='3004'
         IF MB3004>0
            REPLACE NETO WITH MB3004
         ENDIF
         LOCATE FOR AOP='3006'
         IF MB3006>0
            REPLACE NETO WITH MB3006
         ENDIF
         LOCATE FOR AOP='3007'
         IF MB3007>0
            REPLACE NETO WITH MB3007
         ENDIF
         LOCATE FOR AOP='3008'
         IF MB3008>0
            REPLACE NETO WITH MB3008
         ENDIF
         LOCATE FOR AOP='3009'
         IF MB3009>0
            REPLACE NETO WITH MB3009
         ENDIF
         LOCATE FOR AOP='3010'
         IF MB3010>0
            REPLACE NETO WITH MB3010
         ENDIF
         LOCATE FOR AOP='3014'
         IF MB3014>0
            REPLACE NETO WITH MB3014
         ENDIF
         LOCATE FOR AOP='3015'
         IF MB3015>0
            REPLACE NETO WITH MB3015
         ENDIF
         LOCATE FOR AOP='3016'
         IF MB3016>0
            REPLACE NETO WITH MB3016
         ENDIF
         LOCATE FOR AOP='3027'
         IF MB3027>0
            REPLACE NETO WITH MB3027
         ENDIF
         LOCATE FOR AOP='3028'
         IF MB3028>0
            REPLACE NETO WITH MB3028
         ENDIF
         LOCATE FOR AOP='3030'
         IF MB3030>0
            REPLACE NETO WITH MB3030
         ENDIF
         LOCATE FOR AOP='3033'
         IF MB3033>0
            REPLACE NETO WITH MB3033
         ENDIF
         LOCATE FOR AOP='3034'
         IF MB3034>0
            REPLACE NETO WITH MB3034
         ENDIF
         LOCATE FOR AOP='3035'
         IF MB3035>0
            REPLACE NETO WITH MB3035
         ENDIF
         LOCATE FOR AOP='3036'
         IF MB3036>0
            REPLACE NETO WITH MB3036
         ENDIF
         
         
   POP KEY         
            
endproc  


FUNCTION BILTOKPOT3
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT
         SKIP
      ENDDO   
   ENDIF
POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILTOKDUG3
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+DUG
         SKIP
      ENDDO   
   ENDIF
POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILTOKSAL3
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+DUG-POT
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILTOKSAL3P
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT-DUG
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILTOKPOT2
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILTOKDUG2
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+DUG
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILTOKSAL2
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+DUG-POT
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC

FUNCTION BILTOKSAL2P
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT-DUG
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


