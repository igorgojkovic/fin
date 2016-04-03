FUNCTION racunaj_kapital
   LPARAMETERS mvrednost,maop,mpolje
   IF MVREDNOST>0
      replace &mpolje WITH mvrednost
   ELSE
      MVREDNOST=0 
      replace &mpolje WITH MVREDNOST
   ENDIF
   RETURN MVREDNOST
ENDFUNC            
   



