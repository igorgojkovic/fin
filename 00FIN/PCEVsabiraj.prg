PUSH KEY CLEAR
GO TOP
DO WHILE.NOT.EOF()
   PCEVSERV.LABEL3.CAPTION=BRKAL+' '+TRAN(RECCOUNT()-RECNO(),'99999')
*   THISFORM.REFRESH
   REPLACE VELVRED WITH KOL*VELCENA
   SKIP
ENDDO   
MBRKAL=BRKAL
PCEVSERV.RELEASE
POP KEY