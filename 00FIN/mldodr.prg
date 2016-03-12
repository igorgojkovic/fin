PUSH KEY CLEAR
SET ORDER TO 
IF RECCOUNT()>0
GO bottom
mdatdok=datdok
MMLM=MLM
MCENAMLM=CENAMLM
MOMSIF=OMSIF
mprocvoda=procvoda
mproczar=proczar
mproctros=proctros
ELSE
mdatdok=DATE()
MMLM=0
MDINPREM=0
MCENAMLM=0
MOMSIF=''
mprocvoda=0
mproczar=0
mproctros=0
ENDIF
IF oMsif<>SPACE(5).OR.RECCOUNT()<1
   APPEND BLANK
   REPLACE OMSIF WITH MOMSIF
   replace datdok WITH mdatdok+1
   REPLACE MLM WITH MMLM
   REPLACE CENAMLM WITH MCENAMLM
   replace procvoda WITH mprocvoda
   replace proczar WITH mproczar
   replace proctros WITH mproctros
ENDIF
GO BOTTOM
MLEKOr.GRD0.REFRESH
MLEKOr.GRD0.COLUMN1.SETFOCUS
POP KEY
MLEKOr.REFRESH