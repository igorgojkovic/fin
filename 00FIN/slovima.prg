*---------KONVERZIJA BOJA U SLOVO-------
FUNCTION BROJUSLOVA
LPARAMETERS KOJIBROJ
PUSH KEY CLEAR
AA=0
IF MOD(KOJIBROJ,1)<>0
   MIMADEC=1
   CDEC=MOD(KOJIBROJ,1)
   CdecimaLE=SUBSTR(STR(CDEC,3,2),2,2)
ELSE
   CDECIMALE='00'
   MIMADEC=0
ENDIF      

DO CASE KOJIBROJ
   CASE KOJIBROJ>0
      MKOJIBROJ=INT(KOJIBROJ)
      AA=1
   CASE KOJIBROJ=0
      MKOJIBROJ=0
      AA=0
   CASE KOJiBROJ<0
      MKOJIBROJ=INT(ABS(KOJIBROJ))
      AA=1
ENDCASE

IF AA=1
   AMLEN=LEN(ALLTRIM(STR(ROUND(MKOJIBROJ,0),9,0)))
   AMKOJIBROJ=ALLTRIM(STR(ROUND(MKOJIBROJ,0),9,0))
   AM1='X'
   AM2='X'
   AM3='X'
   AM4='X'
   AM5='X'
   AM6='X'
   AM7='X'
   AM8='X'
   AM9='X'
   CSL1=''
   CSL2=''
   CSL3=''
   CSL4=''
   CSL5=''
   CSL6=''
   CSL7=''
   CSL8=''
   CSL9=''
   
   DO CASE AMLEN
      CASE AMLEN=1 &&DINARI
         AM1=SUBSTR(AMKOJIBROJ,1,1)
      CASE AMLEN=2 &&DESETINE DINARA
         AM1=SUBSTR(AMKOJIBROJ,2,1)
         AM2=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=3
         AM1=SUBSTR(AMKOJIBROJ,3,1)
         AM2=SUBSTR(AMKOJIBROJ,2,1) 
         AM3=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=4
         AM1=SUBSTR(AMKOJIBROJ,4,1)
         AM2=SUBSTR(AMKOJIBROJ,3,1) 
         AM3=SUBSTR(AMKOJIBROJ,2,1) 
         AM4=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=5
         AM1=SUBSTR(AMKOJIBROJ,5,1)
         AM2=SUBSTR(AMKOJIBROJ,4,1) 
         AM3=SUBSTR(AMKOJIBROJ,3,1) 
         AM4=SUBSTR(AMKOJIBROJ,2,1) 
         AM5=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=6
         AM1=SUBSTR(AMKOJIBROJ,6,1)
         AM2=SUBSTR(AMKOJIBROJ,5,1) 
         AM3=SUBSTR(AMKOJIBROJ,4,1) 
         AM4=SUBSTR(AMKOJIBROJ,3,1) 
         AM5=SUBSTR(AMKOJIBROJ,2,1) 
         AM6=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=7
         AM1=SUBSTR(AMKOJIBROJ,7,1)
         AM2=SUBSTR(AMKOJIBROJ,6,1) 
         AM3=SUBSTR(AMKOJIBROJ,5,1) 
         AM4=SUBSTR(AMKOJIBROJ,4,1) 
         AM5=SUBSTR(AMKOJIBROJ,3,1) 
         AM6=SUBSTR(AMKOJIBROJ,2,1) 
         AM7=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=8
         AM1=SUBSTR(AMKOJIBROJ,8,1)
         AM2=SUBSTR(AMKOJIBROJ,7,1) 
         AM3=SUBSTR(AMKOJIBROJ,6,1) 
         AM4=SUBSTR(AMKOJIBROJ,5,1) 
         AM5=SUBSTR(AMKOJIBROJ,4,1) 
         AM6=SUBSTR(AMKOJIBROJ,3,1) 
         AM7=SUBSTR(AMKOJIBROJ,2,1) 
         AM8=SUBSTR(AMKOJIBROJ,1,1) 
      CASE AMLEN=9
         AM1=SUBSTR(AMKOJIBROJ,9,1)
         AM2=SUBSTR(AMKOJIBROJ,8,1) 
         AM3=SUBSTR(AMKOJIBROJ,7,1) 
         AM4=SUBSTR(AMKOJIBROJ,6,1) 
         AM5=SUBSTR(AMKOJIBROJ,5,1) 
         AM6=SUBSTR(AMKOJIBROJ,4,1) 
         AM7=SUBSTR(AMKOJIBROJ,3,1) 
         AM8=SUBSTR(AMKOJIBROJ,2,1) 
         AM9=SUBSTR(AMKOJIBROJ,1,1) 
      OTHERWISE
         CSLOVIMA=' PREKORACENA VELICINA BROJA '
   ENDCASE
   
   IF AM1<>'X'
      DO CASE AM1
         CASE AM1='0'
            CSL1='NULA'
         CASE AM1='1'
            CSL1='JEDAN'
         CASE AM1='2'
            CSL1='DVA'
         CASE AM1='3'
            CSL1='TRI'
         CASE AM1='4'
            CSL1='ÈETIRI'
         CASE AM1='5'
            CSL1='PET'
         CASE AM1='6'
            CSL1='ŠEST'
         CASE AM1='7'
            CSL1='SEDAM'
         CASE AM1='8'
            CSL1='OSAM'
         CASE AM1='9'
            CSL1='DEVET'
      ENDCASE
   ELSE
      CSL1=''
   ENDIF         
   
   IF AM2<>'X'
      IF AM1='0'
         CSL1=''
      ENDIF
      DO CASE AM2
         CASE AM2='0'
            CSL2='nula'
         CASE AM2='1'
            CSL1=''
            DO CASE AM1
               CASE AM1='0'   
                  CSL2='deset'
               CASE AM1='1'
                  CSL2='jedanaest'
               CASE AM1='2'
                  CSL2='dvanaest'
               CASE AM1='3'
                  CSL2='trinaest'
               CASE AM1='4'
                  CSL2='èetrnaest'
               CASE AM1='5'
                  CSL2='petnaest'
               CASE AM1='6'
                  CSL2='šesnaest'
               CASE AM1='7'
                  CSL2='sedamnaest'
               CASE AM1='8'
                  CSL2='osamnaest'
               CASE AM1='9'
                  CSL2='devetnaest'
         ENDCASE      

         CASE AM2='2'
            CSL2='dvadeset'
         CASE AM2='3'
            CSL2='trideset'
         CASE AM2='4'
            CSL2='èetrdeset'
         CASE AM2='5'
            CSL2='pedeset'
         CASE AM2='6'
            CSL2='šezdeset'
         CASE AM2='7'
            CSL2='sedamdeset'
         CASE AM2='8'
            CSL2='osamdeset'
         CASE AM2='9'
            CSL2='devedeset'
      ENDCASE
   ELSE
      CSL2=''
   ENDIF         

   IF AM3<>'X'
      IF AM2='0'
         CSL2=''
      ENDIF
      DO CASE AM3
         CASE AM3='0'
            CSL3='nula'
         CASE AM3='1'
            CSL3='sto'
         CASE AM3='2'
            CSL3='dvesta'
         CASE AM3='3'
            CSL3='trista'
         CASE AM3='4'
            CSL3='èetristo'
         CASE AM3='5'
            CSL3='petsto'
         CASE AM3='6'
            CSL3='šesto'
         CASE AM3='7'
            CSL3='sedamsto'
         CASE AM3='8'
            CSL3='osamsto'
         CASE AM3='9'
            CSL3='devetsto'
      ENDCASE
   ELSE
      CSL3=''
   ENDIF         

   IF AM4<>'X'
      IF AM3='0'
         CSL3=''
      ENDIF

      DO CASE AM4
         CASE AM4='0'
            CSL4='nula'
         CASE AM4='1'
            CSL4='jednahiljada'
         CASE AM4='2'
            CSL4='dvehiljade'
         CASE AM4='3'
            CSL4='trihiljade'
         CASE AM4='4'
            CSL4='èetrihiljade'
         CASE AM4='5'
            CSL4='pethiljada'
         CASE AM4='6'
            CSL4='šesthiljada'
         CASE AM4='7'
            CSL4='sedamhiljada'
         CASE AM4='8' 
            CSL4='osamhiljada'
         CASE AM4='9'
            CSL4='devethiljada'
      ENDCASE
   ELSE
      CSL4=''
   ENDIF         

   IF AM5<>'X'
      IF AM4='0'
         CSL4='hiljada' 
      ENDIF 
      DO CASE AM5
         CASE AM5='0'
            CSL5=''
            IF AM4='1'
               CSL4='jednahiljada'
            ENDIF    
         CASE AM5='1'
            CSL4='hiljada'
            DO CASE AM4
               CASE AM4='0'
                  CSL5='deset'
               CASE AM4='1'
                  CSL5='jedanaest'
               CASE AM4='2'
                  CSL5='dvanaest'
               CASE AM4='3'
                  CSL5='trinaest'
               CASE AM4='4'
                  CSL5='èetrnaest'
               CASE AM4='5'
                  CSL5='petnaest'
               CASE AM4='6'
                  CSL5='šesnaest'
               CASE AM4='7'
                  CSL5='sedamnaest'
               CASE AM4='8'
                  CSL5='osamnaest'
               CASE AM4='9'
                  CSL5='devetnaest'
            ENDCASE   
         CASE AM5='2'
            CSL5='dvadeset'
         CASE AM5='3'
            CSL5='trideset'
         CASE AM5='4'
               CSL5='èetrdeset'
         CASE AM5='5'
            CSL5='pedeset'
         CASE AM5='6'
            CSL5='šestdeset'
         CASE AM5='7'
            CSL5='sedamdeset'
         CASE AM5='8'
            CSL5='osamdeset'
         CASE AM5='9'
            CSL5='devedeset'
      ENDCASE
   ELSE
      CSL5=''
   ENDIF         

   IF AM6<>'X'
      IF AM5='0'
         CSL5=''
         IF AM4='1'
            CSL4='jednahiljada'
         ENDIF
      ENDIF
      
      DO CASE AM6
         CASE AM6='1'
            CSL6='sto'
            IF AM5='0'
               IF AM4='0'
                  CSL4=''
                  CSL6='stohiljada'
               ENDIF
               IF AM4='1'
                  CSL6='sto'
               ENDIF
            ENDIF
         CASE AM6='2'
            CSL6='dvesta'
         CASE AM6='3'
            CSL6='trista'
         CASE AM6='4'
            CSL6='èetristo'
         CASE AM6='5'
            CSL6='petsto'
         CASE AM6='6'
            CSL6='šesto'
         CASE AM6='7'
            CSL6='sedamsto'
         CASE AM6='8'
            CSL6='osamsto'
         CASE AM6='9'
            CSL6='devetsto'
      ENDCASE
   ELSE
      CSL6=''
   ENDIF         

*---milion---------------------
   IF AM7<>'X'
      IF am6='0'
         IF am5='0'
            IF am4='0'
               csl4=''
            endif
         ENDIF
      endif        
      DO CASE AM7
         CASE AM7='1'
            csl7='milion' 
         CASE AM7='2'
            CSL7='dvamiliona'
         CASE AM7='3'
            CSL7='trimiliona'
         CASE AM7='4'
            CSL7='èetrimiliona'
         CASE AM7='5'
            CSL7='petmiliona'
         CASE AM7='6'
            CSL7='šestmiliona'
         CASE AM7='7'
            CSL7='sedammiliona'
         CASE AM7='8'
            CSL7='osammiliona'
         CASE AM7='9'
            CSL7='devetmiliona'
      ENDCASE
   ELSE
      CSL7=''
   ENDIF         

   IF AM8<>'X'
      IF AM7='0'
         CSL7=''
      ENDIF

      DO CASE AM8
         CASE AM8='0'
            CSL8=''
         CASE AM8='1'
            CSL7=''
            DO CASE AM7
               CASE AM7='0'
                  CSL8='desetmiliona'
               CASE AM7='1'
                  CSL8='jedanaestmiliona'
               CASE AM7='2'
                  CSL8='dvanaestmiliona'
               CASE AM7='3'
                  CSL8='trinaestmiliona'
               CASE AM7='4'
                  CSL8='èetrnaestmiliona'
               CASE AM7='5'
                  CSL8='petnaestmiliona'
               CASE AM7='6'
                  CSL8='šesnaestmiliona'
               CASE AM7='7'
                  CSL8='sedamnaestmiliona'
               CASE AM7='8'
                  CSL8='osamnaestmiliona'
               CASE AM7='9'
                  CSL8='devetnaestmiliona'
            ENDCASE   
         CASE AM8='2'
            CSL8='dvadeset'
         CASE AM8='3'
            CSL8='trideset'
         CASE AM8='4'
            CSL8='èetrdeset'
         CASE AM8='5'
            CSL8='pedeset'
         CASE AM8='6'
            CSL8='šestdeset'
         CASE AM8='7'
            CSL8='sedamdeset'
         CASE AM8='8'
            CSL8='osamdeset'
         CASE AM8='9'
            CSL8='devedeset'
      ENDCASE
   ELSE
      CSL8=''
   ENDIF         
*--------sto miliona---------
   IF AM9<>'X'
      IF AM8='0'
         CSL8=''
         IF AM7='1'
            CSL7='jedanmilion'
         ENDIF
      ENDIF
      
      DO CASE AM9
         CASE AM9='1'
            CSL9='STO'
            IF AM8='0'
               IF AM7='0'
                  CSL7=''
                  CSL9='stomiliona'
               ENDIF
               IF AM7='1'
                  CSL9='sto'
               ENDIF
            ENDIF
         CASE AM9='2'
            CSL9='dvesta'
         CASE AM9='3'
            CSL9='trista'
         CASE AM9='4'
            CSL9='èetristo'
         CASE AM9='5'
            CSL9='petsto'
         CASE AM9='6'
            CSL9='šesto'
         CASE AM9='7'
            CSL9='sedamsto'
         CASE AM9='8'
            CSL9='osamsto'
         CASE AM9='9'
            CSL9='devetsto'
      ENDCASE
   ELSE
      CSL9=''
   ENDIF         
   CSLOVIMA=CSL9+CSL8+CSL7+CSL6+CSL5+CSL4+CSL3+CSL2+CSL1+' i '+cdecimale+'/100'
ELSE
CSLOVIMA=' NEMA BROJA '
ENDIF
POP KEY
RETURN(CSLOVIMA)   

