PUSH KEY CLEAR
MBRKAL=BRKAL
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
*---------DODAJEMO POREZ NA TROSKOVE DOBAVLJACA-----------   
LOCATE FOR BRKAL=MBRKAL
   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      endif   
      mplacpord18=0
      mplacpord8=0
      mtrdob=trdob
      IF PROCPORD=VAL(TOSTOPA)
         MPLACPORD18=PLACPORD
      ELSE
         MPLACPORD8=PLACPORD
      ENDIF
      MPROCPORD=PROCPORD
      SELECT KOCKA
      IF MPROCPORD=VAL(TOSTOPA)
         IF mPLACPORD18<>0
            REPLACE OSN18P WITH OSN18P+MTRDOB
            REPLACE PDV18P WITH PDV18P+MPLACPORD18
         endif
      ENDIF
      IF MPROCPORD=VAL(TNSTOPA)
         IF MPLACPORD8<>0
            REPLACE OSN8P WITH OSN8P+MTRDOB
            REPLACE PDV8P WITH PDV8P+MPLACPORD8
         endif
      ENDIF
      SELECT KAL
      SKIP
   ENDDO         
   SELECT kal
LOCATE FOR BRKAL=MBRKAL


   *REPORT FORM KAL1NK FOR BRKAL=MBRKAL PREVIEW 
      mfile='KAL1NK'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov
   
   SELECT kocka
   USE
   SELECT kal
LOCATE FOR BRKAL=MBRKAL
   SET ORDER TO 
   POP KEY
   