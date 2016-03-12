PUSH KEY CLEAR
ON ERROR
   DO IDEL WITH  (KTVKARTX)
   USE  &KTVKART ALIAS TVKART EXCLU IN 0
   SELECT TVKART
   INDEX ON DTOS(DATROK)+serija TAG DATDOK
   SET ORDER TO 1

SELECT fak
mbrkal=brkal
mdatdok=datdok
SET ORDER TO 1
SEEK MBRKAL
DO WHILE.NOT.EOF()
   IF brkal<>mbrkal
      EXIT
   endif   
   mrrec=RECNO()
   MRSIF=RSIF
   MKOLI=KOLI
   SET EXACT OFF
   SELECT TVKART
   DELETE ALL
   PACK
   *---------UZIMAMO ROBU IZ KALKULACIJA------------
   IF TNET=1
      SELECT KAL
   ELSE
      SELECT KALs
   ENDIF
   SET ORDER TO 2
   SEEK MRSIF
   DO WHILE.NOT.EOF()
      IF RSIF<>MRSIF
         EXIT
      ENDIF
      ADATDOK=DATDOK
      Abrkal=brkal
      AKOL=KOL
      AKOLI=0
      AKOLST=0
      ADATROK=DATROK
      MSERIJA=SERIJA
      MSERTIFIK=SERTIFIK
      MDATPRO=DATPRO
      SELECT TVKART
      APPEND BLANK 
      REPLACE RSIF WITH MRSIF
      REPLACE DATDOK WITH ADATDOK
      REPLACE BRKAL WITH ABRKAL  
      REPLACE KOL WITH AKOL
      REPLACE KOLI WITH AKOLI
      REPLACE KOLST WITH AKOLST
      REPLACE DATROK WITH ADATROK
      REPLACE DATpro WITH mdatpro
      REPLACE serija WITH mserija
      REPLACE sertifik WITH msertifik
      IF TNET=1  
         SELECT KAL
      ELSE
        SELECT KALs
      ENDIF
      SKIP
   ENDDO   
   
   *---------UZIMAMO ROBU IZ RACUNA------------
   IF TNET=1
      SELECT FAK
   ELSE
     SELECT FAKS
   ENDIF 
   SET ORDER TO 2
   SEEK MRSIF
   DO WHILE.NOT.EOF()
      IF RSIF<>MRSIF
         EXIT
      ENDIF
      ADATDOK=DATDOK
      Abrkal=brkal
      AKOLI=KOLI
      ADATROK=DATROK
      MSERIJA=SERIJA
      MSERTIFIK=SERTIFIK
      MDATPRO=DATPRO
      IF RECNO()<mrrec
         SELECT TVKART
         APPEND BLANK 
         REPLACE RSIF WITH MRSIF
         REPLACE DATDOK WITH ADATDOK
         REPLACE BRKAL WITH ABRKAL  
         REPLACE KOLI WITH AKOLI
         REPLACE DATROK WITH ADATROK
         REPLACE DATpro WITH mdatpro
         REPLACE serija WITH mserija
         REPLACE sertifik WITH msertifik
      endif   
      IF TNET=1
         SELECT FAK
      ELSE
         SELECT FAKS
      ENDIF
      SKIP
   ENDDO   
   DO idel WITH (kkockax)
   select TVKART
   go top
   total ON DTOS(DATROK)+serija TO &kkocka
   ZAP
   APPEND FROM &kkocka
   replace ALL kolst WITH kol-koli
   DELETE ALL FOR kolst=0
   PACK
   GO top
*   BROWSE
*   SET STEP ON 
   IF RECCOUNT()>0
      IF mkoli<=kolst
         mserija=serija
         mdatpro=datpro
         mdatrok=datrok
         msertifik=sertifik
      ELSE
         mserija=''
         mdatpro=CTOD('')
         mdatrok=CTOD('')
         msertifik=''
      endif   
   ELSE
      mserija=''
      mdatpro=CTOD('')
      mdatrok=CTOD('')
      msertifik=''
   endif   
   *SET STEP ON 
   SELECT fak
   GOTO mrrec
   *brow
   REPLACE DATROK WITH mDATROK
   REPLACE DATpro WITH mdatpro
   REPLACE serija WITH mserija
   REPLACE sertifik WITH msertifik
   SKIP
enddo

SELECT tvkart
use
IF TNET=1
   SELECT FAK
   SET ORDER TO 
ELSE
   SELECT FAKS
ENDIF
SET ORDER TO 1
SEEK MBRKAL
SET ORDER TO 

   ON ERROR DO GRESKE WITH ;
      ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )

POP KEY