PARAMETERS AA1
MAA1=AA1
IF VKOJIGRAD='PN'
   IF MAA1=1
      DO VPOBRAC01 
   ENDIF
   IF MAA1=2
      DO VPOBRAC02
   ENDIF
   IF MAA1=3
      DO VPOBRAC03
   ENDIF
ENDIF   

IF VKOJIGRAD='CU'
   IF MAA1=1
      DO VCOBRAC01 
   ENDIF
   IF MAA1=2
      DO VCOBRAC02
   ENDIF
   IF MAA1=3
      DO VCOBRAC03
   ENDIF
ENDIF   