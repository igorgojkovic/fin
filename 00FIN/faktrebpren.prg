PARAMETERS MBRKAL
PUSH KEY CLEAR

IF TNET=2
   SELECT FAK
   MABRKAL=BRKAL
   MBRNAL=FAKG.BRNAL
   SET RELATION TO
   SET ORDER TO 1
  * SET STEP ON 
   MVERIFIKAC=1
   SELECT FAKG
   SET ORDER TO 1
   KFAKT='FAKT'
   KFAKTG='FAKTG'
   USE &KFAKT IN 0 ALIAS FAKT 
   USE &KFAKTG IN 0 ALIAS FAKTG 
   DO IDEL WITH (KKOCKAX)
   SELECT FAKT
   COPY STRUCTURE TO &KKOCKA
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SET EXACT OFF
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL

   IF FOUND()
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         IF VERIFIKAC<>'*'
            MVERIFIKAC=0
         ENDIF   
         SCATTER NAME POLJA
         SELECT KOCKA
         APPEND BLANK
         GATHER NAME POLJA
         SELECT FAKT
         SKIP
      ENDDO
      SELECT KOCKA
      MTKAL='T'+ALLTRIM(BRKAL)+'.DBF'
      COPY TO &MTKAL
      USE
      AGDE2=MSNIMAK+'\'+MSSNIMAK 
      COPY FILE &MTKAL TO &AGDE2   
      ERASE &MTKAL
   
      SELECT FAKT

      IF TVERIFIKAC<>'D'
         MVERIFIKAC=1
      ENDIF   
      IF MVERIFIKAC=1
         IF TVERIFIKAC='D'
            LOCATE FOR BRKAL=MBRKAL
            IF FOUND()
               DO WHILE.NOT.EOF()
                  IF BRKAL<>MBRKAL
                     EXIT
                  ENDIF
                  IF IZDATO<>0
                     mrsif=rsif
                     MMKOLI=KOLI
                     SCATTER NAME POLJA
                     SELECT FAK
                     IF KOLI<>0 
                        APPEND BLANK
                     ENDIF    
                     GATHER NAME POLJA
                     REPLACE KOLI WITH IZDATO
                     REPLACE BRKAL WITH MABRKAL
                     MIZDATO=IZDATO
                     SELECT ROB
                     SEEK MRSIF
                     IF FOUND()
                        REPLACE KOL WITH KOL+MMKOLI-MIZDATO
                        REPLACE IZLAZ WITH IZLAZ-MMKOLI+MIZDATO
                        MTARIFA=TARIFA
                        MPROCPOR=PROCPOR
                        SELECT FAK
                        REPLACE TARIFA WITH MTARIFA
                        REPLACE PROCPOR WITH MPROCPOR
                     ENDIF   
                     SELECT FAK
                  ENDIF   
                  SELECT FAKT
                  SKIP
               ENDDO   
            ENDIF
         ELSE
            LOCATE FOR BRKAL=MBRKAL
            IF FOUND()
               DO WHILE.NOT.EOF()
                  IF BRKAL<>MBRKAL
                     EXIT
                  ENDIF
                  SCATTER NAME POLJA
                  SELECT FAK
                  IF KOLI<>0 
                     APPEND BLANK
                  ENDIF   
                  GATHER NAME POLJA
                  REPLACE BRKAL WITH MABRKAL
                  SELECT FAKT
                  SKIP
               ENDDO   
            ENDIF
         ENDIF
      ENDIF
   ENDIF
   IF MVERIFIKAC=1
*   SET STEP ON 
      SELECT FAKTG
      SET ORDER TO 1
      LOCATE FOR BRKAL=MBRKAL
      IF FOUND()
         SCATTER NAME POLJA
         SELECT FAKG
         SEEK MABRKAL       
         IF FOUND()      
            GATHER NAME POLJA
            REPLACE BRKAL WITH MABRKAL
            REPLACE BRNAL WITH MBRNAL   
            REPLACE TREBOV WITH ' '
         ENDIF
         SELECT FAKT
         LOCATE FOR BRKAL=MBRKAL
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF BRKAL<>MBRKAL
                  EXIT
               ENDIF   
               REPLACE BRKAL WITH '999999'
               REPLACE VERIFIKAC WITH ' '
               LOCATE FOR BRKAL=MBRKAL
               IF FOUND()
                  LOOP
               ELSE
                  EXIT
               ENDIF
               SKIP
            ENDDO      
         ENDIF   
         USE
         SELECT FAKTG
         LOCATE FOR BRKAL=MBRKAL
         IF FOUND()
            REPLACE BRKAL WITH '999999'
         ENDIF   
         USE
      ENDIF   
   ENDIF
   SELECT FAK    
   *--------KRAJ KOPIRANJA U TREBOVANJE---------
ENDIF
POP KEY