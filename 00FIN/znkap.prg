procedure ZNKAPpuni

PUSH KEY CLEAR

SET ORDER TO
GO TOP
IF RECCOUNT()<1
     DO PUNIKAP WITH  ' 1.Stanje na dan 01.01.prethodne godine   ','401','414','427','440','453','466','479','492','505','518','531','544','557','L'
     DO PUNIKAP WITH  ' 2.Ispravka materijalno znaèajnih grešaka ','402','415','428','441','454','467','480','493','506','519','532','545','558',' '
     DO PUNIKAP WITH  '   i promena raèunovodstvenih politika    ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ',' '
     DO PUNIKAP WITH  '   u prethodnoj godini -poveæanje         ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  ' 3.Ispravka materijalno znaèajnih grešaka ','403','416','429','442','455','468','481','494','507','520','533','546','559',' '
     DO PUNIKAP WITH  '   i promena raèunovodstvenih politika    ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ',' '
     DO PUNIKAP WITH  '   u prethodnoj godini -smanjenje         ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  ' 4.Korigovano poèetno stanje na dan 01.01.','404','417','430','443','456','469','482','495','508','521','534','547','560',' '
     DO PUNIKAP WITH  '   prethodne godine (rbr 1+2-3)           ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  ' 5.Ukupna poveæanja u prethodnoj godini   ','405','418','431','444','457','470','483','496','509','522','535','548','561','L'
     DO PUNIKAP WITH  ' 6.Ukupna smanjenja u prethodnoj godini   ','406','419','432','445','458','471','484','497','510','523','536','549','562','L'
     DO PUNIKAP WITH  ' 7.Stanje na dan 31.12.prethodne godine   ','407','420','433','446','459','472','485','498','511','524','537','550','563',' '
     DO PUNIKAP WITH  '   (r.br 4+5-6)                           ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  ' 8.Ispravka materijalno znaèajnih grešaka ','408','421','434','447','460','473','486','499','512','525','538','551','564',' '
     DO PUNIKAP WITH  '   i promena raèunovodstvenih politika    ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ',' '
     DO PUNIKAP WITH  '   u Tekuæoj godini -poveæanje            ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  ' 9.Ispravka materijalno znaèajnih grešaka ','409','422','435','448','461','474','487','500','513','526','539','552','565',' '
     DO PUNIKAP WITH  '   i promena raèunovodstvenih politika    ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ',' '
     DO PUNIKAP WITH  '   u Tekuæoj godini -smanjenje            ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  '10.Korigovano poèetno stanje na dan 01.01.','410','423','436','449','462','475','488','501','514','527','540','553','566',' '
     DO PUNIKAP WITH  '   tekuæe godine (rbr 7+8-9)              ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     DO PUNIKAP WITH  '11.Ukupna poveæanja u tekuæoj godini      ','411','424','437','450','463','476','489','502','515','528','541','554','567','L'
     DO PUNIKAP WITH  '12.Ukupna smanjenja u tekuæoj godini      ','412','425','438','451','464','477','490','503','516','529','542','555','568','L'
     DO PUNIKAP WITH  '13.Stanje na dan 31.12.tekuæe godine      ','413','426','439','452','465','478','491','504','517','530','543','556','569',' '
     DO PUNIKAP WITH  '  (r.br 10+11-12)                         ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','   ','L'
     
     
     
     
ENDIF
POP KEY
endproc

procedure PUNIKAP 
PARAMETERS MOPIS,MAOP1,MAOP2,MAOP3,MAOP4,MAOP5,MAOP6,MAOP7,MAOP8,MAOP9,MAOP10,MAOP11,MAOP12,MAOP13,MRLINI
PUSH KEY CLEAR

   appEND blank
      REPLACE RLINI WITH MRLINI
      replace opis with mopis
      REPLACE AOP1 WITH MAOP1
      REPLACE AOP2 WITH MAOP2
      REPLACE AOP3 WITH MAOP3
      REPLACE AOP4 WITH MAOP4
      REPLACE AOP5 WITH MAOP5
      REPLACE AOP6 WITH MAOP6
      REPLACE AOP7 WITH MAOP7
      REPLACE AOP8 WITH MAOP8
      REPLACE AOP9 WITH MAOP9
      REPLACE AOP10 WITH MAOP10
      REPLACE AOP11 WITH MAOP11
      REPLACE AOP12 WITH MAOP12
      REPLACE AOP13 WITH MAOP13
POP KEY      
   endproc


*-----------PREUZIMANJE PODATAKA ZA KAPITAL
PROCEDURE KAPPRE
   PARAMETERS MDDAT0,MDDAT1,MCIFRE
   PUSH KEY CLEAR

   SET EXACT OFF
         SELECT ZNKAP
         SET ORDER TO 1
   DO idel WITH (kkockax)
   DO idel WITH (kkockax2)
   DO idel WITH (kkockax3)
         USE NAL IN 0 ORDER 1

         SELECT NAL 
         TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK=MDDAT0
         TOTAL ON KONTO TO &KKOCKA3 FIELDS DUG,POT FOR DATDOK>MDDAT0.AND.DATDOK<=MDDAT1
         SELECT NAL
         USE
         USE &KKOCKA IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP
         USE &KKOCKA3 IN 0 ALIAS KOCKA3 exclu
         SELECT KOCKA3
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         *----------407----------------------
         SELECT KOCKA 
         GO TOP
         MB407=0
         MB407=MB407+BILKAPSAL2P('30')
         MB407=MB407-BILKAPSAL3P('309')

 
         *----------420----------------------
         SELECT KOCKA 
         GO TOP
         MB420=0
         MB420=MB420+BILKAPSAL3P('309')

 
         *----------433----------------------
         SELECT KOCKA 
         GO TOP
         MB433=0
         MB433=MB433+BILKAPSAL2P('31')

 
         *----------446----------------------
         SELECT KOCKA 
         GO TOP
         MB446=0
         MB446=MB446+BILKAPSAL3P('320')

 
         *----------459----------------------
         SELECT KOCKA 
         GO TOP
         MB459=0
         MB459=MB459+BILKAPSAL3P('321')
         MB459=MB459+BILKAPSAL3P('322')

 
         *----------472----------------------
         SELECT KOCKA 
         GO TOP
         MB472=0
         MB472=MB472+BILKAPSAL3P('330')
         MB472=MB472+BILKAPSAL3P('331')

         *----------485----------------------
         SELECT KOCKA 
         GO TOP
         MB485=0
         MB485=MB485+BILKAPSAL3P('332')
         *----------498----------------------
         SELECT KOCKA 
         GO TOP
         MB498=0
         MB498=MB498+BILKAPSAL3P('333')
         *----------511----------------------
         SELECT KOCKA 
         GO TOP
         MB511=0
         MB511=MB511+BILKAPSAL2P('34')
         *----------524------------------
         SELECT KOCKA 
         GO TOP
         MB524=0
         MB524=MB524+BILKAPSAL2P('35')

 
         *----------537----------------------
         SELECT KOCKA 
         GO TOP
         MB537=0
         MB537=MB537-BILKAPSAL3('037')
         MB537=MB537-BILKAPSAL3('237')
         *----------563----------------------
         SELECT KOCKA 
         GO TOP
         MB563=0
         MB563=MB563-BILKAPSAL2('29')
 
*--------------411---------------------------------


         *----------411----------------------
         SELECT KOCKA3 
         GO TOP
         MB411=0
         MB411=MB411+BILKAPSAL2P('30')
         MB411=MB411-BILKAPSAL3P('309')

 
         *----------424----------------------
         SELECT KOCKA3
         GO TOP
         MB424=0
         MB424=MB424+BILKAPSAL3P('309')

 
         *----------437----------------------
         SELECT KOCKA3
         GO TOP
         MB437=0
         MB437=MB437+BILKAPSAL2P('31')

 
         *----------450----------------------
         SELECT KOCKA3
         GO TOP
         MB450=0
         MB450=MB450+BILKAPSAL3P('320')

 
         *----------463----------------------
         SELECT KOCKA3
         GO TOP
         MB463=0
         MB463=MB463+BILKAPSAL3P('321')
         MB463=MB463+BILKAPSAL3P('322')

 
         *----------476----------------------
         SELECT KOCKA3
         GO TOP
         MB476=0
         MB476=MB476+BILKAPSAL3P('330')
         MB476=MB476+BILKAPSAL3P('331')

         *----------489----------------------
         SELECT KOCKA3
         GO TOP
         MB489=0
         MB489=MB489+BILKAPSAL3P('332')
         *----------502----------------------
         SELECT KOCKA3
         GO TOP
         MB502=0
         MB502=MB502+BILKAPSAL3P('333')
         *----------515----------------------
         SELECT KOCKA3
         GO TOP
         MB515=0
         MB515=MB515+BILKAPSAL2P('34')
         *----------528----------------------
         SELECT KOCKA3
         GO TOP
         MB528=0
         MB528=MB528+BILKAPSAL2P('35')

 
         *----------541----------------------
         SELECT KOCKA3
         GO TOP
         MB541=0
         MB541=MB541+BILKAPSAL3('037')
         MB541=MB541+BILKAPSAL3('237')


         *----------567----------------------
         SELECT KOCKA3
         GO TOP
         MB567=0
         MB567=MB567-BILKAPSAL2('29')
          

           
         IF MCIFRE='H'
            MB407=ROUND(MB407/1000,0)
            MB420=ROUND(MB420/1000,0)
            MB433=ROUND(MB433/1000,0)
            MB446=ROUND(MB446/1000,0)
            MB459=ROUND(MB459/1000,0)
            MB472=ROUND(MB472/1000,0)
            MB485=ROUND(MB485/1000,0)
            MB498=ROUND(MB498/1000,0)
            MB511=ROUND(MB511/1000,0)
            MB524=ROUND(MB524/1000,0)
            MB537=ROUND(MB537/1000,0)
            MB563=ROUND(MB563/1000,0)

            MB411=ROUND(MB411/1000,0)
            MB424=ROUND(MB424/1000,0)
            MB437=ROUND(MB437/1000,0)
            MB450=ROUND(MB450/1000,0)
            MB463=ROUND(MB463/1000,0)
            MB476=ROUND(MB476/1000,0)
            MB489=ROUND(MB489/1000,0)
            MB502=ROUND(MB502/1000,0)
            MB515=ROUND(MB515/1000,0)
            MB528=ROUND(MB528/1000,0)
            MB541=ROUND(MB541/1000,0)
            MB567=ROUND(MB567/1000,0)

          
         ENDIF

         SELECT KOCKA
         USE
         SELECT KOCKA3
         USE
         SELECT ZNKAP
         LOCATE FOR AOP1='401'
         IF FOUND()
            REPLACE A2 WITH MB407
            REPLACE A3 WITH MB420
            REPLACE A4 WITH MB433
            REPLACE A5 WITH MB446
            REPLACE A6 WITH MB459
            REPLACE A7 WITH MB472
            REPLACE A8 WITH MB485
            REPLACE A9 WITH MB498
            REPLACE A10 WITH MB511
            REPLACE A11 WITH MB524
            REPLACE A12 WITH MB537
            REPLACE A14 WITH MB563
         ENDIF
         LOCATE FOR AOP1='407'
         IF FOUND()
            REPLACE A2 WITH MB407
            REPLACE A3 WITH MB420
            REPLACE A4 WITH MB433
            REPLACE A5 WITH MB446
            REPLACE A6 WITH MB459
            REPLACE A7 WITH MB472
            REPLACE A8 WITH MB485
            REPLACE A9 WITH MB498
            REPLACE A10 WITH MB511
            REPLACE A11 WITH MB524
            REPLACE A12 WITH MB537
            REPLACE A14 WITH MB563
         ENDIF
         
*         SELECT ZNKAP
*         LOCATE FOR AOP1='411'
*         IF FOUND()
*            IF MB411>0
*               REPLACE A2 WITH MB411
*            ENDIF
*            IF MB424>0
*               REPLACE A3 WITH MB424
*            ENDIF
*            IF MB437>0
*               REPLACE A4 WITH MB437
*            ENDIF
*            IF MB450>0
*               REPLACE A5 WITH MB450
*            ENDIF
*            IF MB463>0
*               REPLACE A6 WITH MB463
*            ENDIF
*            IF MB476>0
*               REPLACE A7 WITH MB476
*            ENDIF
*            IF MB489>0
*               REPLACE A8 WITH MB489
*            ENDIF
*            IF MB502>0
*               REPLACE A9 WITH MB502
*            ENDIF
*            IF MB515>0
*               REPLACE A10 WITH MB515
*            ENDIF
*            IF MB528>0
*               REPLACE A11 WITH MB528
*            ENDIF
*            IF MB541>0
*               REPLACE A12 WITH MB541
*            ENDIF
*            IF MB567>0
*               REPLACE A14 WITH MB567
*            ENDIF
*         ENDIF
         

*         SELECT ZNKAP
*         LOCATE FOR AOP1='412'
*         IF FOUND()
*            IF MB411<0
*               REPLACE A2 WITH -MB411
*            ENDIF
*            IF MB424<0
*               REPLACE A3 WITH -MB424
*            ENDIF
*            IF MB437<0
*               REPLACE A4 WITH -MB437
*            ENDIF
*            IF MB450<0
*               REPLACE A5 WITH -MB450
*            ENDIF
*            IF MB463<0
*               REPLACE A6 WITH -MB463
*            ENDIF
*            IF MB476<0
*               REPLACE A7 WITH -MB476
*            ENDIF
*            IF MB489<0
*               REPLACE A8 WITH -MB489
*            ENDIF
*            IF MB502<0
*               REPLACE A9 WITH -MB502
*            ENDIF
*            IF MB515<0
*               REPLACE A10 WITH -MB515
 *           ENDIF
 **            IF MB528<0
  **             REPLACE A11 WITH -MB528
 *           ENDIF
 *          IF MB541<0
 *              REPLACE A12 WITH -MB541
 *           ENDIF
 *          IF MB567<0
 *              REPLACE A14 WITH -MB567
 *           ENDIF
 *        ENDIF
POP KEY
ENDPROC  

FUNCTION BILKAPSAL2
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


FUNCTION BILKAPSAL3
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

FUNCTION BILKAPSAL2P
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

FUNCTION BILKAPSAL3P
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
ENDFUNC