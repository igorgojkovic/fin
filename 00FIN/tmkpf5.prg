PUSH KEY CLEAR
   IF VREDPROD<>0
      MDATDOK=DATDOK
      MOPIS=OPIS
      MBRKAL=BRKAL
      MBRNAL=BRNAL
      MPPSAP=VREDPROD
      KTMP='TMP0.DBF'
      MDOK=ALLTRIM(TOBJEKAT)+ALLTRIM(TTVREDNI)
      USE &KTMP IN 0 ALIAS TMP
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
      SELECT TMP
      USE
      SELECT TM
      SKIP
   ENDIF         
TM.GRD0.SETFOCUS
POP KEY