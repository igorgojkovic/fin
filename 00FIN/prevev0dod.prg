SELECT PR
IF RECCOUNT()>0
   SET ORDER TO 1
   GO BOTTOM
   MBRKAL=BRKAL
   MDATDOK=DATDOK
   MNLEN=LEN(ALLTRIM(STR(VAL(ALLTRIM(MBRKAL))+1,6,0)))
   MNBRKAL=REPLI('0',6-MNLEN)+ALLTRIM(STR(VAL(ALLTRIM(MBRKAL))+1,6,0))
   SET ORDER TO 
   APPEND BLANK
   GO BOTTOM
   PREVEV0.GRD0.refresh
ELSE
   APPEND BLANK
   GO BOTTOM
   PREVEV0.GRD0.refresh
   MNBRKAL='000001'
   MDATDOK=DATE()
ENDIF
REPLACE BRKAL WITH MNBRKAL
REPLACE DATDOK WITH MDATDOK
PREVEV0.GRD0.SETFOCUS
DO PREVEV0KART
PREVEV0.GRD0.REFRESH