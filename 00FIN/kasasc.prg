PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR

MPROVERAF=1

IF MPROVERAF=1
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

*   BROW 
*   MMIME='art_'+'0001'+'.TXT'
*   MMIME0='ART_'+'0001'
 *  MMIME='unos_'+'00'+PPAS+'.inp'
 *  MMIME0='unos_'+'00'+PPAS

 *  IF FILE(KKOCKAX)
 *     DELETE FILE &KKOCKAX
 *  ENDIF
 *  IF FILE(KKOCKAX2)
 *     DELETE FILE &KKOCKAX2
 *  ENDIF
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
 *  FIDAT=FCREATE(MMIME)
  * MTAxid='1'
  * DO WHILE.NOT.EOF()
  *    IF KOLI>0
  *       IF AOBVEZNIK=1
  *          DO CASE TARIFA
  *          CASE ALLTRIM(TARIFA)=TOSTOPA
  *             MTAx_id='4'
  *          CASE ALLTRIM(TARIFA)=TNSTOPA
  *             MTAx_id='5'
  *          OTHERWISE
  *             MTAx_id='1'
  *          ENDCASE
  *       ELSE
  *          MTAX_ID='0'
  *       ENDIF
  *       mrsif=ALLTRIM(rsif)
  *       IF NMALCENA=0
  *          mmalcena=TRANSFORM(malcena,'9999999.99')
  *          mcena=ALLTRIM(TRANSFORM(malcena,'9999999.99'))
   **      ELSE
   *         mmalcena=TRANSFORM(Nmalcena,'9999999.99')
   *         mcena=ALLTRIM(TRANSFORM(Nmalcena,'9999999.99'))
    *     ENDIF          
*         mnaziv=ALLTRIM(rsif)+ALLTRIM(SUBSTR(ROB.naz,1,16))
*         m1naziv=SUBSTR(mnaziv,1,16)
*         mkol='0.000'
*         mM='U,1,______,_,__;'+m1naziv+';'+mcena+';'+mkol+';'+'1'+';'+'1'+';'+mtax_id+';'+'0'+';'+mrsif+';'         
*         FPUTS(fidat,MM)
*      ENDIF
 *     SKIP
*   ENDDO
*   GO top
*   FCLOSE(fidat)
*   DO scSALJI WITH MMIME,MMIME0,1
*   SELECT KASA
*   GO TOP
*--------SALJEMO PLACANJE I BON--------------------------
   SELECT KOCKA
   GO TOP
   IF RECCOUNT()>0
  
   MMBON='racun_'+'00'+PPAS+'.inp'
   MMBON0='racun_'+'00'+PPAS


   MP2=ALLTRIM(TRANSFORM(MCEK,'9999999.99'))
   MP1=ALLTRIM(TRANSFORM(MKARTICA,'9999999.99'))
   MP0=ALLTRIM(TRANSFORM(MGOTOVINA,'9999999.99'))


   SET CENTURY ON
   FIDAT=FCREATE(MMBON)
   M2MALVRED=0
   SELECT kocka
   GO TOP
  * SET STEP ON 
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
     * mcena=ALLTRIM(TRANSFORM(malcena,'9999999.99'))
      mnaziv=ALLTRIM(rsif)+ALLTRIM(SUBSTR(ROB.naz,1,16))
      m1naziv=SUBSTR(mnaziv,1,16)
      mM='S,1,______,_,__;'+m1naziv+';'+mcena+';'+ALLTRIM(mkolic)+';'+'1'+';'+'1'+';'+mtax_id+';'+'0'+';'+mrsif+';'
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
      mM='T,1,______,_,__;'+'0'+';'+mp0+';'
      FPUTS(fidat,MM)
   endif
   IF mcek<>0
      mM='T,1,______,_,__;'+'1'+';'+mp2+';'
      FPUTS(fidat,MM)
   endif
   IF mkartica<>0
      mM='T,1,______,_,__;'+'2'+';'+mp1+';'
      FPUTS(fidat,MM)
   endif
   
   GO top
   FCLOSE(fidat)
   DO scSALJI WITH MMBON,MMBON0,0
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
ELSE
   POP key
   DO PORUKAU WITH 'ŠTAMPAC NIJE FISKALIZOVAN '
ENDIF


