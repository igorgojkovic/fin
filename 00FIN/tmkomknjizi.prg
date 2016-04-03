 PUSH KEY CLEAR
  SET EXACT OFF
   GO TOP
   DO WHILE.NOT.EOF()
      MRSIF=RSIF
      SELECT KAL
      SET ORDER TO 2
      SEEK MRSIF
      IF FOUND()
         MSIFRA=SPACE(5)
         MNAZIV=SPACE(30)
         MBRKAL=BRKAL
         MBRRAC=KALG.BRRAC
         SELECT KALG
         SET ORDER TO 1
         LOCATE FOR BRKAL=MBRKAL

         IF FOUND()
            MSIFRA=SIFRA
         ELSE
            MSIFRA=SPACE(5)
         ENDIF
         IF MSIFRA<>SPACE(5)
            SELECT AN0
            SEEK MSIFRA
            IF FOUND()
               MNAZIV=NAZIV
            ELSE
               MNAZIV=SPACE(30)
            ENDIF
         ENDIF
         SELECT TMKOM
         REPLACE BRKAL WITH MBRKAL
         REPLACE SIFRA WITH MSIFRA
         REPLACE NAZIV WITH MNAZIV
         REPLACE BRRAC WITH MBRRAC
      ENDIF
      SELECT KAL
      SET ORDER TO
      SELECT TMKOM
      SKIP
   ENDDO
   GO TOP

   SELECT TMKOM
   SET ORDER TO 1
   DO IDEL WITH (KKOCKAX)
   DO IDEL WITH (KKOCKAX2)
   COPY TO &KKOCKA FOR KOLI<>0
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SELECT KOCKA
   INDEX ON BRKAL TAG BRKAL
   SET ORDER TO 1
   TOTAL ON BRKAL TO &KKOCKA2 
   DELETE ALL
PACK

   APPEND FROM &KKOCKA2
   MRC=RECCOUNT()
   SELECT FAKG
   GO BOTTOM
   MNOVI=VAL(BRKAL)+1
   IF RECCOUNT()>0
      MFVRSTA=FVRSTA
      MNAL=SUBSTR(BRNAL,1,2)
   ELSE
      MFVRSTA='  7'
      MNAL='R1'
   ENDIF
   SELECT KOCKA
   GO TOP
   DO WHILE.NOT.EOF()
      MLEN=LEN(ALLTRIM(STR(MNOVI)))
      MNBRKAL=REPLI('0',6-MLEN)+ALLTRIM(STR(MNOVI))
      REPLACE BRFAK WITH MNBRKAL
      MNOVI=VAL(BRFAK)+1
      SKIP
   ENDDO
   SELECT KOCKA
   GO TOP
   DO WHILE.NOT.EOF()
      MBRFAK=BRFAK
      MBRKAL=BRKAL
      SELECT TMKOM
      LOCATE FOR BRKAL=MBRKAL

      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            REPLACE BRFAK WITH MBRFAK
            REPLACE FVRSTA WITH MFVRSTA
    
            REPLACE BRNAL WITH MNAL+SUBSTR(BRFAK,3,4)
            SKIP
         ENDDO
      ENDIF
      SELECT KOCKA
      SKIP
   ENDDO
   SELECT KOCKA
   USE
   SELECT TMKOM
   SET ORDER TO
   GO TOP
   SELECT TMKOM
   SET ORDER TO 2
   DO IDEL WITH (KKOCKAX)
   DO IDEL WITH (KKOCKAX2)
   COPY TO &KKOCKA FOR KOLI<>0
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SELECT KOCKA
   INDEX ON BRFAK TAG BRFAK
   SET ORDER TO 1
   TOTAL ON BRFAK TO &KKOCKA2
DELETE ALL
PACK

   APPEND FROM &KKOCKA2
   GO TOP
   DO WHILE.NOT.EOF()
      MBRFAK=BRFAK
      SELECT TMKOM
      SEEK MBRFAK
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRFAK<>MBRFAK
               EXIT
            ENDIF
            IF KOLI<>0
               MRSIF=RSIF
               MKOLI=KOLI
               MBRFAK=BRFAK
               MFVRSTA=FVRSTA
               MSIFRA=SIFRA
               MDATDOK=DATDOK
               MBRNAL=BRNAL
               MBRRAC=BRRAC
               SELECT FAKG
               SEEK MBRFAK
               IF.NOT.FOUND()
                  APPEND BLANK
                  REPLACE BRKAL WITH MBRFAK
                  REPLACE FVRSTA WITH MFVRSTA
                  REPLACE SIFRA WITH MSIFRA
                  REPLACE DATDOK WITH MDATDOK
                  REPLACE VALUTA WITH MDATDOK
                  REPLACE BRRAC WITH MBRRAC
                  REPLACE OTPDAT WITH MDATDOK
                  REPLACE VPDV WITH 'IG0'
                  REPLACE BRNAL WITH MBRNAL
                  REPLACE DATUM  WITH DATE()
                  REPLACE VREME WITH TIME()
                  REPLACE OPDV WITH '*'
                  SKIP
               ENDIF
               SELECT FAK
               APPEND BLANK
               REPLACE BRKAL WITH MBRFAK
               REPLACE RSIF WITH MRSIF
               REPLACE KOLI WITH MKOLI
               SELECT rob
               SEEK MRSIF
               IF FOUND()
                  MMALCENA=MALPLCENA
                  MTARIFA=TARIFA
                  MPROCPOR=PROCPOR
                  MCENA=NABCENA
               ELSE
                  MMALCENA=0
                  MTARIFA=' '
                  MPROCPOR=0
                  MCENA=0
               ENDIF
               SELECT fak
               REPLACE MALCENA WITH MMALCENA
               REPLACE TARIFA WITH MTARIFA
               REPLACE PROCPOR WITH MPROCPOR
               REPLACE CENA WITH MCENA
               REPLACE DATDOK  WITH DATE()
     
               DO fakrac
            ENDIF
            SELECT TMKOM
            SKIP
         ENDDO
      ENDIF
      SELECT kocka
      SKIP
   ENDDO
   SELECT KOCKA
   USE
   SELECT tmkom
POP KEY
