SELECT NIV
MBRKAL=BRKAL
SET ORDER TO 1
SEEK MBRKAL
IF FOUND()
   SET ORDER TO 
   USE &kKASARF IN 0 ORDER 1 ALIAS kasarf exclu
   SELECT kasarf
   zap
   SELECT NIV
   DO WHILE.NOT.EOF()
      MRSIF=RSIF
      MNAZ=ROB.NAZ
      MPODNAZIV=ROB.PODNAZIV
      MTARIFA=TARIFA
      MPROCPOR=PROCPOR
      MSTARIFA=STARIFA
      MSPROCPOR=PROCPOR
      MKOL=KOL
      MSCENA=SCENA
      MSIZNOS=SIZNOS
      MMALCENA=MALCENA
      MBARKOD=ROB.BARKOD
      MBRKAL=BRKAL
      MDATDOK=DATDOK
      MBRNAL=BRNAL
      MSEMA=SEMA
      IF MKOL<>0
         SELECT KASARF
         SET ORDER TO 1
         SEEK MRSIF
         IF.NOT.FOUND()
            SET ORDER TO 
            APPEND BLANK
            GO BOTTOM
            REPLACE BRKAL WITH MBRKAL
            REPLACE RSIF WITH MRSIF
            REPLACE NAZ WITH MNAZ
            REPLACE PODNAZIV WITH MPODNAZIV
*            IF DTOS(MDATDOK)>=TVAZIOD

*            ELSE
*               replace tarifa with Mtarifas
*               replace procpor with Mprocpors
*               replace Starifa with MStarifa
*               replace Sprocpor with MSprocpor
*            ENDIF   
            REPLACE KOL WITH MKOL
            REPLACE MALCENA WITH MMALCENA
            REPLACE BARKOD WITH MBARKOD
         ELSE
            REPLACE MALCENA WITH MMALCENA
            REPLACE BARKOD WITH MBARKOD
         ENDIF
               replace tarifa with Mtarifa
               replace procpor with Mprocpor
               replace Starifa with Mtarifa
               replace Sprocpor with Mprocpor
               REPLACE DATDOK WITH MDAtdok
               replace scena WITH mscena
               replace siznos WITH msiznos
               replace sema WITH msema
               replace brnal WITH mbrnal         
         SET ORDER TO 
      ENDIF
      SELECT NIV
      SKIP
   ENDDO
   SELECT NIV
   SET ORDER TO 
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

SELECT NIV
SET ORDER TO 
DO PORUKAU WITH ' PRENOS USPEŠNO IZVRŠEN'   
ENDIF 
SELECT NIV

