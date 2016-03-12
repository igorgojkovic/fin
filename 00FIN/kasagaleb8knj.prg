PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR

   *-----------PUNJENJE ARTIKALA----------------------------------
   DO KASASTAMP WITH MADATO,MASACEKAJ
   SELECT KASA
   GO TOP
   MGOTOVINA=GOTOVINA
   MCEK=CEK
   MKARTICA=KARTICA
   MMIME='ABC_'+'00'+PPAS+'.TXT'
   MMIME0='ABC_'+'00'+PPAS
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
      mKOLLEN=LEN(ALLTRIM(STR(ABS(KOLI),10,3)))
      MKOLI=ABS(KOLI)
      MKOLIC=''
      MKOLIC=ALLTRIM(STR(MKOLI,10,3))
      IF koli>=0
         mkolic=SPACE(10-mkollen)+mkolic
      ELSE
         mkolic=SPACE(9-mkollen)+'-'+mkolic
      endif   
      mART_ID=rsif+SPACE(15)
      mplu_naziv=RSIF+SUBSTR(naz,1,25)+SPACE(20)
      mcena=TRANSFORM(malcena,'9999999.99')
      mM=MART_ID+mtax_id+mplu_naziv+mcena+MKOLIC
      FPUTS(fidat,MM)
      SKIP
   ENDDO
   *------KRAJ BONA-----------------------
   MCENA=TRANSFORM(1,'9999999.99')
   KOLI=0
   MKOLLEN=LEN(ALLTRIM(STR(ABS(KOLI),10,3)))
   MKOLIC=SPACE(10-mkollen)+'0'
   MM='END_OF_SALE         ' 
   FPUTS(fidat,MM)
   *------------PLACANJE------------------
   SELECT KASA
   GO TOP
   MPAY_1=TRANSFORM(MCEK,'9999999.99')
   MPAY_2=TRANSFORM(MKARTICA,'9999999.99')
   MPAY_3=TRANSFORM(MGOTOVINA,'9999999.99')
   MM='PAY_DEBIT           '+'0'+'                '+SPACE(34)+MPAY_2 
   FPUTS(fidat,MM)
   MM='PAY_CHEQUE          '+'0'+'                '+SPACE(34)+MPAY_1 
   FPUTS(fidat,MM)
   MM='PAY_CASH            '+'0'+'                '+SPACE(34)+MPAY_3
   FPUTS(fidat,MM)
   MM='END_OF_PAY         '
   FPUTS(fidat,MM)
   *-------------OSTALI REDOVI------------------------------
   MM='USER_ID             '+'0'+PPAS
   FPUTS(fidat,MM)
   MM='USER_NAME           '+'0'+SUBSTR(AKORISNIK,1,20) 
   FPUTS(fidat,MM)
   MM='FOOTER_1            '+'0'+'KUPUJTE KOD NAS USTEDECETE    ' 
   FPUTS(fidat,MM)
   *------KRAJ SVIH REDOVA-----------------------------------------------
   SET CENTURY ON
   FCLOSE(fiDAT)
   
   DO MFSALJI WITH MMIME,MMIME0,1
   SELECT KASA
   GO TOP 
   M2MALVRED=0
   DO WHILE.NOT.EOF()
      mART_ID=rsif+SPACE(15)
      FPUTS(fidat,MM)
      SELECT KASA
      M2MALVRED=M2MALVRED+MALVRED
      SKIP
   ENDDO
   GO top
   M3MALVRED=TRANSFORM(M2MALVRED,'9999999.99')
   IF MaDATO>M2MALVRED
      MKUSUR=MaDATO-M2MALVRED
   ELSE
      MKUSUR=0
   ENDIF
   dO METADISP WITH 'IZNOS ' +M3MALVRED,'KUSUR '+TRANSFORM(MKUSUR,'9999999.99')
   GO TOP
   DO KASASNIMAJ 
   
   SELECT KASA
   DELETE ALL
   PACK
   SELECT ROB
   POP KEY
