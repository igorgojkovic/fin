PUSH KEY CLEAR
SELECT KAL
IF TNET=1
IF RECCOUNT()>0
   *---AKO KALKULACIJA POSTOJI
   IF KALG.ARHIVA=' '
     *---AKO NIJE ARHIVIRANA-----
      MBRKAL=BRKAL
      MDATDOK=DATDOK
      MDATROK=DATROK
      APPEND BLANK
      REPLACE BRKAL WITH MBRKAL 
      REPLACE DATDOK WITH MDATDOK
      REPLACE DATROK WITH MDATROK
      KAL.GRD0.SETFOCUS
      KAL.REFRESH
   ELSE
      *------AKO JE KALKULACIJA  ARHIVIRANA
      SELECT KAL
      SET ORDER TO 1
      GO BOTTOM
      MBRKAL=BRKAL
      MNLEN=LEN(ALLTRIM(STR(VAL(ALLTRIM(MBRKAL))+1,6,0)))
      MNBRKAL=REPLI('0',6-MNLEN)+ALLTRIM(STR(VAL(ALLTRIM(MBRKAL))+1,6,0))
      SET ORDER TO 1
            LOCATE FOR BRKAL=MNBRKAL

      IF.NOT.FOUND()
         APPEND BLANK
         REPLACE BRKAL WITH MNBRKAL 
         KAL.GRD0.SETFOCUS
         KAL.GRD0.REFRESH
         KAL.REFRESH
      ENDIF
         SELECT KALG
               LOCATE FOR BRKAL=MNBRKAL

         IF.NOT.FOUND()
            APPEND BLANK
            REPLACE BRKAL WITH MNBRKAL
         ENDIF      
  
         DO FORM KALZAG
         SELECT KAL
         SET RELATION TO 
         SET RELATION TO BRKAL INTO KALG ADDITIVE
         SET RELATION TO RSIF INTO ROB ADDITIVE
         
               LOCATE FOR BRKAL=MNBRKAL

         IF FOUND()
            DO WHILE.NOT.EOF()
               IF BRKAL<>MNBRKAL
                  EXIT
               ENDIF   
               REPLACE DATDOK WITH KALG.DATDOK     
               DO KALRAC
               SKIP
            ENDDO
         ENDIF      
         SET ORDER TO 
         GO BOTTOM
   ENDIF 
ELSE
   *--------AKO PRVA STAVKA NE POSTOJI---------
   APPEND BLANK
   MNBRKAL='000001'
   REPLACE BRKAL WITH MNBRKAL 
   *------IDEMO U ZAGLAVLJE
   IF .NOT.FOUND()
      SELECT KAL
      SET RELATION TO
      SELECT KALG
            LOCATE FOR BRKAL=MNBRKAL

      IF.NOT.FOUND()
         APPEND BLANK
         REPLACE BRKAL WITH MNBRKAL
      ENDIF      
      DO FORM KALZAG
      SELECT KAL
      SET ORDER TO 1
      SET RELATION TO 
      SET RELATION TO BRKAL INTO KALG ADDITIVE
      SET RELATION TO RSIF INTO ROB ADDITIVE
            LOCATE FOR BRKAL=MNBRKAL

      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MNBRKAL
               EXIT
            ENDIF   
            REPLACE DATDOK WITH KALG.DATDOK     
            DO KALRAC
            SKIP
         ENDDO
      ENDIF      
      SET ORDER TO 
      GO BOTTOM
   ENDIF   
ENDIF    
*-----AKO SE RADI KOD ULAZA===========

ELSE

   IF RECCOUNT()>0
      *---AKO KALKULACIJA POSTOJI
      IF KALG->ARHIVA=' '
        *---AKO NIJE ARHIVIRANA-----
         MBRKAL=BRKAL
         MDATDOK=DATDOK
         MDATROK=DATROK
         APPEND BLANK
         REPLACE BRKAL WITH MBRKAL 
         REPLACE DATDOK WITH MDATDOK
         REPLACE DATROK WITH MDATROK
         KAL.GRD0.SETFOCUS
         KAL.REFRESH
      ENDIF
   ELSE
      PUBLIC PPORUKA
      PPORUKA=' OTVORITE NOVU KALKULACIJU '
      DO PORUKA
      
   ENDIF
ENDIF

SELECT KAL
SET ORDER TO
GO BOTTOM
TZADKAL=BRKAL
kal.GRD0.SetAll("DynamicBackColor", "IIF(MOD(VAL(BRKAL),2)<>0, RGB(255,255,128), RGB(152,254,231))", "Column")  
KAL.GRD0.COLUMN3.SETFOCUS
POP KEY
KAL.REFRESH  
