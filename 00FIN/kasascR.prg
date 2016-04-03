PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR

   *-----------knjizenje   METALINE------------------------------
   *-----------PUNJENJE ARTIKALA----------------------------------
  DO KASASTAMP WITH MADATO,MASACEKAJ
   SELECT KASA
   GO TOP
   MGOTOVINA=GOTOVINA
   MCEK=CEK
   MKARTICA=KARTICA
   MMIME='un_'+'00'+PPAS+'.inp'
   MMIME0='un_'+'00'+PPAS

   IF FILE(KKOCKAX)
      DELETE FILE &KKOCKAX
   ENDIF
   IF FILE(KKOCKAX2)
      DELETE FILE &KKOCKAX2
   ENDIF
   SELECT KASA
   COPY TO &KKOCKA
   USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
   SET EXACT ON
   SELECT KOCKA
   INDEX ON RSIF TAG RSIF
   SET ORDER TO 1
   TOTAL ON RSIF TO &KKOCKA2 FIELDS RSIF
   DELETE ALL
   PACK
   APPEND FROM &KKOCKA2
   GO TOP
   SET EXACT OFF 
   SET CENTURY ON
   SET RELATION TO RSIF INTO ROB
   FIDAT=FCREATE(MMIME)
   MTAxid='1'
   FIDAT=FCREATE(MMIME)
   MTAxid='1'
   SET STEP ON 
   DO WHILE.NOT.EOF()
      IF KOLI>0
         DO CASE TARIFA
         CASE ALLTRIM(TARIFA)=TOSTOPA
            MTAx_id='3'
         CASE ALLTRIM(TARIFA)=TNSTOPA
            MTAx_id='4'
         OTHERWISE
            MTAx_id='1'
         ENDCASE
         mrsif=ALLTRIM(rsif)
         mcena=TRANSFORM(malcena,'9999999.99')
         mnaziv=SUBSTR(ROB.nazskr,1,16)
         mkol='0.000'
         mM='U,1,______,_,__;'+mnaziv+';'+mcena+';'+mkol+';'+' '+';'+'1'+';'+mtax_id+';'+'0'+';'+mrsif+';'
         FPUTS(fidat,MM)
      ENDIF
      SKIP
   ENDDO
   GO top
   FCLOSE(fidat)
   SELECT KOCKA
   DO scSALJI WITH MMIME,MMIME0,1
*------------POSLALI SMO ARTIKLE U STAMPAC---------------
   SELECT KOCKA
   GO TOP

*--------SALJEMO PLACANJE I BON--------------------------

   MMrac='rac_'+'00'+PPAS+'.inp'
   MMrac0='rac_'+'00'+PPAS
   
   SELECT KASAPL
   MGOTOVINA=KES
   MKARTICA=KARTICA
   MCEK=CEK
   MDATO=DATO
   IF mdato<mgotovina
      mdato=mgotovina
   endif   
   SELECT FAK
   MP0=TRANSFORM(Mdato,'9999999.99')
   MP1=TRANSFORM(MCEK,'9999999.99')
   MP2=TRANSFORM(MKARTICA,'9999999.99')
   SET CENTURY ON
   FIDAT=FCREATE(MMrac)
   M2MALVRED=0
   SELECT kocka
   GO TOP
   DO WHILE.NOT.EOF()
      mART_ID=rsif+SPACE(15)
      MKOLLEN=LEN(ALLTRIM(STR(ABS(KOLI),10,3)))
      MKOLI=ABS(KOLI)
      MKOLIC=''
      IF MKOLI>10
         MKOLIC=STR(MKOLI,5,2)
      ELSE
         MKOLIC=STR(MKOLI,5,3)
      ENDIF
      IF MKOLI>99
         MKOLIC=STR(MKOLI,5,1)
      ENDIF
      IF MKOLI>999
         MKOLIC=STR(MKOLI,5,0)
      ENDIF
      mmalcena='      0.00'
      IF koli>=0
         mkolic=SPACE(10-mkollen)+mkolic
      ELSE
         mkolic=SPACE(9-mkollen)+'-'+mkolic
      endif   
      DO CASE TARIFA
      CASE ALLTRIM(TARIFA)=TOSTOPA
         MTAx_id='4'
      CASE ALLTRIM(TARIFA)=TNSTOPA
         MTAx_id='5'
      OTHERWISE
         MTAx_id='1'
      ENDCASE
      mrsif=ALLTRIM(rsif)
      mcena=TRANSFORM(malcena,'9999999.99')
      mnaziv=SUBSTR(ROB.nazskr,1,16)
      mkol='0.000'
      mM='S,1,______,_,__;'+mnaziv+';'+mcena+';'+mkol+';'+'1'+';'+'1'+';'+mtax_id+';'+'0'+';'+mrsif+';'
      FPUTS(fidat,MM)
      SELECT KOCKA
      M2MALVRED=M2MALVRED+MALVRED
      SKIP
   ENDDO
   IF mgotovina<>0
      mM='T,1,______,_,__;'+'0'+';'+mp0+';'
      FPUTS(fidat,MM)
   endif
   IF mcek<>0
      mM='T,1,______,_,__;'+'1'+';'+mp1+';'
      FPUTS(fidat,MM)
   endif
   IF mkartica<>0
      mM='T,1,______,_,__;'+'2'+';'+mp2+';'
      FPUTS(fidat,MM)
   endif

   SELECT KOCKA
   GO top
*   BROW
   FCLOSE(FIDAT)
   DO scSALJI WITH MMRAC,MMRAC0,0
   SELECT KOCKA
   USE
   

   DO KASASNIMAJ 


   SELECT KASA
   DELETE ALL
   PACK
   SELECT ROB
  
   
   SELECT FAK
   LOCATE FOR BRKAL=MBRKAL

   SET ORDER TO 
   REPLACE FAKG.KASA WITH '*'
   POP KEY