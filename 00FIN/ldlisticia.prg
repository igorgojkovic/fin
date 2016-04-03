PARAMETERS mgrupa
PUBLIC aredispl,adatispl
SELECT ldparam
mredispl=redispl
DO case
CASE mredispl=1
   mdatispl=dat1
CASE mredispl=2
   mdatispl=dat2
CASE mredispl=3
   mdatispl=dat3
OTHERWISE
     mdatispl=dat4
ENDCASE
mmgrupa=VAL(mgrupa)
aredispl=mredispl
adatispl=mdatispl
SELECT ld
SET CENTURY ON
SET ORDER TO 5
MMGRUPA=GRUPA
GO TOP
REPORT FORM LISTICa  PREVIEW FOR GRUPA=MMGRUPA
SET CENTURY OFF
