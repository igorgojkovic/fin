parameters aa
    goto aa
    public ttvredni,tkoji,tmesto,tvrsta,tnaziv,tgrad,tulica,tsifarnik,tnet,tfvrsta,tdanval,tnabavna,tpracenje,;
           Tunkol,tprencen,tnivelac,tkontou,tkorigujmc,tfpvrstas,tmcmarza,tpromkol,trsifunos,tkonto,tverifikac,;
           tkukalkp,tkeukalkp,tflager,tkontok,tftputnik,tdok,TKEPUVP,TTMPPOREZ,tKUPDV,TNEZAJEDNO,kkasarf,TSIFANAL,KKASAPO,mnemakasa,tmestoi,tzirorac
      ttvredni=alltrim(str(aa,2,0))
      tnaziv=alltrim(pnaziv)
      tmesto=alltrim(pmesto)
      IF LEN(ALLTRIM(mestoi))>0
         tmestoi=alltrim(mestoi)
      ELSE
         tmestoi=alltrim(pmesto)      
      endif   
      tulica=alltrim(pul)      
      tsifarnik=sifarnik
      tgrad=mp
*      tkoji=' '
      tfvrsta=fvrsta
      tdok=tfvrsta+ttvredni
      tdanval=danval
      tnet=1
      tnabavna=nabcena
      tpracenje=pracenje
      tunkol=unkol
      tnivelac=tnivel
      tprencen=prencen
      tkontou=kontou  
      tkorigujmc=korigujmc
      tfpvrstas=fpvrstas
      tmcmarza=mcmarza
      tpromkol=promkol
      trsifunos=rsifunos
      tkonto=konto
      tkontok=kontok
      tverifikac=verifikac
      tkukalkp=kukalkp
      tkeukalkp=keukalkp
      tflager=flager
      tftputnik=ftputnik
      tdok=dok
      tkepuvp=kepuVp
      ttmpporez=tmpporez
      tkupdv=kupdv
      TNEZAJEDNO=NEZAJEDNO
      mnemakasa=nemakasa      
      Tsifanal=ALLTRIM(sifanal)    
      tzirorac=zirorac  
*      set step on 
      close all tables
      ktvkartx=mdata01+'\'+'tvkart'+operater+'.cdx'
      
      if amizbor='TV'
         kkal='kal'+ttvredni
         kkalg='kalg'+ttvredni
         kfak='fak'+ttvredni
         kfakg='fakg'+ttvredni
         kfakt='fakt'
         kfaktg='faktg'
         ktvniv='tvniv'+ttvredni
         kkalp=mdata01+'\'+'kalp'+operater
         if tsifarnik<>'  ' 
            krob='rob'+alltrim(tsifarnik)
         else
            krob='rob'
         endif
         kfakp=mdata01+'\'+'fakp'+operater
         ktvnivp=mdata01+'\'+'tvnivp'+operater
         ktm='tvtm'+ttvredni
         *kpp='tvpp'+ttvredni
         ktvp='tvp'+ttvredni
         kkalizv=mdata01+'\'+'kalizv'+operater
         knivizv=mdata01+'\'+'nivizv'+operater
         ktvkart=mdata01+'\'+'tvkart'+operater
         ktvpar=mdata01+'\'+'tvpar'+operater
         kzfak=mdata01+'\'+'zfak'+operater
         kzfakg=mdata01+'\'+'zfakg'+operater
         if tfpossif='D'
            krob='rob'+tobjekat+ttvredni
         endif     
         kkasarf='kasarf'       
  do form aatvi
         
      else
      kkal='tmkal'+ttvredni
      kkalg='tmkalg'+ttvredni
      kfak='tmfak'+ttvredni
      kfakg='tmfakg'+ttvredni
      ktvniv='tmniv'+ttvredni
      kkalp=mdata01+'\'+'tmkalp'+operater
      kkomis='komis'+ttvredni
      kkasarf='kasarf'+ttvredni      
      
      if tsifarnik<>'  '
         krob='mrob'+alltrim(tsifarnik)
         
      else
         krob='rob'
      endif
      kfakp=mdata01+'\'+'tmfakp'+operater+'.dbf'
      ktvnivp=mdata01+'\'+'tmnivp'+operater+'.dbf'
      ktm='tm'+ttvredni
      *kpp='pp'+ttvredni
      ktvp='kp'+ttvredni
      kkalizv=mdata01+'\'+'kalizv'+operater+'.dbf'
      knivizv=mdata01+'\'+'nivizv'+operater+'.dbf'
      ktvkart=mdata01+'\'+'tvkart'+operater+'.dbf'
      ktvpar=mdata01+'\'+'tvpar'+operater+'.dbf'
      kzfak=mdata01+'\'+'zfak'+operater+'.dbf'
      kzfakg=mdata01+'\'+'zfakg'+operater+'.dbf'
      if tfpossif='D'
         krob='rob'+tobjekat+ttvredni
      endif     
      
      do form aatmi
   endif   
aaizbortv.release
keyboard '{enter}'
