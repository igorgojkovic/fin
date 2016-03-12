PUSH KEY CLEAR
IF FAKG.KASA=' '
   *---KREIRAMO TABELE-----------
   SELECT FAK
   MBRKAL=BRKAL
   SET ORDER TO 1
   
   MMIME='art_'+'00'+PPAS+'.TXT'
   MMIME0='ART_'+'00'+PPAS
   IF FILE(KKOCKAX)
      DELETE FILE &KKOCKAX
   ENDIF
   IF FILE(KKOCKAX2)
      DELETE FILE &KKOCKAX2
   ENDIF
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
   DELETE ALL
   PACK

   APPEND FROM &KKOCKA2
   GO TOP
   SET RELATION TO RSIF INTO ROB
   SET EXACT OFF 
   SET CENTURY ON
   FIDAT=FCREATE(MMIME)
   MTAxid='1'
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
         mrsif=rsif+SPACE(15)
         mbar_code=SPACE(14)
         mquick_code=SPACE(6)
         mcena=TRANSFORM(malcena,'9999999.99')
         mplu_naziv=RSIF+SUBSTR(ROB.naz,1,25)+SPACE(10)
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
      ENDIF
      SKIP
   ENDDO
   GO top
   FCLOSE(fidat)
   SELECT KOCKA
   DO MFSALJI WITH MMIME,MMIME0,1
*------------POSLALI SMO ARTIKLE U STAMPAC---------------
   SELECT KOCKA
   GO TOP

*--------SALJEMO PLACANJE I BON--------------------------

   MMPAY='PAY_'+'00'+PPAS+'.TXT'
   MMBON='BON_'+'00'+PPAS+'.TXT'
   MMCMD='CMD_'+'00'+PPAS+'.TXT'

   MMPAY0='PAY_'+'00'+PPAS
   MMBON0='BON_'+'00'+PPAS
   MMCMD0='CMD_'+'00'+PPAS
   
   SELECT KASAPL
   MGOTOVINA=KES
   MCEK=CEK
   MKARTICA=KARTICA
   MDATO=DATO
   IF mdato<mgotovina
      mdato=mgotovina
   endif   
   SELECT FAK
   MPAY_1=TRANSFORM(MCEK,'9999999.99')
   MPAY_2=TRANSFORM(MKARTICA,'9999999.99')
   MPAY_3=TRANSFORM(Mdato,'9999999.99')
   SET CENTURY ON
   FIPAY=FCREATE(MMPAY)
   MM=MPAY_1+MPAY_2+MPAY_3
   FPUTS(fipay,MM)
   FCLOSE(fiPAY)
*-------------------------------------------
   FICMD=FCREATE(MMCMD)
   MM='159'+'prodavac '+Akorisnik
   FPUTS(ficmd,MM)
   FCLOSE(ficmd)
   
   FIDAT=FCREATE(MMBON)
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
      mM=mART_ID+MKOLIC+mmalcena+'  0.00'+'0001'
      FPUTS(FIDAT,MM)
      SELECT KOCKA
      M2MALVRED=M2MALVRED+MALVRED
      SKIP
   ENDDO
   SELECT KOCKA
   GO top
*   BROW
   FCLOSE(FIDAT)
   DO MFSALJI WITH MMCMD,MMCMD0,2
   DO MFSALJI WITH MMPAY,MMPAY0,2
   DO MFSALJI WITH MMBON,MMBON0,0
   SELECT KOCKA
   USE
   SELECT FAK
LOCATE FOR BRKAL=MBRKAL

   SET ORDER TO 
   REPLACE FAKG.KASA WITH '*'
ENDIF   
   POP KEY