   MFSALJI='C:\FISCAL\IN'
   MFPRIMI='C:\FISCAL\OUT'
   USE ART0 IN 0
   SELECT ART0
   COPY TO ART TYPE FOX2X
   USE 
   
   USE RACUN0 IN 0
   SELECT RACUN0
   COPY TO RACUN TYPE FOX2X
   USE 

   USE NOVAC0 IN 0
   SELECT NOVAC0
   COPY TO NOVAC TYPE FOX2X
   USE 

   COPY FILE NOVAC.DBF TO &MFSALJI
   COPY FILE RACUN.DBF TO &MFSALJI
   COPY FILE ART.DBF TO &MFSALJI
   INKEY(1)
