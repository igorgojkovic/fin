procedure ipbaze
parameters pabaza,pabaza1
push key clear
set exact on
on error   
aldir=curdir()
pmima=pabaza
ppmima=pabaza+'.dbf'
ppmimax=pabaza+'.cdx'
do case
case mnacinzam=1
   if parameters()>1
      pmima1=mdatabaze+'\'+pabaza1
      ppmima1=mdatabaze+'\'+pabaza1+'.dbf'
   else      
      pmima1=mdatabaze+'\'+pabaza
      ppmima1=mdatabaze+'\'+pabaza+'.dbf'
   endif
   pstari='pstari.dbf'
   if file(pstari)
      delete file &pstari
   endif
   *----ako postoji prva tabela
   zamenasve.label2.caption=pabaza  
   if file(ppmima)
      erase ppmimax
      use &pmima in 0 alias a0
      select a0
      brojpolja= afields(niz)
      use
      mm0=''
      mm1=''
      mm2=0
      for ii= 1 to brojpolja
         mm0=mm0+niz(ii,1)
         mm1=mm1+niz(ii,2)
         mm2=mm2+niz(ii,3)
      next  
      m0=alltrim(str(brojpolja,12,0))+mm0+mm1+alltrim(str(mm2,12,0))
      *----ako postoji druga tabela
      if file(ppmima1)
         use &pmima1 in 0 alias a1
         select a1
         brojpolja= afields(niz)
         use
         mm0=''
         mm1=''
         mm2=0
         for iib= 1 to brojpolja
            mm0=mm0+niz(iib,1)
            mm1=mm1+niz(iib,2)
            mm2=mm2+niz(iib,3)
         next  
         m1=alltrim(str(brojpolja,12,0))+mm0+mm1+alltrim(str(mm2,12,0))
         if m0<>m1
            rename (ppmima) to (pstari)
            if parameters()>1
               do  ibaze with pabaza,pabaza1
            else
               do ibaze with pabaza
            endif
            use &pmima in 0 alias mpmima
            select mpmima
            append from &pstari
            use
         endif
      endif 
   endif   
case mnacinzam=2
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
         do  ibaze with pabaza,pabaza1
      else
        do ibaze with pabaza
      endif
      use &pmima in 0 alias mpmima
      select mpmima
      zamenasveo.label2.caption=pmima
      append from &pstari
      use
   endif   
case mnacinzam=3
   select tabele
   append blank
   if parameters()=1
      replace imetab with pabaza
      replace imetab0 with pabaza
   else
      replace imetab with pabaza
      replace imetab0 with pabaza1
   endif   
endcase
on error do greske with ;
error( ), message( ), message(1), program( ), lineno( )
pop key
endproc



