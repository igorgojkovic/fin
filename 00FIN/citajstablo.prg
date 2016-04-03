procedure citajstablo
parameters putanja
*SET STEP ON 
create cursor dirlist (ime C(60))
=citajpoddir(putanja)
GO TOP
*DELETE NEXT 1
*PACK
BROWSE
ENDPROC
FUNCTION  citajpoddir
   lparameters PUTANJA
   local AKTDIR, SUBDIR, i
   local array NIZDIR[1]
   AKTDIR=ADDBS(PUTANJA)
   insert into dirlist values (AKTDIR)
   SUBDIR=adir(NIZDIR,AKTDIR+"*.*","DHS")
   for i = 1 to SUBDIR
       if NIZDIR[i,1]#"." AND "D"$NIZDIR[i,5]
        *=citajpoddir(AKTDIR+NIZDIR[i,1])
           =citajpoddir(NIZDIR[i,1])   
           ii=1     
       endif
   ENDFOR
ENDFUNC
