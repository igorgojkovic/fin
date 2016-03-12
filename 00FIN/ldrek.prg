PROCEDURE REKUNESI
   PARAMETERS MREDNI,MKOD,MOPIS,MRLINI
   PUSH KEY CLEAR

   GOTO MREDNI
   REPLACE KOD WITH MKOD
   REPLACE OPIS WITH MOPIS
   REPLACE RLINI WITH MRLINI
   POP KEY
ENDPROC

PROCEDURE REKPUNI
PUSH KEY CLEAR

SELECT LDPARAM
MREDISPL=REDISPL
MISPLATA=ISPLATA
MMESEC=MESEC

SELECT LDREK
GO TOP
DO WHILE.NOT.EOF()
   MKOD=KOD
   IF MKOD<>SPACE(7)
      MSADA='S'+ALLTRIM(STR(MREDISPL,1,0))+'U'   
      SELECT LDPOD
      LOCATE FOR KOD=MKOD.AND.MESEC=MMESEC.AND.ISPLATA=MISPLATA
      IF FOUND()
         IF MREDISPL>1      
            MPRE='S'+ALLTRIM(STR(MREDISPL-1,1,0))+'U'
         ENDIF
         MSSADA=&MSADA
         IF MREDISPL>1
            MSPRE=&MPRE
         ELSE
            MSPRE=0
         ENDIF
         SELECT LDREK
         REPLACE PRE WITH MSPRE
         REPLACE SADA WITH MSSADA              
         REPLACE RAZLIKA WITH SADA-PRE
      ENDIF   
   ENDIF
   SELECT LDREK
   SKIP
ENDDO

POP KEY
ENDPROC
