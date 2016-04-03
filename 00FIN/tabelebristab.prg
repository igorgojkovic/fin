PARAMETERS MLD
   SELECT TABELE
   mldbrisi=mld+'.dbf'
   IF FILE(mldBRISI)
      DELETE FILE &mldbrisi
   ENDIF      
