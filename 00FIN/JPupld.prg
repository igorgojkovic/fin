PUSH KEY CLEAR
SELECT JP
SET ORDER TO 1
SET RELATION TO 
SELECT JPUPLD
DO  FORM JPUPLD
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
USE &KJPGDE IN 0 ALIAS JPGDE EXCLUSIVE
SELECT JPGDE
REPLACE TPOLJE WITH MREC
MTPOLJE=TPOLJE
MTMENI=TMENI
USE
CLOSE ALL
JPA.release
POP KEY
*DO JPa WITH MTPOLJE,MTMENI