parameters pabaza
push key clear
set exact on
on error   
Aldir=curdir()
pmima=pabaza
ppmima=mdata02k+'\'+pabaza+'.dbf'
pmima1=mdata02k+'\'+pabaza
ppmima1=mdata02+'\'+pabaza+'.dbf'
ppmima2=mdata02+'\'+pabaza

*----ako postoji prva tabela
vppreuzimanjetab.label2.caption=pabaza 
if file(ppmima)
   use &pmima1 in 0 alias a0
   select a0
   IF RECCOUNT()<1
      if file(ppmima1)
         SELECT a0
         APPEND FROM &ppmima2
      endif   
   endif   
   delete file &ppmima1
   USE
endif
on error do greske with ;
error( ), message( ), message(1), program( ), lineno( )
pop key
