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
     DO PUNINTOK WITH  '10','410','     5.Odlivi po osnovu ostalih javnih prihoda                       ','*'
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
     DO PUNINTOK WITH  '  ','   ','     V.TOKOVI GOTOVINE IZ AKTIVNOSTI FINANSIRANJA                    ',' '
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
PARAMETERS mredbr,MAOP,mopis,MRLINI
PUSH KEY CLEAR

   APPEND BLANK
      replace redNIbr WITH mredbr
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
      SEEK '402'
      NP402=REALKV
      NPR402=PRETH
      NPL402=PLAN
      NPK402=PLANKV

      SEEK '403'
      NP403=REALKV
      NPR403=PRETH
      NPL403=PLAN
      NPK403=PLANKV

      SEEK '404'
      NP404=REALKV
      NPR404=PRETH
      NPL404=PLAN
      NPK404=PLANKV

      SEEK '406'
      NP406=REALKV
      NPR406=PRETH
      NPL406=PLAN
      NPK406=PLANKV

      SEEK '407'
      NP407=REALKV
      NPR407=PRETH
      NPL407=PLAN
      NPK407=PLANKV

      SEEK '408'
      NP408=REALKV
      NPR408=PRETH
      NPL408=PLAN
      NPK408=PLANKV

      SEEK '409'
      NP409=REALKV
      NPR409=PRETH
      NPL409=PLAN
      NPK409=PLANKV
      
      SEEK '410'
      NP410=REALKV
      NPR410=PRETH
      NPL410=PLAN
      NPK410=PLANKV
*-----------------------
      SEEK '414'
      NP414=REALKV
      NPR414=PRETH
      NPL414=PLAN
      NPK414=PLANKV

      SEEK '415'
      NP415=REALKV
      NPR415=PRETH
      NPL415=PLAN
      NPK415=PLANKV

      SEEK '416'
      NP416=REALKV
      NPR416=PRETH
      NPL416=PLAN
      NPK416=PLANKV

      SEEK '417'
      NP417=REALKV
      NPR417=PRETH
      NPL417=PLAN
      NPK417=PLANKV

      SEEK '418'
      NP418=REALKV
      NPR418=PRETH
      NPL418=PLAN
      NPK418=PLANKV

*------------------------
      SEEK '420'
      NP420=REALKV
      NPR420=PRETH
      NPL420=PLAN
      NPK420=PLANKV

      SEEK '421'
      NP421=REALKV
      NPR421=PRETH
      NPL421=PLAN
      NPK421=PLANKV

      SEEK '422'
      NP422=REALKV
      NPR422=PRETH
      NPL422=PLAN
      NPK422=PLANKV
 
      SEEK '426'
      NP426=REALKV
      NPR426=PRETH
      NPL426=PLAN
      NPK426=PLANKV

      SEEK '427'
      NP427=REALKV
      NPR427=PRETH
      NPL427=PLAN
      NPK427=PLANKV

      SEEK '428'
      NP428=REALKV
      NPR428=PRETH
      NPL428=PLAN
      NPK428=PLANKV

      SEEK '429'
      NP429=REALKV
      NPR429=PRETH
      NPL429=PLAN
      NPK429=PLANKV

      SEEK '430'
      NP430=REALKV
      NPR430=PRETH
      NPL430=PLAN
      NPK430=PLANKV


      SEEK '432'
      NP432=REALKV
      NPR432=PRETH
      NPL432=PLAN
      NPK432=PLANKV

      SEEK '433'
      NP433=REALKV
      NPR433=PRETH
      NPL433=PLAN
      NPK433=PLANKV

      SEEK '434'
      NP434=REALKV
      NPR434=PRETH
      NPL434=PLAN
      NPK434=PLANKV

      SEEK '435'
      NP435=REALKV
      NPR435=PRETH
      NPL435=PLAN
      NPK435=PLANKV

      SEEK '436'
      NP436=REALKV
      NPR436=PRETH
      NPL436=PLAN
      NPK436=PLANKV

      SEEK '437'
      NP437=REALKV
      NPR437=PRETH
      NPL437=PLAN
      NPK437=PLANKV

      SEEK '444'
      NP444=REALKV
      NPR444=PRETH
      NPL444=PLAN
      NPK444=PLANKV

      SEEK '445'
      NP445=REALKV
      NPR445=PRETH
      NPL445=PLAN
      NPK445=PLANKV

      SEEK '446'
      NP446=REALKV
      NPR446=PRETH
      NPL446=PLAN
      NPK446=PLANKV
*------------------------------
      SEEK '401'
      NP401=NP402+NP403+NP404
      NPR401=NPR402+NPR403+NPR404
      NPL401=NPL402+NPL403+NPL404
      NPK401=NPK402+NPK403+NPK404
      
      REPLACE REALKV WITH NP401
      REPLACE PRETH WITH NPR401
      REPLACE PLAN WITH NPL401
      REPLACE PLANKV WITH NPK401
   
    
*----------------------------------------
      SEEK '405'
      NP405=NP406+NP407+NP408+NP409+NP410
      NPR405=NPR406+NPR407+NPR408+NPR409+NPR410
      NPL405=NPL406+NPL407+NPL408+NPL409+NPL410
      NPK405=NPK406+NPK407+NPK408+NPK409+NPK410

      REPLACE REALKV WITH NP405
      REPLACE PRETH WITH NPR405
      REPLACE PLAN WITH NPL405
      REPLACE PLANKV WITH NPK405

*-----------------------------
      SEEK '411'
      NP411=NP401-NP405
      NPR411=NPR401-NPR405
      NPL411=NPL401-NPL405
      NPK411=NPK401-NPK405
      
    
         IF NP411>0
            REPLACE REALKV WITH NP411
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP411=REALKV
         
         IF NPR411>0
            REPLACE PRETH WITH NPR411
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR411=PRETH

         IF NPL411>0
            REPLACE PLAN WITH NPL411
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL411=PLAN

         IF NPK411>0
            REPLACE PLANKV WITH NPK411
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL411=PLANKV


  *-----------------------------
      SEEK '412'
      NP412=NP405-NP401
      NPR412=NPR405-NPR401
      NPL412=NPL405-NPL401
      NPK412=NPK405-NPK401


         IF NP412>0
            REPLACE REALKV WITH NP412
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP412=REALKV
         
         IF NPR412>0
            REPLACE PRETH WITH NPR412
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR412=PRETH

         IF NPL412>0
            REPLACE PLAN WITH NPL412
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL412=PLAN

         IF NPK412>0
            REPLACE PLANKV WITH NPK412
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL412=PLANKV
    
*'''''''''''''''''''''''''''''''''''''''''''''''''''''''

      SEEK '413'
      NP413=NP414+NP415+NP416+NP417+NP418
      NPR413=NPR414+NPR415+NPR416+NPR417+NPR418
      NPL413=NPL414+NPL415+NPL416+NPL417+NPL418
      NPK413=NPK414+NPK415+NPK416+NPK417+NPK418
   
         IF NP413>0
            REPLACE REALKV WITH NP413
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP413=REALKV
         
         IF NPR413>0
            REPLACE PRETH WITH NPR413
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR413=PRETH

         IF NPL413>0
            REPLACE PLAN WITH NPL413
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL413=PLAN

         IF NPK413>0
            REPLACE PLANKV WITH NPK413
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL413=PLANKV
 
      SEEK '419'
      NP419=NP420+NP421+NP422
      NPR419=NPR420+NPR421+NPR422
      NPL419=NPL420+NPL421+NPL422
      NPK419=NPK420+NPK421+NPK422
       
         IF NP419>0
            REPLACE REALKV WITH NP419
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP419=REALKV
         
         IF NPR419>0
            REPLACE PRETH WITH NPR419
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR419=PRETH

         IF NPL419>0
            REPLACE PLAN WITH NPL419
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL419=PLAN

         IF NPK419>0
            REPLACE PLANKV WITH NPK419
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL419=PLANKV
      
*-------------------------
      SEEK '423'
      NP423=NP413-NP419
      NPR423=NPR413-NPR419
      NPL423=NPL413-NPL419
      NPK423=NPK413-NPK419
      
         IF NP423>0
            REPLACE REALKV WITH NP423
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP423=REALKV
         
         IF NPR423>0
            REPLACE PRETH WITH NPR423
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR423=PRETH

         IF NPL423>0
            REPLACE PLAN WITH NPL423
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL423=PLAN

         IF NPK423>0
            REPLACE PLANKV WITH NPK423
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL423=PLANKV
   
      SEEK '424'
      NP424=NP419-NP413
      NPR424=NPR419-NPR413
      NPL424=NPL419-NPL413
      NPK424=NPK419-NPK413                  
   
         IF NP424>0
            REPLACE REALKV WITH NP424
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP424=REALKV
         
         IF NPR424>0
            REPLACE PRETH WITH NPR424
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR424=PRETH

         IF NPL424>0
            REPLACE PLAN WITH NPL424
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL424=PLAN

         IF NPK424>0
            REPLACE PLANKV WITH NPK424
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL424=PLANKV
 *----------------
      SEEK '425'
      NP425=NP426+NP427+NP428+NP429+NP430
      NPR425=NPR426+NPR427+NPR428+NPR429+NPR430
      NPL425=NPL426+NPL427+NPL428+NPL429+NPL430
      NPK425=NPK426+NPK427+NPK428+NPK429+NPK430
     
      
         IF NP425>0
            REPLACE REALKV WITH NP425
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP425=REALKV
         
         IF NPR425>0
            REPLACE PRETH WITH NPR425
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR425=PRETH

         IF NPL425>0
            REPLACE PLAN WITH NPL425
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL425=PLAN

         IF NPK425>0
            REPLACE PLANKV WITH NPK425
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL425=PLANKV
   
      SEEK '431'
      NP431=NP432+NP433+NP434+NP435+NP436+NP437
      NPR431=NPR432+NPR433+NPR434+NPR435+NPR436+NPR437
      NPL431=NPL432+NPL433+NPL434+NPL435+NPL436+NPL437
      NPK431=NPK432+NPK433+NPK434+NPK435+NPK436+NPK437

     
         IF NP431>0
            REPLACE REALKV WITH NP431
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP431=REALKV
         
         IF NPR431>0
            REPLACE PRETH WITH NPR431
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR431=PRETH

         IF NPL431>0
            REPLACE PLAN WITH NPL431
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL431=PLAN

         IF NPK431>0
            REPLACE PLANKV WITH NPK431
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL431=PLANKV
 
*---------------------------------
      SEEK '438'
      NP438=NP425-NP431
      NPR438=NPR425-NPR431
      NPL438=NPL425-NPL431
      NPK438=NPK425-NPK431
                   
         IF NP438>0
            REPLACE REALKV WITH NP438
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP438=REALKV
         
         IF NPR438>0
            REPLACE PRETH WITH NPR438
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR438=PRETH

         IF NPL438>0
            REPLACE PLAN WITH NPL438
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL438=PLAN

         IF NPK438>0
            REPLACE PLANKV WITH NPK438
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL438=PLANKV

*----------------------------
      SEEK '439'
      NP439=NP431-NP425
      NPR439=NPR431-NPR425   
      NPL439=NPL431-NPL425
      NPK439=NPK431-NPK425
               
         IF NP439>0
            REPLACE REALKV WITH NP439
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP439=REALKV
         
         IF NPR439>0
            REPLACE PRETH WITH NPR439
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR439=PRETH

         IF NPL439>0
            REPLACE PLAN WITH NPL439
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL439=PLAN

         IF NPK439>0
            REPLACE PLANKV WITH NPK439
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL439=PLANKV
 
      SEEK '440'
      NP440=NP401+NP413+NP425
      NPR440=NPR401+NPR413+NPR425
      NPL440=NPL401+NPL413+NPL425
      NPK440=NPK401+NPK413+NPK425
            
         IF NP440>0
            REPLACE REALKV WITH NP440
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP440=REALKV
         
         IF NPR440>0
            REPLACE PRETH WITH NPR440
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR440=PRETH

         IF NPL440>0
            REPLACE PLAN WITH NPL440
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL440=PLAN

         IF NPK440>0
            REPLACE PLANKV WITH NPK440
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL440=PLANKV
    
      SEEK '441'
      NP441=NP405+NP419+NP431
      NPR441=NPR405+NPR419+NPR431
      NPL441=NPL405+NPL419+NPL431
      NPK441=NPK405+NPK419+NPK431

         IF NP441>0
            REPLACE REALKV WITH NP441
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP441=REALKV
         
         IF NPR441>0
            REPLACE PRETH WITH NPR441
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR441=PRETH

         IF NPL441>0
            REPLACE PLAN WITH NPL441
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL441=PLAN

         IF NPK441>0
            REPLACE PLANKV WITH NPK441
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL441=PLANKV
*----------------------------
      SEEK '442'
      NP442=NP440-NP441
      NPR442=NPR440-NPR441
      NPL442=NPL440-NPL441
      NPK442=NPK440-NPK441
                        
         IF NP442>0
            REPLACE REALKV WITH NP442
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP442=REALKV
         
         IF NPR442>0
            REPLACE PRETH WITH NPR442
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR442=PRETH

         IF NPL442>0
            REPLACE PLAN WITH NPL442
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL442=PLAN

         IF NPK442>0
            REPLACE PLANKV WITH NPK442
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL442=PLANKV
 *-----------------------
      SEEK '443'
      NP443=NP441-NP440
      NPR443=NPR441-NPR440
      NPL443=NPL441-NPL440
      NPK443=NPK441-NPK440
                     
         IF NP443>0
            REPLACE REALKV WITH NP443
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP443=REALKV
         
         IF NPR443>0
            REPLACE PRETH WITH NPR443
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR443=PRETH

         IF NPL443>0
            REPLACE PLAN WITH NPL443
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL443=PLAN

         IF NPK443>0
            REPLACE PLANKV WITH NPK443
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL443=PLANKV
*-----------------------
        SEEK '447'
      NP447=NP442-NP443+NP444+NP445-NP446
      NPR447=NPR442-NPR443+NPR444+NPR445-NPR446
      NPL447=NPL442-NPL443+NPL444+NPL445-NPL446
      NPK447=NPK442-NPK443+NPK444+NPK445-NPK446
                      
         IF NP447>0
            REPLACE REALKV WITH NP447
         ELSE
            REPLACE REALKV WITH 0
         ENDIF
         NP447=REALKV
         
         IF NPR447>0
            REPLACE PRETH WITH NPR447
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         NPR447=PRETH

         IF NPL447>0
            REPLACE PLAN WITH NPL447
         ELSE
            REPLACE PLAN WITH 0
         ENDIF
         NPL447=PLAN

         IF NPK447>0
            REPLACE PLANKV WITH NPK447
         ELSE
            REPLACE PLANKV WITH 0
         ENDIF
         NPL447=PLANKV
         replace ALL plankv WITH plan/4
GO top
DO while.not.eof()
   IF plan<>0
      replace indeks WITH ROUND(realkv*100/plan ,2)
   ELSE
      replace indeks with  0
   ENDIF
   SKIP
enddo        
         
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
         SET DEFAULT TO &MDATA02
         USE NAL IN 0 ORDER 1
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
            REPLACE REALKV WITH MB402
         ENDIF
         LOCATE FOR AOP='403'
         IF MB403>0
            REPLACE REALKV WITH MB403
         ENDIF
         LOCATE FOR AOP='404'
         IF MB404>0
            REPLACE REALKV WITH MB404
         ENDIF
         LOCATE FOR AOP='406'
         IF MB406>0
            REPLACE REALKV WITH MB406
         ENDIF
         LOCATE FOR AOP='407'
         IF MB407>0
            REPLACE REALKV WITH MB407
         ENDIF
         LOCATE FOR AOP='408'
         IF MB408>0
            REPLACE REALKV WITH MB408
         ENDIF
         LOCATE FOR AOP='409'
         IF MB409>0
            REPLACE REALKV WITH MB409
         ENDIF
         LOCATE FOR AOP='410'
         IF MB410>0
            REPLACE REALKV WITH MB410
         ENDIF
         LOCATE FOR AOP='414'
         IF MB414>0
            REPLACE REALKV WITH MB414
         ENDIF
         LOCATE FOR AOP='415'
         IF MB415>0
            REPLACE REALKV WITH MB415
         ENDIF
         LOCATE FOR AOP='416'
         IF MB416>0
            REPLACE REALKV WITH MB416
         ENDIF
         LOCATE FOR AOP='427'
         IF MB427>0
            REPLACE REALKV WITH MB427
         ENDIF
         LOCATE FOR AOP='428'
         IF MB428>0
            REPLACE REALKV WITH MB428
         ENDIF
         LOCATE FOR AOP='430'
         IF MB430>0
            REPLACE REALKV WITH MB430
         ENDIF
         LOCATE FOR AOP='433'
         IF MB433>0
            REPLACE REALKV WITH MB433
         ENDIF
         LOCATE FOR AOP='434'
         IF MB434>0
            REPLACE REALKV WITH MB433
         ENDIF
         LOCATE FOR AOP='435'
         IF MB435>0
            REPLACE REALKV WITH MB433
         ENDIF
         LOCATE FOR AOP='436'
         IF MB436>0
            REPLACE REALKV WITH MB436
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