   parameters abaza,abaza1
   mima=abaza+'.dbf'
   if parameters()>1
      mima1=abaza1+'.dbf'
   else
      mima1=mima
   endif
   if !file(mima)
     mda=mdatabazeKOM+'\'+mima1
      use &mda in 0 alias mmda
      select mmda
      copy stru to &mima
      use
   endif
