PARAMETERS Mpib,MDAT0,MDAT1,MEVALUTA

SELECT VPKAM
SET ORDER TO 1
SEEK MPIB
IF FOUND()
   MDUG=0
   DO WHILE.NOT.EOF()
      IF PIB<>MPIB
         EXIT
      ENDIF
      IF DATPOC>=MDAT0.AND.DATPOC<=MDAT1
         mdug=mdug+KAMATA
      ENDIF   
      SKIP
   ENDDO
   SELECT VPUPL
   SEEK MPIB
   IF FOUND()
      IF MDUG>0
         select VPUPL
         append blank
         replace PIB with MPIB
         replace dug with mdug
         replace grupa with 'KAM'
         REPLACE BRNAL WITH abrnal 
         REPLACE OPIS WITH 'KAMATA '+DTOC(MDAT0)+' '+DTOC(MDAT1)
         REPLACE DATUM WITH MDAT1
         REPLACE VALUTA WITH MEVALUTA
         select VP
         replace kamata with mdug
         select VPUPL
      endif
   ENDIF  
ENDIF
SELECT VPKAM
