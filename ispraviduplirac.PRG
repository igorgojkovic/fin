USE vdupl IN 0 INDEX
SELECT vdupl
RECALL ALL
COPY TO proba FOR DUG<>0
USE proba IN 0 EXCLUSIVE
SELECT PROBA
INDEX on pib+brrac TAG brrac
SET ORDER TO 1
replace ALL dana WITH 1
TOTAL ON pib+brrac TO proba2
USE proba2 IN 0 EXCLUSIVE
SELECT proba2
DELETE ALL FOR dana<2
PACK
GO top
DO while.not.eof()
   MPIB=PIB
   mbrrac=brrac
   MPIBRAC=PIB+BRRAC
   SELECT PROBA
   SEEK MPIBRAC
   IF FOUND()
      BROJAC=0
      DO WHILE.NOT.EOF()
         IF PIB+BRRAC<>MPIBRAC
            EXIT
         ENDIF   
         BROJAC=BROJAC+1 
         IF BROJAC>1
            REPLACE DANA WITH 0
         ENDIF   
         SKIP
      ENDDO   
   ENDIF
   SELECT PROBA2
   SKIP
enddo   
SELECT PROBA 
BROWSE FIELDS PIB,BRRAC,DANA FOR DANA=0
CLOSE ALL tables