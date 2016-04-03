push key clear
   select FTPOBJ
   IF RECCOUNT()>0
      SCATTER NAME polja
   endif   
   append blank
   IF RECCOUNT()>1
      GATHER NAME polja
   endif   
   REPLACE SIFPROD WITH STR(RECNO(),2,0)
GFTPOBJ.grd0.setfocus
GFTPOBJ.refresh
GFTPOBJ.refresh
pop key
