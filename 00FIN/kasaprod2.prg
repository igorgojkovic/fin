   PARAMETERS MMBAR,MBAR,MKOLICINA
   SELECT KASA
   IF RECCOUNT()>0
      GO TOP
      MMSTO=STO
   ELSE
      MMSTO='999'
   ENDIF
   USE KASASTO IN 0 ORDER 1
   SELECT KASASTO
   SET EXACT on
   SEEK MMSTO
   IF FOUND()
      IF TREB='P'
         MATREB='P'
      ELSE
         MATREB=' '
      ENDIF
   ELSE
      MATREB=' '
   ENDIF
   USE
   SET EXACT off
   SELECT KASA
   GO TOP
   SELECT ROB
   IF MATREB<>'P'
      KAFANA.GRD0.COLUMN2.BACKCOLOR=RGB(0,255,0)
      SET ORDER TO 2
      KAFANA.grd0.COLUMN2.TEXT1.SETFOCUS
      IF MMBAR=1.OR.MMBAR=2
         *----ako je roba sopstvena
         IF mkolicina=0
            IF TRANSPAK=0
               MKOL=1
            ELSE
               MKOL=TRANSPAK
            ENDIF
         else
            MKOL=MKOLICINA
         ENDIF
      ELSE
         MKOL=0
      ENDIF  
*      IF MKOL<>0.AND.(KOL<>0.OR.VRSTA='S').AND.MALCENA<>0.AND.(KOL>=MKOL.OR.VRSTA='S')
      IF MKOL<>0
         MRSIF=RSIF
         MNAZ=NAZ
         MMALCENA=MALCENA
         MTARIFA=TARIFA
         MPROCPOR=PROCPOR
         MJED=SUBSTR(JED,1,3)
         MGRUPA=GRUPA
         SELECT KASA
         *----AKO JE PRVA STAVKA KASE---------
         IF RECCOUNT()<1
            DO WHILE .T.
               MBRKAL='000000'
               SELECT KASA
               APPEND BLANK
               REPLACE BRKAL WITH MBRKAL
               REPLACE KOLi WITH MKOL
               REPLACE RSIF WITH MRSIF
               REPLACE NAZ WITH MNAZ
               REPLACE TARIFA WITH MTARIFA
               REPLACE PROCPOR WITH MPROCPOR
               REPLACE MALCENA WITH MMALCENA
               REPLACE MALVRED WITH ROUND(KOLi*MALCENA,2)
               REPLACE JED WITH MJED
               REPLACE OPER WITH PPAS
               REPLACE STO WITH aSTO
               IF MGRUPA='   '
                  REPLACE GRUPA WITH 'O'
               ELSE   
                  REPLACE GRUPA WITH MGRUPA
               ENDIF
               IF RECCOUNT()>0
                  EXIT
               ELSE
                  loop   
               ENDIF   
            ENDDO
            *------AKO NIJE PRVA STAVKA------------   
         ELSE
            IF RECCOUNT()<=254
               GO BOTTOM
               MN2BRKAL=BRKAL   
               MMREC1=RECCOUNT()
               DO WHILE .T.  
                  IF RSIF<>MRSIF.or.storno='S'
                     APPEND BLANK
                     REPLACE KOLi WITH MKOL
                     MNASAOROB=0
                  ELSE
                     REPLACE KOLI WITH KOLI+MKOL
                     MNASAOROB=1
                  ENDIF
                  REPLACE BRKAL WITH MN2BRKAL
                  REPLACE RSIF WITH MRSIF
                  REPLACE NAZ WITH MNAZ
                  REPLACE TARIFA WITH MTARIFA
                  REPLACE PROCPOR WITH MPROCPOR
                  REPLACE MALCENA WITH MMALCENA
                  REPLACE MALVRED WITH KOLi*MALCENA
                  REPLACE JED WITH MJED
                  REPLACE OPER WITH PPAS
                  REPLACE STO WITH aSTO
                  IF MGRUPA='   '
                     REPLACE GRUPA WITH 'O'
                  ELSE   
                     REPLACE GRUPA WITH MGRUPA
                  ENDIF
*                  DO METADISP WITH SUBSTR(MNAZ,1,20),TRANSFORM(MMALCENA,'999999.99')
                  IF RECCOUNT()>MMREC1.AND.MNASAOROB=0
                     EXIT
                  ELSE
                     IF MNASAOROB=1
                        EXIT
                     ELSE
                        LOOP
                     ENDIF
                  ENDIF
               ENDDO            
            ELSE
               DO PORUKAU WITH ' DOSTIGNUT JE MAKSIMALAN BROJ STAVKI U RAÈUNU '
               mkol=0
            ENDIF      
            SET BELL TO
         ENDIF

         SELECT KASA
         SET ORDER TO
         GO TOP
         MMALVRED=0
         DO WHILE.NOT.EOF()
            MMALVRED=MMALVRED+MALVRED
            SKIP
         ENDDO   
*         KAFANA.LBLIZNOS.CAPTION=TRAN(MMALVRED,'999 999 999.99')
         KAFANA.LBLIZNOSR.CAPTION=TRAN(MMALVRED,'9999 999.99')
        KASA.LBLIZNOSRDEV.CAPTION=TRAN(MMALVRED/AMKURS,'999 999.99')         
         KAFANA.GRD0.REFRESH
         KAFANA.GRD1.REFRESH
         SELECT ROB
         REPLACE KOL WITH kol-MKOL
      ELSE
         IF MKOL=0
            DO  PORUKAU  WITH ' UNETA KOLIÈINA=0 '
         ENDIF
  
         IF MALCENA=0
            DO  PORUKAU WITH ' CENA=0  '
         ENDIF
*         IF KOL<=0.AND.(VRSTA<>'S')
*            DO  PORUKAU WITH ' KOLIÈINA U TABELI =0  '
*         ENDIF      
*         IF KOL>MKOL.AND.(VRSTA<>'S')
*            DO  PORUKAU WITH ' PREKORAÈENA KOLICINA ZA PRODAJU '
*         ENDIF
      ENDIF
   ELSE
      DO  PORUKAU WITH ' TREBOVANJE JE PREUZETO NE MOGU SE DODAVATI NOVE STAVKE '
   ENDIF
   SELECT rob
   KAFANA.LABEL1.CAPTION=RSIF+' '+NAZ+' '+JED+' '+TRAN(KOL,'999 999.999')+' '+TRAN(MALCENA,'999 999 999.99')
*   KAFANA.TXTTRAZI.SETFOCUS 
   