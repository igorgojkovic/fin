PUSH KEY CLEAR
   IF TOBJEKAT='M'
      RR=RECNO()
      MDATDOK=FAKG.DATDOK
      USE &KTM IN 0 ALIAS TM ORDER 1
      SELECT TM
      GO TOP
      SEEK MDATDOK
      DO WHILE.NOT.EOF()
         IF DATDOK<>MDATDOK
            EXIT
         ENDIF
         IF VREDPROD<>0
               REPLACE UKNAB WITH 0
               REPLACE VREDPROD WITH 0
               REPLACE UPLACENO WITH 0
               REPLACE CEKOVI WITH 0
               REPLACE GOTOVINA WITH 0
               REPLACE OSTALO   WITH 0
               REPLACE USLUGE   WITH 0
               REPLACE BRKAL WITH SPACE(6)
         ENDIF
         SKIP
      ENDDO

      SELECT FAK
      SET RELATION TO
      SET ORDER TO 1
      MMALVRED=0
      MUSLUGE=0
      
      SELECT FAKG
      SET ORDER TO 2
      SEEK MDATDOK
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF DATDOK<>MDATDOK
               EXIT
            ENDIF
            MBRKAL=BRKAL
            SELECT FAK
LOCATE FOR BRKAL=MBRKAL

            IF FOUND()
               DO WHILE.NOT.EOF()
                  IF BRKAL<>MBRKAL
                     EXIT
                  ENDIF
                  IF ROB.VRSTA<>'U'
                     MMALVRED=MMALVRED+MALVRED
                  ELSE
                     MUSLUGE=MUSLUGE+MALVRED
                  ENDIF
                  SKIP
               ENDDO
            ENDIF
            SELECT FAKG
            SKIP
        ENDDO
      ELSE
         MMALVRED=0
      ENDIF
      SELECT TM
      APPEND BLANK
      REPLACE DATDOK WITH MDATDOK
      REPLACE OPIS WITH 'DNEVNI PROMET'
      REPLACE VREDPROD WITH MMALVRED
      REPLACE USLUGE WITH MUSLUGE
      USE
      SELECT FAKG
      SET ORDER TO 1
      SELECT FAK
      GOTO RR
     ENDIF
     FAKSERV.RELEASE
     POP KEY
