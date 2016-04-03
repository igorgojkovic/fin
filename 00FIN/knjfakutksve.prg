PARAMETERS MDAT0,MDAT1
PUSH KEY CLEAR
   IF TOBJEKAT='M'
      DO IDEL WITH (KKOCKAX)
      DO IDEL WITH (KKOCKAX2)
      
      SELECT FAK
      SET RELATION TO
      SELECT FAKG
      SET RELATION TO
      SELECT FAK
      COPY TO &KKOCKA FOR DATDOK>=MDAT0.AND.DATDOK<=MDAT1
      USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
      SELECT KOCKA
      SET RELATION TO RSIF INTO ROB
      GO TOP
      DO WHILE.NOT.EOF()
         IF ROB.VRSTA='U'
            REPLACE VELVRED WITH MALVRED
            REPLACE MALVRED WITH 0
         ELSE
            REPLACE VELVRED WITH 0   
         ENDIF   
         SKIP
      ENDDO
      GO TOP   
      INDEX ON DTOS(DATDOK) TAG DATDOK
      SET ORDER TO 1
      TOTAL ON DTOS(DATDOK) TO &KKOCKA2
      DELETE ALL
PACK

      APPEND FROM &KKOCKA2
      GO TOP
      USE &KTM IN 0 ALIAS TM ORDER 1
      SELECT KOCKA
      GO TOP
      DO WHILE.NOT.EOF()
         MDATDOK=DATDOK
         SELECT TM
         SEEK MDATDOK
         IF FOUND()
            DO WHILE.NOT.EOF()
               IF DATDOK<>MDATDOK
                  EXIT
               ENDIF
               IF VREDPROD<>0.OR.USLUGE<>0
                  REPLACE UKNAB WITH 0
                  REPLACE VREDPROD WITH 0
                  IF UPLACENO=0                
                     REPLACE CEKOVI WITH 0
                     REPLACE GOTOVINA WITH 0
                     REPLACE KARTICA WITH 0
                     REPLACE OSTALO   WITH 0
                  ENDIF   
                  REPLACE USLUGE   WITH 0
                  REPLACE BRKAL WITH SPACE(6)
               ENDIF
               SKIP
            ENDDO
         ENDIF
         SELECT KOCKA   
         MMALVRED=MALVRED
         MUSLUGE=VELVRED
         SELECT TM
         APPEND BLANK
         REPLACE DATDOK WITH MDATDOK
         REPLACE OPIS WITH 'DNEVNI PROMET'
         REPLACE VREDPROD WITH MMALVRED
         REPLACE USLUGE WITH MUSLUGE
         SELECT KOCKA
         SKIP
      ENDDO
      SELECT TM
      USE
      SELECT KOCKA
      USE
      SELECT FAKG
      GO TOP
      SELECT FAK
      GO TOP
   ENDIF

POP KEY   