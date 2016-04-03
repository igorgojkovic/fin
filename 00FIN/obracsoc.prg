procedure obracsoc
PUSH KEY CLEAR
   select LDPARAM
   MCZAKON=CZAKON
   MISPLATA=ISPLATA
   MPROCPOR=PROCPOR
   MNEOPOREZP=NEOPOREZP
   MNEOPOREZ=NEOPOREZ
   MSRAZPOR=SRAZPOR
   ms1=s1
   msdin1=sdin1
   MREDISPL=REDISPL
   *mobracneto=obracneto
   Adoppio=ROUND(doppr1/100,6)
   Adopzdr=ROUND(dopzr1/100,6)
   Adopnez=ROUND(dopnr1/100,6)
   
   Adopfpio=ROUND(doppf1/100,6)
   Adopfzdr=ROUND(dopzf1/100,6)
   Adopfnez=ROUND(dopnf1/100,6)
   

   if isplata=1.OR.ISPLATA=6
      doppio=ROUND(doppr1/100,6)
      dopzdr=ROUND(dopzr1/100,6)
      dopnez=ROUND(dopnr1/100,6)
   
      dopfpio=ROUND(doppf1/100,6)
      dopfzdr=ROUND(dopzf1/100,6)
      dopfnez=ROUND(dopnf1/100,6)
   endif
   if isplata=2
      doppio=ROUND(doppr2/100,6)
      dopzdr=ROUND(dopzr2/100,6)
      dopnez=ROUND(dopnr2/100,6)
   
      dopfpio=ROUND(doppf2/100,6)
      dopfzdr=ROUND(dopzf2/100,6)
      dopfnez=ROUND(dopnf2/100,6)
   endif

   if isplata=3
      doppio=ROUND(doppr3/100,6)
      dopzdr=ROUND(dopzr3/100,6)
      dopnez=ROUND(dopnr3/100,6)
   
      dopfpio=ROUND(doppf3/100,6)
      dopfzdr=ROUND(dopzf3/100,6)
      dopfnez=ROUND(dopnf3/100,6)
   endif

   if isplata=4
      doppio=ROUND(doppr4/100,6)
      dopzdr=ROUND(dopzr4/100,6)
      dopnez=ROUND(dopnr4/100,6)
   
      dopfpio=ROUND(doppf4/100,6)
      dopfzdr=ROUND(dopzf4/100,6)
      dopfnez=ROUND(dopnf4/100,6)
   ENDIF

   if isplata=5
      doppio=ROUND(doppr5/100,6)
      dopzdr=ROUND(dopzr5/100,6)
      dopnez=ROUND(dopnr5/100,6)
   
      dopfpio=ROUND(doppf5/100,6)
      dopfzdr=ROUND(dopzf5/100,6)
      dopfnez=ROUND(dopnf5/100,6)
   ENDIF   
   *mdopproc=doppio+dopzdr+dopnez

   select LD
   MROPNR=LDRAD.ROPNR
   moznvrprih=LDRAD.oznvrprih
   *doprinosi bez izlate zarade
   IF moznvrprih='109'
      mprocpor=0
   endif     
   IF moznvrprih='108'.or.moznvrprih='150'.or.moznvrprih='151'
      mneoporezp=0
   endif     
   *SET STEP ON
      
   IF MCZAKON<>0
       
      IF BRUTO<>0
       
    *     MMNEOPOREZP=ROUND((MNEOPOREZP-MPOROSLOB)*CASUK*MBBRUTO/BRUTO/MCZAKON,2)
        IF CASUK>MCZAKON
           MMCASUK=MCZAKON
        ELSE 
           MMCASUK=CASUK
        ENDIF   
   *     SET STEP ON 
        MMNEOPOREZP=ROUND((MNEOPOREZP*(MMCASUK)/MCZAKON),2)
        MMNEOPOREZP2=ROUND((MNEOPOREZP*(MMCASUK)/MCZAKON),2)
        IF moznvrprih='105'
            MMNEOPOREZP=ROUND((MNEOPOREZP*(MMCASUK)*2/MCZAKON),2)        
        endif
         IF MMNEOPOREZP>MNEOPOREZP
            MMNEOPOREZP=MNEOPOREZP
         ENDIF
      
         IF MSRAZPOR<>'D'
            MMNEOPOREZP=MNEOPOREZP
         ENDIF
      ELSE
         MMNEOPOREZP=0 
      ENDIF
      
   ELSE
      MMNEOPOREZP=0
   ENDIF
   DO CASE MREDISPL
   CASE MREDISPL=1
     MBBRUTO=BRUTO
     MBPOREZ=0
   CASE MREDISPL=2
     MBBRUTO=BRUTO-PREBRUTO1
     MBPOREZ=PREPOR1
   CASE MREDISPL=3
     MBBRUTO=BRUTO-PREBRUTO2
     MBPOREZ=PREPOR2
   CASE MREDISPL=4
     MBBRUTO=BRUTO-PREBRUTO3
     MBPOREZ=PREPOR3
   ENDCASE     
   
   
   *******poreska oslobodjenja
   REPLACE POROSLOB WITH MMNEOPOREZP
   DO CASE MREDISPL
   CASE MREDISPL=1
      mporos1=poroslob
      IF mporos1>bruto
         replace poroslob1 WITH bruto
      ELSE
         replace poroslob1 WITH mporos1
      endif   
      REPLACE POROSLOB2 WITH 0
      REPLACE POROSLOB3 WITH 0
      REPLACE POROSLOB4 WITH 0
      mneoporezivo=poroslob1
   CASE MREDISPL=2
      mporos2=poroslob-poroslob1
      IF mporos2>mbbruto
         replace poroslob2 WITH mbbruto
      ELSE
         replace poroslob2 WITH mporos2         
      endif   
      REPLACE POROSLOB3 WITH 0
      REPLACE POROSLOB4 WITH 0
      MNEOPOREZIVO=POROSLOB1+POROSLOB2
   CASE MREDISPL=3
      mporos3=poroslob-poroslob1-poroslob2
      IF mporos3>mbbruto
         replace poroslob3 WITH mbbruto
      ELSE
         replace poroslob3 WITH mporos3
      endif   
      REPLACE POROSLOB4 WITH 0
      MNEOPOREZIVO=POROSLOB1+POROSLOB2+POROSLOB3
   CASE MREDISPL=4
      mporos4=poroslob-poroslob1-poroslob2-poroslob3
      IF mporos4>mbbruto
         replace poroslob4 WITH mbbruto
      ELSE
         replace poroslob4 WITH mporos4
      endif   
      MNEOPOREZIVO=POROSLOB1+POROSLOB2+POROSLOB3+POROSLOB4      
   ENDCASE      
   *-obracun poreza--------------------------
      REPLACE POREZS WITH ROUND((BRUTO-Mneoporezivo)*MPROCPOR/100,MDEC) 
      repLACE POREZ WITH POREZS
      IF PORUMANJ<>0
         REPLACE POREZU WITH ROUND(POREZS-(POREZS*(100-PORUMANJ)/100),MDEC)
         REPLACE POREZ WITH POREZS-POREZU
      ELSE
         REPLACE POREZU WITH 0
      ENDIF
*----------------kraj obracuna poreza
   REPLACE DOPOSLOB WITH MNEOPOREZ

   DO CASE MISPLATA
   CASE MISPLATA=1.OR.MISPLATA=3.OR.MISPLATA=6
   *----------OBRACUN DOPRINOSA NA STARO----------------
      MMSDIN=MSDIN1
      mkorekc=casuk/mczakon
      IF MKOREKC>1
         MKOREKC=1
      ENDIF
      mosnov=ROUND((mmsdin*mkorekc),MDEC)
      mosnov5=ROUND(MPROSBRUTO*mkorekc*5,MDEC)
      IF MROPNR='1'
         IF mosnov<mmsdin
            mosnov=mmsdin
         endif
      endif
      mdopproc=doppio+dopzdr+dopnez
      mdopprocf=dopfpio+dopfzdr+dopfnez      
      if bruto< mosnov
         replace dopsocr with ROUND(MOSNOV*MDOPPROC,MDEC)         
         replace dopsocf with ROUND(MOSNOV*MDOPPROCf,MDEC)
         REPLACE OSNOVICA WITH MOSNOV
         REPLACE PROPISANA WITH ROUND(MMSDIN*MKOREKC,MDEC)
         REPLACE SKALA WITH 0        
      ELSE
         replace dopsocr with ROUND((bruto-MNEOPOREZ)*mdopproc,MDEC)
         replace dopsocf with ROUND((bruto-MNEOPOREZ)*mdopprocf,MDEC)
         REPLACE OSNOVICA WITH BRUTO
         REPLACE PROPISANA WITH MMSDIN
         REPLACE SKALA WITH 1        
      endif   
      IF BRUTO>MOSNOV5
         replace dopsocr with ROUND(MOSNOV5*mdopproc,MDEC)
         replace dopsocf with ROUND(MOSNOV5*mdopprocf,MDEC)
         REPLACE OSNOVICA WITH MOSNOV5
         REPLACE PROPISANA WITH MMSDIN
         REPLACE SKALA WITH 5
      endif   
      IF MDOPPROC<>0
         REPLACE DOPPR WITH ROUND(DOPSOCR*DOPPIO/MDOPPROC,MDEC)
         REPLACE DOPZR WITH ROUND(DOPSOCR*DOPZDR/MDOPPROc,MDEC)
         REPLACE DOPNR WITH ROUND(DOPSOCR*DOPNEZ/MDOPPROC,MDEC)
         IF DOPSOCR<>DOPPR+DOPZR+DOPNR
            IF DOPNR<>0
               REPLACE DOPNR WITH DOPSOCR-DOPPR-DOPZR
            ENDIF
            IF DOPNR=0.AND.DOPPR<>0
               REPLACE DOPPR WITH DOPSOCR-DOPZR
            ENDIF 
         ENDIF
      ENDIF            
      IF MDOPPROCF<>0
         REPLACE DOPPF WITH ROUND(DOPSOCF*DOPFPIO/MDOPPROCF,MDEC)
         REPLACE DOPZF WITH ROUND(DOPSOCF*DOPFZDR/MDOPPROCF,MDEC)
         REPLACE DOPNF WITH ROUND(DOPSOCF*DOPFNEZ/MDOPPROCF,MDEC)
         IF DOPSOCF<>DOPPF+DOPZF+DOPNF
            IF DOPNF<>0
               REPLACE DOPNF WITH DOPSOCF-DOPPF-DOPZF
            ENDIF
            IF DOPNF=0.AND.DOPPF<>0
               REPLACE DOPPF WITH DOPSOCF-DOPZF
            ENDIF 
         ENDIF
      ENDIF   
      IF DOPUMANJ<>0
         IF MDOPPROCF<>0      
            REPLACE DOPPFU WITH ROUND(DOPSOCF*DOPFPIO*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
            REPLACE DOPZFU WITH ROUND(DOPSOCF*DOPFZDR*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
            REPLACE DOPNFU WITH ROUND(DOPSOCF*DOPFNEZ*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         endif   
      ENDIF            
*       SET STEP ON 
      IF PIOUMANJR<>0
         REPLACE DOPPRU WITH ROUND(DOPPR*PIOUMANJR/100,MDEC)
      ENDIF            

      IF PIOUMANJF<>0
         REPLACE DOPPFU WITH ROUND(DOPPF*PIOUMANJF/100,MDEC)
      ENDIF            

      IF MDOPPROCF<>0
         REPLACE DOPPFS WITH ROUND(DOPSOCF*DOPFPIO*(100)/MDOPPROCF/100,MDEC)
         REPLACE DOPZFS WITH ROUND(DOPSOCF*DOPFZDR*(100)/MDOPPROCF/100,MDEC)
         REPLACE DOPNFS WITH ROUND(DOPSOCF*DOPFNEZ*(100)/MDOPPROCF/100,MDEC)
      ELSE
         REPLACE DOPPFS WITH 0
         REPLACE DOPZFS WITH 0
         REPLACE DOPNFS WITH 0
      ENDIF      

      
      
      IF PORUMANJ<>0
         REPLACE NETO WITH BRUTO-DOPSOCR-POREZS
      ELSE
         REPLACE NETO WITH BRUTO-DOPSOCR-POREZ
         IF MROPNR='1'
            REPLACE NETO WITH BRUTO-DOPPR-DOPZR-DOPNR-POREZ
         ENDIF
      ENDIF
      REPLACE NETOSVE WITH NETO+NETOPREV  
   
   CASE MISPLATA=2
      *-----------OBRACUN ZA PORODILJE---------
      Adopproc=Adoppio+Adopzdr+Adopnez
      mdopproc=doppio+dopzdr+dopnez
      mdopprocf=dopfpio+dopfzdr+dopfnez      
      ADOPSOCR=(BRUTO-MNEOPOREZ)*ADOPPROC
      replace dopsocf with bruto*mdopprocf                      
      replace dopsocR with bruto*mdopproc                      
*      replace dopsocS with bruto*mdopprocF     
      REPLACE OSNOVICA WITH bruto-Mneoporez
                 
      IF MDOPPROC<>0
         REPLACE DOPPR WITH ROUND(DOPSOCR*DOPPIO/MDOPPROC,MDEC) 
         REPLACE DOPZR WITH ROUND(DOPSOCR*DOPZDR/MDOPPROC,MDEC) 
         REPLACE DOPNR WITH ROUND(DOPSOCR*DOPNEZ/MDOPPROC,MDEC) 
         IF DOPSOCR<>DOPPR+DOPZR+DOPNR
            IF DOPNR<>0
               REPLACE DOPNR WITH DOPSOCR-DOPPR-DOPZR
            ENDIF
            IF DOPNR=0.AND.DOPPR<>0
               REPLACE DOPPR WITH DOPSOCR-DOPZR
            ENDIF 
         ENDIF
      ELSE
         REPLACE DOPSOCR WITH 0
         REPLACE DOPPR WITH 0
         REPLACE DOPZR WITH 0
         REPLACE DOPNR WITH 0
      ENDIF                  
      IF MDOPPROCF<>0
         REPLACE DOPPF WITH ROUND(DOPSOCF*DOPFPIO/MDOPPROCF,MDEC) 
         REPLACE DOPZF WITH ROUND(DOPSOCF*DOPFZDR/MDOPPROCF,MDEC)
         REPLACE DOPNF WITH ROUND(DOPSOCF*DOPFNEZ/MDOPPROCF,MDEC) 
         IF DOPSOCF<>DOPPF+DOPZF+DOPNF
            IF DOPNF<>0
               REPLACE DOPNF WITH DOPSOCF-DOPPF-DOPZF
            ENDIF
            IF DOPNF=0.AND.DOPPF<>0
               REPLACE DOPPF WITH DOPSOCF-DOPZF
            ENDIF 
         ENDIF
      ELSE
         REPLACE DOPSOCF WITH 0
         REPLACE DOPPF WITH 0
         REPLACE DOPZF WITH 0
         REPLACE DOPNF WITH 0
      ENDIF            

      IF DOPUMANJ<>0
	     IF MDOPPROCF<>0
         REPLACE DOPPFU WITH ROUND(DOPSOCF*DOPFPIO*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         REPLACE DOPZFU WITH ROUND(DOPSOCF*DOPFZDR*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         REPLACE DOPNFU WITH ROUND(DOPSOCF*DOPFNEZ*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         ENDIF
      ENDIF            
      IF MDOPPROCF<>0
      	  REPLACE DOPPFS WITH ROUND(DOPSOCF*DOPFPIO*(100)/MDOPPROCF/100,MDEC)
	      REPLACE DOPZFS WITH ROUND(DOPSOCF*DOPFZDR*(100)/MDOPPROCF/100,MDEC)
    	  REPLACE DOPNFS WITH ROUND(DOPSOCF*DOPFNEZ*(100)/MDOPPROCF/100,MDEC)
	  ENDIF

      IF PIOUMANJR<>0
         REPLACE DOPPRU WITH ROUND(DOPPR*PIOUMANJR/100,MDEC)
      ENDIF            

      IF PIOUMANJF<>0
         REPLACE DOPPFU WITH ROUND(DOPPF*PIOUMANJF/100,MDEC)
      ENDIF            
      
      IF PORUMANJ<>0
         REPLACE NETO WITH BRUTO-DOPSOCR-POREZS
      ELSE
         REPLACE NETO WITH BRUTO-DOPSOCR-POREZ
      ENDIF
      REPLACE NETOSVE WITH NETO+NETOPREV
      
   CASE MISPLATA=4
      *SET STEP ON 
      mmsdin=msdin1
      mkorekc=casuk/mczakon
      IF MKOREKC>1
         MKOREKC=1
      ENDIF

      REPLACE POREZ WITH POREZS-POREZU+MBPOREZ

      mosnov=ROUND(((BRUTO-POREZ)),MDEC)
      
      *REPLACE NETO WITH MOSNOV

      *REPLACE NETOSVE WITH NETO+NETOPREV

      replace osnovica WITH bruto-POREZ
      mdopproc=doppio+dopzdr+dopnez
      mdopprocf=dopfpio+dopfzdr+dopfnez      
*         replace dopsocr with ROUND((bruto)*mdopproc,MDEC)
*         replace dopsocf with ROUND((bruto)*mdopprocf,MDEC)
         replace dopsocr with ROUND((osnovica)*mdopproc,MDEC)
         replace dopsocf with ROUND((osnovica)*mdopprocf,MDEC)
         *REPLACE OSNOVICA WITH MOSNOV
         REPLACE SKALA WITH 1        
      IF MDOPPROC<>0
         REPLACE DOPPR WITH ROUND(DOPSOCR*DOPPIO/MDOPPROC,MDEC)
         REPLACE DOPZR WITH ROUND(DOPSOCR*DOPZDR/MDOPPROc,MDEC)
         REPLACE DOPNR WITH ROUND(DOPSOCR*DOPNEZ/MDOPPROC,MDEC)
         IF DOPSOCR<>DOPPR+DOPZR+DOPNR
            IF DOPNR<>0
               REPLACE DOPNR WITH DOPSOCR-DOPPR-DOPZR
            ENDIF
            IF DOPNR=0.AND.DOPPR<>0
               REPLACE DOPPR WITH DOPSOCR-DOPZR
            ENDIF 
         ENDIF
      ENDIF            
      IF MDOPPROCF<>0
         REPLACE DOPPF WITH ROUND(DOPSOCF*DOPFPIO/MDOPPROCF,MDEC)
         REPLACE DOPZF WITH ROUND(DOPSOCF*DOPFZDR/MDOPPROCF,MDEC)
         REPLACE DOPNF WITH ROUND(DOPSOCF*DOPFNEZ/MDOPPROCF,MDEC)
         IF DOPSOCF<>DOPPF+DOPZF+DOPNF
            IF DOPNF<>0
               REPLACE DOPNF WITH DOPSOCF-DOPPF-DOPZF
            ENDIF
            IF DOPNF=0.AND.DOPPF<>0
               REPLACE DOPPF WITH DOPSOCF-DOPZF
            ENDIF 
         ENDIF
      ENDIF   
      REPLACE NETO WITH bruto-porez-dopsocr      
      IF DOPUMANJ<>0
	     IF MDOPPROCF<>0
         REPLACE DOPPFU WITH ROUND(DOPSOCF*DOPFPIO*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         REPLACE DOPZFU WITH ROUND(DOPSOCF*DOPFZDR*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         REPLACE DOPNFU WITH ROUND(DOPSOCF*DOPFNEZ*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
         ENDIF
      ENDIF            
	  IF MDOPPROCF<>0
          REPLACE DOPPFS WITH ROUND(DOPSOCF*DOPFPIO*(100)/MDOPPROCF/100,MDEC)
          REPLACE DOPZFS WITH ROUND(DOPSOCF*DOPFZDR*(100)/MDOPPROCF/100,MDEC)
          REPLACE DOPNFS WITH ROUND(DOPSOCF*DOPFNEZ*(100)/MDOPPROCF/100,MDEC)
      ENDIF    

      IF PIOUMANJR<>0
         REPLACE DOPPRU WITH ROUND(DOPPIO*PIOUMANJR/100,MDEC)
      ENDIF            

      IF PIOUMANJF<>0
         REPLACE DOPPFU WITH ROUND(DOPFPIO*PIOUMANJF/100,MDEC)
      ENDIF            


   CASE MISPLATA=5
 
      mmsdin=msdin1
      mkorekc=casuk/mczakon
      IF MKOREKC>1
         MKOREKC=1
      ENDIF
      mosnov=ROUND((mmsdin*mkorekc),MDEC)
      mosnov5=ROUND(MPROSBRUTO*mkorekc*5,MDEC)

      IF MROPNR='1'
         IF mosnov<mmsdin
            mosnov=mmsdin
         endif
      endif



      mdopproc=doppio+dopzdr+dopnez
      mdopprocf=dopfpio+dopfzdr+dopfnez      


      Adopproc=Adoppio+Adopzdr+Adopnez

*---------------DODATO 03.2.2012--------------------
      if bruto< mosnov
         replace dopsocr with ROUND(MOSNOV*MDOPPROC,MDEC)         
         replace dopsocf with ROUND(MOSNOV*MDOPPROCf,MDEC)
         REPLACE OSNOVICA WITH MOSNOV
         REPLACE PROPISANA WITH ROUND(MMSDIN*MKOREKC,MDEC)
         REPLACE SKALA WITH 0        
      ELSE
         replace dopsocr with ROUND((bruto-MNEOPOREZ)*mdopproc,MDEC)
         replace dopsocf with ROUND((bruto-MNEOPOREZ)*mdopprocf,MDEC)
         REPLACE OSNOVICA WITH BRUTO
         REPLACE PROPISANA WITH MMSDIN
         REPLACE SKALA WITH 1        
      endif   
      IF BRUTO>MOSNOV5
         replace dopsocr with ROUND(MOSNOV5*mdopproc,MDEC)
         replace dopsocf with ROUND(MOSNOV5*mdopprocf,MDEC)
         REPLACE OSNOVICA WITH MOSNOV5
         REPLACE PROPISANA WITH MMSDIN
         REPLACE SKALA WITH 5
      endif   
*--------------------------------------------------
      IF bruto<mosnov
         ADOPSOCR=ROUND(mosnov*ADOPPROC,2)
      ELSE
         ADOPSOCR=ROUND(bruto*ADOPPROC,2)
      ENDIF
      IF BRUTO>MOSNOV5
         ADOPSOCR=ROUND(mosnov5*ADOPPROC,2)
      endif   
      MNETO=ROUND(((BRUTO-POREZ-ADOPSOCR)),MDEC)
      REPLACE NETO WITH Mneto

         mdopproc=doppio+dopzdr+dopnez
         mdopprocf=dopfpio+dopfzdr+dopfnez      
*         replace dopsocr with ROUND((bruto)*mdopproc,MDEC)
*         replace dopsocf with ROUND((bruto)*mdopprocf,MDEC)
*         REPLACE OSNOVICA WITH MOSNOV
*         REPLACE SKALA WITH 1        
      IF MDOPPROC<>0
         REPLACE DOPPR WITH ROUND(DOPSOCR*DOPPIO/MDOPPROC,MDEC)
         REPLACE DOPZR WITH ROUND(DOPSOCR*DOPZDR/MDOPPROc,MDEC)
         REPLACE DOPNR WITH ROUND(DOPSOCR*DOPNEZ/MDOPPROC,MDEC)
      ENDIF            
      IF MDOPPROCF<>0
         REPLACE DOPPF WITH ROUND(DOPSOCF*DOPFPIO/MDOPPROCF,MDEC)
         REPLACE DOPZF WITH ROUND(DOPSOCF*DOPFZDR/MDOPPROCF,MDEC)
         REPLACE DOPNF WITH ROUND(DOPSOCF*DOPFNEZ/MDOPPROCF,MDEC)
      ENDIF   
      IF DOPUMANJ<>0
	      IF MDOPPROCF<>0      
    	     REPLACE DOPPFU WITH ROUND(DOPSOCF*DOPFPIO*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
        	 REPLACE DOPZFU WITH ROUND(DOPSOCF*DOPFZDR*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
	         REPLACE DOPNFU WITH ROUND(DOPSOCF*DOPFNEZ*(100-DOPUMANJ)/MDOPPROCF/100,MDEC)
	      ENDIF   
      ENDIF            
      IF MDOPPROCF<>0      
 	     REPLACE DOPPFS WITH ROUND(DOPSOCF*DOPFPIO*(100)/MDOPPROCF/100,MDEC)
	      REPLACE DOPZFS WITH ROUND(DOPSOCF*DOPFZDR*(100)/MDOPPROCF/100,MDEC)
    	  REPLACE DOPNFS WITH ROUND(DOPSOCF*DOPFNEZ*(100)/MDOPPROCF/100,MDEC)
	  endif
      IF PIOUMANJR<>0
         REPLACE DOPPRU WITH ROUND(DOPPR*PIOUMANJR/100,MDEC)
      ENDIF            

      IF PIOUMANJF<>0
         REPLACE DOPPFU WITH ROUND(DOPPF*PIOUMANJF/100,MDEC)
      ENDIF            

      IF MROPNR='1'
         REPLACE NETO WITH BRUTO-DOPPR-POREZ
      ENDIF
      REPLACE NETOSVE WITH NETO+NETOPREV


   ENDCASE
*--------------dodato 29-11-2013
   IF mprocpor<>0
      DO CASE MREDISPL
      CASE MREDISPL=1
         replace osnovp1 WITH bruto-poroslob
         REPLACE OSNOVP2 WITH 0
         REPLACE OSNOVP3 WITH 0
         REPLACE OSNOVP4 WITH 0
      CASE MREDISPL=2
         replace osnovp2 WITH bruto-osnovp1-poroslob
         REPLACE OSNOVP3 WITH 0
         REPLACE OSNOVP4 WITH 0
      CASE MREDISPL=3
         replace osnovp3 WITH bruto-osnovp1-osnovp2-poroslob        
         REPLACE OSNOVP4 WITH 0
      CASE MREDISPL=4
         replace osnovp4 WITH bruto-osnovp1-osnovp2-osnovp3-poroslob
      endcase   
   endif

   
   POP KEY
endproc

