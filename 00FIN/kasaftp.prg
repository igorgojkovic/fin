SELECT KAL
MBRKAL=BRKAL
SET ORDER TO 1
SEEK MBRKAL
IF FOUND()
   SET ORDER TO 
   ON ERROR
   USE &KkASARF IN 0 EXCLU ALIAS kasarf
   SELECT KASARF
   ZAP
   ON ERROR DO GRESKE WITH ;
   ERROR( ), MESSAGE( ), MESSAGE(1), PROGRAM( ), LINENO( )
   SELECT KAL
   DO WHILE.NOT.EOF()
      SELECT kalg
      mprencene=kalprn.prencene
      SELECT kal
      IF mprencene<>'N'
      MRSIF=RSIF
      MNAZ=ROB.NAZ
      MPODNAZIV=ROB.PODNAZIV
      MTARIFA=TARIFA
      MPROCPOR=PROCPOR
      MKOL=KOL
      MMALCENA=MALCENA
      MBARKOD=ROB.BARKOD
      MBRKAL=BRKAL
      MVRSTA=ROB.VRKASA
      mgrupa=rob.grupa
      mvrstarobe=ROB.Vrsta      
      IF MKOL<>0
         SELECT KASARF
    *     SET ORDER TO 
         APPEND BLANK
         GO BOTTOM
         REPLACE BRKAL WITH MBRKAL
         REPLACE RSIF WITH MRSIF
         REPLACE NAZ WITH MNAZ
         REPLACE PODNAZIV WITH MPODNAZIV
         REPLACE TARIFA WITH MTARIFA
         REPLACE PROCPOR WITH MPROCPOR
         REPLACE KOL WITH MKOL
         REPLACE MALCENA WITH MMALCENA
         REPLACE BARKOD WITH MBARKOD
         REPLACE VRSTA WITH MVRSTA
         REPLACE VRSTArobe WITH MVRSTArobe
         replace grupa WITH mgrupa
      ENDIF
      ENDIF
      SELECT KAL
      SKIP
   ENDDO
   *------------OVDE SE PRENOSI---------------
   SELECT KASARF
   REPLACE ALL DATUM WITH DATE()
   REPLACE ALL VREME WITH TIME()
   USE
   IMASAJT=0
   USE AATM IN 0 
   SELECT AATM
   *SET STEP ON 
   LOCATE FOR ALLTRIM(SIFPROD)=TTVREDNI
   IF FOUND()
      IF sajtime<>SPACE(60)
         msajtime=ALLTRIM(sajtime)
         msajtput=ALLTRIM(sajtput)
         msajtkor=ALLTRIM(sajtkor)                              
         msajtloz=ALLTRIM(sajtloz)
         mgdeide=ALLTRIM(gdeide)
*         mimepri=ALLTRIM(imepri)  
*         mimesla=ALLTRIM(imesla)  
         mlokalput=ALLTRIM(MDATA02)   
         mimefajla='kasarf'+ttvredni+'.dbf'
         IMASAJT=1
      ENDIF      
   endif
   USE
   IF IMASAJT=1
   SET PROCEDURE TO ftpprocedure0
      DO FTPDEF
      DO FTPSALJI 
   SET PROCEDURE TO    
   ENDIF   
SELECT KAL
SET ORDER TO 
ENDIF
DO PORUKAU WITH ' PRENOS USPEŠNO IZVRŠEN'    
SELECT kal

