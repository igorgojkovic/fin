SELECT VP
SET ORDER TO 1
SET RELATION TO 
SELECT VPUPLT
DO  FORM JCUPLT
SELECT VPUPLT
SET RELATION to
MPIB=PIB
SELECT VP
SET ORDER TO 1
SEEK mpib
IF FOUND()
   mrec=RECNO()
ELSE
   mrec=0
endif      
CLOSE ALL
JCA.release
DO JCa WITH mrec
