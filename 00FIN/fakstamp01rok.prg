PARAMETERS ASTAMPA
PUSH KEY CLEAR
DO FAKPRNPUBLIC
*SET REPORTBEHAVIOR 80
   IF ASTAMPA='EKR'
      *REPORT FORM FAK01ROK FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
      mfile='FAK01rok'
      uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
      DO printer_bullzip WITH mdata02,mfile,uslov
      
      
   ELSE
      REPORT FORM FAK01ROK FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
   ENDIF
SELECT FAK
POP KEY
