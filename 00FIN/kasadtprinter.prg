PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR
   *-----------knjizenje   METALINE------------------------------
   *-----------PUNJENJE ARTIKALA----------------------------------
   DO KASASTAMP WITH MADATO,MASACEKAJ
   SELECT KASA
   SET ORDER TO
   GO TOP
*   SET STEP ON 
   MGOTOVINA=GOTOVINA
   MCEK=CEK
   MKARTICA=KARTICA
   MMALVRED=0
   DO WHILE.NOT.EOF()
      IF NMALVRED=0
      MMALVRED=MMALVRED+MALVRED
      ELSE
      MMALVRED=MMALVRED+nMALVRED
      endif      
      SKIP
   ENDDO 
   IZNOSRAC=MMALVRED  
   GO TOP
   IF IZNOSRAC>(MCEK+MKARTICA)
      MGOTOVINA=IZNOSRAC-(MCEK+MKARTICA)
      REPLACE GOTOVINA WITH MGOTOVINA
   ENDIF   
   SELECT KASA
   COPY TO &KKOCKA
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SET EXACT ON
   SELECT KOCKA
   INDEX ON RSIF TAG RSIF
   SET ORDER TO 1
   TOTAL ON RSIF TO &KKOCKA2 FIELDS RSIF,KOLI
   DELETE ALL 
   PACK
   APPEND FROM &KKOCKA2
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
         IF NMALCENA=0
            mmalcena=TRANSFORM(malcena,'9999999.99')
            mcena=ALLTRIM(TRANSFORM(malcena,'9999999.99'))
         ELSE
            mmalcena=TRANSFORM(Nmalcena,'9999999.99')
            mcena=ALLTRIM(TRANSFORM(Nmalcena,'9999999.99'))
         ENDIF                
         mnaziv=ALLTRIM(rsif)+ALLTRIM(SUBSTR(ROB.naz,1,30))
         m1naziv=SUBSTR(mnaziv,1,30)
         MM='107,1,______,_,__;1;'+mtax_id+';'+mrsif+';'+'1'+';'+m1naziv+';'      
         FPUTS(fidat,MM)
         SELECT KOCKA
         SKIP
      ENDDO
      M2MALVRED=0
      mm='48,1,______,_,__;1;0000;1;'
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
         IF NMALCENA=0
            mmalcena=TRANSFORM(malcena,'9999999.99')
            mcena=ALLTRIM(TRANSFORM(malcena,'9999999.99'))
         ELSE
            mmalcena=TRANSFORM(Nmalcena,'9999999.99')
            mcena=ALLTRIM(TRANSFORM(Nmalcena,'9999999.99'))
         ENDIF                
         mm='52,1,______,_,__;'+mrsif+';'+mkolic+';'+mcena+';'
         FPUTS(fidat,MM)
         SELECT KOCKA
         IF NMALVRED<>0
            M2MALVRED=M2MALVRED+(mkoli*nmalcena)
         ELSE
            M2MALVRED=M2MALVRED+(mkoli*malcena)
         endif
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
   SELECT KASA
   DO KASASNIMAJ 
   SELECT KASA
   DELETE ALL
   PACK
   SELECT ROB
   POP KEY


