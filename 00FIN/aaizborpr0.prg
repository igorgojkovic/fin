PARAMETERS AA
GOTO AA
PUBLIC TTVREDNI,TKOJI,TNAZIV,tkonto,kprnor,kprnal,TMAGGOT,TFPGOT,TMAGGOTF,TFPGOT,TMAGGOTF,TFPGOTF,TMAGPOLU,TFPPOLU
PUBLIC TMAGMAT,TFPMAT,TMAGPMAT,TFPPMAT,TMAGAMB,TFPAMB,TKGOT,TKGOTF,TKPOLU,TMAT,TKPMAT,TKAMB,TPOCNAL
   DO CASE AA
   CASE AA=1
      TPOCNAL='1'
   CASE AA=2
      TPOCNAL='2'
   CASE AA=3
      TPOCNAL='3'
   CASE AA=4
      TPOCNAL='4'
   CASE AA=5
      TPOCNAL='5'
   CASE AA=6
      TPOCNAL='6'
   CASE AA=7
      TPOCNAL='7'
   CASE AA=8
      TPOCNAL='8'
   CASE AA=9
      TPOCNAL='9'
   CASE AA=10
      TPOCNAL='A'
   CASE AA=11
      TPOCNAL='B'
   CASE AA=12
      TPOCNAL='C'
   CASE AA=13
      TPOCNAL='D'
   CASE AA=14
      TPOCNAL='E'
   CASE AA=15
      TPOCNAL='F'
   CASE AA=16
      TPOCNAL='G'
   CASE AA=17
      TPOCNAL='H'
   CASE AA=18
      TPOCNAL='I'
   CASE AA=19
      TPOCNAL='J'
   CASE AA=20
      TPOCNAL='K'
   CASE AA=21
      TPOCNAL='L'
   CASE AA=22
      TPOCNAL='M'
   CASE AA=23
      TPOCNAL='N'
   CASE AA=24
      TPOCNAL='O'
   CASE AA=25
      TPOCNAL='P'
   OTHERWISE
      TPOCNAL='0'
   ENDCASE      

   TTVREDNI=ALLTRIM(STR(AA,2,0))
   TNAZIV=ALLTRIM(PNAZIV)
   TKONTO=KONTO
   TMAGGOT=MAGGOT
   TFPGOT=FPGOT
   TMAGGOTF=MAGGOTF
   TFPGOTF=FPGOTF
   TMAGPOLU=MAGPOLU
   TFPPOLU=FPPOLU
   TMAGMAT=MAGMAT
   TFPMAT=FPMAT
   TMAGPMAT=MAGPMAT
   TFPPMAT=FPPMAT
   TMAGAMB=MAGAMB
   TFPAMB=FPAMB
   TKGOT=KGOT
   TKGOTF=KGOTF
   TKPOLU=KPOLU
   TKMAT=KMAT
   TKPMAT=KPMAT
   TKAMB=KAMB
 
   CLOSE ALL TABLES
   KPRNOR='PRNOR'+TTVREDNI
   KPRNAL='PRNAL'+TTVREDNI
 
   DO FORM AAPRI 
   AAIZBORPR.release
   KEYBOARD '{ENTER}'
