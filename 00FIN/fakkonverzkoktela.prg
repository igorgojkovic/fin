   PUSH KEY CLEAR
   DO IDEL WITH (KKOCKAX)
   DO IDEL WITH (KKOCKAX2)
   DO IDEL WITH (KKOCKAX3)
   SELECT FAK
   SET ORDER TO 1
   SET RELATION TO
   SELECT rob
   SET ORDER TO 1
   SELECT fak
   COPY STRUCTURE TO &KKOCKA
   COPY  TO &KKOCKA2 FIELDS BRKAL
   USE &KKOCKA2 IN 0 ALIAS KOCKA2 EXCLU
   SELECT KOCKA2
   INDEX ON BRKAL TAG BRKAL 
   SET ORDER TO 1
   TOTAL ON BRKAL TO &KKOCKA3
   ZAP
   APPEND FROM &KKOCKA3
   USE ROKOKTEL IN 0 ORDER 1
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SELECT KOCKA2
   GO TOP
   DO WHILE.NOT.EOF()
      MBRKAL=BRKAL
      SELECT FAK   
      seek MBRKAL
      IF FoUND()
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF   
         MRSIF=RSIF
         MKOL=KOLI
         SELECT ROKOKTEL
         SEEK MRSIF
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF RSIF<>MRSIF
                  EXIT
               ENDIF
               MPODROB=PODROB
               MKOL2=KOL
               SELECT FAK
               REPLACE KOLI WITH 0
               mdatdok=datdok
               SELECT ROB
               SEEK MPODROB
               IF FOUND()
                  MMALCENA=MALCENA
                  MCENA=ZADNABM
                  MTARIFA=TARIFA
                  MPROCPOR=PROCPOR
                  MVRSTA=VRSTA
                  SELECT KOCKA
                  APPEND BLANK
                  REPLACE RSIF WITH MPODROB
                  REPLACE BRKAL WITH MBRKAL
                  REPLACE KOLI WITH MKOL*MKOL2
                  REPLACE CENA WITH MCENA
                  REPLACE MALCENA WITH MMALCENA
                  REPLACE TARIFA WITH MTARIFA
                  REPLACE PROCPOR WITH MPROCPOR
                  REPLACE DATDOK WITH mdatdok
                  IF MVRSTA='U'
                     REPLACE CENA WITH 1
                  ENDIF   
               ENDIF   
               SELECT ROKOKTEL
               SKIP
            ENDDO   
         ENDIF   
         SELECT FAK
         SKIP
      ENDDO   
   ENDIF
   SELECT KOCKA2
   SKIP
ENDDO 

   SELECT KOCKA
   GO TOP
   DO WHILE.NOT.EOF()
      SCATTER NAME POLJA
      SELECT FAK
      APPEND BLANK
      GATHER NAME POLJA
      SELECT KOCKA
      SKIP
   ENDDO   
   SELECT ROKOKTEL
   USE
  
  SELECT KOCKA2
  USE
   SELECT KOCKA
   USE
   SELECT FAK
   SET ORDER TO 
   SET RELATION TO BRKAL INTO FAKG  ADDITIVE
   SET RELATION TO RSIF INTO ROB ADDITIVE
   GO BOTTOM
   FAKSERV.RELEASE
*   FAK.GRD0.COLUMN4.SETFOCUS
 *  FAK.REFRESH
   POP KEY
