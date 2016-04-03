IF MRADNJA=1
   SELECT KASA
   IF RECCOUNT()>0
      IF RECCOUNT()<=254
         IF STORNO=' '
            REPLACE STORNO WITH 'S'
            SCATTER NAME POLJA
            MRREDNI=RECNO()
            APPEND BLANK
            KASA.LBLBRSTAVKI.Caption=STR(RECCOUNT(),3,0)   
            GATHER NAME POLJA
            REPLACE KOLI WITH -KOLI
            MKOLI=KOLI
            REPLACE MALVRED WITH KOLI*MALCENA
            MRSIF=RSIF

*            MHEIGHT=KASA.GRD1.HEIGHT+1.29
*            IF MHEIGHT>34.13
*               MHEIGHT=34.13
*            ENDIF
*            KASA.GRD1.HEIGHT=MHEIGHT

            KASA.GRD1.REFRESH
            SELECT ROB
            SET EXACT ON
            SET ORDER TO 1
            SEEK MRSIF
            IF FOUND()
               REPLACE KOL WITH kol-MKOLI
            ENDIF
            SET EXACT OFF
            SET ORDER TO 2
            SELECT KASA
            *MREC=RECNO()
            SET ORDER TO
            GO TOP
            MMALVRED=0
            DO WHILE.NOT.EOF()
               MMALVRED=MMALVRED+MALVRED
               SKIP
            ENDDO
            GOTO MRREDNI
            KASA.LBLIZNOS.CAPTION=TRAN(MMALVRED,'999 999 999.99')
            KASA.LBLIZNOSR.CAPTION=TRAN(MMALVRED,'9999 999.99')
            KASA.LBLIZNOSRDEV.CAPTION=TRAN(MMALVRED/AMKURS,'999 999.99')
            KASA.GRD0.REFRESH
            KASA.GRD1.REFRESH
         ELSE
            DO PORUKAU WITH ' STAVKA JE STORNIRANA '
         ENDIF   
      ELSE
         DO PORUKAU WITH ' DOSTIGNUT JE MAKSIMALAN BROJ STAVKI U RAÈUNU '
      ENDIF   
   ELSE
      DO PORUKAU WITH ' KASA JE PRAZNA '
   ENDIF

   KASA.GRD1.SetFocus 
   KASA.REFRESH   

ELSE
   SELECT KASA
   IF RECCOUNT()>0
      IF RECCOUNT()<=254
         IF STORNO=' '
            REPLACE STORNO WITH 'S'
            SCATTER NAME POLJA
            MRREDNI=RECNO()
            APPEND BLANK
            KASA.LBLBRSTAVKI.Caption=STR(RECCOUNT(),3,0)   
            
            GATHER NAME POLJA
            REPLACE KOLI WITH -KOLI
            MKOLI=KOLI
            REPLACE MALVRED WITH KOLI*MALCENA	
            MRSIF=RSIF

*            MHEIGHT=KASA.GRD1.HEIGHT+1.29
*            IF MHEIGHT>34.13
*               MHEIGHT=34.13
*            ENDIF
*            KASA.GRD1.HEIGHT=MHEIGHT

            KASA.GRD1.REFRESH
            SELECT ROB
            SET EXACT ON
            SET ORDER TO 1
            SEEK MRSIF
            IF FOUND()
               REPLACE KOL WITH kol-MKOLI
            ENDIF
            SET EXACT OFF
            SET ORDER TO 2
            SELECT KASA
            SET ORDER TO
            GO TOP
            MMALVRED=0
            DO WHILE.NOT.EOF()
               MMALVRED=MMALVRED+MALVRED
               SKIP
            ENDDO
            GOTO MRREDNI
            KAFANA.LBLIZNOS.CAPTION=TRAN(MMALVRED,'999 999 999.99')
            KAFANA.LBLIZNOSR.CAPTION=TRAN(MMALVRED,'9999 999.99')
            KASA.LBLIZNOSRDEV.CAPTION=TRAN(MMALVRED/AMKURS,'999 999.99')            
            KAFANA.GRD0.REFRESH
            KAFANA.GRD1.REFRESH
         ELSE
           DO PORUKAU WITH ' STAVKA JE STORNIRANA '
         ENDIF   
      ELSE
         DO PORUKAU WITH ' DOSTIGNUT JE MAKSIMALAN BROJ STAVKI U RAÈUNU '
      ENDIF   
   ELSE
     DO PORUKAU WITH ' KASA JE PRAZNA '
   ENDIF

   KAFANA.GRD1.SetFocus 
   KAFANA.REFRESH   
ENDIF
