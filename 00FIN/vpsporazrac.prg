SELECT vpsporaz
MRATA=brOJRATA
MDANA=DANA
MDATDOK=DATUM
MIZNOS=iznos
IF MRATA>0
   MRATA1=ROUND(MIZNOS/MRATA,0)
ELSE
   MRATA1=0
ENDIF
REPLACE MESIZNOS WITH MRATA1
   J=mrata
MPRI=DATE()
MDANA=0
*SET STEP ON 
FOR I=1 TO 18
   MMPRI='PR'+ALLTRIM(STR(I,2,0))
   MMPRDIN='PRDIN'+ALLTRIM(STR(I,2,0))
   MMPV='PV'+ALLTRIM(STR(I,2,0))
   REPLACE &MMPRI WITH 0
   REPLACE &MMPRDIN WITH 0
   REPLACE &MMPV WITH CTOD('')
NEXT

FOR I=1 TO mrata
   MMPRI='PR'+ALLTRIM(STR(I,2,0))
   MMPRDIN='PRDIN'+ALLTRIM(STR(I,2,0))
   MMPV='PV'+ALLTRIM(STR(I,2,0))
   REPLACE &MMPRI WITH 0
   REPLACE &MMPRDIN WITH 0
   REPLACE &MMPV WITH CTOD('')
   MDANA=MDANA+DANA
   MMPRI='PR'+ALLTRIM(STR(I,2,0))
   MMPRDIN='PRDIN'+ALLTRIM(STR(I,2,0))
   MMPV='PV'+ALLTRIM(STR(I,2,0))
   MPRI=MDANA
   REPLACE &MMPRI WITH MPRI
   REPLACE &MMPRDIN WITH MRATA1
   REPLACE &MMPV WITH MDATDOK+MDANA
NEXT

PUSH KEY CLEAR
MSVEGA=PRDIN1+PRDIN2+PRDIN3+PRDIN4+PRDIN5+PRDIN6+PRDIN7+PRDIN8+PRDIN9+PRDIN10+PRDIN11+PRDIN12+PRDIN13+PRDIN14+PRDIN15+PRDIN16+PRDIN17+PRDIN18
MRAZLIKA=MIZNOS-MSVEGA
IF MRAZLIKA<>0
   REPLACE PRDIN1 WITH PRDIN1+MRAZLIKA
ENDIF
MSVEGA=PRDIN1+PRDIN2+PRDIN3+PRDIN4+PRDIN5+PRDIN6+PRDIN7+PRDIN8+PRDIN9+PRDIN10+PRDIN11+PRDIN12+PRDIN13+PRDIN14+PRDIN15+PRDIN16+PRDIN17+PRDIN18
MRAZLIKA=MIZNOS-MSVEGA
VPSPORAZKART.REFRESH
POP KEY

