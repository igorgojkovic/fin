PARAMETERS PRINTAJ
PUSH KEY CLEAR
SELECT DATUMI
REPLACE DAT0 WITH PDVUIZV03.TXTFDAT0.VALUE
REPLACE DAT1 WITH PDVUIZV03.TXTFDAT1.VALUE

MDAT0=PDVUIZV03.TXTFDAT0.VALUE
MDAT1=PDVUIZV03.TXTFDAT1.VALUE

DO IDEL WITH  (KKOCKAX)
DO IDEL WITH  (KKOCKAX2)
DO IDEL WITH  (KKOCKAX3)
DO IDEL WITH  (KKOCKAX4)
DO IDEL WITH  (KKOCKAX5)      
      
   USE &KPDVUS EXCLU IN 0 ALIAS PDVUS
   SELECT PDVUS
  * brow
   DELETE ALL
   PACK
   COPY STRU TO &KKOCKA
   COPY STRU TO &KKOCKA2
   COPY STRU TO &KKOCKA3
   USE &KKOCKA IN 0 ALIAS KOCKA exclu
   SELECT KOCKA
   INDEX ON BRNAL+KONTO TAG KONTO
   SELECT PDV
   GO TOP
   DO WHILE.NOT.EOF()
      IF DATpdv>=MDAT0.AND.DATpdv<=MDAT1
      MPDV18=PDV18
      MPDV8=PDV8
      MPDV5=PDV5
      MKON18=pdvkon.kOND1
      MKON8=pdvkon.KOND2
      MKON5='2780000500'
      MBRNAL=BRNAL
      SELECT KOCKA
      IF MPDV18<>0
            APPEND BLANK
            REPLACE PDV WITH MPDV18
            REPLACE KONTO WITH MKON18
            REPLACE BRNAL WITH MBRNAL
      ENDIF
      IF MPDV8<>0
            APPEND BLANK
            REPLACE PDV WITH MPDV8
            REPLACE KONTO WITH MKON8
            REPLACE BRNAL WITH MBRNAL
      ENDIF
      IF MPDV5<>0
            APPEND BLANK
            REPLACE PDV WITH MPDV5
            REPLACE KONTO WITH MKON5
            REPLACE BRNAL WITH MBRNAL
      ENDIF
      ENDIF
      SELECT PDV
      SKIP
   ENDDO
   
   SELECT KOCKA
   SET ORDER TO 1
   TOTAL ON BRNAL+KONTO TO &KKOCKA2 FIELDS PDV
   DELETE ALL
   PACK
   APPEND FROM &KKOCKA2

   USE NAL IN 0 ORDER 1
   SELECT NAL
   REPLACE ALL DATPDV WITH DATDOK FOR DATPDV=CTOD('').OR.(YEAR(DATPDV)<>YEAR(TDAT1))
   COPY TO &KKOCKA4 FOR SUBSTR(KONTO,1,2)='27'.and.(datpdv>=mdat0.and.datpdv<=mdat1)
   USE
   USE &kkocka4 IN 0 ALIAS kocka4 exclu
   SELECT kocka4
   DELETE ALL FOR SUBSTR(konto,1,3)='279'
   PACK
   INDEX on BRNAL+KONTO TAG KONTO
   SET ORDER TO 1
   TOTAL ON BRNAL+KONTO TO &KKOCKA5
   ZAP
   APPEND FROM &KKOCKA5
   USE &KKOCKA2 EXCLU IN 0 ALIAS kocka2
   SELECT KOCKA2
   ZAP
   SELECT KOCKA4
   GO TOP
   DO WHILE.NOT.EOF()
      IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
         MPDVGK=DUG
         AMPDV=0
         IF POT<0
            MPDVGK=DUG-POT
            AMPDV=1
         ENDIF
         MBRNAL=BRNAL
         MKONTO=KONTO
         REPLACE DUG WITH 9999999
         IF AMPDV=1
            REPLACE DUG WITH 9999999
            REPLACE POT WITH 9999999
         ENDIF         
         SELECT KOCKA2
         APPEND blank
         REPLACE PDVGK WITH MPDVGK
         REPLACE BRNAL WITH MBRNAL
         REPLACE KONTO WITH MKONTO
      ENDIF   
      SELECT KOCKA4
      SKIP
   ENDDO
   SELECT KOCKA4
   USE
   SELECT KOCKA2
   USE
   DO IDEL WITH  (KKOCKAX2)
   SELECT KOCKA
   APPEND FROM &KKOCKA2
   TOTAL ON BRNAL+KONTO TO &KKOCKA2
   ZAP
   APPEND FROM &KKOCKA2
   USE
   SELECT PDVUS
   USE
   USE &KPDVUS EXCLU IN 0 ALIAS PDVUS
   SELECT PDVUS
   DELETE ALL
   PACK
   APPEND FROM &KKOCKA
   DELETE ALL FOR PDV=PDVGK
   DELETE ALL FOR ABS(PDV-PDVGK)<=1
   PACK
   REPLACE ALL DAT0 WITH MDAT0
   REPLACE ALL DAT1 WITH MDAT1
   IF PRINTAJ=1
   *REPORT FORM PDVUGKSLAG PREVIEW 
   mfile='PDVUGKSLAG' 
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   
   ELSE
   REPORT FORM PDVUGKSLAG TO PRINTER PROMPT 
   ENDIF
   SELECT PDVUS
   USE
   SELECT PDV
   GO TOP 
   POP KEY
   PDVUIZV03.release