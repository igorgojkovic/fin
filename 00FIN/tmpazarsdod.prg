PUSH KEY CLEAR
SELECT TM
GO bottom
IF RECCOUNT()<1
   MDATDOK=DATE()
ELSE
   MDATDOK=DATDOK
ENDIF   
TMpazars.grd0.READONLY=.F.
TMpazars.GRD0.BACKCOLOR=RGB(255,255,255)
TMpazars.grd0.recordsource=''
APPEND BLANK
REPLACE DATDOK WITH MDATDOK+1
*GO BOTTOM
DO tmpazarskart
TMpazars.grd0.recordsource='tm'
TMpazars.grd0.column1.setfocus
TMpazars.GRD0.REFRESH
TMpazars.REFRESH  
POP KEY