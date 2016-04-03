push key clear
select niv
mbrkal=brkal
m2brkal=brkal
mbrnal=brnal
set order to 1
go bottom
zadbrkal=brkal
locate for brkal=mbrkal

if mbrnal<>space(6)
   if arhiva=' '
      set order to 1
      locate for brkal=mbrkal
      do knjiziniv with mbrkal
      if zadbrkal=mbrkal
         *---------------prenos cena iz nivelacija u sifarnik-----------
         select niv
         set order to 1
         locate for brkal=m2brkal
         if found()
            do while.not.eof()
               if brkal<>m2brkal
                  exit
               endif   
               mrsif=rsif
               mvelcena=velcena
               mmalcena=malcena
               mkol=kol
               replace arhiva with '*'
               if tprencen='D'
                  select rob
                  seek mrsif
                  if found()
                     if tobjekat='V'
                *        replace velcena with mvelcena
                     else
                *        replace malcena with mmalcena
                     endif          
                  endif   
                  select niv
               endif   
               skip
            enddo   
         endif
      else
         select niv
         set order to 1
         locate for brkal=m2brkal
         if found()
            do while.not.eof()
               if brkal<>m2brkal
                  exit
               endif   
               replace arhiva with '*'
               skip
            enddo
         endif      
      endif
   else
      mbrkal=brkal
      public pporuka
      pporuka=' nivelacija '+mbrkal+' je proknjižena '
      do  form poruka 
   endif
   set order to 
else
   public pporuka
   pporuka=' nivelacina '+mbrkal+' nema broj naloga '
   do poruka
   select niv
endif
niv.grd0.setfocus
pop key
niv.refresh
