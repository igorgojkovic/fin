PROCEDURE TOKPUNI

PUSH KEY CLEAR

IF RECCOUNT()<1
     DO PUNINTOK WITH  '  ','   ','     A.TOKOVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI                       ',' '
     DO PUNINTOK WITH  ' 1','401','  I.PRILIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI(1 DO 3)                 ','*'
     DO PUNINTOK WITH  ' 2','402','     1.Prodaja i primljeni avansi                                    ','*'
     DO PUNINTOK WITH  ' 3','403','     2.Primljene kamate iz poslovnih aktivnosti                      ','*'
     DO PUNINTOK WITH  ' 4','404','     2.Ostali prilivi iz redovnog poslovanja                         ','*'
     DO PUNINTOK WITH  ' 5','405','  II.ODLIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI (1 DO 5)                ','*'
     DO PUNINTOK WITH  ' 6','406','     1.Isplate dobavljaèima i dati avansi                            ','*'
     DO PUNINTOK WITH  ' 7','407','     2.Zarade,naknade zarada i ostali lièni rashodi                  ','*'
     DO PUNINTOK WITH  ' 8','408','     3.Plaæene kamate                                                ','*'
     DO PUNINTOK WITH  ' 9','409','     4.Porez na dobitak                                              ','*'
     DO PUNINTOK WITH  '10','410','     5.Odlivi po osnovu ostalih javnih prihoda                     ','*'
     DO PUNINTOK WITH  '11','411','  III.NETO PRILIV GOTOVINE IZ POSLOVNIH AKTIVNOSTI(I-II)             ','*'
     DO PUNINTOK WITH  '12','412','  IV .NETO ODLIV  GOTOVINE IZ POSLOVNIH AKTIVNOSTI(II-I)             ','*'
     DO PUNINTOK WITH  '  ','   ','     B.TOKOVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA                    ',' '
     DO PUNINTOK WITH  '13','413','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 5)              ','*'
     DO PUNINTOK WITH  '14','414','     1.Prodaja akcija i udela (neto prilivi)                         ','*'
     DO PUNINTOK WITH  '15','415','     2.Prodaja nematerijalnih ulaganja,nekretnina,postrojenja        ',' '
     DO PUNINTOK WITH  '  ','   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '16','416','     3.Ostali finansijski plasmani (neto prilivi)                    ','*'
     DO PUNINTOK WITH  '17','417','     4.Primljene kamate iz aktivnosti investiranja                   ','*'
     DO PUNINTOK WITH  '18','418','     5.Primljene dividende                                           ','*'
     DO PUNINTOK WITH  '18','419','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 3)             ','*'
     DO PUNINTOK WITH  '20','420','     1.Kupovina akcija i udela (neto odlivi)                         ','*'
     DO PUNINTOK WITH  '21','421','     2.Kupovina nematerijalnih ulaganja,nekretnina,postrojenja       ',' '
     DO PUNINTOK WITH  '  ','   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '22','422','     3.Ostali finansijski plasmani (neto odlivi)                     ','*'
     DO PUNINTOK WITH  '23','423','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '24','424','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '  ','   ','  V.TOKOVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA                       ',' '
     DO PUNINTOK WITH  '25','425','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 5)              ','*'
     DO PUNINTOK WITH  '26','426','     1.Uveæanje osnovnog kapitala                                    ','*'
     DO PUNINTOK WITH  '27','427','     2.Dugoroèni krediti(neto prilivi)                               ','*'
     DO PUNINTOK WITH  '28','428','     3.Kratkoroèni krediti(neto prilivi)                             ','*'
     DO PUNINTOK WITH  '29','429','     4.Ostale dugoroène obaveze                                      ','*'     
     DO PUNINTOK WITH  '30','430','     5.Ostale kratkoroène obaveze                                    ','*'
     DO PUNINTOK WITH  '31','431','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 6)             ','*'
     DO PUNINTOK WITH  '32','432','     1.Otkup sopstvenih akcija i udela                               ','*'
     DO PUNINTOK WITH  '33','433','     2.Dugoroèni krediti (odlivi)                                    ','*'
     DO PUNINTOK WITH  '34','434','     3.Kratkoroèni krediti (odlivi)                                  ','*'
     DO PUNINTOK WITH  '35','435','     4.Ostale obaveze (odlivi)                                       ','*'
     DO PUNINTOK WITH  '36','436','     5.Finansijski lizing                                            ','*'
     DO PUNINTOK WITH  '37','437','     6.Isplaæene dividende                                           ','*'
     DO PUNINTOK WITH  '38','438','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '39','439','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '40','440','     G.SVEGA PRILIVI GOTOVINE (401+413+425)                          ','*'
     DO PUNINTOK WITH  '41','441','     D.SVEGA ODLIVI  GOTOVINE (405+419+431)                          ','*'
     DO PUNINTOK WITH  '42','442','     Ð.NETO PRILIV GOTOVINE (440-441)                                ','*'
     DO PUNINTOK WITH  '43','443','     E.NETO ODLIV  GOTOVINE (441-440)                                ','*'
     DO PUNINTOK WITH  '44','444','     Ž.GOTOVINA NA POÈETKU OBRAÈUNSKOG PERIODA                       ','*'
     DO PUNINTOK WITH  '45','445','     Z.POZITIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '46','446','     I.NEGATIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '47','447','     J.GOTOVINA NA KRAJU OBRAÈUNSKOG PERIODA (442-443+444+445-446)   ','*'

ENDIF                                                                    
POP KEY
ENDPROC

procedure PUNINTOK
PARAMETERS MREDBR,MAOP,mopis,MRLINI
PUSH KEY CLEAR

   APPEND BLANK
      REPLACE AOP WITH MAOP
      replace opis with mopis
      replace RLINI with MRLINI
      REPLACE REDNIBR WITH MREDBR
POP KEY
ENDPROC

*------------AUTOMATSKO POPUNJAVANJE BILANSA----------------
PROCEDURE TOKRAC
PUSH KEY CLEAR

      SELECT BTG
      SET ORDER TO 1
      GO TOP
      SEEK '402'
      NPR402=PRETH

      SEEK '403'
      NPR403=PRETH

      SEEK '404'
      NPR404=PRETH

      SEEK '406'
      NPR406=PRETH

      SEEK '407'
      NPR407=PRETH

      SEEK '408'
      NPR408=PRETH

      SEEK '409'
      NPR409=PRETH
      
      SEEK '410'
      NPR410=PRETH
*-----------------------
      SEEK '414'
      NPR414=PRETH

      SEEK '415'
      NPR415=PRETH

      SEEK '416'
      NPR416=PRETH

      SEEK '417'
      NPR417=PRETH

      SEEK '418'
      NPR418=PRETH

*------------------------
      SEEK '420'
      NPR420=PRETH

      SEEK '421'
      NPR421=PRETH

      SEEK '422'
      NPR422=PRETH
 
      SEEK '426'
      NPR426=PRETH

      SEEK '427'
      NPR427=PRETH

      SEEK '428'
      NPR428=PRETH

      SEEK '429'
      NPR429=PRETH

      SEEK '430'
      NPR430=PRETH


      SEEK '432'
      NPR432=PRETH

      SEEK '433'
      NPR433=PRETH

      SEEK '434'
      NPR434=PRETH

      SEEK '435'
      NPR435=PRETH

      SEEK '436'
      NPR436=PRETH

      SEEK '437'
      NPR437=PRETH

      SEEK '444'
      NPR444=PRETH

      SEEK '445'
      NPR445=PRETH

      SEEK '446'
      NPR446=PRETH
*------------------------------
      SEEK '401'
      NPR401=NPR402+NPR403+NPR404
      
      REPLACE PRETH WITH NPR401
   
    
*----------------------------------------
      SEEK '405'
      NPR405=NPR406+NPR407+NPR408+NPR409+NPR410

      REPLACE PRETH WITH NPR405

*-----------------------------
      SEEK '411'
      NPR411=NPR401-NPR405
      
    
         
         IF NPR411>0
            REPLACE PRETH WITH NPR411
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR411=PRETH



  *-----------------------------
      SEEK '412'
      NPR412=NPR405-NPR401

         IF NPR412>0
            REPLACE PRETH WITH NPR412
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR412=PRETH
    
*'''''''''''''''''''''''''''''''''''''''''''''''''''''''

      SEEK '413'
      NPR413=NPR414+NPR415+NPR416+NPR417+NPR418
   
      REPLACE PRETH WITH NPR413
 
      SEEK '419'
      NPR419=NPR420+NPR421+NPR422
       
      REPLACE PRETH WITH NPR419
*-------------------------
      SEEK '423'
      NPR423=NPR413-NPR419
      
         IF NPR423>0
            REPLACE PRETH WITH NPR423
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR423=PRETH

   
      SEEK '424'
      NPR424=NPR419-NPR413
   
         
         IF NPR424>0
            REPLACE PRETH WITH NPR424
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR424=PRETH

 *----------------
      SEEK '425'
      NPR425=NPR426+NPR427+NPR428+NPR429+NPR430
     
         IF NPR425>0
            REPLACE PRETH WITH NPR425
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR425=PRETH
   
      SEEK '431'
      NPR431=NPR432+NPR433+NPR434+NPR435+NPR436+NPR437
         
         IF NPR431>0
            REPLACE PRETH WITH NPR431
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR431=PRETH

*---------------------------------
      SEEK '438'
      NPR438=NPR425-NPR431
         
         IF NPR438>0
            REPLACE PRETH WITH NPR438
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR438=PRETH

*----------------------------
      SEEK '439'
      NPR439=NPR431-NPR425   
               
         IF NPR439>0
            REPLACE PRETH WITH NPR439
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR439=PRETH

 
      SEEK '440'
      NPR440=NPR401+NPR413+NPR425
         
         IF NPR440>0
            REPLACE PRETH WITH NPR440
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR440=PRETH
    
      SEEK '441'
      NPR441=NPR405+NPR419+NPR431

         
         IF NPR441>0
            REPLACE PRETH WITH NPR441
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR441=PRETH
*----------------------------
      SEEK '442'
      NPR442=NPR440-NPR441
                        
         
         IF NPR442>0
            REPLACE PRETH WITH NPR442
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR442=PRETH

 *-----------------------
      SEEK '443'
      NPR443=NPR441-NPR440
                     
         IF NPR443>0
            REPLACE PRETH WITH NPR443
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR443=PRETH
*-----------------------
        SEEK '447'
      NPR447=NPR442-NPR443+NPR444+NPR445-NPR446
                      
         
         IF NPR447>0
            REPLACE PRETH WITH NPR447
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR447=PRETH
   POP KEY  
   SET ORDER TO 
ENDPROC


PROCEDURE TOKPRE
   PARAMETERS MDDAT0,MDDAT1,MCIFRE
   PUSH KEY CLEAR

   SET EXACT OFF
         SELECT BTG
*         SET ORDER TO 1
   DO idel WITH (kkockax)
   DO idel WITH (kkockax2)
   DO idel WITH (kkockax3)
   SET DEFAULT TO &MDATA02
      USE NOVAPUT IN 0
      SELECT NOVAPUT
      MPUT=ALLTRIM(PUTANJA)+'\'
      USE
      Mnal=MPUT+'NAL'+'.DBF'      
         USE &MNAL IN 0 ORDER 1 ALIAS NAL
         SELECT NAL    
         TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK=MDDAT0
         TOTAL ON KONTO TO &KKOCKA2 FIELDS DUG,POT FOR DATDOK>MDDAT0.AND.DATDOK<=MDDAT1
         TOTAL ON KONTO TO &KKOCKA3 FIELDS DUG,POT FOR DATDOK>=MDDAT0.AND.DATDOK<=MDDAT1
         SELECT NAL
         USE
         SET DEFAULT TO &MDATA02K
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
         MB402=0
         MB402=MB402+BILTOKPOT3('200')
         MB402=MB402+BILTOKPOT3('201')
         MB402=MB402+BILTOKPOT3('202')
         MB402=MB402+BILTOKPOT3('203')
         MB402=MB402+BILTOKPOT3('204')
         MB402=MB402+BILTOKPOT3('205')
         MB402=MB402+BILTOKPOT3('206')
         MB402=MB402+BILTOKPOT3('210')
         MB402=MB402+BILTOKPOT3('211')
         MB402=MB402+BILTOKPOT3('212')
         MB402=MB402+BILTOKPOT3('218')
         MB402=MB402+BILTOKPOT3('430')
         
         *----------403----------------------
         MB403=0
         MB403=MB403+BILTOKPOT3('660')
         MB403=MB403+BILTOKPOT3('661')
         MB403=MB403+BILTOKPOT3('662')
         MB403=MB403+BILTOKSAL3('663')
         MB403=MB403+BILTOKSAL3('664')         
         MB403=MB403+BILTOKPOT3('220')         
                  
         *----------304----------------------
         MB404=0
         MB404=MB404+BILTOKPOT2('64')
         MB404=MB404+BILTOKPOT2('65')
         MB404=MB404+BILTOKPOT3('662')
         MB404=MB404+BILTOKPOT3('221')
         MB404=MB404+BILTOKPOT3('222')
         MB404=MB404+BILTOKPOT3('228')
         
         *----------306----------------------
         MB406=0
         MB406=MB406+BILTOKDUG3('431')
         MB406=MB406+BILTOKDUG3('432')
         MB406=MB406+BILTOKDUG3('433')
         MB406=MB406+BILTOKDUG3('434')
         MB406=MB406+BILTOKDUG2('435')
         MB406=MB406+BILTOKDUG2('436')         
         MB406=MB406+BILTOKDUG2('150')         
         MB406=MB406+BILTOKDUG2('151')         
         MB406=MB406+BILTOKDUG2('152')         
         MB406=MB406+BILTOKDUG2('153')         
         MB406=MB406+BILTOKDUG2('154')                                                      
         MB406=MB406+BILTOKDUG2('155')         
         
         *----------407----------------------
         MB407=0
         MB407=MB407+BILTOKDUG2('45')
         
         
         *----------408----------------------
         MB408=0
         MB408=MB408+BILTOKDUG3('460')
         MB408=MB408+BILTOKDUG3('562')         
         
         *----------409----------------------
         MB409=0
         MB409=MB409+BILTOKDUG3('481')
         
         *----------410----------------------
         MB410=0
         MB410=MB410+BILTOKDUG2('48')
         MB410=MB410-BILTOKDUG3('481')
         
         *----------314----------------------
         MB414=0
         MB414=MB414+BILTOKDUG3('030')
         MB414=MB414+BILTOKDUG3('031')
         MB414=MB414+BILTOKDUG3('032')
         MB414=MB414+BILTOKPOT3('672')
         
         *----------415----------------------
         MB415=0
         MB415=MB415+BILTOKPOT3('020')
         MB415=MB415-BILTOKPOT3('021')
         MB415=MB415-BILTOKPOT3('022')
         MB415=MB415-BILTOKPOT3('023')
                           
         
         *----------46----------------------
         MB416=0
         MB416=MB416+BILTOKPOT3('040')
         MB416=MB416+BILTOKPOT3('041')
         MB416=MB416+BILTOKPOT3('042')
         MB416=MB416+BILTOKPOT3('043')
         MB416=MB416+BILTOKPOT3('044')
         MB416=MB416+BILTOKPOT3('045')
         MB416=MB416+BILTOKPOT3('046')
         MB416=MB416+BILTOKPOT3('047')
         MB416=MB416+BILTOKPOT3('048')
         MB416=MB416+BILTOKPOT2('23')
         

         SELECT KOCKA2
         
         MB420=0
         MB420=MB420+BILTOKSAL2P('300')
         MB420=MB420+BILTOKSAL2P('301')
         
         SELECT KOCKA2
         MB420=MB420-BILTOKSAL2('30')
         MB420=MB420-BILTOKSAL2('31')
         MB420=MB420-BILTOKSAL3('320')
         
         SELECT KOCKA3
         
         MB421=0
         MB421=MB421+BILTOKSAL3P('414')
         MB421=MB421+BILTOKSAL3P('415')
         MB421=MB421+BILTOKSAL3P('420')
         MB421=MB421+BILTOKSAL3P('421')
         MB421=MB421+BILTOKSAL3P('422')
         MB421=MB421+BILTOKSAL3P('423')
         MB421=MB421+BILTOKSAL3P('424')
         
         SELECT KOCKA3
         
         MB421=MB421-BILTOKSAL3P('414')
         MB421=MB421-BILTOKSAL3P('415')
         MB421=MB421-BILTOKSAL3P('420')
         MB421=MB421-BILTOKSAL3P('421')
         MB421=MB421-BILTOKSAL3P('422')
         MB421=MB421-BILTOKSAL3P('423')
         MB421=MB421-BILTOKSAL3P('424')
         
         
         SELECT KOCKA3
         
         MB422=0
         MB422=MB422+BILTOKSAL3P('419')
         MB422=MB422+BILTOKSAL3P('425')
         MB422=MB422+BILTOKSAL3P('426')
         MB422=MB422+BILTOKSAL3P('427')
         MB422=MB422+BILTOKSAL3P('428')
         MB422=MB422+BILTOKSAL3P('429')
         
         SELECT KOCKA3
         
         MB422=MB422-BILTOKSAL3P('419')
         MB422=MB422-BILTOKSAL3P('425')
         MB422=MB422-BILTOKSAL3P('426')
         MB422=MB422-BILTOKSAL3P('427')
         MB422=MB422-BILTOKSAL3P('428')
         MB422=MB422-BILTOKSAL3P('429')


         SELECT KOCKA3
         
         MB423=0
         MB423=MB423+BILTOKSAL3('037')
         MB423=MB423+BILTOKSAL3('237')

         SELECT KOCKA2
         

        *------------426
         SELECT KOCKA2
         MB427=0
         MB427=MB427+BILTOKSAL3P('414')
         MB427=MB427+BILTOKSAL3P('415')

         *------428----
         SELECT KOCKA2
         
         MB428=0
         MB428=MB428+BILTOKSAL3P('420')
         MB428=MB428+BILTOKSAL3P('421')
         MB428=MB428+BILTOKSAL3P('422')
         MB428=MB428+BILTOKSAL3P('423')
         MB428=MB428+BILTOKSAL3P('424')



         *------429----
         SELECT KOCKA2
         
         MB429=0
         MB429=MB429+BILTOKSAL3P('419')

         *------430--
         SELECT KOCKA2
         
         MB430=0
         MB430=MB430+BILTOKSAL3P('499')
         
         
         SELECT KOCKA2
         *----433-----------
         MB433=0
         MB433=MB433+BILTOKDUG3('414')
         MB433=MB433+BILTOKDUG3('415')
         MB433=MB433-BILTOKPOT3('414')
         MB433=MB433-BILTOKPOT3('415')
         

         *----434-----------
         MB434=0
         MB434=MB434+BILTOKDUG3('420')
         MB434=MB434+BILTOKDUG3('421')
         MB434=MB434+BILTOKDUG3('422')
         MB434=MB434+BILTOKDUG3('423')
         MB434=MB434-BILTOKPOT3('420')
         MB434=MB434-BILTOKPOT3('421')
         MB434=MB434-BILTOKPOT3('422')
         MB434=MB434-BILTOKPOT3('423')

         SELECT KOCKA2
         *----435-----------
         MB435=0
         MB435=MB435+BILTOKDUG3('419')
         MB435=MB435+BILTOKDUG3('429')
         MB435=MB435-BILTOKPOT3('419')
         MB435=MB435-BILTOKPOT3('429')


         SELECT KOCKA2
         *----436-----------
         MB436=0
         MB436=MB436+BILTOKDUG3('416')

         IF MCIFRE='H'
            MB402=ROUND(MB402/1000,0)
            MB403=ROUND(MB403/1000,0)
            MB404=ROUND(MB404/1000,0)
            MB406=ROUND(MB406/1000,0)
            MB407=ROUND(MB407/1000,0)
            MB408=ROUND(MB408/1000,0)
            MB409=ROUND(MB409/1000,0)
            MB410=ROUND(MB410/1000,0)
            MB414=ROUND(MB414/1000,0)
            MB415=ROUND(MB415/1000,0)
            MB416=ROUND(MB416/1000,0)
            MB427=ROUND(MB427/1000,0)
            MB428=ROUND(MB428/1000,0)
            MB430=ROUND(MB430/1000,0)
            MB433=ROUND(MB433/1000,0)
            MB434=ROUND(MB434/1000,0)
            MB435=ROUND(MB435/1000,0)
            MB436=ROUND(MB436/1000,0)
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
         
         LOCATE FOR AOP='402'
         IF MB402>0
            REPLACE PRETH WITH MB402
         ENDIF
         LOCATE FOR AOP='403'
         IF MB403>0
            REPLACE PRETH WITH MB403
         ENDIF
         LOCATE FOR AOP='404'
         IF MB404>0
            REPLACE PRETH WITH MB404
         ENDIF
         LOCATE FOR AOP='406'
         IF MB406>0
            REPLACE PRETH WITH MB406
         ENDIF
         LOCATE FOR AOP='407'
         IF MB407>0
            REPLACE PRETH WITH MB407
         ENDIF
         LOCATE FOR AOP='408'
         IF MB408>0
            REPLACE PRETH WITH MB408
         ENDIF
         LOCATE FOR AOP='409'
         IF MB409>0
            REPLACE PRETH WITH MB409
         ENDIF
         LOCATE FOR AOP='410'
         IF MB410>0
            REPLACE PRETH WITH MB410
         ENDIF
         LOCATE FOR AOP='414'
         IF MB414>0
            REPLACE PRETH WITH MB414
         ENDIF
         LOCATE FOR AOP='415'
         IF MB415>0
            REPLACE PRETH WITH MB415
         ENDIF
         LOCATE FOR AOP='416'
         IF MB416>0
            REPLACE PRETH WITH MB416
         ENDIF
         LOCATE FOR AOP='427'
         IF MB427>0
            REPLACE PRETH WITH MB427
         ENDIF
         LOCATE FOR AOP='428'
         IF MB428>0
            REPLACE PRETH WITH MB428
         ENDIF
         LOCATE FOR AOP='430'
         IF MB430>0
            REPLACE PRETH WITH MB430
         ENDIF
         LOCATE FOR AOP='433'
         IF MB433>0
            REPLACE PRETH WITH MB433
         ENDIF
         LOCATE FOR AOP='434'
         IF MB434>0
            REPLACE PRETH WITH MB433
         ENDIF
         LOCATE FOR AOP='435'
         IF MB435>0
            REPLACE PRETH WITH MB433
         ENDIF
         LOCATE FOR AOP='436'
         IF MB436>0
            REPLACE PRETH WITH MB436
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