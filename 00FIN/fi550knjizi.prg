PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR
MPROVERAF=PROVERAF()
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
   MMIME='dat'+'00'+PPAS+'.ime'
   MMIME0='dat'+'00'+PPAS
  
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
   ZAP
   APPEND FROM &KKOCKA2
   GO TOP
   SET EXACT OFF 
   SET CENTURY ON
   FIDAT=FCREATE(MMIME)
   MTARIFA='1'
   DO WHILE.NOT.EOF()
         IF AOBVEZNIK=1
            DO CASE TARIFA
            CASE ALLTRIM(TARIFA)=TOSTOPA
               MTARIFA='03'
            CASE ALLTRIM(TARIFA)=TNSTOPA
               MTARIFA='04'
            OTHERWISE
               MTARIFA='01'
            ENDCASE
         ELSE
            MTARIFA='00'
         ENDIF
         mSIFRA=REPLICATE('0',5-LEN(ALLTRIM(rsif)))+ALLTRIM(rsif)+SPACE(15)
         IF NMALCENA=0
            mmalcena=TRANSFORM(malcena,'9999999.99')
            mcena   =TRANSFORM(malcena,'9999999.99')
         ELSE
            mmalcena=TRANSFORM(Nmalcena,'9999999.99')
            mcena   =TRANSFORM(Nmalcena,'9999999.99')
         ENDIF
         MNAZIV=RSIF+SUBSTR(naz,1,25)+SPACE(10)
         MCMD='0'
         MM=MSIFRA+MTARIFA+MCENA+MNAZIV+MCMD
         FPUTS(fidat,MM)
      SKIP
   ENDDO
   GO top
   FCLOSE(fidat)
   SELECT KOCKA
   USE
   DO FI550SALJI WITH MMIME,MMIME0,1
   SELECT KASA
   GO TOP
*------------POSLALI SMO ARTIKLE U STAMPAC---------------

*--------SALJEMO RACUN--------------------------

   MMrac='rac'+'00'+PPAS+'.ime'
   MMrac0='rac'+'00'+PPAS


   MMCEK=TRANSFORM(MCEK,'9999999.99')
   MMKARTICA=TRANSFORM(MKARTICA,'9999999.99')
   MMGOTOVINA=TRANSFORM(MGOTOVINA,'9999999.99')

   SET CENTURY ON
   
   FIDAT=FCREATE(MMrac)
   M2MALVRED=0
  
   DO WHILE.NOT.EOF()
      mSIFRA=REPLICATE('0',5-LEN(ALLTRIM(rsif)))+ALLTRIM(rsif)+SPACE(15)
      MKOLLEN=LEN(ALLTRIM(STR(KOLI,10,3)))
      MKOLI=KOLI
      MKOLIC=''
      IF MKOLI>0
         IF MKOLI>0
            MKOLIC='     '+STR(MKOLI,5,3)
         ENDIF
         IF MKOLI>=10
            MKOLIC='     '+STR(MKOLI,5,2)
         ENDIF
         IF MKOLI>=100
            MKOLIC='     '+STR(MKOLI,5,1)
         ENDIF
         IF MKOLI>=1000
            MKOLIC='      '+STR(MKOLI,4,0)
         ENDIF
      ELSE    
         IF ABS(MKOLI)>0
            MKOLIC='-'+STR(ABS(MKOLI),5,3)
         ENDIF
         IF ABS(MKOLI)>=10
            MKOLIC='-'+STR(ABS(MKOLI),5,2)
         ENDIF
         IF ABS(MKOLI)>=100
            MKOLIC='-'+STR(ABS(MKOLI),5,1)
         ENDIF
         IF ABS(MKOLI)>=1000
            MKOLIC=' -'+STR(ABS(MKOLI),4,0)
         ENDIF
         MKOLIC=REPLICATE(' ',10-LEN(MKOLIC))+MKOLIC
      ENDIF


      IF NMALCENA=0
         mmalcena=TRANSFORM(malcena,'9999999.99')
         mcena   =TRANSFORM(malcena,'9999999.99')
      ELSE
         mmalcena=TRANSFORM(Nmalcena,'9999999.99')
         mcena   =TRANSFORM(Nmalcena,'9999999.99')
      ENDIF
      
      mM=msifra+MKOLIC+mmalcena+'S'
      FPUTS(fidat,MM)
      SELECT KASA
      M2MALVRED=M2MALVRED+MALVRED-RABAT
      SKIP
   ENDDO
   IF MCEK<>0   
      mM=SPACE(30)+mmcek+'C'
      FPUTS(fidat,MM)
   ENDIF   
   IF MGOTOVINA<>0   
      mM=SPACE(30)+MMGOTOVINA+'G'
      FPUTS(fidat,MM)
   ENDIF   
   IF MKARTICA<>0   
      mM=SPACE(30)+MMKARTICA+'K'
      FPUTS(fidat,MM)
   ENDIF   
   GO top
   FCLOSE(fidat)
   
   DO FI550SALJI WITH MMRAC,MMRAC0,0


   SELECT KASA
   M3MALVRED=TRANSFORM(M2MALVRED,'999 999.99')
   MM2MALVRED=M2MALVRED
   MMADATO=MADATO
   iF MaDATO>M2MALVRED
      MKUSUR=MaDATO-M2MALVRED
   ELSE
      MKUSUR=0
   ENDIF
 
   dO METADISP WITH 'IZNOS ' +M3MALVRED,'KUSUR '+TRANSFORM(MKUSUR,'999 999.99')

*   SET STEP ON 
   DO KASASNIMAJ 


   SELECT KASA
   ZAP

   
   SELECT ROB
   POP KEY
ELSE
   POP key
   DO PORUKAU WITH 'ŠTAMPAC NIJE FISKALIZOVAN '
ENDIF
