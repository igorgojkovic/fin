PUSH KEY CLEAR
SELECT JP
SET ORDER TO 1
SET RELATION TO 
SELECT JPUPLD
DO  FORM JPUPLDF
SELECT JPUPLD
SET RELATION to
MPIB=PIB
SELECT JP
SET ORDER TO 1
SEEK mpib
IF FOUND()
   mrec=RECNO()
ELSE
   mrec=0
endif      
CLOSE ALL
JPF.release
POP KEY
DO JPF WITH MREC