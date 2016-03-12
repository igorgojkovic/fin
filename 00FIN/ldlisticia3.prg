PARAMETERS mgrupa,aa
PUBLIC aredispl,adatispl,MKONACNA
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
MKONACNA=KONACNA
SELECT ld
SET ORDER TO 5
MMGRUPA=GRUPA
GO TOP
SET CENTURY ON
IF aa=0
rEPORT FORM LISTICa3  PREVIEW  FOR grupa=mmgrupa
else
rEPORT FORM LISTICa3  TO PRINTER PROMPT  FOR grupa=mmgrupa
endif
SET CENTURY OFF
