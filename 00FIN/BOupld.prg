SELECT VP
SET ORDER TO 1
SET RELATION TO 
SELECT VPUPLD
DO  FORM BOUPLD
SELECT VPUPLD
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
BOA.release
DO BOa WITH mrec
