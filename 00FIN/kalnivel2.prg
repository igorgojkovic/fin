PUSH KEY CLEAR
SET EXACT OFF
SELECT KAL
MBRKAL=BRKAL
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
MDATDOK=kalg.DATDOK
*----ODREDJIVANJE SLEDECE NIVELACIJE i naloga
SELECT NIV
SET ORDER TO 4
LOCATE FOR BRKALN=MBRKAL
IF.NOT.FOUND()
SET ORDER TO 1
GO BOTTOM
MNOVI=VAL(SUBSTR(BRKAL,2,5))+1
MLEN=LEN(ALLTRIM(STR(MNOVI)))
MBRRAC='N'+REPLI('0',5-MLEN)+ALLTRIM(STR(MNOVI))
MNOVI=VAL(BRNAL)+1
MLEN=LEN(ALLTRIM(STR(MNOVI)))
MBRNAL=REPLI('0',6-MLEN)+ALLTRIM(STR(MNOVI))
*-----VRACA SE U KALKULACIJU NA PRVU STAVKU
SELECT KAL
SET ORDER TO 1
MKOL=0
MKOLI=0
MVELUL=0
MVELIZ=0

*-------PROLAZ KROZ KALKULACIJU

DO WHILE.NOT.EOF()
   IF BRKAL<>MBRKAL
      EXIT
   ENDIF
   *-------PRONALAZENJE ROBE---
   MRSIF=RSIF
   RR=RECNO()
   *----TRAZENJE ROBE U KALKULACIJAMA
   SELECT KAL
   SET ORDER TO 2
   MKOL=0
   MVELUL=0
   SEEK MRSIF
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF RSIF<>MRSIF
            EXIT
         ENDIF
         IF KALG.DATDOK<=MDATDOK
            IF RECNO()<>RR
               MKOL=MKOL+KOL
            ENDIF
         ENDIF
         SKIP
      ENDDO
   ENDIF
   *----TRAZENJE ROBE U FAKTURAMA
   SELECT FAK
   SET ORDER TO 2
   MKOLI=0
   MVELIZ=0
   SEEK MRSIF
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF RSIF<>MRSIF
            EXIT
         ENDIF
         IF FAKG.DATDOK<=MDATDOK
            MKOLI=MKOLI+KOLI
         ENDIF
         SKIP
      ENDDO
   ENDIF
   *-------POVRATAK NA KALKULACIJU
   SELECT KAL
   SET ORDER TO 1
   GOTO RR
   MSCENA=ROB.VELCENA
   IF TOBJEKAT='V'
      MSCENA=ROB.VELCENA
      MVELCENA=VELCENA
   ELSE
      MSCENA=ROB.MALCENA
      MVELCENA=MALCENA
   ENDIF
   MTARIFA=ROB.TARIFA
   MPROCPOR=ROB.PROCPOR
   MPLP=ROB.PLP
   MVRSTA=ROB.VRSTA
   MSADKOL=MKOL-MKOLI
   *-------PRENOS U NIVELACIJU
   SELECT NIV
   IF MSCENA<>MVELCENA.AND.MSCENA<>0.AND.((MKOL-MKOLI)<>0)
      APPEND BLANK
      REPLACE BRKAL WITH MBRRAC
      REPLACE RSIF WITH MRSIF
         IF DTOS(DATDOK)>=TVAZIOD
            replace tarifa with rob.tarifa
            replace procpor with rob.procpor
            replace Starifa with rob.tarifa
            replace Sprocpor with rob.procpor

         ELSE
            replace tarifa with rob.tarifaS
            replace procpor with rob.procporS
            replace Starifa with rob.tarifaS
            replace Sprocpor with rob.procporS
         ENDIF   
      REPLACE KOL WITH MKOL-MKOLI
      REPLACE SCENA WITH MSCENA
      REPLACE SIZNOS WITH ROUND(KOL*SCENA,2)
      REPLACE MALCENA WITH MVELCENA
      REPLACE MALVRED WITH ROUND(KOL*MALCENA,2)
      REPLACE VELCENA WITH MVELCENA
      REPLACE VELVRED WITH ROUND(KOL*VELCENA,2)
      REPLACE DATDOK WITH MDATDOK
      REPLACE BRNAL WITH MBRNAL
      REPLACE BRKALN WITH MBRKAL

         DO NIVRAC
 
   ENDIF
   SELECT KAL
   SKIP
ENDDO
ELSE

   DO  FORM PORUKAU WITH ' VE� JE URADJENA NIVELACIJA PO TOJ KALKULACIJI'
   SELECT NIV
   SET ORDER TO 1
   SELECT KAL
   LOCATE FOR BRKAL=MBRKAL

   SET ORDER TO 
ENDIF
SET EXACT ON
POP KEY