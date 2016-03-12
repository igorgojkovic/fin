   PUSH KEY CLEAR
   SELECT IROB
   IF RECCOUNT()>0
      GO TOP
      MBRKAL=BRKAL
      DO WHILE.NOT.EOF()
         IF REDBR<>0
            SCATTER NAME POLJA
            MZADNAB=ZADNAB
            SELECT KAL
            IF RSIF<>SPACE(5)
               APPEND BLANK
               GATHER NAME POLJA
               REPLACE CENA WITH MZADNAB
            ELSE
               GATHER NAME POLJA
               REPLACE CENA WITH MZADNAB
            ENDIF
         ENDIF
         SELECT IROB
         SKIP
      ENDDO   
   ELSE
      MBRKAL=SPACE(6)   
   ENDIF
   SELECT IROB
   USE
   SELECT KAL
   SET RELATION to
   SET RELATION TO BRKAL INTO KALG ADDITIVE
   SET RELATION TO RSIF INTO ROB ADDITIVE
   SELECT KAL
   IF MBRKAL<>SPACE(6)
      SET ORDER TO 1
      LOCATE FOR BRKAL=MBRKAL

      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            DO KALRAC   
            SKIP
         ENDDO   
      ENDIF
      LOCATE FOR BRKAL=MBRKAL

      SET ORDER TO 
      KAL.GRD0.REFRESH
   ENDIF   
   POP KEY