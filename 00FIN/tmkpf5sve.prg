PUSH KEY CLEAR
   DO IDEL WITH (KKOCKAX)
   DO IDEL WITH (KKOCKAX2)
   KTMP='TMP0'
   USE &KTMP IN 0 ALIAS TMP
   SELECT TMP
   SELECT TM
   COPY TO &KKOCKA FOR VREDPROD<>0
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SELECT KOCKA
   INDEX ON DTOS(DATDOK) TAG DATDOK
   SET ORDER TO 1
   TOTAL ON DTOS(DATDOK) TO &KKOCKA2 FIELDS VREDPROD
   DELETE ALL
   PACK

   APPEND FROM &KKOCKA2
   GO TOP
   DO WHILE.NOT.EOF()
      MDATDOK=DATDOK
      MOPIS=OPIS
      MBRKAL=BRKAL
      MBRNAL=BRNAL
      MPPSAP=VREDPROD
      MDOK=ALLTRIM(TOBJEKAT)+ALLTRIM(TTVREDNI)
      SELECT TMP
      LOCATE FOR SUBSTR(OPIS,1,5)='PAZAR'.and.datdok=mdatdok.AND.ALLTRIM(DOK)=ALLTRIM(MDOK)
      IF.NOT.FOUND()
         APPEND BLANK
         GO BOTTOM   
      ENDIF
      REPLACE DATDOK WITH MDATDOK
      REPLACE OPIS  WITH 'PAZAR '
      REPLACE PROO WITH MPPSAP
      REPLACE UKPRIH WITH PROO+PRON+PROB+USLP+USLB+OSTPRIH
      REPLACE UKRASH WITH MATTR+PLATE+NABVRED+OSTRASH
      REPLACE BRNAL WITH MBRNAL
      REPLACE DOK WITH MDOK
      SELECT KOCKA
      SKIP
   ENDDO   

   SELECT TMP
   USE
   SELECT TM
   
POP KEY