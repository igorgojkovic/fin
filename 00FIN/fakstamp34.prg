PUSH KEY CLEAR
   DO IDEL WITH (KKOCKAX)
   SELECT FAK
   MBRKAL=BRKAL
   COPY STRUCTURE TO &KKOCKA
   USE &KKOCKA IN 0 ALIAS KOCKA
   SELECT FAK
   SET RELATION TO
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL

   IF FOUND()
      MMALVRED=0
      MPOREZ=0
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         MMALVRED=MMALVRED+MALVRED
         MPOREZ=MPOREZ+POREZ   
         SKIP
      ENDDO   
      SELECT KOCKA
      APPEND BLANK
      REPLACE BRKAL WITH MBRKAL
      REPLACE KOLI WITH 1
      REPLACE CENA WITH MMALVRED
      REPLACE TARIFA WITH tostopa
      REPLACE PROCPOR WITH VAL(toStopa)
      REPLACE POREZ WITH MPOREZ
      REPLACE MALCENA WITH MMALVRED
      REPLACE MALVRED WITH MMALVRED
   ENDIF
   SELECT KOCKA
   SET RELATION TO BRKAL INTO FAKG ADDITIVE
   GO TOP
   *REPORT FORM FAK34 PREVIEW
      mfile='FAK34'
      uslov=""
      DO printer_bullzip WITH mdata02,mfile,uslov
   
   SELECT KOCKA
   USE
   SELECT FAK
LOCATE FOR BRKAL=MBRKAL
   SET ORDER TO 
   SET RELATION TO BRKAL INTO FAKG  ADDITIVE
   SET RELATION TO RSIF INTO ROB ADDITIVE
POP KEY