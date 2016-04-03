parameters apolje
*ET STEP ON 
   MAPOLJE=APOLJE
   IF ISNULL(&mapolje)
      replace &mapolje WITH 0
   endif   
