PUSH KEY CLEAR
   APPEND BLANK
   REPLACE REDBR WITH STR(RECNO(),2,0)
   REPLACE DAT0 WITH DATE()
   REPLACE DAT1 WITH DATE()
*   PUTNIC00.GRD0.COLUMN1.SETFOCUS
*   PUTNIC00.REFRESH  

   mreca=reccount()

if mreca>0
   for i=1 to mreca
      mi=alltrim(str(i,2,0))
      kputn2='putn2'+mi 
      kputn3='putn3'+mi 
      kputnOB='putnob'+mi 
      kputnO3='putno3'+mi       
      do ibaze with kputn2,'putn2'
      do ibaze with kputn3,'putn3'
      do ibaze with kputnOB,'putnob'
      do ibaze with kputnO3,'putno3'      
      do iind with kputn2,'putnik','ime'
      do iind with kputn3,'putnik','ime'      
      do iind with kputnob,'putnik+dtos(valuta)','ime','brrac','dtos(datdok)','dtos(valuta)','dtos(datupl)','sifra','putnik+dtos(datdok)'
      do iind with kputno3,'putnik+dtos(valuta)','ime','brrac','dtos(datdok)','dtos(valuta)','sifra','putnik+dtos(datdok)'      
   next
endif
POP KEY