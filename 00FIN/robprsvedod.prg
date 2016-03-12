PARAMETERS MDAT0,MDAT1,MGRUPA,MGRUPA1,MGRUPA2,MGRUPA3,MGRUPA4,MGRUPA5,MPROIZV
PUSH KEY CLEAR
SELECT ROB
SET ORDER TO 1
USE AATM IN 0 
SELECT AATM
SET ORDER TO 
GO TOP
DO WHILE.NOT.EOF()
   MREC=ALLTRIM(STR(RECNO(),2,0))
   IF PRIKAZ<>'N'
      IF RECNO()<=40
         IF SIFARNIK=' '
            KROB='ROB'
         ELSE    
            MREC=ALLTRIM(STR(RECNO(),2,0))
            KROB='MROB'+MREC
         ENDIF      
   if tfpossif='D'.AND.TNEZAJEDNO<>'D'
            KROB='ROB'+'M'+MREC
         ENDIF     
         kKROB=krOB+'.dbf'   
         KFAK='TMFAK'+MREC+'.DBF'
         MDOK='M'+MREC
         IF FILE(KKROB)
            USE &KROB IN 0 ALIAS MMROB ORDER 1
            USE &KFAK IN 0 ALIAS FAK ORDER 1
            SELECT fak
            GO top
            DO while.not.eof()
               IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
               MRSIF=RSIF
               MKOLI=KOLI
               MMALCENA=MALCENA
               MMALVRED=MALVRED
               MMKOL='KOL'+MREC
               MDATDOK=DATDOK
               SELECT MMROB
               SEEK MRSIF
               IF FOUND()
                  IF GRUPA=MGRUPA.OR.MGRUPA=SPACE(3)
                  IF GRUPA1=MGRUPA1.OR.MGRUPA1=SPACE(3)
                  IF GRUPA2=MGRUPA2.OR.MGRUPA2=SPACE(3)
                  IF GRUPA3=MGRUPA3.OR.MGRUPA3=SPACE(3)
                  IF GRUPA4=MGRUPA4.OR.MGRUPA4=SPACE(3)
                  IF GRUPA5=MGRUPA5.OR.MGRUPA5=SPACE(3)
                  IF PROIZV=MPROIZV.OR.MPROIZV=SPACE(5)

                  MNAZ=NAZ
                  MMGRUPA=GRUPA
                  MMGRUPA1=GRUPA1
                  MMGRUPA2=GRUPA2
                  MMGRUPA3=GRUPA3
                  MMGRUPA4=GRUPA4
                  MMGRUPA5=GRUPA5
                  MMSIFRA=SIFRA
                  MMPROIZV=PROIZV
                  SELECT ROB
                  APPEND BLANK
                  REPLACE RSIF WITH MRSIF
                  REPLACE NAZ WITH MNAZ
                  REPLACE DOK WITH MDOK
                  REPLACE &MMKOL WITH MKOLI
                  REPLACE GRUPA WITH MMGRUPA
                  REPLACE GRUPA1 WITH MMGRUPA1
                  REPLACE GRUPA2 WITH MMGRUPA2
                  REPLACE GRUPA3 WITH MMGRUPA3
                  REPLACE GRUPA4 WITH MMGRUPA4
                  REPLACE GRUPA5 WITH MMGRUPA5
                  REPLACE PROIZV WITH MMPROIZV
                  REPLACE DATDOK WITH MDATDOK
                  MMESEC=ALLTRIM(STR(MONTH(DATDOK),2,0))
                  IF LEN(MMESEC)=1
                     MMESEC='0'+MMESEC
                  ENDIF
                  REPLACE MESEC WITH MMESEC   
                  ENDIF
                  ENDIF
                  ENDIF
                  ENDIF
                  ENDIF
                  ENDIF
                  ENDIF
               ENDIF   
               ENDIF
               SELECT FAK
               SKIP
            ENDDO   
            SELECT MMROB
            USE
            SELECT FAK
            USE
         ENDIF   
      ENDIF   
   ENDIF
   SELECT AATM  
   SKIP
ENDDO
SELECT AATM
USE
DO IDEL WITH (KKOCKAX)
DO IDEL WITH (KKOCKAX2)
SELECT ROB
REPLACE ALL KOLSVE WITH KOL1+KOL2+KOL3+KOL4+KOL5+KOL6+KOL7+KOL8+KOL9+KOL10+KOL11+KOL12+KOL13+KOL14+KOL15+KOL16+kol17+kol18+kol19+kol20;
                       +KOL21+KOL22+KOL23+KOL24+KOL25+KOL26+KOL27+KOL28+KOL29+KOL30+KOL31+KOL32+KOL33+KOL34+KOL35+KOL36+kol37+kol38+kol39+kol40

REPLACE ALL DAT0 WITH MDAT0
REPLACE ALL DAT1 WITH MDAT1
SET ORDER TO 1
COPY TO &KKOCKA
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
INDEX ON RSIF+MESEC TAG RMES
SET ORDER TO 1
TOTAL ON RSIF+MESEC  TO &KKOCKA2
USE
SELECT ROB
ZAP
APPEND FROM &KKOCKA2
POP KEY
