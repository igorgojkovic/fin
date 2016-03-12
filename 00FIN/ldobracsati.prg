PARAMETERS MMES
SET CENTURY ON

MDANA0=1
MDANA1=30
mmmes=1
DO CASE MMES
CASE    MMES=1;
    .OR.MMES=13;
    .OR.MMES=25;
    .OR.MMES=37;
    .OR.MMES=3;
    .OR.MMES=5;
    .OR.MMES=7;
    .OR.MMES=8;
    .OR.MMES=10;
    .OR.MMES=12;
    .OR.MMES=15;
    .OR.MMES=17;
    .OR.MMES=19;
    .OR.MMES=20;
    .OR.MMES=22;
    .OR.MMES=24;
    .OR.MMES=27;
    .OR.MMES=29;
    .OR.MMES=31;
    .OR.MMES=32;
    .OR.MMES=34;
    .OR.MMES=36;
    .OR.MMES=39;
    .OR.MMES=41;
    .OR.MMES=43;
    .OR.MMES=44;
    .OR.MMES=46;
    .OR.MMES=48
   MDANA1=31
   DO CASE mmes
      CASE mmes=1.or.mmes=13.or.mmes=25.or.mmes=37
         mmmes=1
      CASE mmes=3.or.mmes=15.or.mmes=27.or.mmes=39
         mmmes=3
      CASE mmes=5.or.mmes=17.or.mmes=29.or.mmes=41
         mmmes=5
      CASE mmes=7.or.mmes=19.or.mmes=31.or.mmes=43
         mmmes=7
      CASE mmes=8.or.mmes=20.or.mmes=32.or.mmes=44
         mmmes=8
      CASE mmes=10.or.mmes=22.or.mmes=34.or.mmes=46
         mmmes=10
      CASE mmes=12.or.mmes=24.or.mmes=36.or.mmes=48
         mmmes=12
      endcase
   
   MDAN0=CTOD('01-'+REPLI('0',2-LEN(ALLTRIM(STR(mmMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
   MDAN1=CTOD('31-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
   
CASE MMES=4.OR.MMES=6;
           .OR.MMES=9;
           .OR.MMES=11;
           .OR.MMES=16;
           .OR.MMES=18;
           .OR.MMES=21;
           .OR.MMES=23;
           .OR.MMES=28;
           .OR.MMES=30;
           .OR.MMES=33;
           .OR.MMES=35;
           .OR.MMES=40;
           .OR.MMES=42;
           .OR.MMES=45;
           .OR.MMES=47
   DO CASE mmes
      CASE mmes=4.or.mmes=16.or.mmes=28.or.mmes=40
         mmmes=4
      CASE mmes=6.or.mmes=18.or.mmes=30.or.mmes=42
         mmmes=6
      CASE mmes=9.or.mmes=21.or.mmes=33.or.mmes=45
         mmmes=9
      CASE mmes=11.or.mmes=23.or.mmes=35.or.mmes=47
         mmmes=11
      endcase

   MDANA1=30
   MDAN0=CTOD('01-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
   MDAN1=CTOD('30-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
CASE MMES=2.OR.MMES=14;
           .OR.MMES=26;
           .OR.MMES=38
   DO CASE mmes
      CASE mmes=2.or.mmes=14.or.mmes=26.or.mmes=38
         mmmes=2
      endcase   
   MDAN0=CTOD('01-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
   IF GODINA<>'2012'
      MDAN1=CTOD('28-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
      MDANA1=28
   ELSE
      MDAN1=CTOD('29-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
      MDANA1=29
   ENDIF   
OTHERWISE
   MDAN0=CTOD('01-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
   MDAN1=CTOD('30-'+REPLI('0',2-LEN(ALLTRIM(STR(MMMES,2,0))))+ALLTRIM(STR(MMMES,2,0))+'-'+GODINA)
   MDANA1=30
ENDCASE       

MGODINA=GODINA

MKOLIKO=MDAN1-MDAN0
MSATI=0
FOR I = 0 TO MKOLIKO   
   MDATUM=MDAN0+I
   MMDOW=DOW(MDATUM)
   IF MMDOW<>1
      IF MMDOW<>7
         MSATI=MSATI+8
      ENDIF
   ENDIF
NEXT

REPLACE CMES WITH MSATI
REPLACE CZAKON WITH MSATI
