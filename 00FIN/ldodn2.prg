* PROCEDURE PUNIPOD0N
* PUSH KEY CLEAR

*  USE &LNPODACI ALIAS LNPOD IN 0
*   SELECT LNPOD
*   IF RECCOUNT()<1
   
*   DO odnpuni

*   ENDIF

*GO TOP

*POP KEY
*ENDPROC



PROCEDURE PUNIPOD01N
PARAMETERS AA
PUSH KEY CLEAR

USE LDPOD00 IN 0 ORDER 1 
SELECT LDPOD00
SELECT LDPARAM
MMESCAS=CZAKON
MPROSBRUTO=PROSBRUTO*5
MMINIMAL=MINIMAL
MREDISPL=REDISPL
SELECT LD

IF AA=1

   BROJAC=0
   MZAR1=0
   MZAR2=0
   MZAR3=0
   MZAR4=0
   MZAP1=0
   MZAP2=0
   MZAP3=0
   MZAP4=0
   MNEPUNI1=0
   MNEPUNI2=0
   MNEPUNI3=0
   MNEPUNI4=0
   M50GOD1=0
   M50GOD2=0
   M50GOD3=0
   M50GOD4=0
   M45GOD1=0
   M45GOD2=0
   M45GOD3=0
   M45GOD4=0
   MBENRAD1=0
   MBENRAD2=0
   MBENRAD3=0
   MBENRAD4=0
   MBENDIN1=0
   MBENDIN2=0
   MBENDIN3=0
   MBENDIN4=0

   MOSNDOP1=0
   MOSNDOP2=0
   MOSNDOP3=0
   MOSNDOP4=0
   MPEN1=0
   MPEN2=0
   MPEN3=0
   MPEN4=0
   MZDR1=0
   MZDR2=0
   MZDR3=0
   MZDR4=0
   MNEZ1=0
   MNEZ2=0
   MNEZ3=0
   MNEZ4=0
   MFPEN1=0
   MFPEN2=0
   MFPEN3=0
   MFPEN4=0
   MFZDR1=0
   MFZDR2=0
   MFZDR3=0
   MFZDR4=0
   MFNEZ1=0
   MFNEZ2=0
   MFNEZ3=0
   MFNEZ4=0
   DO WHILE.NOT.EOF()
      IF LDRAD.GRUPA<>9999
      *----------OBRACUNATE ZARADE------------
      MZAR1=MZAR1+BRUTO
      MZAP1=MZAP1+1
      MOSNOV=BRUTO*MMESCAS/CASUK
      IF CASUK<MMESCAS
         MNEPUNI1=MNEPUNI1+1
      ENDIF
      IF LDRAD.PROCUMANJ=100
         M50GOD1=M50GOD+1
      ENDIF
      IF LDRAD.PROCUMANJ=80
         M45GOD1=M45GOD+1
      ENDIF
      IF BENDIN<>0
         MBENRAD1=MBENRAD1+1
         MBENDIN1=MBENDIN1+BENDIN
      ENDIF
      MOSNDOP1=MOSNDOP1+OSNOVICA
      MPEN1=MPEN1+DOPPR
      MZDR1=MZDR1+DOPZR
      MNEZ1=MNEZ1+DOPNR
      MFPEN1=MFPEN1+DOPPF
      MFZDR1=MFZDR1+DOPZF
      MFNEZ1=MFNEZ1+DOPNF


      DO CASE MOSNOV
      CASE MOSNOV>MMINIMAL.AND.MOSNOV<MPROSBRUTO
         MZAR2=MZAR2+BRUTO
         MZAP2=MZAP2+1
         IF CASUK<MMESCAS
           MNEPUNI2=MNEPUNI2+1
         ENDIF
         IF LDRAD.PROCUMANJ=100
            M50GOD2=M50GOD2+1
         ENDIF
         IF LDRAD.PROCUMANJ=80
            M45GOD2=M45GOD2+1
         ENDIF
         IF BENDIN<>0
            MBENRAD2=MBENRAD2+1
            MBENDIN2=MBENDIN2+BENDIN
         ENDIF

         MOSNDOP2=MOSNDOP2+OSNOVICA
         MPEN2=MPEN2+DOPPR
         MZDR2=MZDR2+DOPZR
         MNEZ2=MNEZ2+DOPNR
         MFPEN2=MFPEN2+DOPPF
         MFZDR2=MFZDR2+DOPZF
         MFNEZ2=MFNEZ2+DOPNF

      CASE MOSNOV<=MMINIMAL
         MZAR3=MZAR3+BRUTO
         MZAP3=MZAP3+1
         IF CASUK<MMESCAS
            MNEPUNI3=mnepuni3+1
         ENDIF
         IF LDRAD.PROCUMANJ=100
            M50GOD3=M50GOD3+1
         ENDIF
         IF LDRAD.PROCUMANJ=80
            M45GOD3=M45GOD3+1
         ENDIF
         IF BENDIN<>0
            MBENRAD3=MBENRAD3+1
            MBENDIN3=MBENDIN3+BENDIN
         ENDIF
         MOSNDOP3=MOSNDOP3+OSNOVICA
         MPEN3=MPEN3+DOPPR
         MZDR3=MZDR3+DOPZR
         MNEZ3=MNEZ3+DOPNR
         MFPEN3=MFPEN3+DOPPF
         MFZDR3=MFZDR3+DOPZF
         MFNEZ3=MFNEZ3+DOPNF

      CASE MOSNOV>MPROSBRUTO
         MZAR4=MZAR4+BRUTO
         MZAP4=MZAP4+1
         IF CASUK<MMESCAS
            MNEPUNI4=MNEPUNI4+1
         ENDIF
         IF LDRAD.PROCUMANJ=100
            M50GOD4=M50GOD4+1
         ENDIF
         IF LDRAD.PROCUMANJ=80
            M45GOD4=M45GOD4+1
         ENDIF
         IF BENDIN<>0
            MBENRAD4=MBENRAD4+1
            MBENDIN4=MBENDIN4+BENDIN
         ENDIF
         MOSNDOP4=MOSNDOP4+OSNOVICA
         MPEN4=MPEN4+DOPPR
         MZDR4=MZDR4+DOPZR
         MNEZ4=MNEZ4+DOPNR
         MFPEN4=MFPEN4+DOPPF
         MFZDR4=MFZDR4+DOPZF
         MFNEZ4=MFNEZ4+DOPNF
      ENDCASE
      *---------------------------------------
      ENDIF
      SKIP
   ENDDO

   DO LN2POP2 WITH '1.     ',MZAR1,MZAR2,MZAR3,MZAR4
   DO LN2POP2 WITH '2.     ',MZAP1,MZAP2,MZAP3,MZAP4
   DO LN2POP2 WITH '2.1.   ',MNEPUNI1,MNEPUNI2,MNEPUNI3,MNEPUNI4
   DO LN2POP2 WITH '2.2.   ',M50GOD1,M50GOD2,M50GOD3,M50GOD4
   DO LN2POP2 WITH '2.3.   ',M45GOD1,M45GOD2,M45GOD3,M45GOD4
   DO LN2POP2 WITH '3.     ',MOSNDOP1,MOSNDOP2,MOSNDOP3,MOSNDOP4
   DO LN2POP2 WITH '4.1.1. ',MPEN1,MPEN2,MPEN3,MPEN4
   DO LN2POP2 WITH '4.1.2. ',MZDR1,MZDR2,MZDR3,MZDR4
   DO LN2POP2 WITH '4.1.3. ',MNEZ1,MNEZ2,MNEZ3,MNEZ4
   DO LN2POP2 WITH '4.2.1. ',MFPEN1,MFPEN2,MFPEN3,MFPEN4
   DO LN2POP2 WITH '4.2.2. ',MFZDR1,MFZDR2,MFZDR3,MFZDR4
   DO LN2POP2 WITH '4.2.3. ',MFNEZ1,MFNEZ2,MFNEZ3,MFNEZ4
   DO LN2POP2 WITH '5.     ',MBENRAD1,MBENRAD2,MBENRAD3,MBENRAD4
   DO LN2POP2 WITH '6.     ',MBENDIN1,MBENDIN2,MBENDIN3,MBENDIN4
ELSE
   BROJAC=0
   MZAR1=0
   MZAR2=0
   MZAR3=0
   MZAR4=0
   MZAP1=0
   MZAP2=0
   MZAP3=0
   MZAP4=0
   MNEPUNI1=0
   MNEPUNI2=0
   MNEPUNI3=0
   MNEPUNI4=0
   M50GOD1=0
   M50GOD2=0
   M50GOD3=0
   M50GOD4=0
   M45GOD1=0
   M45GOD2=0
   M45GOD3=0
   M45GOD4=0
   MBENRAD1=0
   MBENRAD2=0
   MBENRAD3=0
   MBENRAD4=0
   MBENDIN1=0
   MBENDIN2=0
   MBENDIN3=0
   MBENDIN4=0

   MOSNDOP1=0
   MOSNDOP2=0
   MOSNDOP3=0
   MOSNDOP4=0
   MPEN1=0
   MPEN2=0
   MPEN3=0
   MPEN4=0
   MZDR1=0
   MZDR2=0
   MZDR3=0
   MZDR4=0
   MNEZ1=0
   MNEZ2=0
   MNEZ3=0
   MNEZ4=0
   MFPEN1=0
   MFPEN2=0
   MFPEN3=0
   MFPEN4=0
   MFZDR1=0
   MFZDR2=0
   MFZDR3=0
   MFZDR4=0
   MFNEZ1=0
   MFNEZ2=0
   MFNEZ3=0
   MFNEZ4=0
   DO WHILE.NOT.EOF()
      IF LDRAD.GRUPA=9999
      *----------OBRACUNATE ZARADE------------
      MZAR1=MZAR1+BRUTO
      MZAP1=MZAP1+1
      MOSNOV=BRUTO*MMESCAS/CASUK
      IF CASUK<MMESCAS
         MNEPUNI1=MNEPUNI1+1
      ENDIF
      IF LDRAD.PROCUMANJ=100
         M50GOD1=M50GOD+1
      ENDIF
      IF LDRAD.PROCUMANJ=80
         M45GOD1=M45GOD+1
      ENDIF
      IF BENDIN<>0
         MBENRAD1=MBENRAD1+1
         MBENDIN1=MBENDIN1+BENDIN
      ENDIF
      MOSNDOP1=MOSNDOP1+OSNOVICA
      MPEN1=MPEN1+DOPPR
      MZDR1=MZDR1+DOPZR
      MNEZ1=MNEZ1+DOPNR
      MFPEN1=MFPEN1+DOPPF
      MFZDR1=MFZDR1+DOPZF
      MFNEZ1=MFNEZ1+DOPNF


      DO CASE MOSNOV
      CASE MOSNOV>MMINIMAL.AND.MOSNOV<MPROSBRUTO
         MZAR2=MZAR2+BRUTO
         MZAP2=MZAP2+1
         IF CASUK<MMESCAS
           MNEPUNI2=MNEPUNI2+1
         ENDIF
         IF LDRAD.PROCUMANJ=100
            M50GOD2=M50GOD2+1
         ENDIF
         IF LDRAD.PROCUMANJ=80
            M45GOD2=M45GOD2+1
         ENDIF
         IF BENDIN<>0
            MBENRAD2=MBENRAD2+1
            MBENDIN2=MBENDIN2+BENDIN
         ENDIF

         MOSNDOP2=MOSNDOP2+OSNOVICA
         MPEN2=MPEN2+DOPPR
         MZDR2=MZDR2+DOPZR
         MNEZ2=MNEZ2+DOPNR
         MFPEN2=MFPEN2+DOPPF
         MFZDR2=MFZDR2+DOPZF
         MFNEZ2=MFNEZ2+DOPNF

      CASE MOSNOV<=MMINIMAL
         MZAR3=MZAR3+BRUTO
         MZAP3=MZAP3+1
         IF CASUK<MMESCAS
            MNEPUNI3=mnepuni3+1
         ENDIF
         IF LDRAD.PROCUMANJ=100
            M50GOD3=M50GOD3+1
         ENDIF
         IF LDRAD.PROCUMANJ=80
            M45GOD3=M45GOD3+1
         ENDIF
         IF BENDIN<>0
            MBENRAD3=MBENRAD3+1
            MBENDIN3=MBENDIN3+BENDIN
         ENDIF
         MOSNDOP3=MOSNDOP3+OSNOVICA
         MPEN3=MPEN3+DOPPR
         MZDR3=MZDR3+DOPZR
         MNEZ3=MNEZ3+DOPNR
         MFPEN3=MFPEN3+DOPPF
         MFZDR3=MFZDR3+DOPZF
         MFNEZ3=MFNEZ3+DOPNF

      CASE MOSNOV>MPROSBRUTO
         MZAR4=MZAR4+BRUTO
         MZAP4=MZAP4+1
         IF CASUK<MMESCAS
            MNEPUNI4=MNEPUNI4+1
         ENDIF
         IF LDRAD.PROCUMANJ=100
            M50GOD4=M50GOD4+1
         ENDIF
         IF LDRAD.PROCUMANJ=80
            M45GOD4=M45GOD4+1
         ENDIF
         IF BENDIN<>0
            MBENRAD4=MBENRAD4+1
            MBENDIN4=MBENDIN4+BENDIN
         ENDIF
         MOSNDOP4=MOSNDOP4+OSNOVICA
         MPEN4=MPEN4+DOPPR
         MZDR4=MZDR4+DOPZR
         MNEZ4=MNEZ4+DOPNR
         MFPEN4=MFPEN4+DOPPF
         MFZDR4=MFZDR4+DOPZF
         MFNEZ4=MFNEZ4+DOPNF
      ENDCASE
      *---------------------------------------
      ENDIF
      SKIP
   ENDDO

   DO LN2POPV2 WITH '1.     ',MZAR1,MZAR2,MZAR3,MZAR4
   DO LN2POPV2 WITH '2.     ',MZAP1,MZAP2,MZAP3,MZAP4
   DO LN2POPV2 WITH '2.1.   ',MNEPUNI1,MNEPUNI2,MNEPUNI3,MNEPUNI4
   DO LN2POPV2 WITH '2.2.   ',M50GOD1,M50GOD2,M50GOD3,M50GOD4
   DO LN2POPV2 WITH '2.3.   ',M45GOD1,M45GOD2,M45GOD3,M45GOD4
   DO LN2POPV2 WITH '3.     ',MOSNDOP1,MOSNDOP2,MOSNDOP3,MOSNDOP4
   DO LN2POPV2 WITH '4.1.1. ',MPEN1,MPEN2,MPEN3,MPEN4
   DO LN2POPV2 WITH '4.1.2. ',MZDR1,MZDR2,MZDR3,MZDR4
   DO LN2POPV2 WITH '4.1.3. ',MNEZ1,MNEZ2,MNEZ3,MNEZ4
   DO LN2POPV2 WITH '4.2.1. ',MFPEN1,MFPEN2,MFPEN3,MFPEN4
   DO LN2POPV2 WITH '4.2.2. ',MFZDR1,MFZDR2,MFZDR3,MFZDR4
   DO LN2POPV2 WITH '4.2.3. ',MFNEZ1,MFNEZ2,MFNEZ3,MFNEZ4
   DO LN2POPV2 WITH '5.     ',MBENRAD1,MBENRAD2,MBENRAD3,MBENRAD4
   DO LN2POPV2 WITH '6.     ',MBENDIN1,MBENDIN2,MBENDIN3,MBENDIN4



   ENDIF
SELECT LNPOD
USE
SELECT LD
POP KEY
   ENDPROC


   PROCEDURE LN2POP2
   PARAMETERS A0,A1,A2,A3,A4
PUSH KEY CLEAR
      SELECT LNPOD
      LOCATE FOR KOD=A0.AND.ISPLATA=MISPLATA.AND.MESEC=MMESEC
      IF FOUND()
      MES1='S'+ALLTRIM(STR(MREDISPL))+'1'
      MES2='S'+ALLTRIM(STR(MREDISPL))+'2'
      MES3='S'+ALLTRIM(STR(MREDISPL))+'3'
      MES4='S'+ALLTRIM(STR(MREDISPL))+'4'
       
         REPLACE &MES1 WITH A1
         REPLACE &MES2 WITH A2
         REPLACE &MES3 WITH A3
         REPLACE &MES4 WITH A4
      ENDIF   
      SELECT LD
POP KEY
     ENDPROC




   PROCEDURE LN2POPV2 
   PARAMETERS A0,A1,A2,A3,A4
PUSH KEY CLEAR
      SELECT LNPOD
      LOCATE FOR KOD=A0.AND.ISPLATA=MISPLATA.AND.MESEC=MMESEC
      IF FOUND()
      MES1='SV'+ALLTRIM(STR(MREDISPL))+'1'
      MES2='SV'+ALLTRIM(STR(MREDISPL))+'2'
      MES3='SV'+ALLTRIM(STR(MREDISPL))+'3'
      MES4='SV'+ALLTRIM(STR(MREDISPL))+'4'
       
         REPLACE &MES1 WITH A1
         REPLACE &MES2 WITH A2
         REPLACE &MES3 WITH A3
         REPLACE &MES4 WITH A4
         
      ENDIF      
      SELECT LD
POP KEY
   ENDPROC

  PROCEDURE ODNUNESI
  PARAMETERS B1,C1,D1,E1
PUSH KEY CLEAR
     APPEND BLANK
        REPLACE OPIS WITH C1
        REPLACE KOD WITH B1
        REPLACE AOP WITH D1
        REPLACE RLINI WITH E1
POP KEY
   ENDPROC

*--------OBRACUN OBRASCA OD IZ F4----------------
PROCEDURE LDNODARAC
PUSH KEY CLEAR

*--------POPUNJAVANJE POLJA 1.1.-----------
   MKOD='1.     '
   SEEK MKOD
   DECLARE M01[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M01[I]=ROUND(&MSK,0)
   NEXT
   *--------POPUNJAVANJE POLJA 1.2.-----------
   MKOD='2.     '
   SEEK MKOD
   DECLARE M02[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M02[I]=ROUND(&MSK,0)
   NEXT



   MKOD='2.1.   '
   SEEK MKOD
   DECLARE M021[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M021[I]=ROUND(&MSK,0)
   NEXT

   MKOD='2.2.   '
   SEEK MKOD
   DECLARE M022[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M022[I]=ROUND(&MSK,0)
   NEXT


   MKOD='2.2.1. '
   SEEK MKOD
   DECLARE M0221[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0221[I]=ROUND(&MSK,0)
   NEXT

   MKOD='2.2.2. '
   SEEK MKOD
   DECLARE M0222[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0222[I]=ROUND(&MSK,0)
   NEXT

   MKOD='2.2.3. '
   SEEK MKOD
   DECLARE M0223[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0223[I]=ROUND(&MSK,0)
   NEXT
   MKOD='2.2.4. '
   SEEK MKOD
   DECLARE M0224[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0224[I]=ROUND(&MSK,0)
   NEXT

   MKOD='2.2.5. '
   SEEK MKOD
   DECLARE M0225[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0225[I]=ROUND(&MSK,0)
   NEXT

   MKOD='3.     '
   SEEK MKOD
   DECLARE M03[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M03[I]=ROUND(&MSK,0)
   NEXT

   MKOD='4.     '
   SEEK MKOD
   DECLARE M04[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M04[I]=ROUND(&MSK,0)
   NEXT

   MKOD='4.1.   '
   SEEK MKOD
   DECLARE M041[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M041[I]=ROUND(&MSK,0)
   NEXT

   MKOD='4.1.1. '
   SEEK MKOD
   DECLARE M0411[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0411[I]=ROUND(&MSK,0)
   NEXT

   MKOD='4.1.2. '
   SEEK MKOD
   DECLARE M0412[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0412[I]=ROUND(&MSK,0)
   NEXT
   MKOD='4.1.3. '
   SEEK MKOD
   DECLARE M0413[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0413[I]=ROUND(&MSK,0)
   NEXT

   MKOD='4.2.   '
   SEEK MKOD
   DECLARE M042[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M042[I]=ROUND(&MSK,0)
   NEXT

   MKOD='4.2.1. '
   SEEK MKOD
   DECLARE M0421[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0421[I]=ROUND(&MSK,0)
   NEXT
   MKOD='4.2.2. '
   SEEK MKOD
   DECLARE M0422[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0422[I]=ROUND(&MSK,0)
   NEXT
   MKOD='4.2.3. '
   SEEK MKOD
   DECLARE M0423[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0423[I]=ROUND(&MSK,0)
   NEXT

   MKOD='5.     '
   SEEK MKOD
   DECLARE M05[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M05[I]=ROUND(&MSK,0)
   NEXT

   MKOD='6.     '
   SEEK MKOD
   DECLARE M06[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M06[I]=ROUND(&MSK,0)
   NEXT

   MKOD='7.     '
   SEEK MKOD
   DECLARE M07[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M07[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.     '
   SEEK MKOD
   DECLARE M08[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M08[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.1.   '
   SEEK MKOD
   DECLARE M081[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M081[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.1.1. '
   SEEK MKOD
   DECLARE M0811[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0811[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.1.2. '
   SEEK MKOD
   DECLARE M0812[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0812[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.1.3. '
   SEEK MKOD
   DECLARE M0813[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0813[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.2.   '
   SEEK MKOD
   DECLARE M082[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M082[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.2.1. '
   SEEK MKOD
   DECLARE M0821[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0821[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.2.2. '
   SEEK MKOD
   DECLARE M0822[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0822[I]=ROUND(&MSK,0)
   NEXT

   MKOD='8.2.3. '
   SEEK MKOD
   DECLARE M0823[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M0823[I]=ROUND(&MSK,0)
   NEXT

   MKOD='9.     '
   SEEK MKOD
   DECLARE M09[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M09[I]=ROUND(&MSK,0)
   NEXT

   MKOD='10.    '
   SEEK MKOD
   DECLARE M10[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M10[I]=ROUND(&MSK,0)
   NEXT

   MKOD='11.    '
   SEEK MKOD
   DECLARE M11[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M11[I]=ROUND(&MSK,0)
   NEXT

   MKOD='11.1.  '
   SEEK MKOD
   DECLARE M111[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M111[I]=ROUND(&MSK,0)
   NEXT

   MKOD='11.1.1.'
   SEEK MKOD
   DECLARE M1111[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1111[I]=ROUND(&MSK,0)
   NEXT
   MKOD='11.1.2.'
   SEEK MKOD
   DECLARE M1112[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1112[I]=ROUND(&MSK,0)
   NEXT
   MKOD='11.1.3.'
   SEEK MKOD
   DECLARE M1113[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1113[I]=ROUND(&MSK,0)
   NEXT

   MKOD='11.2.  '
   SEEK MKOD
   DECLARE M112[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M112[I]=ROUND(&MSK,0)
   NEXT

   MKOD='11.2.1.'
   SEEK MKOD
   DECLARE M1121[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1121[I]=ROUND(&MSK,0)
   NEXT
   MKOD='11.2.2.'
   SEEK MKOD
   DECLARE M1122[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1122[I]=ROUND(&MSK,0)
   NEXT
   MKOD='11.2.3.'
   SEEK MKOD
   DECLARE M1123[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1123[I]=ROUND(&MSK,0)
   NEXT

   MKOD='12.    '
   SEEK MKOD
   DECLARE M12[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M12[I]=ROUND(&MSK,0)
   NEXT

   MKOD='14.    '
   SEEK MKOD
   DECLARE M14[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M14[I]=ROUND(&MSK,0)
   NEXT

   MKOD='14.1.  '
   SEEK MKOD
   DECLARE M141[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M141[I]=ROUND(&MSK,0)
   NEXT

   MKOD='14.1.1.'
   SEEK MKOD
   DECLARE M1411[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1411[I]=ROUND(&MSK,0)
   NEXT
   MKOD='14.1.2.'
   SEEK MKOD
   DECLARE M1412[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1412[I]=ROUND(&MSK,0)
   NEXT
   MKOD='14.1.3.'
   SEEK MKOD
   DECLARE M1413[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1413[I]=ROUND(&MSK,0)
   NEXT

   MKOD='14.2.  '
   SEEK MKOD
   DECLARE M142[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M142[I]=ROUND(&MSK,0)
   NEXT

   MKOD='14.2.1.'
   SEEK MKOD
   DECLARE M1421[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1421[I]=ROUND(&MSK,0)
   NEXT
   MKOD='14.2.2.'
   SEEK MKOD
   DECLARE M1422[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1422[I]=ROUND(&MSK,0)
   NEXT
   MKOD='14.2.3.'
   SEEK MKOD

   DECLARE M1423[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1423[I]=ROUND(&MSK,0)
   NEXT

*----------RACUNAMO---------------
   MKOD='2.2.   '
   SEEK MKOD

   DECLARE M022[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M022[I]=M0221[I]+M0222[I]+M0223[I]+M0224[I]+M0225[I]
       
         REPLACE &MSK WITH M022[I]
   NEXT


   MKOD='4.1.   '
   SEEK MKOD

   DECLARE M041[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M041[I]=M0411[I]+M0412[I]+M0413[I]
       
         REPLACE &MSK WITH M041[I]
   NEXT

   MKOD='4.2.   '
   SEEK MKOD


   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M042[I]=M0421[I]+M0422[I]+M0423[I]
       
         REPLACE &MSK WITH M042[I]
   NEXT

   MKOD='8.1.   '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M081[I]=M0811[I]+M0812[I]+M0813[I]
       
         REPLACE &MSK WITH M081[I]
 
   NEXT

   MKOD='8.2.   '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M082[I]=M0821[I]+M0822[I]+M0823[I]
       
         REPLACE &MSK WITH M082[I]
 
   NEXT

   MKOD='11.1   '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M111[I]=M1111[I]+M1112[I]+M1113[I]
       
         REPLACE &MSK WITH M111[I]

   NEXT

   MKOD='11.2.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M112[I]=M1121[I]+M1122[I]+M1123[I]
       
         REPLACE &MSK WITH M112[I]
 
   NEXT



   MKOD='13.    '
   SEEK MKOD
   DECLARE M13[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M13[I]=ROUND(&MSK,0)
   NEXT

   MKOD='13.1.1.'
   SEEK MKOD
   DECLARE M1311[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1311[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.1.2.'
   SEEK MKOD
   DECLARE M1312[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1312[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.1.3.'
   SEEK MKOD
   DECLARE M1313[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1313[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.2.1.'
   SEEK MKOD
   DECLARE M1321[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1321[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.2.2.'
   SEEK MKOD
   DECLARE M1322[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1322[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.2.3.'
   SEEK MKOD

   DECLARE M1323[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1323[I]=ROUND(&MSK,0)
   NEXT

   MKOD='13.1   '
   SEEK MKOD
   DECLARE M131[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M131[I]=M1311[I]+M1312[I]+M1313[I]
       
         REPLACE &MSK WITH M131[I]
   
   NEXT

   MKOD='13.2.  '
   SEEK MKOD
   DECLARE M132[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M132[I]=M1321[I]+M1322[I]+M1323[I]
       
         REPLACE &MSK WITH M132[I]
  
   NEXT





   MKOD='14.1   '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M141[I]=M1411[I]+M1412[I]+M1413[I]
       
         REPLACE &MSK WITH M141[I]
   
   NEXT

   MKOD='14.2.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M142[I]=M1421[I]+M1422[I]+M1423[I]
       
         REPLACE &MSK WITH M142[I]
   
   NEXT

   MKOD='4.     '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M04[I]=M041[I]+M042[I]
       
         REPLACE &MSK WITH M04[I]
  
   NEXT

   MKOD='8.     '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M08[I]=M081[I]+M082[I]
       
         REPLACE &MSK WITH M08[I]
  
   NEXT

   MKOD='11.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M11[I]=M111[I]+M112[I]
       
         REPLACE &MSK WITH M11[I]
  
   NEXT

   MKOD='14.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M14[I]=M141[I]+M142[I]
       
         REPLACE &MSK WITH M14[I]
   
   NEXT

   MKOD='10.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M10[I]=M01[I]-M07[I]
       
         IF M10[I]>0
            REPLACE &MSK WITH M10[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
  
   NEXT

   MKOD='11.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M11[I]=M04[I]-M08[I]
       
         IF M11[I]>0
            REPLACE &MSK WITH M11[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
  
   NEXT

   MKOD='11.1.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M111[I]=M041[I]-M081[I]
       
         IF M111[I]>0
            REPLACE &MSK WITH M111[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   
   NEXT

   MKOD='11.1.1.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1111[I]=M0411[I]-M0811[I]
       
         IF M1111[I]>0
            REPLACE &MSK WITH M1111[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
    
   NEXT


   MKOD='11.1.2.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1112[I]=M0412[I]-M0812[I]
       
         IF M1112[I]>0
            REPLACE &MSK WITH M1112[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF

   NEXT

   MKOD='11.1.3.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1113[I]=M0413[I]-M0813[I]
       
         IF M1113[I]>0
            REPLACE &MSK WITH M1113[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   
   NEXT


   MKOD='11.2.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M112[I]=M042[I]-M082[I]
       
         IF M111[I]>0
            REPLACE &MSK WITH M112[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
    
   NEXT

   MKOD='11.2.1.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1121[I]=M0421[I]-M0821[I]
       
         IF M1121[I]>0
            REPLACE &MSK WITH M1121[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   
   NEXT


   MKOD='11.2.2.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1122[I]=M0422[I]-M0822[I]
       
         IF M1122[I]>0
            REPLACE &MSK WITH M1122[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   
   NEXT

   MKOD='11.2.3.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1123[I]=M0423[I]-M0823[I]
       
         IF M1123[I]>0
            REPLACE &MSK WITH M1123[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   
   NEXT

   MKOD='11.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M11[I]=M04[I]-M08[I]
       
         IF M11[I]>0
            REPLACE &MSK WITH M11[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
 
   NEXT

   MKOD='12.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M12[I]=M06[I]-M09[I]
       
         IF M11[I]>0
            REPLACE &MSK WITH M12[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
  
   NEXT

   MKOD='13.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M13[I]=M08[I]-M04[I]
       
         IF M13[I]>0
            REPLACE &MSK WITH M13[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF

   NEXT

   MKOD='13.1.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M131[I]=M081[I]-M041[I]
       
         IF M131[I]>0
            REPLACE &MSK WITH M131[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='13.1.1.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1311[I]=M0811[I]-M0411[I]
       
         IF M1311[I]>0
            REPLACE &MSK WITH M1311[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT


   MKOD='13.1.2.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1312[I]=M0812[I]-M0412[I]
       
         IF M1312[I]>0
            REPLACE &MSK WITH M1312[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='13.1.3.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1313[I]=M0813[I]-M0413[I]
       
         IF M1313[I]>0
            REPLACE &MSK WITH M1313[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT


   MKOD='13.2.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M132[I]=M082[I]-M042[I]
       
         IF M132[I]>0
            REPLACE &MSK WITH M132[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='13.2.1.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1321[I]=M0821[I]-M0421[I]
       
         IF M1321[I]>0
            REPLACE &MSK WITH M1321[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT


   MKOD='13.2.2.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1322[I]=M0822[I]-M0422[I]
       
         IF M1322[I]>0
            REPLACE &MSK WITH M1322[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='13.2.3.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1323[I]=M0823[I]-M0423[I]
       
         IF M1323[I]>0
            REPLACE &MSK WITH M1323[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='13.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M13[I]=M08[I]-M04[I]
       
         IF M13[I]>0
            REPLACE &MSK WITH M13[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='13.    '
   SEEK MKOD
   DECLARE M13[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M13[I]=ROUND(&MSK,0)
   NEXT

   MKOD='13.1.1.'
   SEEK MKOD
   DECLARE M1311[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1311[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.1.2.'
   SEEK MKOD
   DECLARE M1312[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1312[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.1.3.'
   SEEK MKOD
   DECLARE M1313[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1313[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.2.1.'
   SEEK MKOD
   DECLARE M1321[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1321[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.2.2.'
   SEEK MKOD
   DECLARE M1322[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1322[I]=ROUND(&MSK,0)
   NEXT
   MKOD='13.2.3.'
   SEEK MKOD

   DECLARE M1323[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1323[I]=ROUND(&MSK,0)
   NEXT

   MKOD='13.1   '
   SEEK MKOD
   DECLARE M131[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M131[I]=M1311[I]+M1312[I]+M1313[I]
       
         REPLACE &MSK WITH M131[I]
   NEXT

   MKOD='13.2.  '
   SEEK MKOD
   DECLARE M132[4]

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M132[I]=M1321[I]+M1322[I]+M1323[I]
       
         REPLACE &MSK WITH M132[I]
   NEXT



   MKOD='14.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M14[I]=M11[I]-M13[I]
       
         IF M14[I]>0
            REPLACE &MSK WITH M14[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='14.1.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M141[I]=M111[I]-M131[I]
       
         IF M141[I]>0
            REPLACE &MSK WITH M141[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='14.1.1.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1411[I]=M1111[I]-M1311[I]
       
         IF M1411[I]>0
            REPLACE &MSK WITH M1411[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT


   MKOD='14.1.2.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1412[I]=M1112[I]-M1312[I]
       
         IF M1412[I]>0
            REPLACE &MSK WITH M1412[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='14.1.3.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1413[I]=M1113[I]-M1313[I]
       
         IF M1413[I]>0
            REPLACE &MSK WITH M1413[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT


   MKOD='14.2.  '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M142[I]=M112[I]-M132[I]
       
         IF M142[I]>0
            REPLACE &MSK WITH M142[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='14.2.1.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1421[I]=M1121[I]-M1321[I]
       
         IF M1421[I]>0
            REPLACE &MSK WITH M1421[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT


   MKOD='14.2.2.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1422[I]=M1122[I]-M1322[I]
       
         IF M1422[I]>0
            REPLACE &MSK WITH M1422[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='14.2.3.'
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M1423[I]=M1123[I]-M1323[I]
       
         IF M1423[I]>0
            REPLACE &MSK WITH M1423[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

   MKOD='14.    '
   SEEK MKOD

   FOR I=1 TO 4
      MSK='SK'+ALLTRIM(STR(I))
      M14[I]=M11[I]-M13[I]
       
         IF M11[I]>0
            REPLACE &MSK WITH M14[I]
         ELSE
            REPLACE &MSK WITH 0
         ENDIF
   NEXT

POP KEY
ENDPROC







PROCEDURE LD2ODNPOP
PARAMETERS misplata,mredispl,mmesec,vlasnik
 PUSH KEY CLEAR

 DO CASE

CASE MISPLATA=1
   LVRSTA=''
CASE MISPLATA=2
   LVRSTA='P'
CASE MISPLATA=3
   LVRSTA='B'
CASE MISPLATA=4
   LVRSTA='I'
CASE MISPLATA=5
   LVRSTA='R'
OTHERWISE
   LVRSTA=''
ENDCASE

   
   USE LDPOD00 IN 0 ORDER 1 
   SELECT LDPOD00
   GO TOP
   *-------UNOS TEKUCEG MESECA-------------
   DO WHILE.NOT.EOF()
      IF MESEC=MMESEC.AND.ISPLATA=MISPLATA
         MKOD=KOD
         *----------AKO NIJE VLASNIK----------
         IF Tvlasnik<>2
            MES2='S'+ALLTRIM(STR(MREDISPL))+'A'
            MES3='S'+ALLTRIM(STR(MREDISPL))+'B'
            MES4='S'+ALLTRIM(STR(MREDISPL))+'C'
            MMES2=ROUND(&MES2,0)
            MMES3=ROUND(&MES3,0)
            MMES4=ROUND(&MES4,0)
            SELECT LDODN
            LOCATE FOR KOD=MKOD
            REPLACE SK1 WITH MMES2+MMES3+MMES4
            REPLACE SK2 WITH MMES2
            REPLACE SK3 WITH MMES3
            REPLACE SK4 WITH MMES4
         ELSE
            *----------AKO JE VLASNIK------------
            MES2='SV'+ALLTRIM(STR(MREDISPL))+'A'
            MES3='SV'+ALLTRIM(STR(MREDISPL))+'B'
            MES4='SV'+ALLTRIM(STR(MREDISPL))+'C'
            MMES2=ROUND(&MES2,0)
            MMES3=ROUND(&MES3,0)
            MMES4=ROUND(&MES4,0)
            SELECT LDODN
            LOCATE FOR KOD=MKOD
            REPLACE SK1 WITH MMES2+MMES3+MMES4
            REPLACE SK2 WITH MMES2
            REPLACE SK3 WITH MMES3
            REPLACE SK4 WITH MMES4
         ENDIF
      ENDIF
      SELECT LDPOD00
      SKIP
   ENDDO

   IF MREDISPL>1
      *-------UNOS PRETHODNOG MESECA-------------

      LD2ODNPOP2('1.     ','7.     ',0)
      LD2ODNPOP2('4.1.1. ','8.1.1. ',1)
      LD2ODNPOP2('4.1.2. ','8.1.2. ',1)
      LD2ODNPOP2('4.1.3. ','8.1.3. ',1)
      LD2ODNPOP2('4.2.1. ','8.2.1. ',1)
      LD2ODNPOP2('4.2.2. ','8.2.2. ',1)
      LD2ODNPOP2('4.2.3. ','8.2.3. ',1)
      LD2ODNPOP2('6.     ','9.     ',1)

   ENDIF



   SELECT LDPOD00
   USE
   SELECT LDODN
POP KEY
   ENDPROC



      PROCEDURE LD2ODNPOP2
      PARAMETERS A1,A2,A3
      PUSH KEY CLEAR
      MKOD=A1
      SELECT LDPOD00
      LOCATE FOR KOD=MKOD.AND.MESEC=MMESEC.AND.ISPLATA=MISPLATA
      *----AKO NIJE VLASNIK
      IF Tvlasnik<>2
         PMES2='S'+ALLTRIM(STR(MREDISPL-1))+'A'
         PMES3='S'+ALLTRIM(STR(MREDISPL-1))+'B'
         PMES4='S'+ALLTRIM(STR(MREDISPL-1))+'C'
         MPMES2=ROUND(&PMES2,0)
         MPMES3=ROUND(&PMES3,0)
         MPMES4=ROUND(&PMES4,0)
         MPMES1=MPMES2+MPMES3+MPMES4
         *----AKO JE VLASNIK
      ELSE
         PMES2='SV'+ALLTRIM(STR(MREDISPL-1))+'A'
         PMES3='SV'+ALLTRIM(STR(MREDISPL-1))+'B'
         PMES4='SV'+ALLTRIM(STR(MREDISPL-1))+'C'
         MPMES2=ROUND(&PMES2,0)
         MPMES3=ROUND(&PMES3,0)
         MPMES4=ROUND(&PMES4,0)
         MPMES1=MPMES2+MPMES3+MPMES4
      ENDIF
      SELECT LDODN
      MKOD=A2
      SEEK MKOD
      IF A3=0
          
            REPLACE SK1 WITH MPMES2+MPMES3+MPMES4
            REPLACE SK2 WITH MPMES2
            REPLACE SK3 WITH MPMES3
            REPLACE SK4 WITH MPMES4
       ELSE
          
            REPLACE SK1 WITH SK1+MPMES2+MPMES3+MPMES4
            REPLACE SK2 WITH SK2+MPMES2
            REPLACE SK3 WITH SK3+MPMES3
            REPLACE SK4 WITH SK4+MPMES4
      ENDIF
POP KEY
ENDPROC

***************SABIRANJE PLATNOG SPISKA********************************
PROCEDURE LNPUNIP
PUSH KEY CLEAR
   
   SELECT LDPARAM
   MPROSBRUTO=PROSBRUTO*5
   MMINIMAL=MINIMAL
   MMESCAS=MESCAS
   misplata=isplata
   MMESEC=MESEC
   DO CASE
   CASE MISPLATA=1
      LVRSTA=''
   CASE MISPLATA=2
      LVRSTA='P'
   CASE MISPLATA=3
      LVRSTA='B'
   CASE MISPLATA=4
      LVRSTA='I'
   CASE MISPLATA=5
      LVRSTA='R'
   OTHERWISE
      LVRSTA=''
   ENDCASE

   SELECT LDODN
   
   USE LNPOD IN 0 ALIAS LNPOD ORDER  1
   SELECT LNPOD
   SELECT LDODN

   GO TOP
   @ 10,10 CLEAR TO 12,70
   @ 10,10 TO 12,70
   MREC=RECCOUNT()
   GO TOP
   DO PUNIPOD01N WITH 1
   GO TOP
   DO PUNIPOD01N WITH 2
   SELECT LNPOD
   USE
   SELECT LD
   GO TOP
POP KEY
ENDPROC




PROCEDURE odnvirm
PUSH KEY CLEAR
   USE l2virm IN 0
   SELECT ldodn
   DO Odnvirm2 WITH '14.1.1.','27.    '
   DO Odnvirm2 WITH '14.1.2.','28.    '
   DO Odnvirm2 WITH '14.1.3.','29.    '
   DO Odnvirm2 WITH '14.2.1.','31.    '
   DO Odnvirm2 WITH '14.2.2.','32.    '
   DO Odnvirm2 WITH '14.2.3.','33.    '
   SELECT L2VIRM
   USE
   SELECT LDODN
POP KEY
endproc 

PROCEDURE ODNVIRM2
   PARAMETERS A1,A2
PUSH KEY CLEAR
   SELECT L2VIRM
   LOCATE FOR KOD=A2
   IF FOUND()
      MZIRORAC=ZIRORAC
      SELECT LDODN
      LOCATE FOR KOD=A1
      IF FOUND()
         REPLACE ZIRORAC WITH MZIRORAC
      ENDIF
   ENDIF   
POP KEY
ENDPROC




PROCEDURE odn2puni   
PUSH KEY CLEAR
   DO ODNUNESI WITH 'I      ','OBRAÈUNATE ZARADE/NAKNADE,OSNOVICE ZA OBRAÈUN                         ','  ',' '
   DO ODNUNESI WITH '       ','DOPRINOSA I OBRAÈUN DOPRINOSA                                         ','  ','*' 
   DO ODNUNESI WITH '1.     ','OBRAÈUNATE ZARADE/NAKNADE                                             ','01','*'
   DO ODNUNESI WITH '2.     ','Broj zaposlenih/primalaca naknade                                     ','02','*' 
   DO ODNUNESI WITH '2.1.   ','Zaposleni sa nepunim radnim vremenom (sadržani u red. broju 2)        ','03','*' 
   DO ODNUNESI WITH '2.2.   ','Zaposleni za koje se ostvaruje oslobodjenje od plaæanja doprinosa     ','04',' '
   DO ODNUNESI WITH '       ','(sadržani u red. broju 2)                                             ','  ','*'    
   DO ODNUNESI WITH '2.2.1. ','Zaposleni po èlanu 45 stav 1 Zakona  (sadržani u red. broju 2)        ','05','*' 
   DO ODNUNESI WITH '2.2.2. ','Zaposleni po èlanu 45 stav 2 Zakona  (sadržani u red. broju 2)        ','06','*' 
   DO ODNUNESI WITH '2.2.3. ','Zaposleni po èlanu 45a stav 1 Zakona  (sadržani u red. broju 2)       ','07','*' 
   DO ODNUNESI WITH '2.2.4. ','Zaposleni po èlanu 45a stav 1 Zakona  (sadržani u red. broju 2)       ','08','*' 
   DO ODNUNESI WITH '2.2.5. ','Zaposleni po èlanu 45b stav 1 Zakona  (sadržani u red. broju 2)       ','09','*' 
   DO ODNUNESI WITH '3.     ','Osnovica za obraèun doprinosa                                         ','10','*' 
   DO ODNUNESI WITH '4.     ','Ukupno obraèunati doprinosi         (r.br 4.1   +  r.br 4.2)          ','11','*' 
   DO ODNUNESI WITH '4.1.   ','Na teret zaposlen.primalaca naknade (r.br 4.1.1 do r.br.4.1.3)        ','12','*' 
   DO ODNUNESI WITH '4.1.1. ','Za PIO                                                                ','13','*'
   DO ODNUNESI WITH '4.1.2. ','Za zdravstveno osiguranje                                             ','14','*'
   DO ODNUNESI WITH '4.1.3. ','Za osiguranje za sluèaj nezaposlenosti                                ','15','*'
   DO ODNUNESI WITH '4.2.   ','Na teret poslodavca                   (r.br 4.2.1 do 4.2.3)           ','16','*'
   DO ODNUNESI WITH '4.2.1. ','Za PIO                                                                ','17','*'
   DO ODNUNESI WITH '4.2.2. ','Za zdravstveno osiguranje                                             ','18','*'
   DO ODNUNESI WITH '4.2.3. ','Za osiguranje za sluèaj nezaposlenosti                                ','19','*'
   DO ODNUNESI WITH '5.     ','Broj zaposlenih za koje se plaæa doprinos za staž osiguranja          ','20',' '
   DO ODNUNESI WITH '       ','sa uveæanim trajanjem-beneficirani staž (sadržan u r.br 2)            ','  ','*'
   DO ODNUNESI WITH '6.     ','Doprinos za PIO za beneficirani staž                                  ','21','*'
   DO ODNUNESI WITH 'II     ','RANIJE ISPLAÆENI DEO ZARADE/NAKNADE I PLAÆENI DOPRINOSI               ','  ','*'
   DO ODNUNESI WITH '7.     ','Ranije isplaæeni deo zarade/naknade                                   ','22','*'
   DO ODNUNESI WITH '8.     ','Ukupno plaæeni doprinosi            (r.br 8.1   +  r.br 8.2)          ','23','*'
   DO ODNUNESI WITH '8.1.   ','Na teret zaposlen.primalaca naknade (r.br 8.1.1 do r.br.8.1.3)        ','24','*'
   DO ODNUNESI WITH '8.1.1. ','Za PIO                                                                ','25','*'
   DO ODNUNESI WITH '8.1.2. ','Za zdravstveno osiguranje                                             ','26','*'
   DO ODNUNESI WITH '8.1.3. ','Za osiguranje za sluèaj nezaposlenosti                                ','27','*'
   DO ODNUNESI WITH '8.2.   ','Na teret poslodavca                   (r.br 8.2.1 do 8.2.3)           ','28','*'
   DO ODNUNESI WITH '8.2.1. ','Za PIO                                                                ','29','*'
   DO ODNUNESI WITH '8.2.2. ','Za zdravstveno osiguranje                                             ','30','*'
   DO ODNUNESI WITH '8.2.3. ','Za osiguranje za sluèaj nezaposlenosti                                ','31','*'
   DO ODNUNESI WITH '9.     ','Plaæeni doprinosi za PIO za beneficirani staž                         ','32','*'
   DO ODNUNESI WITH 'III    ','ZARADA ZA ISPLATU I DOPRINOSI ZA UPLATU                               ','  ','*'
   DO ODNUNESI WITH '10.    ','Zarada za isplatu                    (r.br.1 - r.br 7) > od 0         ','33','*'
   DO ODNUNESI WITH '11.    ','doprinosi za uplatu                  (r.br 4 - r.br 8) > od 0         ','34','*'
   DO ODNUNESI WITH '11.1.  ','Na teret zaposlenih primalaca naknade  (r.br 4.1 - r/br.8.1)          ','35','*'
   DO ODNUNESI WITH '11.1.1.','Za PIO                                 (r.br 4.1.1-r.br.8.1.1)        ','36','*'
   DO ODNUNESI WITH '11.1.2.','Za zdravstveno osiguranje              (r.br 4.1.2-r.br 8.1.2)        ','37','*'
   DO ODNUNESI WITH '11.1.3.','Za osiguranje za sluèaj nezaposlenosti (r.br 4.1.3-r.br 8.1.3)        ','38','*'
   DO ODNUNESI WITH '11.2.  ','Na teret poslodavca                    (r.br 4.2-r.br. 8.2)           ','39','*'
   DO ODNUNESI WITH '11.2.1.','Za PIO                                 (r.br 4.2.1-r.br 8.2.1)        ','40','*'
   DO ODNUNESI WITH '11.2.2.','Za zdravstveno osiguranje              (r.br 4.2.2-r.br 8.2.2)        ','41','*'
   DO ODNUNESI WITH '11.2.3.','Za osiguranje za sluèaj nezaposlenosti (r.br 4.2.3-r.br 8.2.3)        ','42','*'
   DO ODNUNESI WITH '12.    ','Doprinos za uplatu PIO za beneficirani staž  (r.br 6-r.br 9)          ','43','*'
   DO ODNUNESI WITH 'IV     ','VIŠE PLAÆENI DOPRINOSI                                                ','  ','*'
   DO ODNUNESI WITH '13.    ','Više plaæeni doprinosi                 (r.br 13.1 + r.br 13.2)        ','44','*'
   DO ODNUNESI WITH '13.1.  ','Na teret zaposlenih primalaca naknade  (r.br 4.1 - r.br.8.1)          ','45','*'
   DO ODNUNESI WITH '13.1.1 ','Za PIO                                 (r.br 8.1.1-r.br.4.1.1)        ','46','*'
   DO ODNUNESI WITH '13.1.2.','Za zdravstveno osiguranje              (r.br 8.1.2-r.br 4.1.2)        ','47','*'
   DO ODNUNESI WITH '13.1.3.','Za osiguranje za sluèaj nezaposlenosti (r.br 8.1.3-r.br 4.1.3)        ','48','*'
   DO ODNUNESI WITH '13.2.  ','Na teret poslodavca                    (r.br 8.2-r.br 4.2)            ','49','*'
   DO ODNUNESI WITH '13.2.1.','Za PIO                                 (r.br 8.2.1-r.br 4.2.1)        ','50','*'
   DO ODNUNESI WITH '13.2.2.','Za zdravstveno osiguranje              (r.br 8.2.2-r.br 4.2.2)        ','51','*'
   DO ODNUNESI WITH '13.2.3.','Za osiguranje za sluèaj nezaposlenosti (r.br 8.2.3-r.br 4.2.3)        ','52','*'
   DO ODNUNESI WITH 'V.     ','IZNOS DOPRINOSA ZA UPLATU PO UMANJENJU ZA                             ','  ',' '
   DO ODNUNESI WITH '       ','VIŠE PLAÆENE DOPRINOSE                                                ','  ','*'
   DO ODNUNESI WITH '14.    ','Doprinosi za uplatu                    (r.br 11 - r.br 13)            ','53',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.1.  ','Na teret zaposlenih primalaca naknade  (r.br11.1 - r.br13.1)          ','54',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.1.1.','Za PIO                                 (r.br11.1.1-r.br13.1.1)        ','55',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.1.2.','Za zdravstveno osiguranje              (r.br11.1.2-r.br13.1.2)        ','56',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.1.3.','Za osiguranje za sluèaj nezaposlenosti (r.br11.1.3-r.br13.1.3)        ','57',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.2.  ','Na teret poslodavca                    (r.br11.2-r.br.13.2)           ','58',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.2.1.','Za PIO                                 (r.br11.2.1-r.br13.2.1)        ','59',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.2.2.','Za zdravstveno osiguranje              (r.br11.2.2-r.br13.2.2)        ','60',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   DO ODNUNESI WITH '14.2.3.','Za osiguranje za sluèaj nezaposlenosti (r.br 4.2.3-r.br13.2.3)        ','61',' '
   DO ODNUNESI WITH '       ','     iz PPOD po konaènom obraèunu za prethodni mesec                  ','  ','*'
   
   *--------------popunjavanje virmana------------
POP KEY   
ENDPROC
