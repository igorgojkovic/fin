PUSH KEY CLEAR
SET EXACT OFF

SELECT FAK
IF FAKG.ARHIVA=' '
   MBRKAL=BRKAL
   MDATDOK=FAKG.DATDOK
   SELECT FAK
   SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF BRKAL<>MBRKAL
            EXIT
         ENDIF
         *-----------------------------------------
         MRSIF=RSIF
         MKOL=0
         MKOLI=0
         MNABVREDU=0
         MNABVREDI=0
         MREC=RECNO()
         SELECT KAL
         SET ORDER TO 2
         SEEK MRSIF
         DO WHILE.NOT.EOF()
            IF RSIF<>MRSIF
               EXIT
            ENDIF
            IF DATDOK<=MDATDOK
               MKOL=MKOL+KOL
               MNABVREDU=MNABVREDU+NABVRED
            ENDIF
            SELECT KAL
            SKIP
         ENDDO   
         
         SELECT FAK
         SET ORDER TO 2
         SEEK MRSIF
         DO WHILE.NOT.EOF()
            IF RSIF<>MRSIF
               EXIT
            ENDIF
            IF DATDOK<=MDATDOK
               IF RECNO()<MREC
                  MKOLI=MKOLI+KOLI
                  MNABVREDI=MNABVREDI+IZNI
               ENDIF
            ENDIF      
            SKIP
         ENDDO   
         SELECT FAK
         SET ORDER TO 1
         GOTO MREC
         MSTANJE=MKOL-MKOLI
         MNABVRED=MNABVREDU-MNABVREDI
         IF MSTANJE<>0
            MNABCENA=ROUND(MNABVRED/MSTANJE,3)
         ELSE
            MNABCENA=1
         ENDIF
         REPLACE CENA WITH MNABCENA
         REPLACE IZNI WITH KOLI*MNABCENA
         DO FAKRAC
         GOTO MREC
         SKIP
      ENDDO
   ENDIF      
   SELECT FAK
   SET ORDER TO 1
   LOCATE FOR BRKAL=MBRKAL

   SET ORDER TO 
   FAKSERV.RELEASE
   FAk.GRD0.SETFOCUS
   FAK.GRD0.REFRESH
ENDIF
POP KEY