PUBLIC KOMORE,aredispl,adatispl
PUSH KEY CLEAR

SELECT LDPARAM
KOMORE=KOMORAJ+KOMORAS+KOMORAR
mredispl=redispl
DO case
CASE mredispl=1
   mdatispl=dat1
CASE mredispl=2
   mdatispl=dat2
CASE mredispl=3
   mdatispl=dat3
OTHERWISE
   mredispl=4
   mdatispl=dat4
ENDCASE
aredispl=mredispl
adatispl=mdatispl
SELECT LD
SET ORDER TO 5
*SELECT * FROM LD WHERE (GRUPA=MGRUPA.OR.MGRUPA=0).AND.(MTR=MMTR.OR.MMTR=0)
REPORT FORM LDGRUPE0  PREVIEW 

 SELECT LD
 SET ORDER TO  
 POP KEY