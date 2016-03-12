   PUSH KEY CLEAR
   SELECT IROB
   IF RECCOUNT()>0
      GO TOP
      MBRKAL=BRKAL
      DO WHILE.NOT.EOF()
         IF REDBR<>0
            SCATTER NAME POLJA
            MKOL=KOL
            SELECT FAK
            IF RSIF<>SPACE(5)
               APPEND BLANK
               GATHER NAME POLJA
               REPLACE KOLI WITH MKOL
            ELSE
               GATHER NAME POLJA
               REPLACE KOLI WITH MKOL
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
   SELECT FAK
   SET RELATION to
   SET RELATION TO BRKAL INTO FAKG ADDITIVE
   SET RELATION TO RSIF INTO ROB ADDITIVE
   SELECT FAK
   IF MBRKAL<>SPACE(6)
      SET ORDER TO 1
      LOCATE FOR BRKAL=MBRKAL

      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            DO FAKRAC   
            SKIP
         ENDDO   
      ENDIF
      LOCATE FOR BRKAL=MBRKAL

      SET ORDER TO 
      FAK.GRD0.REFRESH
   ENDIF   

   POP KEY