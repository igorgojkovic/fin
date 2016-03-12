procedure BILPUNI

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIstat WITH '9001','                ','  1.Broj meseci poslovanja (oznaka od 1 do 12)                              ','1','*' 
     DO PUNIstat WITH '9002','                ','  2.Oznaka za vlasni�tvo   (oznaka od 1 do  5)                              ','1','*' 
     DO PUNIstat WITH '9003','                ','  3.Broj stranih (pravnih ili fizi�kih) lica koja imaju uloge               ','1','*' 
     DO PUNIstat WITH '9004','                ','  4.Prose�an broj zaposlenih na osnovu stanja krajem svakog meseca(ceo broj)','1','*' 
     

     DO PUNIstat WITH '9005','  DEO 226       ','  1.Potra�ivanja u toku godine od dru�tava za osiguranje za naknadu         ','2',' ' 
     DO PUNIstat WITH '    ','                ','    �tete (dugovni promet bez po�etnog stanja)                              ','2','*' 
     DO PUNIstat WITH '9006','      450       ','  2.Obaveze za neto zarade i naknade zarada,osim naknada zarada koje se     ','2',' ' 
     DO PUNIstat WITH '    ','                ','    refundiraju (potra�ni promet bez po�etnog stanja)                       ','2','*' 
     DO PUNIstat WITH '9007','      451       ','  3.Obaveze za porez na zarade i naknade zarada na teret zaposlenog         ','2',' ' 
     DO PUNIstat WITH '    ','                ','    (potra�ni promet bez po�etnog stanja)                                   ','2','*' 
     DO PUNIstat WITH '9008','      452       ','  4.Obaveze za doprinose na zarade i naknade zarada na teret zaposlenog     ','2',' ' 
     DO PUNIstat WITH '    ','                ','    (potra�ni promet bez po�etnog stanja)                                   ','2','*' 
     DO PUNIstat WITH '9009','      462       ','  5.Obaveze prema fizi�kim licima za naknade po ugovorima                   ','2',' ' 
     DO PUNIstat WITH '    ','                ','    (potra�ni promet bez po�etnog stanja)                                   ','2','*' 
     DO PUNIstat WITH '9010','                ','  6.KONTROLNI ZBIR (od 9005 do 9009)                                        ','2','*' 
     
     DO PUNIstat WITH '9011','      512       ','  1.Tro�kovi goriva i energije                                              ','3','*' 
     DO PUNIstat WITH '9012','      520       ','  2.Tro�kovi zarada i naknada zarada (bruto)                                ','3','*' 
     DO PUNIstat WITH '9013','      521       ','  3.Tro�kovi poreza i doprinosa na zarade i naknade zarada                  ','3',' ' 
     DO PUNIstat WITH '    ','                ','    na teret poslodavca                                                     ','3','*' 
     DO PUNIstat WITH '9014',' 522,523,524 i  ','  4.Tro�kovi naknada fizi�kim licima (bruto) po osnovu ugovora              ','3',' ' 
     DO PUNIstat WITH '    ','      525       ','                                                                            ','3','*' 
     DO PUNIstat WITH '9015','      529       ','  5.Ostali li�ni rashodi i naknade                                          ','3','*' 
     DO PUNIstat WITH '9016',' deo 525 533 i  ','  6.Tro�kovi zakupnina                                                      ','3',' ' 
     DO PUNIstat WITH '    ','   deo 54       ','                                                                            ','3','*' 
     DO PUNIstat WITH '9017',' deo 525 deo 533','  7.Tro�kovi zakupnina zemlji�ta                                            ','3',' ' 
     DO PUNIstat WITH '    ','  i deo 54      ','                                                                            ','3','*' 
     DO PUNIstat WITH '9018','    536 i 537   ','  8.Tro�kovi istra�ivanja i razvoja                                         ','3','*' 
     DO PUNIstat WITH '9019','      552       ','  9.Tro�kovi premija osiguranja                                             ','3','*' 
     DO PUNIstat WITH '9020','      553       ',' 10.Tro�kovi platnog prometa                                                ','3','*' 
     DO PUNIstat WITH '9021','      554       ',' 11.Tro�kovi �lanarina                                                      ','3','*' 
     DO PUNIstat WITH '9022','      555       ',' 12.Tro�kovi poreza                                                         ','3','*' 
     DO PUNIstat WITH '9023','      556       ',' 13.Tro�kovi doprinosa                                                      ','3','*' 
     DO PUNIstat WITH '9024',' deo 560        ',' 14.Rashodi kamata i deo finansijskih rashoda                               ','3',' ' 
     DO PUNIstat WITH '    ','    i 562       ','                                                                            ','3','*' 
     DO PUNIstat WITH '9025',' deo 560        ',' 15.Rashodi kamata po kreditima od banaka i drugih finansijskih institucija ','3',' ' 
     DO PUNIstat WITH '    ','    i deo 562   ','    (ukupno)                                                                ','3','*' 
     DO PUNIstat WITH '9026','                ',' 15.1.Rashodi kamata po kratkoro�nim kreditima u zemlji                     ','3','*' 
     DO PUNIstat WITH '9027','                ',' 15.2.Rashodi kamata po kratkoro�nim kreditima u inostranstvu               ','3','*' 
     DO PUNIstat WITH '9028','                ',' 15.3.Rashodi kamata po dugoro�nim kreditima u zemlji                       ','3','*' 
     DO PUNIstat WITH '9029','                ',' 15.4.Rashodi kamata po dugoro�nim kreditima u inostranstvu                 ','3','*' 
     DO PUNIstat WITH '9030','    deo 579     ',' 16.Rashodi za humanitarne,nau�ne,verske,kulturne,zdravstvene,obrazovne     ','3',' ' 
     DO PUNIstat WITH '   ','                 ','    i za sportske namene,kao i za za�titu �ovekove sredine                  ','3','*' 
     DO PUNIstat WITH '9031','      579       ',' 17.Ostali nepomenuti rashodi                                               ','3','*' 
     DO PUNIstat WITH '9032','                ','  18.KONTROLNI ZBIR (od 9054 do 9074)                                       ','3','*' 
 
     DO PUNIstat WITH '9033','  640 i 641     ','  1.Prihodi od donacija ,dotacija,subvencija i sl.iz republi�kog bud�eta    ','4',' ' 
     DO PUNIstat WITH '    ','                ','    bud�eta autonomne pokrajine ili lokalne smouprave                       ','4','*' 
     DO PUNIstat WITH '9034','     649        ','  2.Ostali prihodi od donacija,dotacija subvencija i sl.                    ','4','*' 
     DO PUNIstat WITH '9035','   deo 651      ','  3.Prihodi od zakupnina za zemlji�te                                       ','4','*' 
     DO PUNIstat WITH '9036',' deo 660 661    ','  4.Prihodi od kamata                                                       ','4',' ' 
     DO PUNIstat WITH '    ','     i 662      ','                                                                            ','4','*' 
     DO PUNIstat WITH '9037',' deo 660 deo 661','  5.Prihodi od kamata po ra�unima i depozitima u bankama i drugim           ','4',' ' 
     DO PUNIstat WITH '    ',' i deo 662      ','    finansijskim institucijama                                              ','4','*' 
     DO PUNIstat WITH '9038',' 664 deo 660    ','  6.Prihodi od dividendi                                                    ','4',' ' 
     DO PUNIstat WITH '    ','   i deo 661    ','                                                                            ','4','*' 
     DO PUNIstat WITH '9039','                ','  7.KONTROLNI ZBIR (od 9011 do 9031)                                        ','4','*' 
    
  
     DO PUNIstat WITH '9040','                ','  1.Obaveze za akcize (prema godi�njem obra�unu akciza)                     ','5','*' 
     DO PUNIstat WITH '9041','                ','  2.Obra�unate carine i druge uvozne da�bine                                ','5',' ' 
     DO PUNIstat WITH '    ','                ','    (ukupan godi�nji iznos prema obra�unu)                                  ','5','*' 
     DO PUNIstat WITH '9042','                ','  3.Kapitalne subvencije i druga dr�avna dodeljivanja za izgradnju          ','5',' ' 
     DO PUNIstat WITH '    ','                ','    i nabavku osnovnih sredstava i nematerijalnih ulaganja                  ','5','*' 
     DO PUNIstat WITH '9043','                ','  4.Dr�avna dodeljivanja za premije,regres i pokri�e teku�ih                ','5',' ' 
     DO PUNIstat WITH '    ','                ','    tro�kova poslovanja                                                     ','5','*' 
     DO PUNIstat WITH '9044','                ','  5.Ostala dr�avna dodeljivanja                                             ','5','*' 
     DO PUNIstat WITH '9045','                ','  6.Primljene donacije iz inostranstva i druga bespovratna sredstva         ','5',' ' 
     DO PUNIstat WITH '    ','                ','    u novcu ili naturi od inostranih pravnih i fizi�kih lica                ','5','*' 
     DO PUNIstat WITH '9046','                ','  7.KONTROLNI ZBIR (od 9040 do 9045)                                        ','5','*' 


     DO PUNIstat WITH '9047','                ','  1.Pocetno stanje razgrani�enog neto efekta ugovorene valutne klauzule     ','6','*' 
     DO PUNIstat WITH '9048','                ','  2.Razgrani�eni neto efekat ugovorene valutne klauzule                     ','6','*' 
     DO PUNIstat WITH '9049','                ','  3.Srazmerni deo ukinutog razgrani�enog neto efekta                        ','6',' '
     DO PUNIstat WITH '    ','                ','    ugovorene valutne klauzule                                              ','6','*'      
     DO PUNIstat WITH '9050','                ','  4.Preostali iznos razgrani�enog neto efekta ugovorene valutne klauzule    ','6',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.1 + red.br.2-red.br.3)                                          ','6','*'      
     DO PUNIstat WITH '9051','                ','  5.Po�etno stanje razgrani�enog neto efekta kursnih razlika                ','6','*' 
     DO PUNIstat WITH '9052','                ','  6.Razgrani�eni neto efekat kursnih razlika                                ','6','*' 
     DO PUNIstat WITH '9053','                ','  7.Srazmerni deo ukinutog razgrani�enog neto efekta                        ','6',' '
     DO PUNIstat WITH '    ','                ','    kursnih razlika                                                         ','6','*'      
     DO PUNIstat WITH '9054','                ','  8.Preostali iznos razgrani�enog neto efekta kursnih razlika               ','6',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.5 + red.br.6-red.br.7)                                          ','6','*'      


     DO PUNIstat WITH '9055','                ','  1.Pocetno stanje razgrani�enog neto efekta ugovorene valutne klauzule     ','7','*' 
     DO PUNIstat WITH '9056','                ','  2.Razgrani�eni neto efekat ugovorene valutne klauzule                     ','7','*' 
     DO PUNIstat WITH '9057','                ','  3.Srazmerni deo ukinutog razgrani�enog neto efekta                        ','7',' '
     DO PUNIstat WITH '    ','                ','    ugovorene valutne klauzule                                              ','7','*'      
     DO PUNIstat WITH '9058','                ','  4.Preostali iznos razgrani�enog neto efekta ugovorene valutne klauzule    ','7',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.1 + red.br.2-red.br.3)                                          ','7','*'      
     DO PUNIstat WITH '9059','                ','  5.Pocetno stanje razgrani�enog neto efekta kursnih razlika                ','7','*' 
     DO PUNIstat WITH '9060','                ','  6.Razgrani�eni neto efekat kursnih razlika                                ','7','*' 
     DO PUNIstat WITH '9061','                ','  7.Srazmerni deo ukinutog razgrani�enog neto efekta                        ','7',' '
     DO PUNIstat WITH '    ','                ','    kursnih razlika                                                         ','7','*'      
     DO PUNIstat WITH '9062','                ','  8.Preostali iznos razgrani�enog neto efekta kursnih razlika               ','7',' ' 
     DO PUNIstat WITH '    ','                ','    (red.br.5 + red.br.6-red.br.7)                                          ','7','*'      
   

ENDIF
POP KEY
ENDPROC

procedure punistat
   PARAMETERS MAOP,mkonto,mopis,MGRUPA,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace kontA with Mkonto
   replace opis with mopis
   REPLACE GRUPA WITH MGRUPA
   replace RLINI with MRLINI
   POP KEY
endproc







PROCEDURE STATPRE
   PARAMETERS MDDAT0,MDDAT1,MCIFRE
PUSH KEY CLEAR
   
   SET EXACT OFF
   set order to 1
   GO TOP
   DO WHILE.NOT.EOF()
      REPLACE PRETH WITH 0
      REPLACE NETO WITH 0
      SKIP
   ENDDO
   MDIN=MCIFRE
         IF MNOVAGK=0    
            USE NAL IN 0 ORDER 1
         ELSE
            USE NALNOVI IN 0 ORDER 1  ALIAS NAL          
         ENDIF   


    
    DO ZNSUZMI1 WITH  '226','9005','PRO','DEO','DUG'
    DO ZNSUZMI1 WITH  '450','9006','PRO','DEO','POT'    
    DO ZNSUZMI1 WITH  '451','9007','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '452','9008','PRO','DEO','POT'
    DO ZNSUZMI1 WITH  '462','9009','PRO','DEO','POT'
   
    DO ZNSUZMI1 WITH  '512','9011','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '520','9012','PRO','SVE','DUG'    
    DO ZNSUZMI1 WITH  '521','9013','PRO','SVE','DUG'    
    DO ZNSUZMI1 WITH  '522','9014','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '523','9014','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '524','9014','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '525','9014','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '529','9015','PRO','SVE','DUG'            

    DO ZNSUZMI1 WITH  '533','9016','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '54' ,'9017','PRO','SVE','DUG'        

    DO ZNSUZMI1 WITH  '536','9018','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '537','9018','PRO','SVE','DUG'        

    DO ZNSUZMI1 WITH  '552','9019','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '553','9020','PRO','SVE','DUG'        
    DO ZNSUZMI1 WITH  '554','9021','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '555','9022','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '556','9023','PRO','SVE','DUG'            

    DO ZNSUZMI1 WITH  '560','9024','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '562','9024','PRO','SVE','DUG'            

    DO ZNSUZMI1 WITH  '560','9024','PRO','SVE','DUG'            
    DO ZNSUZMI1 WITH  '562','9024','PRO','SVE','DUG'            

    DO ZNSUZMI1 WITH  '579','9030','PRO','SVE','DUG'                
    DO ZNSUZMI1 WITH  '579','9030','PRO','SVE','DUG'                


    DO ZNSUZMI1 WITH  '640','9033','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '641','9033','PRO','SVE','POT'

    DO ZNSUZMI1 WITH  '649','9034','PRO','SVE','POT'

    DO ZNSUZMI1 WITH  '651','9035','PRO','SVE','POT'

    DO ZNSUZMI1 WITH  '660','9036','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '661','9036','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '662','9036','PRO','SVE','POT'    

    DO ZNSUZMI1 WITH  '660','9037','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '661','9037','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '662','9037','PRO','SVE','POT'    

    DO ZNSUZMI1 WITH  '664','9038','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '660','9038','PRO','SVE','POT'
    DO ZNSUZMI1 WITH  '661','9038','PRO','SVE','POT'    



    SELECT NAL
    USE
    SELECT BILSEMA
    SET ORDER TO 
    GO TOP
    DO WHILE.NOT.EOF()
       IF MDIN='H'
          MMNETO=ROUND(NETO/1000,0)
          MMPRETH=ROUND(PRETH/1000,0)
       ELSE
          MMNETO=NETO
          MMPRETH=PRETH
       ENDIF
       REPLACE NETO WITH MMNETO
       REPLACE PRETH WITH MMPRETH
       
       SKIP
    ENDDO
    GO TOP
    POP KEY
ENDPROC

PROCEDURE ZNSUZMI2
   PARAMETERS MKONTO,MAOP,MSTRANA,MPROMET,MDUG)
PUSH KEY CLEAR
   
   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MIZNOS=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE POCETNO STANJE
         IF MPROMET='POC'
            IF DATDOK=MDDAT0
               IF MDUG='DUG'
                  MIZNOS=MIZNOS+DUG
               ELSE
                  MIZNOS=MIZNOS+POT
               ENDIF
            endif   
         ELSE
            IF DATDOK>MDDAT0
               *----------AKO JE DUGOVNI PROMET-----
               IF MDUG='DUG'
                  MIZNOS=MIZNOS+DUG
               ENDIF
               *---------AKO JE POTRAZNI PROMET-----        
               IF MDUG='POT'
                  MIZNOS=MIZNOS+POT
               ENDIF
               *--------AKO JE DUGOVNI SALDO
               IF MDUG='DSALDO'
                  MIZNOS=MIZNOS+DUG-POT
               ENDIF
               IF MDUG='PSALDO'
                  MIZNOS=MIZNOS+POT-DUG
               ENDIF
            endif   
         ENDIF
         *---------------------------------
         SKIP
      ENDDO
      
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         IF MSTRANA='BRUTO'
            REPLACE BRUTO WITH MIZNOS
         ENDIF   
         IF MSTRANA='ISPRAVKA'
            REPLACE ISPRAVKA WITH MIZNOS
         ENDIF   
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC

PROCEDURE ZNSUZMI1 
   PARAMETERS MKONTO,MAOP,MPROMET,MSVE,MDUG)
   PUSH KEY CLEAR

   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MNETO=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE PROMET BEZ POCETNOG STANJA
         IF MPROMET='PRO'
            IF DATDOK>MDDAT0.AND.DATDOK<=MDDAT1
               *-----AKO SE UZIMA SALDO SA KONTA
               IF MSVE='SVE'
                  IF MDUG='DUG'
                     MNETO=MNETO+DUG-POT
                  ELSE
                     MNETO=MNETO+POT-DUG
                  ENDIF
               ELSE
               *-----DEO=AKO SE UZIMA SAMO JEDNA STRANA KONTA
                  IF MDUG='DUG'
                     MNETO=MNETO+DUG
                  ELSE
                     MNETO=MNETO+POT
                  ENDIF
               ENDIF
            ENDIF
         ELSE
         *------POC=AKO SE UZIMA I POCETNO STANJE
            IF MPROMET='POC'
               IF DATDOK>=MDDAT0.AND.DATDOK<=MDDAT1
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG-POT
                     ELSE
                        MNETO=MNETO+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG
                     ELSE
                        MNETO=MNETO+POT
                     ENDIF
                  ENDIF
               ENDIF
            ELSE
            *----------AKO SE UZIMA SAMO POCETNO STANJE---------
               IF DATDOK<=MDDAT0
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG-POT
                     ELSE
                        MNETO=MNETO+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MNETO=MNETO+DUG
                     ELSE
                        MNETO=MNETO+POT
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF   
         ENDIF
         
         SKIP
      ENDDO
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         REPLACE NETO WITH NETO+MNETO
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC


PROCEDURE ZNSUZMI1P 
   PARAMETERS MKONTO,MAOP,MPROMET,MSVE,MDUG)
PUSH KEY CLEAR
   
   MLEN=LEN(MKONTO)
   SELECT NAL
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MPRETH=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MLEN)<>MKONTO
            EXIT
         ENDIF
         *-------AKO JE PROMET BEZ POCETNOG STANJA
         IF MPROMET='PRO'
            IF DATDOK=MDDAT0
               *-----AKO SE UZIMA SALDO SA KONTA
               IF MSVE='SVE'
                  IF MDUG='DUG'
                     MPRETH=MPRETH+DUG-POT
                  ELSE
                     MPRETH=MPRETH+POT-DUG
                  ENDIF
               ELSE
               *-----DEO=AKO SE UZIMA SAMO JEDNA STRANA KONTA
                  IF MDUG='DUG'
                     MPRETH=MPRETH+DUG
                  ELSE
                     MPRETH=MPRETH+POT
                  ENDIF
               ENDIF
            ENDIF
         ELSE
         *------POC=AKO SE UZIMA I POCETNO STANJE
            IF MPROMET='POC'
               IF DATDOK=MDDAT0
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG-POT
                     ELSE
                        MPRETH=MPRETH+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG
                     ELSE
                        MPRETH=MPRETH+POT
                     ENDIF
                  ENDIF
               ENDIF
            ELSE
            *----------AKO SE UZIMA SAMO POCETNO STANJE---------
               IF DATDOK=MDDAT0
                  *-----AKO SE UZMIMA SALDO SA KONTA
                  IF MSVE='SVE'
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG-POT
                     ELSE
                        MPRETH=MPRETH+POT-DUG
                     ENDIF
                  ELSE
                  *-----AKO SE UZIMA SAMO JEDNA STRANA KONTA
                     IF MDUG='DUG'
                        MPRETH=MPRETH+DUG
                     ELSE
                        MPRETH=MPRETH+POT
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF   
         ENDIF
         
         SKIP
      ENDDO
      SELECT BILSEMA
      SEEK MAOP
      IF FOUND()
         REPLACE PRETH WITH PRETH+MPRETH
      ENDIF
   ELSE
      SELECT BILSEMA
   ENDIF
   POP KEY
ENDPROC


