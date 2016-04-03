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
   MMIME='dat'+'00'+PPAS+'.TXT'
   MMIME0='dat'+'00'+PPAS
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
   DELETE ALL
   PACK

   APPEND FROM &KKOCKA2
   GO TOP
   SET RELATION TO RSIF INTO ROB
   SET EXACT OFF 
   SET CENTURY ON 
 
   FIDAT=FCREATE(MMIME)
   MTARIFA='1'
   DO WHILE.NOT.EOF()
      IF KOLI>0
         DO CASE TARIFA
         CASE ALLTRIM(TARIFA)=TOSTOPA
            MTARIFA='03'
         CASE ALLTRIM(TARIFA)=TNSTOPA
            MTARIFA='04'
         OTHERWISE
            MTARIFA='01'
         ENDCASE
         mSIFRA=REPLICATE('0',5-LEN(ALLTRIM(rsif)))+ALLTRIM(rsif)+SPACE(15)
         mmalcena=TRANSFORM(malcena,'9999999.99')
         mcena   =TRANSFORM(malcena,'9999999.99')
         MNAZIV=RSIF+SUBSTR(ROB.naz,1,25)+SPACE(10)
         MCMD='0'
         MM=MSIFRA+MTARIFA+MCENA+MNAZIV+MCMD
         FPUTS(fidat,MM)
      ENDIF
      SKIP
   ENDDO
   GO top
   FCLOSE(fidat)
   SELECT KOCKA
   DO FI550SALJI WITH MMIME,MMIME0,1
   SELECT KOCKA
   GO TOP
*------------POSLALI SMO ARTIKLE U STAMPAC---------------

*--------SALJEMO RACUN--------------------------

   MMrac='rac'+'00'+PPAS+'.TXT'
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
      mmalcena=TRANSFORM(malcena,'9999999.99')
      mcena   =TRANSFORM(malcena,'9999999.99')
      mM=msifra+MKOLIC+mmalcena+'S'
      FPUTS(fidat,MM)
      SELECT kocka
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
  

   SELECT FAK
   LOCATE FOR BRKAL=MBRKAL
   SET ORDER TO 
   REPLACE FAKG.KASA WITH '*'
ENDIF   
POP KEY
