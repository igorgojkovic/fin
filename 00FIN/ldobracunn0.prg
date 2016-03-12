PROCEDURE LDOBRACUNN
parameters aa,MGRUPA,ADINSAT,AMINULI,AOBRNAKNADE,MOBRUK
PUSH KEY CLEAR

*MC = CENA RADA
SELECT LDPARAM
MPROCNOC=PROCNOC
MPROCPROD=PROCPROD
MPROCNED=PROCNED
MPROCBOL=PROCBOL
MPROCPRAZ=PROCPRAZ
MPROCPLAC=PROCPLAC
MPROCSUS=PROCSUS
MPROCMIN=PROCMIN
MCZAKON=CZAKON
MMESEC=MESEC
MISPLATA=ISPLATA
MPROSBRUTO=PROSBRUTO
MSRAZPOR=SRAZPOR
MMINNAC=MINNAC
MSTARTKOEF=EKOEFS
MSDIN1=SDIN1
MGODINA=GODINA
msolporod1=solporod1
msolporod2=solporod2
msolpordo1=solpordo1
msolpordo2=solpordo2
msolproc1=solproc1
msolproc2=solproc2
mbkproc=bkproc
mbkZASTITA=bkZASTITA
IF MSTARTKOEF=0
   MSTARTKOEF=1
ENDIF   
   PUBLIC MDECIMALE,MNEOPOREZ,MDEC,MNEOPOREZP
   MDECIMALE=DECIMALE
   MNEOPOREZ=NEOPOREZ
   MNEOPOREZP=NEOPOREZP
   IF MDECIMALE=' '
      MDEC=0
   ELSE
      MDEC=2
   ENDIF      

SELECT LD
REPLACE GODINA WITH MGODINA
IF LDRAD.GRUPA=MGRUPA.OR.MGRUPA=0

mevidbroj=ldrad.evidbroj
replace evidbroj WITH mevidbroj
IF ADINSAT=0
   mc=aa
   SB=ROUND(LDRAD.STARTBOD*MSTARTKOEF/MCZAKON,8)
ELSE
   MC=ADINSAT
   SB=1
ENDIF

   SBMIN=ROUND(LDRAD.STARTBOD,8)
   replace dinVR with ROUND(casuc*SB*MC,0)
   replace dinuc with ROUND(casuc*SB*MC,0)
   replace dinNOC with ROUND(casNOC*SB*MC*MPROCNOC/100,0)
   replace dinPROD with ROUND(casPROD*SB*MC*MPROCPROD/100,0)
   replace dinRADNAP with ROUND(casRADNAP*SB*MC*MPROCPRAZ/100,0)
   replace dinNED with ROUND(casNED*SB*MC*MPROCNED/100,0)
   replace dinDOR with ROUND(casDOR*SB*MC,0)
   replace dinSL with ROUND(cSLPUT*SB*MC,0)
   REPLACE DIN1 WITH ROUND(CAS1*SB*MC,0)
   REPLACE DIN2 WITH ROUND(CAS2*SB*MC,0)
   REPLACE DIN3 WITH ROUND(CAS3*SB*MC,0)

   IF AOBRNAKNADE='D'
      replace dinPRAZ with ROUND(casPRAZ*SB*MC,0)
      replace dinBOL with ROUND(casBOL*SB*MC*MPROCBOL/100,0)
      replace dinBOL2 with ROUND(casBOL2*SB*MC,0)
      replace dinPLAC with ROUND(casPLAC*SB*MC*MPROCPLAC/100,0)
      replace dinPLAC2 with ROUND(casPLAC2*SB*MC,0)
      replace dinGOD with ROUND(casGOD*SB*MC,0)
      replace dinVV with ROUND(casVV*SB*MC,0)
      REPLACE DINSUS WITH ROUND(CASSUS*SB*MC*MPROCSUS/100,0)       
  endif   
   

MMIN=DINUC+DINNOC+DINPROD+DINRADNAP+DINPRAZ+DINNED+DINBOL+DINBOL2+DINPLAC+DINPLAC2+DINGOD+DINVV+DINDOR+DIN1+DIN2+DIN3+DINSUS+DINSL
*replace dinMIN with ROUND(SBMIN*MC*MPROCMIN*LDRAD.STAZ/100,0)
IF MMINNAC=3
   MMIN=DINUC+DINNOC+DINPROD+DINRADNAP+DINPRAZ+DINNED+DINBOL+DINBOL2+DINPLAC+DINPLAC2+DINGOD+DINVV+DINDOR+DIN1+DIN2+DIN3+DINSUS+DINSL+FIKSNA+TOPLI
ENDIF
IF AMINULI=0
   DO CASE MMINNAC
   CASE MMINNAC=1
      replace dinMIN with ROUND(MMIN*MPROCMIN*LDRAD.STAZ/100,0)
   CASE MMINNAC=2
      replace dinMIN with ROUND(DINUC*MPROCMIN*LDRAD.STAZ/100,0)
   CASE MMINNAC=3
      replace dinMIN with ROUND(MMIN*MPROCMIN*LDRAD.STAZ/100,0)
   ENDCASE
ELSE
*-----AKO SE UMANJUJE MINULI RAD----------
   MMINPROC=1+(MPROCMIN*LDRAD.STAZ/100)
   REPLACE DINVR WITH ROUND(DINVR/MMINPROC,2)
   REPLACE DINUC WITH ROUND(DINUC/MMINPROC,2)
   replace dinMIN with ROUND(DINUC*MPROCMIN*LDRAD.STAZ/100,0)
ENDIF


REPLACE BENPROC WITH LDRAD.BENPROC
REPLACE GRUPA WITH LDRAD.GRUPA
REPLACE GRUPA1 WITH LDRAD.GRUPA1
REPLACE MTR WITH LDRAD.MTR
REPLACE CENARADA WITH MC
REPLACE MESEC WITH MMESEC

SET PROCEDURE TO LDOBRACUN
DO SABERICAS
DO SABERIDIN
DO OBRACSTIM
DO SABERIDOD
DO SABERINAK
SET PROCEDURE TO 

DO SABERIBRUTON

*----------OBRACUN DOTACIJE-------------------

SET PROCEDURE TO LDOBRACUN

do obracsoc

DO obracbenn

do obracsocU

DO OBRACKOM

DO obracsolpor

DO OBRACOB


DO SABERIOB
SET PROCEDURE TO 



ENDIF
POP KEY
ENDPROC




*---------OBRACUN SA NETA NA BRUTO--------------------------------


PROCEDURE SABERIBRUTON
PUSH KEY CLEAR

   SELECT LDPARAM
   MCZAKON=CZAKON
   MISPLATA=ISPLATA
   MPROCPOR=PROCPOR
   MNEOPOREZP=NEOPOREZP
   MSRAZPOR=SRAZPOR
   MREDISPL=REDISPL
   MSDIN1=SDIN1
   if isplata=1
      doppio=ROUND(doppr1/100,6)
      dopzdr=ROUND(dopzr1/100,6)
      dopnez=ROUND(dopnr1/100,6)
   endif
   if isplata=2
      doppio=ROUND(doppr2/100,6)
      dopzdr=ROUND(dopzr2/100,6)
      dopnez=ROUND(dopnr2/100,6)
   endif

   if isplata=3
      doppio=ROUND(doppr3/100,6)
      dopzdr=ROUND(dopzr3/100,6)
      dopnez=ROUND(dopnr3/100,6)
   endif

   if isplata=4
      doppio=ROUND(doppr4/100,6)
      dopzdr=ROUND(dopzr4/100,6)
      dopnez=ROUND(dopnr4/100,6)
   ENDIF
   if isplata=5
      doppio=ROUND(doppr5/100,6)
      dopzdr=ROUND(dopzr5/100,6)
      dopnez=ROUND(dopnr5/100,6)
   ENDIF
   if isplata=6
      doppio=ROUND(doppr1/100,6)
      dopzdr=ROUND(dopzr1/100,6)
      dopnez=ROUND(dopnr1/100,6)
   ENDIF
   
   mdopproc=ROUND((doppio+dopzdr+dopnez)*100,2)
   
   SELECT LD
   IF MCZAKON<>0
      M3MNEOPOREZP=ROUND(MNEOPOREZP*CASUK/MCZAKON,2)
      
      IF M3MNEOPOREZP>MNEOPOREZP
         M3MNEOPOREZP=MNEOPOREZP
      ENDIF
      
      IF MSRAZPOR<>'D'
         M3MNEOPOREZP=MNEOPOREZP
      ENDIF
      
   ELSE
      M3MNEOPOREZP=0
   ENDIF
  
   DO CASE MREDISPL
   CASE MREDISPL=1
      MPREBRUTO=0
      MPRENETO=0
      MPOROSLOB=0
      MPRESTOPA=0
   CASE MREDISPL=2
      MPREBRUTO=PREBRUTO1
      MPRENETO=PRENETO1
      MPOROSLOB=POROSLOB1
      MPRESTOPA=PRESTOPA1
   CASE MREDISPL=3
      MPREBRUTO=PREBRUTO2
      MPRENETO=PRENETO2
      MPOROSLOB=POROSLOB2
      MPRESTOPA=PRESTOPA2
   CASE MREDISPL=4
      MPREBRUTO=PREBRUTO3
      MPRENETO=PRENETO3
      MPOROSLOB=POROSLOB3
      MPRESTOPA=PRESTOPA3
   ENDCASE   
   REPLACE BKUMANJ WITH 0
   MOSLOB=ROUND(M3MNEOPOREZP*MPROCPOR/100,2)-ROUND(MPOROSLOB*MPRESTOPA/100,2)
   
   MNETO2=DINUK+STIM1+STIM2+STIM3+TOPLI+REGRES+TERENSKI+FIKSNA+DOTACIJA+DINSUS
   *SET STEP ON 
   MBKZASTITA2=round(Mbkzastita*CASUK/MCZAKON,2)
   IF mNETO2>MBKZASTITA2
      mbkumanj=ROUND(mneto2*Mbkproc/100,2) 
   ELSE
      mbkumanj=0
   endif      
   IF ROUND(MNETO2*MCZAKON/CASUK,2)>MBKZASTITA
      IF (MNETO2-MBKUMANJ)<MBKZASTITA2
         MBKUMANJ=MNETO2-MBKZASTITA2
      ENDIF
   ENDIF   
   
   REPLACE BKUMANJ WITH MBKUMANJ
    
   MOSLOB2=ROUND(M3MNEOPOREZP*MPROCPOR/100,2)
    
   MOSNOV=ROUND(((MNETO2-MPRENETO-MBKUMANJ)-(MOSLOB))*100/(100-MPROCPOR-MDOPPROC),2)
   
   MOSNOV2=ROUND((MNETO2-MOSLOB2-MBKUMANJ)*100/(100-MPROCPOR-MDOPPROC),2)
   
   REPLACE BRUTO WITH MOSNOV2
   
   *---------OBRACUN SA NETA  KAD JE ZARADA MANJA OD MINIMALNE---------------
    if ROUND((bruto*CASUK/MCZAKON),2)< ROUND(MSDIN1*CASUK/MCZAKON,2)
   *    SET STEP ON 
       MDOPSOC2=ROUND(MSDIN1*CASUK/MCZAKON*MDOPPROC/100,0)         
       MNETODOP=MNETO2+MDOPSOC2-M3MNEOPOREZP
       MRAZLIKA=MNETODOP*MPROCPOR/(100-MPROCPOR)
       REPLACE BRUTO WITH ROUND(MNETO2+MDOPSOC2+MRAZLIKA,2)
*      MPOREZ2=(NETO2+MOSLOB2+MDOPSOC2)*MPROCPOR/100
*      MBRUTO2=NETO2+MDOPSOC2+MPOREZ2 
*      REPLACE BRUTO WITH MBRUTO2
*      replace dopsocf with ROUND(MOSNOV*MDOPPROCf,0)
*      REPLACE OSNOVICA WITH MOSNOV
*      REPLACE PROPISANA WITH ROUND(MMSDIN*MKOREKC,0)
*      REPLACE SKALA WITH 0        
   ENDIF 
   
   *-------KRAJ OBRACUN AKAD JE NETO MANJI OD MINIMALNE ZARADE----------------
   SELECT LDPARAM
   MISPLATA=ISPLATA
   SELECT LD

   POP KEY
ENDPROC




