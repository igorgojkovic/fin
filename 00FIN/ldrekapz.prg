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
DO IDEL WITH (KKOCKAX)
SELECT LD
SET ORDER TO 4
*SELECT * FROM LD WHERE (GRUPA=MGRUPA.OR.MGRUPA=0).AND.(MTR=MMTR.OR.MMTR=0)
TOTAL ON MTR TO &KKOCKA
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
REPORT FORM LDREKAPZ PREVIEW 
SELECT KOCKA
USE
SELECT LD
SET ORDER TO  
POP KEY