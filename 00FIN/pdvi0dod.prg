PUSH KEY CLEAR
SET ORDER TO 
GO BOTTOM
IF RECCOUNT()>0
   MVPDV=VPDV
   MDATPRI=DATPRI
   MDATPDV=DATPDV
   MDATDOK=DATDOK
   MVALUTA=VALUTA
   MBRNAL=BRNAL
   MDOK=DOK
ELSE
   MVPDV='IN0'
   MDATPDV=CTOD('')
   MDATPRI=CTOD('')
   MDATDOK=CTOD('')
   MVALUTA=CTOD('')
   MBRNAL=SPACE(6)
   MDOK=SPACE(3)      
ENDIF   
IF VPDV<>SPACE(3).OR.RECCOUNT()<1
   APPEND BLANK
   PDVI0.GRD0.SETFOCUS
   REPLACE VPDV WITH MVPDV
   REPLACE DATPDV WITH MDATPDV
   REPLACE DATPRI WITH MDATPRI
   REPLACE DATDOK WITH MDATDOK
   REPLACE VALUTA WITH MVALUTA
   REPLACE BRNAL WITH MBRNAL
   REPLACE DOK WITH MDOK
   REPLACE DATUM WITH DATE()
   REPLACE VREME WITH TIME()   
   DO FORM PDVIK
ENDIF
PDVI0.GRD0.SetFocus 
POP KEY
PDVI0.Refresh 