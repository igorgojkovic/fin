PUSH KEY CLEAR
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
aredispl=mredispl
adatispl=mdatispl
SELECT ld
REPORT FORM LISTICNETOBRUTOSPISB  PREVIEW   
POP KEY