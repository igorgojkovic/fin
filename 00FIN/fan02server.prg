   FAN02.GRD0A.RECORDSOURCE=''
   SELECT an0
   USE
   DO idel WITH (kkockax)
   USE an0 IN 0
   SELECT an0
   mupit='select * from an0 order by sifra '
   modgovor=SQLEXEC(povezano,mupit,'kocka')
   IF modgovor=1
      COPY TO &kkocka
      USE
      SELECT an0
      ZAP
      APPEND FROM &kkocka
   endif
   FAN02.GRD0A.RECORDSOURCE='AN0'
   FAN02.GRD0A.SetFocus
