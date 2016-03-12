PUSH KEY CLEAR
MDAT0=TVKARTSVE.TXTDAT0.VALUE
MDAT1=TVKARTSVE.TXTDAT1.VALUE
MVRSTA=TVKARTSVE.TXTVRSTA.VALUE
MFVRSTA=STR(VAL(ALLTRIM(TVKARTSVE.TXTFVRSTA.VALUE)),3,0)
IF MFVRSTA='  0'
   MFVRSTA='   '
ENDIF
MSIFRA=STR(VAL(ALLTRIM(TVKARTSVE.TXTSIFRA.VALUE)),5,0)
IF MSIFRA='    0'
   MSIFRA='     '
ENDIF
MPRENOS=TVKARTSVE.TXTPRENOS.VALUE
Minterna=TVKARTSVE.TXTINTERNA.VALUE
SELECT DATUMI
MPAR3=PAR3
REPLACE DAT0 WITH MDAT0
REPLACE DAT1 WITH MDAT1
SELECT ROB

DO IDEL WITH  (KTVKARTX)
SELECT ROB
MRSIF=RSIF
TVKARTSVE.RELEASE

CLOSE ALL

USE ROB IN 0 ORDER 1
ON ERROR
USE  &KTVKART ALIAS TVKART EXCLU IN 0
SELECT TVKART
DELETE ALL
PACK

ON ERROR DO GRESKE WITH ;
   ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )

INDEX ON DTOS(DATDOK) TAG DATDOK
SET ORDER TO 1

SET EXACT OFF

*----------PREGLED MAGACINA------------
IF MVRSTA='V'.OR.MVRSTA='S'
USE AATV  IN 0
SELECT AATV
MREC=RECCOUNT()
USE
FOR I=1 TO MREC    
   MMKAL='KAL'+ALLTRIM(STR(I,2,0))
   MMKALG='KALG'+ALLTRIM(STR(I,2,0))
   MMFAK='FAK'+ALLTRIM(STR(I,2,0))
   MMFAKG='FAKG'+ALLTRIM(STR(I,2,0))
   MMNIV='TVNIV'+ALLTRIM(STR(I,2,0))
   kMMKAL='KAL'+ALLTRIM(STR(I,2,0))+'.DBF'
   kMMKALG='KALG'+ALLTRIM(STR(I,2,0))+'.DBF'
   kMMFAK='FAK'+ALLTRIM(STR(I,2,0))+'.DBF'
   kMMFAKG='FAKG'+ALLTRIM(STR(I,2,0))+'.DBF'
   kMMNIV='TVNIV'+ALLTRIM(STR(I,2,0))+'.DBF'
   MDOK='V'+ALLTRIM(STR(I,2,0))
   IF FILE(kMMKAL)
      IF FILE(kMMKALG)
         USE &MMKAL IN 0 ORDER 2 ALIAS KAL
         USE &MMKALG IN 0 ORDER 1 ALIAS KALG
         SELECT KAL
         SET RELATION TO BRKAL INTO KALG         
         *---------UZIMAMO ROBU IZ KALKULACIJA------------
         SELECT KAL
         SET ORDER TO 2
         SEEK MRSIF
         DO WHILE.NOT.EOF()
            IF RSIF<>MRSIF
               EXIT
            ENDIF
            IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
               IF KALG.FVRSTA=MFVRSTA.OR.MFVRSTA=SPACE(3)
                  IF KALG.SIFRA=MSIFRA.OR.MSIFRA=SPACE(5)
                     IF KALG.INTERNA=MINTERNA.OR.MINTERNA=' '
                        IF KALG.PRENOS=MPRENOS.OR.MPRENOS=' '
                           ADATDOK=DATDOK
                           Abrkal=brkal
                           AKOL=KOL
                           AKOLI=0
                           AKOLST=0
                           ACENA=VELCENA
                           ADUG=VELVRED
                           APOT=0
                           ASALDO=0
                           ANCENA=NABCENA
                           ANDUG=NABVRED
                           ANPOT=0
                           ANSALDO=0
                           ASIFRA=KALG.SIFRA                       
                           SELECT TVKART
                           APPEND BLANK 
                           REPLACE RSIF WITH MRSIF
                           REPLACE DATDOK WITH ADATDOK
                           REPLACE BRKAL WITH ABRKAL  
                           REPLACE KOL WITH AKOL
                           REPLACE KOLI WITH AKOLI
                           REPLACE KOLST WITH AKOLST
                           REPLACE CENA WITH ACENA
                           REPLACE DUG WITH ADUG
                           REPLACE POT WITH APOT
                           REPLACE SALDO WITH ASALDO
                           REPLACE NCENA WITH ANCENA
                           REPLACE NDUG WITH ANDUG
                           REPLACE NPOT WITH ANPOT
                           REPLACE NSALDO WITH ANSALDO
                           REPLACE SIFRA WITH ASIFRA
                           REPLACE DOK WITH MDOK
                           SELECT KAL
                        endif
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF
            SKIP
         ENDDO   
      ENDIF
   ENDIF      
   *---------UZIMAMO ROBU IZ NIVELACIJA------------
   IF FILE(kMMNIV)
      USE &MMNIV IN 0 ALIAS NIV ORDER 2
      SELECT NIV
      SET ORDER TO 2
      SEEK MRSIF
      DO WHILE.NOT.EOF()
         IF RSIF<>MRSIF
            EXIT
         ENDIF
         IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
            ADATDOK=DATDOK
            Ambrkal=brkal
            ACENA=VELCENA
            ADUG=VELVRED
            ASCENA=SCENA
            ASDUG=-SIZNOS
            AKOL=KOL
            SELECT TVKART
            APPEND BLANK 
            REPLACE BRKAL WITH AMBRKAL
            REPLACE RSIF WITH MRSIF
            REPLACE DATDOK WITH ADATDOK
            REPLACE DUG WITH ASDUG
            REPLACE CENA WITH ASCENA
            REPLACE KOL WITH -AKOL
            REPLACE DOK WITH MDOK
            APPEND BLANK 
            REPLACE BRKAL WITH AMBRKAL
            REPLACE RSIF WITH MRSIF
            REPLACE DATDOK WITH ADATDOK
            REPLACE DUG WITH ADUG
            REPLACE CENA WITH ACENA
            REPLACE KOL WITH AKOL
            REPLACE DOK WITH MDOK
            SELECT NIV
         endif
         SKIP
      ENDDO   
   ENDIF
   *---------UZIMAMO ROBU IZ RACUNA------------
   IF FILE(kMMFAK)
      IF FILE(kMMFAKG)
         USE &MMFAK IN 0 ORDER 2 ALIAS FAK
         USE &MMFAKG IN 0 ORDER 1 ALIAS FAKG
         SELECT FAK
         SET RELATION TO BRKAL INTO FAKG         
         SET ORDER TO 2
         SEEK MRSIF
         DO WHILE.NOT.EOF()
            IF RSIF<>MRSIF
               EXIT
            ENDIF
            IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
               IF FAKG.FVRSTA=MFVRSTA.OR.MFVRSTA=SPACE(3)
                  IF FAKG.SIFRA=MSIFRA.OR.MSIFRA=SPACE(5)
                     IF FAKG.INTERNA=MINTERNA.OR.MINTERNA=' '
                        IF FAKG.PRENOS=MPRENOS.OR.MPRENOS=' '
                           ADATDOK=DATDOK
                           Abrkal=brkal
                           AKOLI=KOLI
                           ACENA=VELCENA
                           APOT=VELVRED
                           ASIFRA=FAKG.SIFRA                       
                           SELECT TVKART
                           APPEND BLANK 
                           REPLACE RSIF WITH MRSIF
                           REPLACE DATDOK WITH ADATDOK
                           REPLACE BRKAL WITH ABRKAL  
                           REPLACE KOLI WITH AKOLI
                           REPLACE CENA WITH ACENA
                           REPLACE POT WITH APOT
                           REPLACE SIFRA WITH ASIFRA
                           REPLACE DOK WITH MDOK
                           SELECT FAK
                        endif
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF
            SKIP
         ENDDO   
      ENDIF
     
   SELECT KAL
   USE
   SELECT KALG
   USE
   SELECT FAK
   USE
   SELECT FAKG
   USE
   SELECT NIV
   USE
   ENDIF
NEXT
ENDIF
*----------PREGLED RADNJI------------
IF MVRSTA='M'.OR.MVRSTA='S'
USE AATM  IN 0
SELECT AATM
MREC=RECCOUNT()
USE
FOR I=1 TO MREC    
   MMKAL='TMKAL'+ALLTRIM(STR(I,2,0))
   MMKALG='TMKALG'+ALLTRIM(STR(I,2,0))
   MMFAK='TMFAK'+ALLTRIM(STR(I,2,0))
   MMFAKG='TMFAKG'+ALLTRIM(STR(I,2,0))
   MMNIV='TMNIV'+ALLTRIM(STR(I,2,0))
   MDOK='M'+ALLTRIM(STR(I,2,0))
   kMMKAL='TMKAL'+ALLTRIM(STR(I,2,0))+'.dbf'
   kMMKALG='TMKALG'+ALLTRIM(STR(I,2,0))+'.dbf'
   kMMFAK='TMFAK'+ALLTRIM(STR(I,2,0))+'.dbf'  
   kMMFAKG='TMFAKG'+ALLTRIM(STR(I,2,0))+'.dbf'
   kMMNIV='TMNIV'+ALLTRIM(STR(I,2,0))+'.dbf'
   IF FILE(kMMKAL)
      IF FILE(kMMKALG)
         USE &MMKAL IN 0 ORDER 2 ALIAS KAL
         USE &MMKALG IN 0 ORDER 1 ALIAS KALG
         SELECT KAL
         SET RELATION TO BRKAL INTO KALG ADDITIVE         
         *---------UZIMAMO ROBU IZ KALKULACIJA------------
         SELECT KAL
         SET ORDER TO 2
         SEEK MRSIF
         DO WHILE.NOT.EOF()
            IF RSIF<>MRSIF
               EXIT
            ENDIF
            IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
               IF KALG.FVRSTA=MFVRSTA.OR.MFVRSTA=SPACE(3)
                  IF KALG.SIFRA=MSIFRA.OR.MSIFRA=SPACE(5)
                     IF KALG.INTERNA=MINTERNA.OR.MINTERNA=' '
                        IF KALG.PRENOS=MPRENOS.OR.MPRENOS=' '
                           ADATDOK=DATDOK
                           Abrkal=brkal
                           AKOL=KOL
                           AKOLI=0
                           AKOLST=0
                           Acena=malcena
                           ADUG=MALVRED
                           APOT=0
                           ASALDO=0
                           ANCENA=NABCENA
                           ANDUG=NABVRED
                           ANPOT=0
                           ANSALDO=0
                           ASIFRA=KALG.SIFRA                       
                           SELECT TVKART
                           APPEND BLANK 
                           REPLACE RSIF WITH MRSIF
                           REPLACE DATDOK WITH ADATDOK
                           REPLACE BRKAL WITH ABRKAL  
                           REPLACE KOL WITH AKOL
                           REPLACE KOLI WITH AKOLI
                           REPLACE KOLST WITH AKOLST
                           REPLACE CENA WITH ACENA
                           REPLACE DUG WITH ADUG
                           REPLACE POT WITH APOT
                           REPLACE SALDO WITH ASALDO
                           REPLACE NCENA WITH ANCENA
                           REPLACE NDUG WITH ANDUG
                           REPLACE NPOT WITH ANPOT
                           REPLACE NSALDO WITH ANSALDO
                           REPLACE SIFRA WITH ASIFRA
                           REPLACE DOK WITH MDOK
                           SELECT KAL
                        endif
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF
            SKIP
         ENDDO   
      ENDIF
   ENDIF      
   *---------UZIMAMO ROBU IZ NIVELACIJA------------
   IF FILE(kMMNIV)
      USE &MMNIV IN 0 ALIAS NIV ORDER 2
      SELECT NIV
      SET ORDER TO 2
      SEEK MRSIF
      DO WHILE.NOT.EOF()
         IF RSIF<>MRSIF
            EXIT
         ENDIF
         IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
            ADATDOK=DATDOK
            Ambrkal=brkal
            Acena=malcena
            ADUG=MALVRED
            ASDUG=-SIZNOS         
            ASCENA=SCENA
            AKOL=KOL
            SELECT TVKART
            APPEND BLANK 
            REPLACE BRKAL WITH AMBRKAL
            REPLACE RSIF WITH MRSIF
            REPLACE DATDOK WITH ADATDOK
            REPLACE DUG WITH ASDUG
            REPLACE CENA WITH ASCENA
            REPLACE KOL WITH -AKOL
            REPLACE DOK WITH MDOK
            APPEND BLANK 
            REPLACE BRKAL WITH AMBRKAL
            REPLACE RSIF WITH MRSIF
            REPLACE DATDOK WITH ADATDOK
            REPLACE DUG WITH ADUG
            REPLACE CENA WITH ACENA
            REPLACE KOL WITH AKOL
            REPLACE DOK WITH MDOK
            SELECT NIV
         endif
         SKIP
      ENDDO   
   ENDIF
   *---------UZIMAMO ROBU IZ RACUNA------------
   IF FILE(kMMFAK)
      IF FILE(KMMFAKG)
         USE &MMFAK IN 0 ORDER 2 ALIAS FAK
         USE &MMFAKG IN 0 ORDER 1 ALIAS FAKG
         SELECT FAK
         SET RELATION TO BRKAL INTO FAKG         
         SET ORDER TO 2
         SEEK MRSIF
         DO WHILE.NOT.EOF()
            IF RSIF<>MRSIF
               EXIT
            ENDIF
            IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
               IF FAKG.FVRSTA=MFVRSTA.OR.MFVRSTA=SPACE(3)
                  IF FAKG.SIFRA=MSIFRA.OR.MSIFRA=SPACE(5)
                     IF FAKG.INTERNA=MINTERNA.OR.MINTERNA=' '
                        IF FAKG.PRENOS=MPRENOS.OR.MPRENOS=' '
                           ADATDOK=DATDOK
                           Abrkal=brkal
                           AKOLI=KOLI
                           Acena=malcena
                           APOT=MALVRED
                           ASIFRA=FAKG.SIFRA                       
                           SELECT TVKART
                           APPEND BLANK 
                           REPLACE RSIF WITH MRSIF
                           REPLACE DATDOK WITH ADATDOK
                           REPLACE BRKAL WITH ABRKAL  
                           REPLACE KOLI WITH AKOLI
                           REPLACE CENA WITH ACENA
                           REPLACE POT WITH APOT
                           REPLACE SIFRA WITH ASIFRA
                           REPLACE DOK WITH MDOK
                           SELECT FAK
                        endif
                     ENDIF
                  ENDIF
               ENDIF
            ENDIF
            SKIP
         ENDDO   
      ENDIF
   SELECT KAL
   USE
   SELECT KALG
   USE
   SELECT FAK
   USE
   SELECT FAKG
   USE
   SELECT NIV
   USE
   ENDIF
NEXT
ENDIF

*-----------UZELI SMO SVE PODATKE PRAVIMO PROSECNE CENE------
USE &KDAT ALIAS DATUMI IN 0
USE FIRMA IN 0
USE AN0 IN 0 ORDER 1
SELECT AN0
SET ORDER TO 1
select TVKART
IF RECCOUNT()>0

go top
MKOL=0
MKOLI=0
MDUG=0
MPOT=0
MNDUG=0
MNPOT=0
DO WHILE.NOT.EOF()
   MKOL=MKOL+KOL
   MKOLI=MKOLI+KOLI
   REPLACE KOLST WITH MKOL-MKOLI
   MDUG=MDUG+DUG
   MPOT=MPOT+POT
   REPLACE SALDO WITH MDUG-MPOT
 
   MNDUG=MNDUG+NDUG
   REPLACE NSALDO WITH MNDUG-MNPOT
   
   IF KOLI<>0 
      IF (KOLST+KOLI)<>0
         MNCENA=NSALDO/(KOLST+KOLI)
      ELSE
         MNCENA=0
      ENDIF
      REPLACE NCENA WITH MNCENA
      REPLACE NPOT WITH MNCENA*KOLI
      MNPOT=MNPOT+NPOT
      REPLACE NSALDO WITH MNDUG-MNPOT
   ENDIF
   SKIP
ENDDO   

GO TOP
SET EXACT ON
SET RELATION TO SIFRA INTO AN0 ADDITIVE
SET RELATION TO RSIF INTO ROB ADDITIVE

PUSH KEY CLEAR
*REPORT FORM TVKARTPRNSVE PREVIEW
   mfile='TVKARTPRNSVE'   
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov

POP KEY
ENDIF
CLOSE ALL
ROBA0.RELEASE
POP KEY
KEYBOARD '{ENTER}'


