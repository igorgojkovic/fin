PARAMETERS MADATO,MASACEKAJ
PUSH KEY CLEAR

   SELECT KASA
   GO TOP
   MGOTOVINA=GOTOVINA
   MCEK=CEK
   MKARTICA=KARTICA
   MMIME='KASA'+'00'+PPAS+'.WNG'
   MMIME0='KASA'+'00'+PPAS

   IF FILE(KKOCKAX)
      DELETE FILE &KKOCKAX
   ENDIF
   IF FILE(KKOCKAX2)
      DELETE FILE &KKOCKAX2
   ENDIF
   SELECT KASA
   GO TOP
   SET EXACT OFF 
   SET CENTURY ON
   FIDAT=FCREATE(MMIME)
   MTARIFA='G'
   M2MALVRED=0
   mm='#FISKAL'
   FPUTS(fidat,MM)
   DO WHILE.NOT.EOF()
      M2MALVRED=M2MALVRED+MALVRED-RABAT
      IF KOLI<>0
         IF AOBVEZNIK=1
            DO CASE TARIFA
            CASE ALLTRIM(TARIFA)=TOSTOPA
               MTARIFA='Ð'
            CASE ALLTRIM(TARIFA)=TNSTOPA
               MTARIFA='E'
            OTHERWISE
               MTARIFA='A'
            ENDCASE
         ELSE
            MTARIFA='A'
         ENDIF
         mrsif=rsif
         IF NMALCENA=0
            mmalcena=TRANSFORM(malcena,'9999999.99')
            mcena=TRANSFORM(malcena,'9999999.99')
         ELSE
            mmalcena=TRANSFORM(Nmalcena,'9999999.99')
            mcena=TRANSFORM(Nmalcena,'9999999.99')
         ENDIF          
         mNAZ=SUBSTR(naz,1,18)
         MJED='kom'
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
         MM=LTRIM(RSIF)+';'+MNAZ+';'+MJED+';'+MKOLIC+';'+MCENA+';'+MTARIFA
         FPUTS(fidat,MM)
      ENDIF
      SKIP
   ENDDO
   MM='#PLACANJE'
   FPUTS(fidat,MM)
   MP1=ALLTRIM(TRANSFORM(MCEK,'9999999.99'))
   MP2=TRANSFORM(MKARTICA,'9999999.99')
   MP3=TRANSFORM(MGOTOVINA,'9999999.99')
   IF MCEK<>0
      MM='CEKOVI'+';'+MP1
      FPUTS(fidat,MM)
   ENDIF
   IF MKARTICA<>0
      MM='KARTICA'+';'+MP2
      FPUTS(fidat,MM)
   ENDIF
   IF MGOTOVINA<>0
      MM='GOTOVINA'+';'+MP3
      FPUTS(fidat,MM)
   ENDIF
   GO top
   FCLOSE(fidat)
   MWNGSALJI='C:\COM'
   COPY FILE &MMIME TO &MWNGSALJI
   IF MASACEKAJ=0
      INKEY(2)
   ENDIF
   SELECT KASA
   GO TOP
*------------POSLALI SMO ARTIKLE U STAMPAC---------------
   DO KASASNIMAJ 

   SELECT KASA
   ZAP
   SELECT ROB
   POP KEY
