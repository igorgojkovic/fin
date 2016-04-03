PROCEDURE TOKPUNI

PUSH KEY CLEAR

IF RECCOUNT()<1
     DO PUNINTOK WITH  '   ','     A.TOKOVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI                       ',' '
     DO PUNINTOK WITH  '301','  I.PRILIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI(1 DO 3)                 ','*'
     DO PUNINTOK WITH  '302','     1.Prodaja i primljeni avansi                                    ','*'
     DO PUNINTOK WITH  '303','     2.Primljene kamate iz poslovnih aktivnosti                      ','*'
     DO PUNINTOK WITH  '304','     2.Ostali prilivi iz redovnog poslovanja                         ','*'
     DO PUNINTOK WITH  '305','  II.ODLIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI (1 DO 5)                ','*'
     DO PUNINTOK WITH  '306','     1.Isplate dobavljaèima i dati avansi                            ','*'
     DO PUNINTOK WITH  '307','     2.Zarade,naknade zarada i ostali lièni rashodi                  ','*'
     DO PUNINTOK WITH  '308','     3.Plaæene kamate                                                ','*'
     DO PUNINTOK WITH  '309','     4.Porez na dobitak                                              ','*'
     DO PUNINTOK WITH  '310','     5.Plaæanja po osnovu ostalih javnih prihoda                     ','*'
     DO PUNINTOK WITH  '311','  III.NETO PRILIV GOTOVINE IZ POSLOVNIH AKTIVNOSTI(I-II)             ','*'
     DO PUNINTOK WITH  '312','  IV .NETO ODLIV  GOTOVINE IZ POSLOVNIH AKTIVNOSTI(II-I)             ','*'
     DO PUNINTOK WITH  '   ','     B.TOKOVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA                    ',' '
     DO PUNINTOK WITH  '313','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 5)              ','*'
     DO PUNINTOK WITH  '314','     1.Prodaja akcija i udela (neto prilivi)                         ','*'
     DO PUNINTOK WITH  '315','     2.Prodaja nematerijalnih ulaganja,nekretnina,postrojenja        ',' '
     DO PUNINTOK WITH  '   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '316','     3.Ostali finansijski plasmani (neto prilivi)                    ','*'
     DO PUNINTOK WITH  '317','     4.Primljene kamate iz aktivnosti investiranja                   ','*'
     DO PUNINTOK WITH  '318','     5.Primljene dividende                                           ','*'
     DO PUNINTOK WITH  '319','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 3)             ','*'
     DO PUNINTOK WITH  '320','     1.Kupovina akcija i udela (neto odlivi)                         ','*'
     DO PUNINTOK WITH  '321','     2.Kupovina nematerijalnih ulaganja,nekretnina,postrojenja       ',' '
     DO PUNINTOK WITH  '   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '322','     3.Ostali finansijski plasmani (neto odlivi)                     ','*'
     DO PUNINTOK WITH  '323','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '324','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '   ','     V.TOKOVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA                    ',' '
     DO PUNINTOK WITH  '325','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 3)              ','*'
     DO PUNINTOK WITH  '326','     1.Uveæanje osnovnog kapitala                                    ','*'
     DO PUNINTOK WITH  '327','     2.Dugoroèni i kratkoroèni krediti(neto prilivi)                 ','*'
     DO PUNINTOK WITH  '328','     3.Ostale dugoroène i kratkoroène obaveze                        ','*'
     DO PUNINTOK WITH  '329','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 4)             ','*'
     DO PUNINTOK WITH  '330','     1.Otkup sopstvenih akcija i udela                               ','*'
     DO PUNINTOK WITH  '331','     2.Dugoroèni i kratkoroèni krediti i ostale obaveze (neto odlivi)','*'
     DO PUNINTOK WITH  '332','     3.Finansijski lizing                                            ','*'
     DO PUNINTOK WITH  '333','     4.Isplaæene dividende                                           ','*'
     DO PUNINTOK WITH  '334','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '335','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '336','     G.SVEGA PRILIVI GOTOVINE (301+313+325)                          ','*'
     DO PUNINTOK WITH  '337','     D.SVEGA ODLIVI  GOTOVINE (305+319+329)                          ','*'
     DO PUNINTOK WITH  '338','     Ð.NETO PRILIV GOTOVINE (336-337)                                ','*'
     DO PUNINTOK WITH  '339','     E.NETO ODLIV  GOTOVINE (337-336)                                ','*'
     DO PUNINTOK WITH  '340','     Ž.GOTOVINA NA POÈETKU OBRAÈUNSKOG PERIODA                       ','*'
     DO PUNINTOK WITH  '341','     Z.POZITIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '342','     I.NEGATIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '343','     J.GOTOVINA NA KRAJU OBRAÈUNSKOG PERIODA (338-339+340+341-342)   ','*'

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
      SEEK '302'
      NP302=PRETH
      NN302=NETO
      SEEK '303'
      NP303=PRETH
      NN303=NETO
      SEEK '304'
      NP304=PRETH
      NN304=NETO

      SEEK '306'
      NP306=PRETH
      NN306=NETO
      SEEK '307'
      NP307=PRETH
      NN307=NETO
      SEEK '308'
      NP308=PRETH
      NN308=NETO
      SEEK '309'
      NP309=PRETH
      NN309=NETO
      SEEK '310'
      NP310=PRETH
      NN310=NETO

      SEEK '314'
      NP314=PRETH
      NN314=NETO
      SEEK '315'
      NP315=PRETH
      NN315=NETO
      SEEK '316'
      NP316=PRETH
      NN316=NETO
      SEEK '317'
      NP317=PRETH
      NN317=NETO
      SEEK '318'
      NP318=PRETH
      NN318=NETO

      SEEK '320'
      NP320=PRETH
      NN320=NETO
      SEEK '321'
      NP321=PRETH
      NN321=NETO
      SEEK '322'
      NP322=PRETH
      NN322=NETO

      SEEK '326'
      NP326=PRETH
      NN326=NETO
      SEEK '327'
      NP327=PRETH
      NN327=NETO
      SEEK '328'
      NP328=PRETH
      NN328=NETO

      SEEK '330'
      NP330=PRETH
      NN330=NETO
      SEEK '331'
      NP331=PRETH
      NN331=NETO
      SEEK '332'
      NP332=PRETH
      NN332=NETO
      SEEK '333'
      NP333=PRETH
      NN333=NETO

      SEEK '340'
      NP340=PRETH
      NN340=NETO
      SEEK '341'
      NP341=PRETH
      NN341=NETO
      SEEK '342'
      NP342=PRETH
      NN342=NETO

      SEEK '301'
      NP301=NP302+NP303+NP304
      NN301=NN302+NN303+NN304
      
         REPLACE PRETH WITH NP301
         REPLACE NETO  WITH NN301
    

      SEEK '305'
      NP305=NP306+NP307+NP308+NP309+NP310
      NN305=NN306+NN307+NN308+NN309+NN310
     
         REPLACE PRETH WITH NP305
         REPLACE NETO  WITH NN305
    
      SEEK '311'
      NP311=NP301-NP305
      NN311=NN301-NN305
    
         IF NP311>0
            REPLACE PRETH WITH NP311
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN311>0
            REPLACE NETO WITH NN311
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NP311=PRETH
         NN311=NETO
  
      SEEK '312'
      NP312=NP305-NP301
      NN312=NN305-NN301
        IF NP312>0
            REPLACE PRETH WITH NP312
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN312>0
            REPLACE NETO WITH NN312
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NP312=PRETH
         NN312=NETO
    
*'''''''''''''''''''''''''''''''''''''''''''''''''''''''

      SEEK '313'
      NP313=NP315+NP316+NP317+NP318+NP314
      NN313=NN315+NN316+NN317+NN318+NN314
   
         REPLACE PRETH WITH NP313
         REPLACE NETO  WITH NN313
 
      SEEK '319'
      NP319=NP320+NP321+NP322
      NN319=NN320+NN321+NN322
       
         REPLACE PRETH WITH NP319
         REPLACE NETO  WITH NN319
  
      SEEK '323'
      NP323=NP313-NP319
      NN323=NN313-NN319
         IF NP313>0
            REPLACE PRETH WITH NP323
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN323>0
            REPLACE NETO WITH NN323
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NP325=PRETH
         NN325=NETO
   
      SEEK '324'
      NP324=NP319-NP313
      NN324=NN319-NN313
   
         IF NP324>0
            REPLACE PRETH WITH NP324
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP324=PRETH
         IF NN324>0
            REPLACE NETO WITH NN324
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NN324=NETO
 
      SEEK '325'
      NP325=NP326+NP327+NP328
      NN325=NN326+NN327+NN328
    
         REPLACE PRETH WITH NP325
         REPLACE NETO  WITH NN325
   
      SEEK '329'
      NP329=NP330+NP331+NP332+NP333
      NN329=NN330+NN331+NN332+NN333
     
         REPLACE PRETH WITH NP329
         REPLACE NETO  WITH NN329
 

      SEEK '334'
      NP334=NP325-NP329
      NN334=NN325-NN329
 
         IF NP334>0
            REPLACE PRETH WITH NP334
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP334=PRETH
         IF NN334>0
            REPLACE NETO  WITH NN334
         ELSE
            REPLACE NETO  WITH 0
         ENDIF
         NN334=NETO


      SEEK '335'
      NP335=NP329-NP325
      NN335=NN329-NN325
   
         IF NP335>0
            REPLACE PRETH WITH NP335
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP335=PRETH
         IF NN335>0
            REPLACE NETO  WITH NN335
         ELSE
            REPLACE NETO  WITH 0
         ENDIF
         NN335=NETO
 
      SEEK '336'
      NP336=NP301+NP313+NP325
      NN336=NN301+NN313+NN325
   
         REPLACE PRETH WITH NP336
         REPLACE NETO  WITH NN336
    
      SEEK '337'
      NP337=NP305+NP319+NP329
      NN337=NN305+NN319+NN329

         REPLACE PRETH WITH NP337
         REPLACE NETO  WITH NN337
   
      SEEK '338'
      NP338=NP336-NP337
      NN338=NN336-NN337
 
         IF NP338>0
            REPLACE PRETH WITH NP338
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP338=PRETH
         IF NN338>0
            REPLACE NETO  WITH NN338
         ELSE
            REPLACE NETO  WITH 0
         ENDIF
         NN338=NETO
 
      SEEK '339'
      NP339=NP337-NP336
      NN339=NN337-NN336
   
         IF NP339>0
            REPLACE PRETH WITH NP339
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP339=PRETH
         IF NN339>0
            REPLACE NETO WITH NN339
         ELSE
            REPLACE NETO WITH 0
         ENDIF
         NN339=NETO
   
        SEEK '343'
      NP343=NP338-NP339+NP340+NP341-NP342
      NN343=NN338-NN339+NN340+NN341-NN342
    
         IF NP343>0
            REPLACE PRETH WITH NP343
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN343>0
            REPLACE NETO WITH NN343
         ELSE
            REPLACE NETO WITH 0
         ENDIF
   POP KEY  
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
         USE NAL IN 0 ORDER 1
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
         
         *----------302----------------------
         MB302=0
         MB302=MB302+BILTOKPOT3('200')
         MB302=MB302+BILTOKPOT3('201')
         MB302=MB302+BILTOKPOT3('202')
         MB302=MB302+BILTOKPOT3('203')
         MB302=MB302+BILTOKPOT3('430')
         MB302=MB302+BILTOKPOT3('602')
         MB302=MB302+BILTOKPOT3('612')
         
         *----------303----------------------
         MB303=0
         MB303=MB303+BILTOKPOT3('660')
         MB303=MB303+BILTOKPOT3('661')
         MB303=MB303+BILTOKPOT3('662')
         MB303=MB303+BILTOKSAL3('220')
         
         *----------304----------------------
         MB304=0
         MB304=MB304+BILTOKPOT2('64')
         MB304=MB304+BILTOKPOT2('65')
         MB304=MB304+BILTOKPOT3('662')
         MB304=MB304+BILTOKSAL3('221')
         MB304=MB304+BILTOKSAL3('222')
         MB304=MB304+BILTOKSAL3('229')
         
         *----------306----------------------
         MB306=0
         MB306=MB306+BILTOKDUG3('431')
         MB306=MB306+BILTOKDUG3('432')
         MB306=MB306+BILTOKDUG3('433')
         MB306=MB306+BILTOKDUG3('434')
         MB306=MB306+BILTOKDUG2('15')
         
         *----------307----------------------
         MB307=0
         MB307=MB307+BILTOKDUG2('45')
         
         
         *----------308----------------------
         MB308=0
         MB308=MB308+BILTOKDUG3('460')
         
         
         *----------309----------------------
         MB309=0
         MB309=MB309+BILTOKDUG3('481')
         
         *----------310----------------------
         MB310=0
         MB310=MB310+BILTOKDUG2('48')
         MB310=MB310-BILTOKDUG3('481')
         
         *----------314----------------------
         MB314=0
         MB314=MB314+BILTOKDUG3('030')
         MB314=MB314+BILTOKDUG3('031')
         MB314=MB314+BILTOKDUG3('032')
         MB314=MB314+BILTOKPOT3('672')
         
         *----------315----------------------
         MB315=0
         MB315=MB315+BILTOKPOT3('670')
         MB315=MB315-BILTOKDUG3('570')
         
         *----------316----------------------
         MB316=0
         MB316=MB316+BILTOKDUG3('032')
         MB316=MB316+BILTOKDUG3('033')
         MB316=MB316+BILTOKDUG3('034')
         MB316=MB316+BILTOKDUG3('035')
         MB316=MB316+BILTOKDUG3('036')
         MB316=MB316+BILTOKDUG3('037')
         MB316=MB316+BILTOKDUG2('23')
         
         *----------317----------------------
         MB317=0
         MB317=MB317+BILTOKPOT3('220')

         SELECT KOCKA3
         
         MB326=0
         MB326=MB326+BILTOKSAL2P('30')
         MB326=MB326+BILTOKSAL2P('31')
         MB326=MB326+BILTOKSAL3P('320')
         
         SELECT KOCKA
         MB326=MB326-BILTOKSAL2('30')
         MB326=MB326-BILTOKSAL2('31')
         MB326=MB326-BILTOKSAL3('320')
         
         SELECT KOCKA3
         
         MB327=0
         MB327=MB327+BILTOKSAL3P('414')
         MB327=MB327+BILTOKSAL3P('415')
         MB327=MB327+BILTOKSAL3P('420')
         MB327=MB327+BILTOKSAL3P('421')
         MB327=MB327+BILTOKSAL3P('422')
         MB327=MB327+BILTOKSAL3P('423')
         MB327=MB327+BILTOKSAL3P('424')
         
         SELECT KOCKA
         
         MB327=MB327-BILTOKSAL3P('414')
         MB327=MB327-BILTOKSAL3P('415')
         MB327=MB327-BILTOKSAL3P('420')
         MB327=MB327-BILTOKSAL3P('421')
         MB327=MB327-BILTOKSAL3P('422')
         MB327=MB327-BILTOKSAL3P('423')
         MB327=MB327-BILTOKSAL3P('424')
         
         
         SELECT KOCKA3
         
         MB328=0
         MB328=MB328+BILTOKSAL3P('419')
         MB328=MB328+BILTOKSAL3P('425')
         MB328=MB328+BILTOKSAL3P('426')
         MB328=MB328+BILTOKSAL3P('427')
         MB328=MB328+BILTOKSAL3P('428')
         MB328=MB328+BILTOKSAL3P('429')
         
         SELECT KOCKA
         
         MB328=MB328-BILTOKSAL3P('419')
         MB328=MB328-BILTOKSAL3P('425')
         MB328=MB328-BILTOKSAL3P('426')
         MB328=MB328-BILTOKSAL3P('427')
         MB328=MB328-BILTOKSAL3P('428')
         MB328=MB328-BILTOKSAL3P('429')


         SELECT KOCKA3
         
         MB330=0
         MB330=MB330+BILTOKSAL3('037')
         MB330=MB330+BILTOKSAL3('237')

         SELECT KOCKA
         
         MB330=MB330-BILTOKSAL3('037')
         MB330=MB330-BILTOKSAL3('237')

         SELECT KOCKA3
         
         MB331=0
         MB331=MB331+BILTOKSAL3P('414')
         MB331=MB331+BILTOKSAL3P('419')
         MB331=MB331+BILTOKSAL3P('420')
         MB331=MB331+BILTOKSAL3P('421')
         MB331=MB331+BILTOKSAL3P('422')
         MB331=MB331+BILTOKSAL3P('423')
         MB331=MB331+BILTOKSAL3P('424')
         MB331=MB331+BILTOKSAL3P('425')
         MB331=MB331+BILTOKSAL3P('426')
         MB331=MB331+BILTOKSAL3P('427')
         MB331=MB331+BILTOKSAL3P('428')
         MB331=MB331+BILTOKSAL3P('429')


         SELECT KOCKA
         
         MB331=0
         MB331=MB331-BILTOKSAL3P('414')
         MB331=MB331-BILTOKSAL3P('419')
         MB331=MB331-BILTOKSAL3P('420')
         MB331=MB331-BILTOKSAL3P('421')
         MB331=MB331-BILTOKSAL3P('422')
         MB331=MB331-BILTOKSAL3P('423')
         MB331=MB331-BILTOKSAL3P('424')
         MB331=MB331-BILTOKSAL3P('425')
         MB331=MB331-BILTOKSAL3P('426')
         MB331=MB331-BILTOKSAL3P('427')
         MB331=MB331-BILTOKSAL3P('428')
         MB331=MB331-BILTOKSAL3P('429')


         SELECT KOCKA3
         
         MB332=0
         MB332=MB332+BILTOKSAL3P('419')

         SELECT KOCKA
         
         MB332=0
         MB332=MB332-BILTOKSAL3P('419')

         SELECT KOCKA2
         
         MB333=0
         MB333=MB333+BILTOKDUG3('461')

         IF MCIFRE='H'
            MB302=ROUND(MB302/1000,0)
            MB303=ROUND(MB303/1000,0)
            MB304=ROUND(MB304/1000,0)
            MB306=ROUND(MB306/1000,0)
            MB307=ROUND(MB307/1000,0)
            MB308=ROUND(MB308/1000,0)
            MB309=ROUND(MB309/1000,0)
            MB310=ROUND(MB310/1000,0)
            MB314=ROUND(MB314/1000,0)
            MB315=ROUND(MB315/1000,0)
            MB316=ROUND(MB316/1000,0)
            MB317=ROUND(MB317/1000,0)
            MB326=ROUND(MB326/1000,0)
            MB327=ROUND(MB327/1000,0)
            MB328=ROUND(MB328/1000,0)
            MB330=ROUND(MB330/1000,0)
            MB331=ROUND(MB331/1000,0)
            MB332=ROUND(MB332/1000,0)
            MB333=ROUND(MB333/1000,0)
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
         
         LOCATE FOR AOP='302'
         IF MB302>0
            REPLACE NETO WITH MB302
         ENDIF
         LOCATE FOR AOP='303'
         IF MB303>0
            REPLACE NETO WITH MB303
         ENDIF
         LOCATE FOR AOP='304'
         IF MB304>0
            REPLACE NETO WITH MB304
         ENDIF
         LOCATE FOR AOP='306'
         IF MB306>0
            REPLACE NETO WITH MB306
         ENDIF
         LOCATE FOR AOP='307'
         IF MB307>0
            REPLACE NETO WITH MB307
         ENDIF
         LOCATE FOR AOP='308'
         IF MB308>0
            REPLACE NETO WITH MB308
         ENDIF
         LOCATE FOR AOP='309'
         IF MB309>0
            REPLACE NETO WITH MB309
         ENDIF
         LOCATE FOR AOP='310'
         IF MB310>0
            REPLACE NETO WITH MB310
         ENDIF
         LOCATE FOR AOP='314'
         IF MB314>0
            REPLACE NETO WITH MB314
         ENDIF
         LOCATE FOR AOP='315'
         IF MB315>0
            REPLACE NETO WITH MB315
         ENDIF
         LOCATE FOR AOP='316'
         IF MB316>0
            REPLACE NETO WITH MB316
         ENDIF
         LOCATE FOR AOP='317'
         IF MB317>0
            REPLACE NETO WITH MB317
         ENDIF
         LOCATE FOR AOP='326'
         IF MB326>0
            REPLACE NETO WITH MB326
         ENDIF
         LOCATE FOR AOP='327'
         IF MB327>0
            REPLACE NETO WITH MB327
         ENDIF
         LOCATE FOR AOP='328'
         IF MB328>0
            REPLACE NETO WITH MB328
         ENDIF
         LOCATE FOR AOP='330'
         IF MB330>0
            REPLACE NETO WITH MB330
         ENDIF
         LOCATE FOR AOP='331'
         IF MB331>0
            REPLACE NETO WITH MB331
         ENDIF
         LOCATE FOR AOP='332'
         IF MB332>0
            REPLACE NETO WITH MB332
         ENDIF
         LOCATE FOR AOP='333'
         IF MB333>0
            REPLACE NETO WITH MB333
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