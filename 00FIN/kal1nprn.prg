MBRKAL=BRKAL
mbrnal=kalg.brnal
PUBLIC amredni
PUSH KEY CLEAR
IF TOBJEKAT='V'
   KTM='TVTM'+TTVREDNI
ELSE
   KTM='TM'+TTVREDNI
ENDIF   
USE &KTM IN 0 ALIAS TM
SELECT TM
LOCATE FOR BRNAL=mbrnal
IF FOUND()
   amredni=RECNO()
ELSE
   amredni=0
endif
USE


USE &KPDVKON IN 0 ALIAS PDVKON
   DO IDEL WITH (KKOCKAX)

SELECT PDVKON   
COPY STRUCTURE TO &KKOCKA
USE
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
APPEND BLANK

SELECT KAL

MBRKAL=BRKAL
set order to 1
LOCATE FOR BRKAL=MBRKAL

   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      endif   
      MIZNOS=IZNOS-RABAT+ZAVISNI
      MVELVRED=VELVRED
      MPROCPOR=PROCPOR
      MPLACPOR=PLACPOR
      MPOREZ=POREZ
      SELECT KOCKA
      IF MPROCPOR=VAL(TOSTOPA)
         IF mporez<>0
            REPLACE OSN18 WITH OSN18+MVELVRED
            REPLACE PDV18 WITH PDV18+MPOREZ
            REPLACE OSN18P WITH OSN18P+MIZNOS
            REPLACE PDV18P WITH PDV18P+MPLACPOR
         endif
      ENDIF
      IF MPROCPOR=VAL(TNSTOPA)
         IF mporez<>0
            REPLACE OSN8 WITH OSN8+MVELVRED
            REPLACE PDV8 WITH PDV8+MPOREZ
            REPLACE OSN8P WITH OSN8P+MIZNOS
            REPLACE PDV8P WITH PDV8P+MPLACPOR
         endif
      ENDIF
      SELECT KAL
      SKIP
   ENDDO         

   SELECT kal
LOCATE FOR BRKAL=MBRKAL


   REPORT FORM KAL1N FOR BRKAL=MBRKAL.AND.KOL<>0 TO PRINTER 
   
   SELECT kocka
   USE
   SELECT kal
LOCATE FOR BRKAL=MBRKAL
   SET ORDER TO 
   POP KEY
   