SELECT soc
SET ORDER TO 1
GO BOTTOM
SET ORDER TO 
IF MATBROJ<>SPACE(13).OR.RECCOUNT()<1
   APPEND BLANK
   replace sifra WITH STR(RECNO(),5,0)
ENDIF
SET ORDER TO 
GO bottom
SOC.GRD0.SETFOCUS
SOC.Refresh
   
