PUSH KEY CLEAR
   *-----------PUNJENJE ARTIKALA----------------------------------
IF FAKG.KASA=' '
   *---KREIRAMO TABELE-----------
   SELECT KASAPL
   MGOTOVINA=KES
   MCEK=CEK
   MKARTICA=KARTICA
   MDATO=DATO   
   SELECT FAK
   MBRKAL=BRKAL
   SET ORDER TO 1   
   SEEK mbrkal
   DO idel WITH (KKOCKAX)
   DO idel WITH (KKOCKAX2)   
   SELECT FAK
   COPY STRUCTURE TO &KKOCKA
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SELECT KOCKA
   MMALVRED=0
   SELECT FAK
   LOCATE FOR BRKAL=MBRKAL

   IF FOUND()
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         SCATTER NAME POLJA
         MVELVRED=VELVRED-RABAT
         IF KOLI<>0
            SELECT KOCKA
            APPEND BLANK
            GATHER NAME POLJA
            IF TOBJEKAT='V'
               REPLACE MALVRED WITH ROUND(MVELVRED*(100+PROCPOR)/100,2)
               REPLACE MALCENA WITH ROUND(MALVRED/KOLI,2)
            ENDIF
            MMALVRED=MMALVRED+MALVRED
         ENDIF
         SELECT FAK
         SKIP
      ENDDO      
   ENDIF
   SET EXACT ON
   SELECT KOCKA
   INDEX ON RSIF TAG RSIF
   SET ORDER TO 1
   TOTAL ON RSIF TO &KKOCKA2 FIELDS RSIF,KOLI,Malvred
   ZAP
   APPEND FROM &KKOCKA2
   GO TOP
   SET EXACT OFF 
   SET CENTURY ON 
   DELETE ALL FOR KOLI=0
   PACK
   GO TOP
   SELECT ROB
   SET ORDER TO 1
   SELECT KOCKA
   SET RELATION TO RSIF INTO ROB ADDITIVE
   SET EXACT OFF 
   SET CENTURY ON
   *--------SALJEMO PLACANJE I BON--------------------------
   SELECT KOCKA
   GO TOP
   IF RECCOUNT()>0
  
      MMBON='racun_'+'00'+PPAS+'.txt'
      MMBON0='racun_'+'00'+PPAS
      MP2=ALLTRIM(TRANSFORM(MCEK,'9999999.99'))
      MP1=ALLTRIM(TRANSFORM(MKARTICA,'9999999.99'))
      MP0=ALLTRIM(TRANSFORM(MGOTOVINA,'9999999.99'))
      ***ubacujemo artikle
      SET CENTURY ON
      FIDAT=FCREATE(MMBON)
      SELECT kocka
      GO TOP
  *    SET STEP ON 
      DO WHILE.NOT.EOF()
         mmalcena='      0.00'
         DO CASE TARIFA
         CASE ALLTRIM(TARIFA)=TOSTOPA
            MTAx_id='4'
         CASE ALLTRIM(TARIFA)=ALLTRIM(TNSTOPA)
            MTAx_id='5'
         OTHERWISE
            MTAx_id='1'
         ENDCASE
         mrsif=ALLTRIM(rsif)
         mmalcena=TRANSFORM(malcena,'9999999.99')
         mcena=ALLTRIM(TRANSFORM(malcena,'9999999.99'))
         mnaziv=ALLTRIM(rsif)+ALLTRIM(SUBSTR(ROB.naz,1,30))
         m1naziv=SUBSTR(mnaziv,1,30)
         MM='107,1,______,_,__;1;'+mtax_id+';'+mrsif+';'+mcena+';'+m1naziv+';'      
         FPUTS(fidat,MM)
         SELECT KOCKA
         SKIP
      ENDDO
      M2MALVRED=0
      mm='48,1,______,_,__;1;1;1;'
      FPUTS(fidat,MM)
      SELECT kocka
      GO TOP
      DO WHILE.NOT.EOF()
         mART_ID=rsif+SPACE(15)
         MKOLLEN=LEN(ALLTRIM(STR(ABS(KOLI),9,3)))
         MKOLI=ABS(KOLI)
         MKOLIC=''
         IF MKOLI>9
            MKOLIC=STR(MKOLI,9,2)
         ELSE
            MKOLIC=STR(MKOLI,9,3)
         ENDIF
         IF MKOLI>99
            MKOLIC=STR(MKOLI,9,1)
         ENDIF
         IF MKOLI>999
            MKOLIC=STR(MKOLI,9,0)
         ENDIF
         mmalcena='      0.00'
         mkolic=ALLTRIM(mkolic)
         mrsif=ALLTRIM(rsif)
            mmalcena=TRANSFORM(malcena,'9999999.99')
            mcena=ALLTRIM(TRANSFORM(malcena,'9999999.99'))
         mm='52,1,______,_,__;'+mrsif+';'+mkolic+';'
         FPUTS(fidat,MM)
         SELECT KOCKA
            M2MALVRED=M2MALVRED+(mkoli*malcena)
         SKIP
      ENDDO
      IF mgotovina<>0
         mM='53,1,______,_,__;'+'0'+';'+mp0+';'
         FPUTS(fidat,MM)
      endif
      IF mcek<>0
         mM='53,1,______,_,__;'+'1'+';'+mp2+';'
         FPUTS(fidat,MM)
      endif
      IF mkartica<>0
         mM='53,1,______,_,__;'+'2'+';'+mp1+';'   
         FPUTS(fidat,MM)
      endif
      mm='56,1,______,_,__;'   
      FPUTS(fidat,MM)   
      GO top
      FCLOSE(fidat)
      DO KASADT35SALJI WITH MMBON,MMBON0,0
   ENDIF
   SELECT kocka
   use
   SELECT FAK
   LOCATE FOR BRKAL=MBRKAL
   SET ORDER TO 
   REPLACE FAKG.KASA WITH '*'
ENDIF   
POP KEY
