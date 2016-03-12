PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR

MPROVERAF=KASAPROVERAF()

IF MPROVERAF=1
   *-----------knjizenje   METALINE------------------------------
   *-----------PUNJENJE ARTIKALA----------------------------------
   IF AKONTRAKA=1
      DO KASASTAMP WITH MADATO,MASACEKAJ
   ENDIF
   SELECT KASA
   GO TOP
   MGOTOVINA=GOTOVINA
   MCEK=CEK
   MKARTICA=KARTICA
*   MMIME='art_'+'0001'+'.TXT'
*   MMIME0='ART_'+'0001'
   MMIME='art_'+'00'+PPAS+'.txt'
   MMIME0='ART_'+'00'+PPAS

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
   FIDAT=FCREATE(MMIME)
   MTAxid='1'
   DO WHILE.NOT.EOF()
         IF AOBVEZNIK=1
            DO CASE TARIFA
            CASE ALLTRIM(TARIFA)=TOSTOPA
               MTAx_id='3'
            CASE ALLTRIM(TARIFA)=TNSTOPA
               MTAx_id='4'
            OTHERWISE
               MTAx_id='1'
            ENDCASE
         ELSE
            MTAX_ID='0'
         ENDIF
         mrsif=rsif+SPACE(15)
         mbar_code=SPACE(14)
         mquick_code=SPACE(6)
         IF NMALCENA=0
            mmalcena=TRANSFORM(malcena,'9999999.99')
            mcena=TRANSFORM(malcena,'9999999.99')
         ELSE
            mmalcena=TRANSFORM(Nmalcena,'9999999.99')
            mcena=TRANSFORM(Nmalcena,'9999999.99')
         ENDIF          
         mplu_naziv=RSIF+SUBSTR(naz,1,25)+SPACE(10)
         mdept_id=SPACE(3)
         mkol_ulaz='     0.000'
         mje_otvoren='D'
         mje_deckol='D'
         mje_amba='N'
         MAMBA_ID=SPACE(20)
         MUPDATE_TYP='N'
         mM=mRSIF+mbar_code+mquick_code+mtax_id+mplu_naziv+mdept_id+mcena+mkol_ulaz+mje_otvoren+mje_deckol+Mje_amba+MAMBA_ID+MUPDATE_TYP
         FPUTS(fidat,MM)
         MUPDATE_TYP='P'
         mM=mRSIF+mbar_code+mquick_code+mtax_id+mplu_naziv+mdept_id+mcena+mkol_ulaz+mje_otvoren+mje_deckol+Mje_amba+MAMBA_ID+MUPDATE_TYP
         FPUTS(fidat,MM)
      SKIP
   ENDDO
   GO top
   FCLOSE(fidat)
   SELECT KOCKA
   USE
   DO MFSALJI WITH MMIME,MMIME0,1
   SELECT KASA
   GO TOP
*------------POSLALI SMO ARTIKLE U STAMPAC---------------

*--------SALJEMO PLACANJE I BON--------------------------

   MMPAY='PAY_'+'00'+PPAS+'.txt'
   MMBON='BON_'+'00'+PPAS+'.txt'
   MMCMD='CMD_'+'00'+PPAS+'.txt'

   MMPAY0='PAY_'+'00'+PPAS
   MMBON0='BON_'+'00'+PPAS
   MMCMD0='CMD_'+'00'+PPAS


   MPAY_1=TRANSFORM(MCEK,'9999999.99')
   MPAY_2=TRANSFORM(MKARTICA,'9999999.99')
   MPAY_3=TRANSFORM(MGOTOVINA,'9999999.99')


   SET CENTURY ON
   FIPAY=FCREATE(MMPAY)
   MM=MPAY_1+MPAY_2+MPAY_3
   FPUTS(fipay,MM)
   FCLOSE(fiPAY)

   FIDAT=FCREATE(MMBON)
   M2MALVRED=0
   *SET STEP ON 
   DO WHILE.NOT.EOF()
      mART_ID=rsif+SPACE(15)
      MKOLLEN=LEN(ALLTRIM(STR(ABS(KOLI),10,3)))
      MKOLI=ABS(KOLI)
      MKOLIC=0
      IF MKOLI>10
         MKOLIC=STR(MKOLI,5,2)
      ELSE
         MKOLIC=STR(MKOLI,5,3)
      ENDIF
      IF MKOLI>99
         MKOLIC=STR(MKOLI,5,1)
      ENDIF
      IF MKOLI>=999
         MKOLIC=STR(MKOLI,5,0)
      ENDIF
      mmalcena='      0.00'
      SET STEP ON
      MKOLIC=VAL(MKOLIC)
      MKOLLEN=LEN(ALLTRIM(STR(mkolic)))
      IF koli>=0
         mkolic=SPACE(10-mkollen)+STR(mkolic)
      ELSE
         mkolic=SPACE(9-mkollen)+'-'+STR(mkolic)
      endif   
      
      mM=mART_ID+MKOLIC+mmalcena+'  0.00'+'0001'
      FPUTS(fidat,MM)
      SELECT KASA
      M2MALVRED=M2MALVRED+MALVRED-RABAT
      SKIP
   ENDDO
   GO top
   FCLOSE(fidat)
   
   
   M3MALVRED=TRANSFORM(M2MALVRED,'999 999.99')
   IF MDATO>M2MALVRED
      MKUSUR=MDATO-M2MALVRED
   ELSE
      MKUSUR=0
   ENDIF

   FICMD=FCREATE(MMCMD)
   MM='10'+' iznos '+TRANSFORM(M3MALVRED,'999 999.99')
   FPUTS(ficmd,MM)
   MM='20'+' kusur '+TRANSFORM(MKUSUR,'999 999.99')   
   FPUTS(ficmd,MM)
   FCLOSE(ficmd)
   DO MFSALJI WITH MMCMD,MMCMD0,MASACEKAJ
   DO MFSALJI WITH MMPAY,MMPAY0,MASACEKAJ
   DO MFSALJI WITH MMBON,MMBON0,0


   SELECT KASA
   M3MALVRED=TRANSFORM(M2MALVRED,'999 999.99')
   IF MaDATO>M2MALVRED
      MKUSUR=MaDATO-M2MALVRED
   ELSE
      MKUSUR=0
   ENDIF
   dO KASAMETADISP WITH 'IZNOS ' +M3MALVRED,'KUSUR '+TRANSFORM(MKUSUR,'999 999.99')

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
