PARAMETERS MLD
   SELECT TABELE
   LOCATE FOR ALLTRIM(IMETAB)=ALLTRIM(MLD)
   IF FOUND()
      DELETE NEXT 1
   ENDIF      
