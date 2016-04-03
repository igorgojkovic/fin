procedure ipbazekom
parameters pabaza,pabaza1
push key clear
set exact on
on error   
aldir=curdir()
pmima=pabaza
ppmima=pabaza+'.dbf'
ppmimax=pabaza+'.cdx'
   pstari='pstari.dbf'
   if file(pstari)
      delete file &pstari
   endif
   if file(ppmima)
      rename (ppmima) to (pstari)
      use &pstari in 0 exclusive alias pss
      select pss
      recall all
      use      
      if parameters()>1
         do  ibazeKOM with pabaza,pabaza1
      else
        do ibazeKOM with pabaza
      endif
      use &pmima in 0 alias mpmima
      select mpmima
      zamenasveoKOM.label2.caption=pmima
      append from &pstari
      use
   endif   
on error do greske with ;
error( ), message( ), message(1), program( ), lineno( )
pop key
endproc



