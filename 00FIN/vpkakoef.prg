   SELECT VPKASTOP
   GO TOP
   MM1=DAT0
   GO BOTTOM
   MM2=DAT1
   MM3=MM2-MM1+1
   
   SELECT VPKAKOEF
   ZAP

   SELECT VPKASTOP
   GO TOP
   DO WHILE.NOT.EOF()
      MDATUM0=DAT0
      MDATUM1=DAT1
      MSTOPA=STOPA
      MPERIOD=PERIOD
      MMETODA=METODA
      I=1
      SELECT VPKAKOEF
      FOR I=0 TO (MDATUM1-MDATUM0)
         APPEND BLANK
         REPLACE DATUM WITH MDATUM0+I
         REPLACE STOPA WITH MSTOPA
         REPLACE PERIOD WITH MPERIOD
         REPLACE METODA WITH MMETODA
         IF METODA=' '
         MKOEF=ROUND(((100+STOPA)/100)**(1/PERIOD),8)
         ELSE
            MKOEF=ROUND(STOPA/100/PERIOD,8)
         ENDIF            
         REPLACE KOEF WITH MKOEF
      NEXT
      MM3=MM3-1
      SELECT VPKASTOP
      SKIP
   ENDDO
   SELECT VPKAKOEF
