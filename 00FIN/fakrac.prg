 PUSH KEY CLEAR  
   
   IF RSIF=SPACE(5)
      REPLACE KOLI WITH 0
   ENDIF
      
   IF KOLI=0   
      REPLACE MALCENA WITH 0
      REPLACE VELCENA WITH 0
      REPLACE VELVRED WITH 0
      REPLACE POREZ WITH 0
      REPLACE POREZO WITH 0
      REPLACE MALVRED WITH 0
      replace rabproc WITH 0
      replace rabproc2 WITH 0
      replace marproc WITH 0
      replace rabat WITH 0
      replace rabat2 WITH 0
      replace marza WITH 0
      replace cena WITH 0
      replace izni WITH 0
      REPLACE DEVCENA WITH 0
      REPLACE DEVVRED WITH 0
      REPLACE BRUTO WITH 0
      REPLACE NETO WITH 0
      REPLACE MAGACIN WITH 0
      REPLACE PORPOS WITH 0
      REPLACE PROCPOS WITH 0
      REPLACE PROFIL WITH ' '
      REPLACE IZNIU WITH 0
      REPLACE VELVREDU WITH 0
      REPLACE POREZU WITH 0
   ENDIF   
   REPLACE BRUTO WITH ROUND(KOLI*ROB.BRUTO,0)
   REPLACE NETO WITH ROUND(KOLI*ROB.NETO,0)
   REPLACE PROFIL WITH ROB.PROFIL
   REPLACE MAGACIN WITH ROB.MAGACIN      
   
IF RSIF<>SPACE(5)

 * REPLACE AKCVRED WITH AKCCENA*KOLI

   IF KOLI<>0
      IF VELCENA=0
         REPLACE VELCENA WITH ROB.VELCENA
      ENDIF
      IF velcena<>0
         REPLACE VELVRED WITH ROUND(KOLI*VELCENA,2)
     ENDIF
     IF TOBJEKAT='M'
        IF MALCENA=0
           REPLACE MALCENA WITH ROB.MALCENA
        ENDIF
        IF malcena<>0
           REPLACE MALVRED WITH ROUND(KOLI*MALCENA,2)
        ENDIF
        MPORPOSOSN=ROUND(MALVRED*100/(100+PROCPOR+PROCPOS),2)
        REPLACE PORPOS WITH ROUND(MPORPOSOSN*PROCPOS/100,2)
     ELSE
        REPLACE MALCENA WITH 0
        REPLACE MALVRED WITH 0
     ENDIF   
      IF DEVCENA=0
         REPLACE DEVVRED WITH ROUND(KOLI*DEVCENA,3)
      ENDIF
      
      IF TOBJEKAT='V'

         IF CENA=0
            IF TPRACENJE='D'
               IF ROB.PROSCENV<>0
                  REPLACE CENA WITH ROB.PROSCENV
               ELSE
                  IF ROB.ZADNAB<>0
                     REPLACE CENA WITH ROB.ZADNAB
                  ELSE
                     REPLACE CENA WITH VELCENA
                  ENDIF
               ENDIF
               *REPLACE CENA WITH MCENA
            ELSE
               REPLACE CENA WITH ROB.ZADNAB
            ENDIF
         ENDIF
         IF TNABAVNA='D'
            REPLACE VELCENA WITH CENA
            REPLACE VELVRED WITH ROUND(KOLI*VELCENA,2)
         ENDIF
      ELSE
         IF CENA=0
            IF TPRACENJE='D'
               IF ROB.PROSCENM<>0
                  REPLACE CENA WITH ROB.PROSCENM
               ELSE
                  IF ROB.ZADNABM<>0
                     REPLACE CENA WITH ROB.ZADNABM
                  ELSE
                     REPLACE CENA WITH 1
                  ENDIF   
*                  REPLACE PROSCENAA WITH 0
               ENDIF
      *         REPLACE CENA WITH MCENA
            ELSE            
               REPLACE CENA WITH ROB.ZADNABM
            ENDIF
*            REPLACE akcCENA WITH ROB.PROSCENAA
         ENDIF
      ENDIF
      
      IF cena<>0
         REPLACE IZNI WITH ROUND(KOLI*CENA,4)
      endif
      IF TOBJEKAT='V'
         IF RABPROC<>0
            REPLACE RABAT WITH ROUND(VELVRED*RABPROC/100,2)  
         ELSE
            REPLACE RABAT WITH 0
         ENDIF
         IF RABPROC2<>0
            REPLACE RABAT2 WITH ROUND((VELVRED-RABAT)*RABPROC2/100,2)  
         ELSE
            REPLACE RABAT2 WITH 0
         ENDIF
         
      ELSE
         IF RABPROC<>0
            REPLACE RABAT WITH ROUND(MALVRED*RABPROC/100,2)  
         ELSE
            REPLACE RABAT WITH 0
         ENDIF
      ENDIF
      IF TOBJEKAT='V'
         IF velvred-ROUND(izni,2)<>0 
            REPLACE MARZA WITH VELVRED-ROUND(IZNI,2)
         ELSE
            replace marza WITH 0
         endif   
      ELSE
         IF MALVRED-ROUND(izni,2)-POREZ<>0 
            REPLACE MARZA WITH MALVRED-POREZ-ROUND(IZNI,2)-PORPOS
         ELSE
            replace marza WITH 0
         endif   
      ENDIF
      IF IZNI<>0
         REPLACE MARPROC WITH ROUND(MARZA*100/(IZNI),4)
      ELSE
         REPLACE MARPROC WITH 0
      ENDIF 
      IF FAKG.OPDV<>' '
         IF TOBJEKAT='V' 
            REPLACE POREZ WITH ROUND((VELVRED-RABAT-RABAT2)*PROCPOR/100,2)      
*            REPLACE MARZA WITH VELVRED-IZNI-RABAT
            REPLACE MARZA WITH VELVRED-ROUND(IZNI,2)-PORPOS
         ELSE
            REPLACE POREZ WITH ROUND((MALVRED-PORPOS)*PROCPOR/(100+PROCPOR),2) 
*            REPLACE MARZA WITH MALVRED-POREZ-IZNi-RABAT
            REPLACE MARZA WITH MALVRED-POREZ-ROUND(IZNi,2)-PORPOS
         ENDIF
      ELSE
         REPLACE POREZ WITH 0
      ENDIF
      IF TOBJEKAT='V'
         REPLACE POREZO WITH ROUND((VELVRED)*PROCPOR/100,2)      
      ENDIF

      IF IZNI<>0
         REPLACE MARPROC WITH ROUND(MARZA*100/(IZNI),4) 
      ELSE
         REPLACE MARPROC WITH 0
      ENDIF 
      IF TOBJEKAT='V'
         IF FAKG.OPDV<>' '
            REPLACE POREZ WITH ROUND((VELVRED-RABAT-RABAT2)*PROCPOR/100,2)      
         ELSE
            REPLACE POREZ WITH 0
         ENDIF
      ENDIF
      
*      IF POREZ=0
*         BROWSE
*      ENDIF   

      IF TOBJEKAT='V'
         REPLACE MALVRED WITH VELVRED+POREZ-RABAT-RABAT2
         IF KOLI<>0
            MMALCENA=ROUND(MALVRED/KOLI,4)      
            REPLACE MALCENA WITH MMALCENA
            REPLACE MALVRED WITH ROUND(koli*Mmalcena,2)
         ELSE
            REPLACE MALCENA WITH 0
            REPLACE MALVRED WITH 0
         ENDIF
      ELSE
         REPLACE VELVRED WITH MALVRED-POREZ-PORPOS
         IF koli<>0
*            REPLACE POREZ WITH MALVRED-VELVRED
            REPLACE VELVRED WITH MALVRED-POREZ
            REPLACE VELCENA WITH ROUND(VELVRED/KOLI,2)
         endif  

      ENDIF   
      
     IF ROB.VRSTA='U'
        REPLACE IZNIU WITH IZNI
        REPLACE VELVREDU WITH VELVRED
        REPLACE POREZU WITH POREZ
     ELSE
        REPLACE IZNIU WITH 0
        REPLACE VELVREDU WITH 0
        REPLACE POREZU WITH 0   
     ENDIF   
   ENDIF
ENDIF
POP KEY
