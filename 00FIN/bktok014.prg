PROCEDURE TOKPUNI

PUSH KEY CLEAR

IF RECCOUNT()<1
     DO PUNINTOK WITH  ' 1','   ','     A.TOKOVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI                       ',' '
     DO PUNINTOK WITH  ' 2','301','  I.PRILIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI(1 DO 3)                 ','*'
     DO PUNINTOK WITH  ' 3','302','     1.Prodaja i primljeni avansi                                    ','*'
     DO PUNINTOK WITH  ' 4','303','     2.Primljene kamate iz poslovnih aktivnosti                      ','*'
     DO PUNINTOK WITH  ' 5','304','     2.Ostali prilivi iz redovnog poslovanja                         ','*'
     DO PUNINTOK WITH  ' 6','305','  II.ODLIVI GOTOVINE IZ POSLOVNIH AKTIVNOSTI (1 DO 5)                ','*'
     DO PUNINTOK WITH  ' 7','306','     1.Isplate dobavljaèima i dati avansi                            ','*'
     DO PUNINTOK WITH  ' 8','307','     2.Zarade,naknade zarada i ostali lièni rashodi                  ','*'
     DO PUNINTOK WITH  ' 9','308','     3.Plaæene kamate                                                ','*'
     DO PUNINTOK WITH  '10','309','     4.Porez na dobitak                                              ','*'
     DO PUNINTOK WITH  '11','310','     5.Plaæanja po osnovu ostalih javnih prihoda                     ','*'
     DO PUNINTOK WITH  '12','311','  III.NETO PRILIV GOTOVINE IZ POSLOVNIH AKTIVNOSTI(I-II)             ','*'
     DO PUNINTOK WITH  '13','312','  IV .NETO ODLIV  GOTOVINE IZ POSLOVNIH AKTIVNOSTI(II-I)             ','*'
     DO PUNINTOK WITH  '14','   ','     B.TOKOVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA                    ',' '
     DO PUNINTOK WITH  '15','313','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 5)              ','*'
     DO PUNINTOK WITH  '16','314','     1.Prodaja akcija i udela (neto prilivi)                         ','*'
     DO PUNINTOK WITH  '17','315','     2.Prodaja nematerijalnih ulaganja,nekretnina,postrojenja        ',' '
     DO PUNINTOK WITH  '  ','   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '18','316','     3.Ostali finansijski plasmani (neto prilivi)                    ','*'
     DO PUNINTOK WITH  '19','317','     4.Primljene kamate iz aktivnosti investiranja                   ','*'
     DO PUNINTOK WITH  '20','318','     5.Primljene dividende                                           ','*'
     DO PUNINTOK WITH  '21','319','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(1 DO 3)             ','*'
     DO PUNINTOK WITH  '22','320','     1.Kupovina akcija i udela (neto odlivi)                         ','*'
     DO PUNINTOK WITH  '23','321','     2.Kupovina nematerijalnih ulaganja,nekretnina,postrojenja       ',' '
     DO PUNINTOK WITH  '  ','   ','       opreme i bioloških sredstava                                  ','*'
     DO PUNINTOK WITH  '24','322','     3.Ostali finansijski plasmani (neto odlivi)                     ','*'
     DO PUNINTOK WITH  '25','323','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '26','324','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI INVESTIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '27','   ','     V.TOKOVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA                    ',' '
     DO PUNINTOK WITH  '28','325','  I.PRILIVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 3)              ','*'
     DO PUNINTOK WITH  '29','326','     1.Uveæanje osnovnog kapitala                                    ','*'
     DO PUNINTOK WITH  '30','327','     2.Dugoroèni i kratkoroèni krediti(neto prilivi)                 ','*'
     DO PUNINTOK WITH  '31','328','     3.Ostale dugoroène i kratkoroène obaveze                        ','*'
     DO PUNINTOK WITH  '32','329','  II.ODLIVI  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(1 DO 4)             ','*'
     DO PUNINTOK WITH  '33','330','     1.Otkup sopstvenih akcija i udela                               ','*'
     DO PUNINTOK WITH  '34','331','     2.Dugoroèni i kratkoroèni krediti i ostale obaveze (neto odlivi)','*'
     DO PUNINTOK WITH  '35','332','     3.Finansijski lizing                                            ','*'
     DO PUNINTOK WITH  '36','333','     4.Isplaæene dividende                                           ','*'
     DO PUNINTOK WITH  '37','334','  III.NETO PRILIV GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(I-II)          ','*'
     DO PUNINTOK WITH  '38','335','  IV .NETO ODLIV  GOTOVINE IZ AKTIVNOSTI FINANSIRANJA(II-I)          ','*'
     DO PUNINTOK WITH  '39','336','     G.SVEGA PRILIVI GOTOVINE (301+313+325)                          ','*'
     DO PUNINTOK WITH  '40','337','     D.SVEGA ODLIVI  GOTOVINE (305+319+329)                          ','*'
     DO PUNINTOK WITH  '41','338','     Ð.NETO PRILIV GOTOVINE (336-337)                                ','*'
     DO PUNINTOK WITH  '42','339','     E.NETO ODLIV  GOTOVINE (337-336)                                ','*'
     DO PUNINTOK WITH  '43','340','     Ž.GOTOVINA NA POÈETKU OBRAÈUNSKOG PERIODA                       ','*'
     DO PUNINTOK WITH  '44','341','     Z.POZITIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '45','342','     I.NEGATIVNE KURSNE RAZLIKE PO OSNOVU PRERAÈUNA GOTOVINE         ','*'
     DO PUNINTOK WITH  '46','343','     J.GOTOVINA NA KRAJU OBRAÈUNSKOG PERIODA (338-339+340+341-342)   ','*'

ENDIF                                                                                   
POP KEY
ENDPROC

procedure PUNINTOK
PARAMETERS mrednibr,MAOP,mopis,MRLINI
PUSH KEY CLEAR

   APPEND BLANK
      replace rednibr WITH mrednibr
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
      NP302=REALKV
      NPR302=PRETH
      NPL302=PLAN
      NPK302=PLANKV

      SEEK '303'
      NP303=REALKV
      NPR303=PRETH
      NPL303=PLAN
      NPK303=PLANKV
      
      
      
      SEEK '304'
      NP304=REALKV
      NPR304=PRETH
      NPL304=PLAN
      NPK304=PLANKV

      SEEK '306'
      NP306=REALKV
      NPR306=PRETH
      NPL306=PLAN
      NPK306=PLANKV

      SEEK '307'
      NP307=REALKV
      NPR307=PRETH
      NPL307=PLAN
      NPK307=PLANKV

      SEEK '308'
      NP308=REALKV
      NPR308=PRETH
      NPL308=PLAN
      NPK308=PLANKV

      SEEK '309'
      NP309=REALKV
      NPR309=PRETH
      NPL309=PLAN
      NPK309=PLANKV

      SEEK '310'
      NP310=REALKV
      NPR310=PRETH
      NPL310=PLAN
      NPK310=PLANKV

      SEEK '314'
      NP314=REALKV
      NPR314=PRETH
      NPL314=PLAN
      NPK314=PLANKV

      SEEK '315'
      NP315=REALKV
      NPR315=PRETH
      NPL315=PLAN
      NPK315=PLANKV

      SEEK '316'
      NP316=REALKV
      NPR316=PRETH
      NPL316=PLAN
      NPK316=PLANKV

      SEEK '317'
      NP317=REALKV
      NPR317=PRETH
      NPL317=PLAN
      NPK317=PLANKV

      SEEK '318'
      NP318=REALKV
      NPR318=PRETH
      NPL318=PLAN
      NPK318=PLANKV

      SEEK '320'
      NP320=REALKV
      NPR320=PRETH
      NPL320=PLAN
      NPK320=PLANKV

      SEEK '321'
      NP321=REALKV
      NPR321=PRETH
      NPL321=PLAN
      NPK321=PLANKV

      SEEK '322'
      NP322=REALKV
      NPR322=PRETH
      NPL322=PLAN
      NPK322=PLANKV

      SEEK '326'
      NP326=REALKV
      NPR326=PRETH
      NPL326=PLAN
      NPK326=PLANKV

      SEEK '327'
      NP327=REALKV
      NPR327=PRETH
      NPL327=PLAN
      NPK327=PLANKV

      SEEK '328'
      NP328=REALKV
      NPR328=PRETH
      NPL328=PLAN
      NPK328=PLANKV

      SEEK '330'
      NP330=REALKV
      NPR330=PRETH
      NPL330=PLAN
      NPK330=PLANKV

      SEEK '331'
      NP331=REALKV
      NPR331=PRETH
      NPL331=PLAN
      NPK331=PLANKV

      SEEK '332'
      NP332=REALKV
      NPR332=PRETH
      NPL332=PLAN
      NPK332=PLANKV

      SEEK '333'
      NP333=REALKV
      NPR333=PRETH
      NPL333=PLAN
      NPK333=PLANKV

      SEEK '340'
      NP340=REALKV
      NPR340=PRETH
      NPL340=PLAN
      NPK340=PLANKV

      SEEK '341'
      NP341=REALKV
      NPR341=PRETH
      NPL341=PLAN
      NPK341=PLANKV

      SEEK '342'
      NP342=REALKV
      NPR342=PRETH
      NPL342=PLAN
      NPK342=PLANKV

      SEEK '301'
      NP301=NP302+NP303+NP304
      NPR301=NPR302+NPR303+NPR304
      NPL301=NPL302+NPL303+NPL304
      NPK301=NPK302+NPK303+NPK304
      
         REPLACE REALKV WITH NP301
         REPLACE PRETH  WITH NPR301
         REPLACE PLAN WITH NPL301
         REPLACE PLANKV WITH NPK301    

      SEEK '305'
      NP305=NP306+NP307+NP308+NP309+NP310
      NPR305=NPR306+NPR307+NPR308+NPR309+NPR310
      NPL305=NPL306+NPL307+NPL308+NPL309+NPL310
      NPK305=NPK306+NPK307+NPK308+NPK309+NPK310
     
         REPLACE REALKV WITH NP305
         REPLACE PRETH  WITH NPR305
         REPLACE PLAN  WITH NPL305
         REPLACE PLANKV WITH NPK305
    
      SEEK '311'
      NP311=NP301-NP305
      NPR311=NPR301-NPR305
      NPL311=NPL301-NPL305
      NPK311=NPK301-NPK305
    
         IF NP311>0
            REPLACE REALKV WITH NP311
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         IF NPR311>0
            REPLACE PRETH WITH NPR311
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP311=REALKV
         NPR311=PRETH
  
         IF NPL311>0
            REPLACE PLAN WITH NPL311
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         IF NPK311>0
            REPLACE PLANKV WITH NPK311
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL311=PLAN
         NPK311=PLANKV




      SEEK '312'
      NP312=NP305-NP301
      NPR312=NPR305-NPR301
      NPL312=NPL305-NPL301      
      NPK312=NPK305-NPK301      
      
        IF NP312>0
            REPLACE REALKV WITH NP312
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         IF NPR312>0
            REPLACE PRETH WITH NPR312
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP312=REALKV
         NPR312=PRETH
         IF NPL312>0
            REPLACE PLAN WITH NPL312
         ELSE
            REPLACE PLAN WITH 0
         ENDIF

         IF NPK312>0
            REPLACE PLANKV WITH NPK312
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL312=PLAN
         NPK312=PLANKV

    
*'''''''''''''''''''''''''''''''''''''''''''''''''''''''

      SEEK '313'
      NP313=NP315+NP316+NP317+NP318+NP314
      NPR313=NPR315+NPR316+NPR317+NPR318+NPR314
      NPL313=NPL315+NPL316+NPL317+NPL318+NPL314
      NPK313=NPK315+NPK316+NPK317+NPK318+NPK314
   
         REPLACE REALKV WITH NP313
         REPLACE PRETH  WITH NPR313
         REPLACE PLAN WITH NPL313
         REPLACE PLANKV WITH NPK313         
 
      SEEK '319'
      NP319=NP320+NP321+NP322
      NPR319=NPR320+NPR321+NPR322
      NPL319=NPL320+NPL321+NPL322
      NPK319=NPK320+NPK321+NPK322
       
         REPLACE REALKV WITH NP319
         REPLACE PRETH  WITH NPR319
         REPLACE PLAN WITH NPL319
         REPLACE PLANKV WITH NPK319         
  
      SEEK '323'
      NP323=NP313-NP319
      NPR323=NPR313-NPR319
      NPL323=NPL313-NPL319
      NPK323=NPK313-NPK319

         IF NP313>0
            REPLACE REALKV WITH NP323
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         IF NPR323>0
            REPLACE PRETH WITH NPR323
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NP325=REALKV
         NPR325=PRETH

         IF NPL313>0
            REPLACE PLAN WITH NPL323
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         IF NPK313>0
            REPLACE PLANKV WITH NPK323
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL325=PLAN
         NPK325=PLANKV
*----------------------------------------
   
      SEEK '324'
      NP324=NP319-NP313
      NPR324=NPR319-NPR313
      NPL324=NPL319-NPL313
      NPK324=NPK319-NPK313
   
         IF NP324>0
            REPLACE REALKV WITH NP324
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         IF NPR324>0
            REPLACE PRETH WITH NPR324
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NPL324>0
            REPLACE PLAN WITH NPL324
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         IF NPK324>0
            REPLACE PLANKV WITH NPK324
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NP324=REALKV
         NPR324=PRETH
         NPL324=PLAN
         NPK324=PLANKV
 *-----------------------------------
      SEEK '325'
      NP325=NP326+NP327+NP328
      NPR325=NPR326+NPR327+NPR328
      NPL325=NPL326+NPL327+NPL328
      NPK325=NPK326+NPK327+NPK328
    
         REPLACE REALKV WITH NP325
         REPLACE PRETH  WITH NPR325
         REPLACE PLAN  WITH NPL325
         REPLACE PLANKV  WITH NPK325
         
*------------------------------------            
      SEEK '329'
      NP329=NP330+NP331+NP332+NP333
      NPR329=NPR330+NPR331+NPR332+NPR333
      NPL329=NPL330+NPL331+NPL332+NPL333
      NPK329=NPK330+NPK331+NPK332+NPK333
     
         REPLACE REALKV WITH NP329
         REPLACE PRETH  WITH NPR329
         REPLACE PLAN  WITH NPL329
         REPLACE PLANKV  WITH NPK329
*----------------------------------
      SEEK '334'
      NP334=NP325-NP329
      NPR334=NPR325-NPR329
      NPL334=NPL325-NPL329
      NPK334=NPK325-NPK329
 
         IF NP334>0
            REPLACE REALKV WITH NP334
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         IF NPR334>0
            REPLACE PRETH  WITH NPR334
         ELSE
            REPLACE PRETH  WITH 0
         ENDIF
         IF NPL334>0
            REPLACE PLAN  WITH NPL334
         ELSE
            REPLACE PLAN  WITH 0
         ENDIF
         IF NPK334>0
            REPLACE PLANKV  WITH NPK334
         ELSE
            REPLACE PLANKV  WITH 0
         ENDIF

         NP334=REALKV
         NPR334=PRETH
         NPL334=PLAN
         NPK334=PLANKV
*--------------------------------------------
      SEEK '335'
      NP335=NP329-NP325
      NPR335=NPR329-NPR325
      NPL335=NPL329-NPL325
      NPK335=NPK329-NPK325
   
         IF NP335>0
            REPLACE REALKV WITH NP335
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP335=REALKV
         IF NPR335>0
            REPLACE PRETH  WITH NPR335
         ELSE
            REPLACE PRETH  WITH 0
         ENDIF
         NPR335=PRETH

         IF NPL335>0
            REPLACE PLAN  WITH NPL335
         ELSE
            REPLACE PLAN  WITH 0
         ENDIF
         NPL335=PLAN
         
        IF NPK335>0
            REPLACE PLANKV  WITH NPK335
         ELSE
            REPLACE PLANKV  WITH 0
         ENDIF
         NPK335=PLANKV
         
         
*-------------------------------------
      SEEK '336'
      NP336=NP301+NP313+NP325
      NPR336=NPR301+NPR313+NPR325
      NPL336=NPL301+NPL313+NPL325
      NPK336=NPK301+NPK313+NPK325
   
         REPLACE REALKV WITH NP336
         REPLACE PRETH  WITH NPR336
         REPLACE PLAN  WITH NPL336
         REPLACE PLANKV  WITH NPK336    
*--------------------------------------         

      SEEK '337'
      NP337=NP305+NP319+NP329
      NPR337=NPR305+NPR319+NPR329
      NPL337=NPL305+NPL319+NPL329
      NPK337=NPK305+NPK319+NPK329

         REPLACE REALKV WITH NP337
         REPLACE PRETH  WITH NPR337
         REPLACE PLAN WITH NPL337
         REPLACE PLANKV WITH NPK337
         
*--------------------------------         
            
      SEEK '338'
      NP338=NP336-NP337
      NPR338=NPR336-NPR337
      NPL338=NPL336-NPL337
      NPK338=NPK336-NPK337
 
         IF NP338>0
            REPLACE REALKV WITH NP338
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP338=REALKV

         IF NPR338>0
            REPLACE PRETH  WITH NPR338
         ELSE
            REPLACE PRETH  WITH 0
         ENDIF
         NPR338=PRETH
 
         IF NPL338>0
            REPLACE PLAN  WITH NPL338
         ELSE
            REPLACE PLAN  WITH 0
         ENDIF
         NPL338=PLAN

         IF NPK338>0
            REPLACE PLANKV WITH NPK338
         ELSE
            REPLACE PLANKV  WITH 0
         ENDIF
         NPK338=PLANkv
*---------------------------------------------
      SEEK '339'
      NP339=NP337-NP336
      NPR339=NPR337-NPR336
      NPL339=NPL337-NPL336
      NPK339=NPK337-NPK336
   
         IF NP339>0
            REPLACE REALKV WITH NP339
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP339=REALKV
         IF NPR339>0
            REPLACE PRETH WITH NPR339
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR339=PRETH
         
         IF NPL339>0
            REPLACE PLAN WITH NPL339
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL339=PLAN
         
         IF NPK339>0
            REPLACE PLANKV WITH NPK339
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPK339=PLANKV

         
*------------------------------------------
        SEEK '343'
      NP343=NP338-NP339+NP340+NP341-NP342
      NPR343=NPR338-NPR339+NPR340+NPR341-NPR342
      NPL343=NPL338-NPL339+NPL340+NPL341-NPL342
      NPK343=NPK338-NPK339+NPK340+NPK341-NPK342    

         IF NP343>0
            REPLACE REALKV WITH NP343
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         IF NPR343>0
            REPLACE PRETH WITH NPR343
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NPL343>0
            REPLACE PLAN WITH NPL343
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         IF NPK343>0
            REPLACE PLANKV WITH NPK343
         ELSE
            REPLACE PLANKV WITH 0
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
            REPLACE PRETH WITH MB302
         ENDIF
         LOCATE FOR AOP='303'
         IF MB303>0
            REPLACE PRETH WITH MB303
         ENDIF
         LOCATE FOR AOP='304'
         IF MB304>0
            REPLACE PRETH WITH MB304
         ENDIF
         LOCATE FOR AOP='306'
         IF MB306>0
            REPLACE PRETH WITH MB306
         ENDIF
         LOCATE FOR AOP='307'
         IF MB307>0
            REPLACE PRETH WITH MB307
         ENDIF
         LOCATE FOR AOP='308'
         IF MB308>0
            REPLACE PRETH WITH MB308
         ENDIF
         LOCATE FOR AOP='309'
         IF MB309>0
            REPLACE PRETH WITH MB309
         ENDIF
         LOCATE FOR AOP='310'
         IF MB310>0
            REPLACE PRETH WITH MB310
         ENDIF
         LOCATE FOR AOP='314'
         IF MB314>0
            REPLACE PRETH WITH MB314
         ENDIF
         LOCATE FOR AOP='315'
         IF MB315>0
            REPLACE PRETH WITH MB315
         ENDIF
         LOCATE FOR AOP='316'
         IF MB316>0
            REPLACE PRETH WITH MB316
         ENDIF
         LOCATE FOR AOP='317'
         IF MB317>0
            REPLACE PRETH WITH MB317
         ENDIF
         LOCATE FOR AOP='326'
         IF MB326>0
            REPLACE PRETH WITH MB326
         ENDIF
         LOCATE FOR AOP='327'
         IF MB327>0
            REPLACE PRETH WITH MB327
         ENDIF
         LOCATE FOR AOP='328'
         IF MB328>0
            REPLACE PRETH WITH MB328
         ENDIF
         LOCATE FOR AOP='330'
         IF MB330>0
            REPLACE PRETH WITH MB330
         ENDIF
         LOCATE FOR AOP='331'
         IF MB331>0
            REPLACE PRETH WITH MB331
         ENDIF
         LOCATE FOR AOP='332'
         IF MB332>0
            REPLACE PRETH WITH MB332
         ENDIF
         LOCATE FOR AOP='333'
         IF MB333>0
            REPLACE PRETH WITH MB333
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