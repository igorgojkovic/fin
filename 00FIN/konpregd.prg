PARAMETERS AKONTO,ADAT0,ADAT1,ADOK,AMP,AMTR
PUSH KEY CLEAR

MKONTO=AKONTO
MDAT0=ADAT0
MDAT1=ADAT1
MDOK=ADOK
MMP=AMP
MMTR=AMTR
SET EXACT ON
 
MKLEN=LEN(ALLTRIM(MKONTO))

SELECT DATUMI
REPLACE DAT0 WITH MDAT0
REPLACE DAT1 WITH MDAT1
SELECT NAL


KKNALIZV=MDATA01+'\NALIZV'+OPERATER+'.DBF'
KKNALIZVX=MDATA01+'\NALIZV'+OPERATER+'.CDX'
KNALIZV=MDATA01+'\NALIZV'+OPERATER
KNALIZVX=MDATA01+'\NALIZV'+OPERATER


DO IDEL WITH (KKNALIZV)
DO IDEL WITH (KKNALIZVX)
DO IBAZE WITH KNALIZV,'NALIZV'
DO IIND WITH KNALIZV,'KONTO+DTOS(DATDOK)','BRNAL','DTOS(DATDOK)',;
             'KONTO+SIFRA+DTOS(DATDOK)','SIFRA+DTOS(DATDOK)','SIFRA+BRRAC+DTOS(DATDOK)'


USE &KNALIZV IN 0 ALIAS NALIZV EXCLUSIVE 
SELECT NAL
SET ORDER TO 1
SET EXACT OFF 
MK4NAZIV=KONTO.NAZIV
SEEK ALLTRIM(MKONTO)
IF FOUND()
   MPDUG=0
   MPPOT=0
   MPDDUG=0
   MPDPOT=0
   DO WHILE.NOT.EOF()
      IF SUBSTR(KONTO,1,MKLEN)<>ALLTRIM(MKONTO)
         EXIT
      ENDIF
      IF DATDOK<MDAT0
         IF DOK=MDOK.OR.MDOK=SPACE(3)
            IF MP=MMP.OR.MMP=SPACE(2)
               IF MTR=MMTR.OR.MMTR=0                                   
                              MPDUG=MPDUG+DUG
                              MPPOT=MPPOT+POT
                              MPDDUG=MPDDUG+DEVDUG
                              MPDPOT=MPDPOT+DEVPOT
               ENDIF
            ENDIF
         ENDIF
      ENDIF 
      SKIP
   ENDDO
   SELECT NALIZV
   IF MPDUG<>0.OR.MPPOT<>0
      APPEND BLANK
      REPLACE PDUG WITH MPDUG
      REPLACE PPOT WITH MPPOT
      REPLACE PSALDO WITH PDUG-PPOT    
      REPLACE K4NAZIV WITH MK4NAZIV
      REPLACE KONTO WITH MKONTO 
      REPLACE PDDUG WITH MPDDUG
      REPLACE PDPOT WITH MPDPOT
      REPLACE PDSALDO WITH PDDUG-PDPOT    
   ENDIF
ENDIF
   SELECT NAL
   SET ORDER TO 1
   SET EXACT OFF 
*   MK4NAZIV=KONTO.NAZIV
   SEEK ALLTRIM(MKONTO)
   IF FOUND()
      MPDUG=0
      MPPOT=0
      MPDDUG=0
      MPDPOT=0
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,MKLEN)<>ALLTRIM(MKONTO)
            EXIT
         ENDIF
         IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
            IF DOK=MDOK.OR.MDOK=SPACE(3)
               IF MP=MMP.OR.MMP=SPACE(2)
                  IF MTR=MMTR.OR.MMTR=0                                   
                                 MAKONTO=KONTO
                                 MBRNAL=BRNAL
                                 MDUG=DUG
                                 MPOT=POT
                                 MADOK=DOK
                                 MAMP=MP
                                 MAMTR=MTR
                                 MDATDOK=DATDOK
                                 MDEV=DEV
                                 MDEVKURS=DEVKURS
                                 MDEVDUG=DEVDUG
                                 MDEVPOT=DEVPOT
                                 MOPIS=OPIS
                                 SELECT NALIZV
                                 APPEND BLANK
                                 REPLACE KONTO WITH MAKONTO
                                 REPLACE BRNAL WITH MBRNAL
                                 REPLACE DUG WITH MDUG
                                 REPLACE POT WITH MPOT
                                 REPLACE DOK WITH MADOK
                                 REPLACE MP WITH MAMP
                                 REPLACE MTR WITH MAMTR
                                 REPLACE DATDOK WITH MDATDOK
                                 REPLACE DEV WITH MDEV
                                 REPLACE DEVKURS WITH MDEVKURS
                                 REPLACE DEVDUG WITH MDEVDUG
                                 REPLACE DEVPOT WITH MDEVPOT
                                 REPLACE K4NAZIV WITH MK4NAZIV
                                 REPLACE OPIS WITH MOPIS
                                 SELECT NAL
                  ENDIF
               ENDIF
            ENDIF
         ENDIF 
         SKIP
      ENDDO
   ENDIF
   PUSH KEY CLEAR
   SELECT NALIZV
   GO TOP
   MSALDO=0
   MDSALDO=0
   DO WHILE.NOT.EOF()
      MSALDO=MSALDO+DUG-POT+PSALDO
      MDSALDO=MDSALDO+DEVDUG-DEVPOT+PDSALDO
      REPLACE SALDO WITH MSALDO
      REPLACE DSALDO WITH MDSALDO
      SKIP
   ENDDO   
   GO TOP
   SET RELATION TO konto INTO konto additive
   PUBLIC anaziv
   anaziv=KONTO.NAZIV
   *REPORT FORM KONTOD  PREVIEW 
   mfile='KONTOD'
   uslov=""
   DO printer_bullzip WITH mdata02,mfile,uslov
   
   POP KEY
   SELECT NALIZV 
   USE
   SELECT NAL
SET EXACT ON                                        
POP KEY