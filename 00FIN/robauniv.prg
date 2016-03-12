   PUSH KEY CLEAR
   SELECT IROB
   IF RECCOUNT()>0
      GO TOP
      MBRKAL=BRKAL
      DO WHILE.NOT.EOF()
         IF REDBR<>0
            SCATTER NAME POLJA
            SELECT NIV
            IF RSIF<>SPACE(5)
               MSEMA=SEMA
               APPEND BLANK
               GATHER NAME POLJA
               REPLACE STARIFA WITH TARIFA
               REPLACE SPROCPOR WITH PROCPOR
               REPLACE SEMA WITH MSEMA
               IF TOBJEKAT='V'
                  REPLACE SCENA WITH VELCENA
               ELSE
                  REPLACE SCENA WITH MALCENA
               ENDIF
            ELSE
               MSEMA=SEMA
               GATHER NAME POLJA
               REPLACE STARIFA WITH TARIFA
               REPLACE SPROCPOR WITH PROCPOR
               REPLACE SEMA WITH MSEMA
               IF TOBJEKAT='V'
                  REPLACE SCENA WITH VELCENA
               ELSE
                  REPLACE SCENA WITH MALCENA
               ENDIF
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
   SELECT NIV
   SET RELATION TO
   SET RELATION TO RSIF INTO ROB ADDITIVE
   SELECT NIV
   IF MBRKAL<>SPACE(6)
      SET ORDER TO 1
      LOCATE FOR BRKAL=MBRKAL

      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            DO NIVRAC   
            SKIP
         ENDDO   
      ENDIF
      LOCATE FOR BRKAL=MBRKAL

      SET ORDER TO 
      NIV.GRD0.REFRESH
   ENDIF   


   POP KEY