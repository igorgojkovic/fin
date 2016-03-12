  IF KOLI=0
      mrsif=str(val(alltrim(FAKT.grd0.column3.text1.VALUE)),5,0)
      IF MRSIF='    0'
         MRSIF=SPACE(5)
      ENDIF
      IF RSIF<>SPACE(5)
         replace rsif with mrsif
         FAKT.GRD0.COLUMN4.TEXT1.SetFocus
      ELSE
         replace rsif WITH ''
         FAKT.GRD0.COLUMN3.TEXT1.SetFocus
      endif    
   ELSE
      FAKT.GRD0.COLUMN4.TEXT1.SetFocus
   endif
