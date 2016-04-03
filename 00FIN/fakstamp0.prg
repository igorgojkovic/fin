PARAMETERS ASTAMPA,AVRSTA  
PUSH KEY CLEAR
SELECT FAK
MDATDOK=DTOS(DATDOK)
mputnik=FAKG.putnik
IF fakg.napomenag=SPACE(80)
IF fakg.rnal<>SPACE(12)
   replace fakg.napomenag WITH 'nalog proizvodnje '+fakg.rnal 
endif
endif
USE putnici IN 0
SELECT putnici
LOCATE FOR putnik=mputnik
IF FOUND()
   mputime=ime
ELSE
   mputime=''
endif      
use
SELECT KURS
SEEK MDATDOK
IF FOUND()
   TKURS=KURS
ELSE
   TKURS=1
ENDIF      
SELECT FAK
PUBLIC acslovima,AMFAKVRED,AOSN18,APDV18,AOSN8,APDV8,AAVANAS,AMALVRED
USE &KPDVKON IN 0 ALIAS PDVKON
DO IDEL WITH (KKOCKAX)
SELECT PDVKON   
COPY STRUCTURE TO &KKOCKA
USE
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
APPEND BLANK
SELECT FAK
MBRKAL=BRKAL
set order to 1
LOCATE FOR BRKAL=MBRKAL

IF FOUND()
   AAVANS=FAKG.AVANS
   AOSN18=FAKG.AVANS18
   AOSN8=FAKG.AVANS8
   APDV18=FAKG.AVANSP18
   APDV8=FAKG.AVANSP8
   amfakvred=0
   AMALVRED=0
   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      endif   
      AMALVRED=AMALVRED+MALVRED
      MVELVRED=VELVRED
      MRABAT=RABAT+RABAT2
      MPOREZ=POREZ
      mprocpor=procpor
      SELECT KOCKA
      IF MPROCPOR=VAL(TOSTOPA)
         IF mporez<>0
         REPLACE OSN18 WITH OSN18+MVELVRED-MRABAT
         REPLACE PDV18 WITH PDV18+MPOREZ
         endif
      ENDIF
      IF MPROCPOR=VAL(TNSTOPA)
         IF mporez<>0
         REPLACE OSN8 WITH OSN8+MVELVRED-MRABAT
         REPLACE PDV8 WITH PDV8+MPOREZ
         endif
      ENDIF
      
      SELECT FAK
      IF ROB.TRANSPAK>0
          replace paket WITH ROUND(koli/ROB.TRANSPAK,2)
      endif             
      amfakvred=amfakvred+velvred+porez-rabat+ZAOKRUZ-RABAT2
    
      SKIP
   enddo   
   PUBLIC acslovima
   SET PROCEDURE TO slovima
   acslovima=brojuslova(amfakvred)
   SET PROCEDURE TO 
ELSE
   acslovima='nema'   
ENDIF
LOCATE FOR BRKAL=MBRKAL
DO FAKPRNPUBLIC
*SET REPORTBEHAVIOR 80
   DO CASE AVRSTA
   
   
   CASE AVRSTA=1
   *SET STEP ON 
      IF ASTAMPA='EKR'
         mfile='fak01'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')" 
         DO printer_bullzip WITH mdata02,mfile,uslov
         *REPORT FORM FAK01 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
      ELSE
         REPORT FORM FAK01 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=2
      IF ASTAMPA='EKR'
         *REPORT FORM FAK02 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK02'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
         
      ELSE
         REPORT FORM FAK02 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=3
      IF ASTAMPA='EKR'
         *REPORT FORM FAK03 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK03'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK03 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=4
      IF ASTAMPA='EKR'
         *REPORT FORM FAK04 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 

         mfile='FAK04'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK04 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=5
      DO IDEL WITH(KKOCKAX2) 
      SELECT FAK
      COPY STRUCTURE TO &KKOCKA2
      USE &KKOCKA2 IN 0 ALIAS KOCKA2 EXCLU
      SELECT FAK
      MBRKAL=BRKAL
      SET ORDER TO  1
      LOCATE FOR BRKAL=MBRKAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            SCATTER NAME POLJA
            SELECT KOCKA2
            APPEND BLANK
            GATHER NAME POLJA
            SELECT FAK   
            SKIP
         ENDDO   
      ENDIF    
      SELECT KOCKA2
      INDEX ON MAGACIN TAG MAGACIN
      SET ORDER TO 1
      SET RELATION TO BRKAL INTO FAKG  ADDITIVE
      SET RELATION TO RSIF INTO ROB ADDITIVE
      IF ASTAMPA='EKR'
         *REPORT FORM FAK05 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK05'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK05 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
      SELECT KOCKA2
      SET RELATION TO
      USE
      SELECT FAK
LOCATE FOR BRKAL=MBRKAL
      SET ORDER TO 
      
   CASE AVRSTA=6
      IF ASTAMPA='EKR'
         REPORT FORM FAK06 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK06'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK06 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=7
      IF ASTAMPA='EKR'
         *REPORT FORM FAK07 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         
         mfile='FAK07'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
         
      ELSE
         REPORT FORM FAK07 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=8
      IF ASTAMPA='EKR'
         *REPORT FORM FAK08 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK08'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK08 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=9
      IF ASTAMPA='EKR'
         *REPORT FORM FAK09 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK09'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK09 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=10
      IF ASTAMPA='EKR'
         *REPORT FORM FAK10 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK10'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK10 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=11
      IF ASTAMPA='EKR'
         *REPORT FORM FAK11 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK11'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK11 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
 CASE AVRSTA=12
      IF ASTAMPA='EKR'
         *REPORT FORM FAK12 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK12'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK12 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
CASE AVRSTA=13
      IF ASTAMPA='EKR'
         *REPORT FORM FAK13 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK13'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK13 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=14
      IF ASTAMPA='EKR'
         *REPORT FORM FAK14 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK14'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK14 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=15
      IF ASTAMPA='EKR'
         *REPORT FORM FAK15 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK15'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK15 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=16
      IF ASTAMPA='EKR'
         *REPORT FORM FAK16 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK16'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK16 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF       
CASE AVRSTA=17
      IF ASTAMPA='EKR'
         *REPORT FORM FAK17 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK17'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK17 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF                  
CASE AVRSTA=18
      IF ASTAMPA='EKR'
         *REPORT FORM FAK18 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK18'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK18 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF     
CASE AVRSTA=19
      IF ASTAMPA='EKR'
         *REPORT FORM FAK19 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK19'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK19 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF     
CASE AVRSTA=22
      IF ASTAMPA='EKR'
         *REPORT FORM FAK22 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK22'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
       
         
      ELSE
         REPORT FORM FAK22 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF                              
CASE AVRSTA=21
      IF ASTAMPA='EKR'
         *REPORT FORM FAK21 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK21'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK21 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF                                    
CASE AVRSTA=23
      IF ASTAMPA='EKR'
         REPORT FORM FAK23 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK23'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov


      ELSE
         REPORT FORM FAK23 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF   
CASE AVRSTA=24
      IF ASTAMPA='EKR'
         *REPORT FORM FAK24 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK24'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK24 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF   
CASE AVRSTA=25
      IF ASTAMPA='EKR'
         *REPORT FORM FAK25 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK25'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK25 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
CASE AVRSTA=28
      IF ASTAMPA='EKR'
         *REPORT FORM FAK28 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK28'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK28 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=29
      IF ASTAMPA='EKR'
         *REPORT FORM FAK29 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK29'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK29 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=30
      IF ASTAMPA='EKR'
         *REPORT FORM FAK30 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK30'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK30 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=31
      IF ASTAMPA='EKR'
         *REPORT FORM FAK31 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK31'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK31 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF 
 CASE AVRSTA=35
      IF ASTAMPA='EKR'
         *REPORT FORM FAK35 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK35'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK35 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
 CASE AVRSTA=36
      DO FORM FAKPOTI
      USE FAKPOTI IN 0
      SELECT FAK 
      IF ASTAMPA='EKR'
         *REPORT FORM FAK36 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK36'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK36 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF           
      SELECT FAKPOTI
      USE
      SELECT FAK
      
   CASE AVRSTA=37
      IF ASTAMPA='EKR'
         *REPORT FORM FAK37 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK37'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK37 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
CASE AVRSTA=38
      IF ASTAMPA='EKR'
         *REPORT FORM FAK38 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK38'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK38 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF 
   CASE AVRSTA=39
      IF ASTAMPA='EKR'
         *REPORT FORM FAK039 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK039'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK039 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=41
      DO fakamb41
   CASE AVRSTA=42
      IF ASTAMPA='EKR'
         *REPORT FORM FAK42 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK42'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK42 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=43
      IF ASTAMPA='EKR'
         *REPORT FORM FAK43 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK43'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK43 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF
   CASE AVRSTA=44
      IF ASTAMPA='EKR'
         *REPORT FORM FAK44 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK44'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov


      ELSE
         REPORT FORM FAK44 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF      
  CASE AVRSTA=45
      IF ASTAMPA='EKR'
         *REPORT FORM FAK45 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK45'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK45 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF            
  CASE AVRSTA=46
      IF ASTAMPA='EKR'
         *REPORT FORM FAK46 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK46'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK46 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF             
   CASE AVRSTA=47
      IF ASTAMPA='EKR'
         *REPORT FORM FAK47 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK47'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
      ELSE
         REPORT FORM FAK47 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF        
   CASE AVRSTA=48
      IF ASTAMPA='EKR'
         *REPORT FORM FAK48 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK48'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
      ELSE
         REPORT FORM FAK48 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF              
   CASE AVRSTA=49
      IF ASTAMPA='EKR'
         *REPORT FORM FAK49 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK49'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK49 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=50
      IF ASTAMPA='EKR'
         *REPORT FORM FAK50 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK50'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK50 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF      
   CASE AVRSTA=51
      IF ASTAMPA='EKR'
         *REPORT FORM FAK51 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK51'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK51 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF      
    CASE AVRSTA=52
      IF ASTAMPA='EKR'
         *REPORT FORM FAK52 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK52'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK52 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
    CASE AVRSTA=53
      IF ASTAMPA='EKR'
         *REPORT FORM FAK53 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK53'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK53 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=54
      IF ASTAMPA='EKR'
         *REPORT FORM FAK54 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK54'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK54 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=61
      IF ASTAMPA='EKR'
         *REPORT FORM FAK61 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK61'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK61 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF      
   CASE AVRSTA=62
      IF ASTAMPA='EKR'
         *REPORT FORM FAK62 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK62'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK62 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF  
   CASE AVRSTA=63
      IF ASTAMPA='EKR'
         *REPORT FORM FAK63 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK63'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK63 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF     
   CASE AVRSTA=64
      IF ASTAMPA='EKR'
         *REPORT FORM FAK64 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK64'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK64 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF           
   CASE AVRSTA=65
      IF ASTAMPA='EKR'
         *REPORT FORM FAK65 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK65'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK65 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF           
   CASE AVRSTA=66
      IF ASTAMPA='EKR'
         *REPORT FORM FAK66 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK66'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK66 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=67
     USE &Kfakpodn2 IN 0 ALIAS fakpodn2
      IF ASTAMPA='EKR'
         *REPORT FORM FAK67 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK67'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK67 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
      SELECT fakpodn2
      use
   CASE AVRSTA=69
      IF ASTAMPA='EKR'
         *REPORT FORM FAK69 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK69'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK69 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=70
      IF ASTAMPA='EKR'
         *REPORT FORM FAK06dev3dec FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK06dev3dec'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK06dev3dec FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
   CASE AVRSTA=72
      DO IDEL WITH(KKOCKAX2) 
      SELECT FAK
      COPY STRUCTURE TO &KKOCKA2
      USE &KKOCKA2 IN 0 ALIAS KOCKA2 EXCLU
      SELECT FAK
      MBRKAL=BRKAL
      SET ORDER TO  1
      LOCATE FOR BRKAL=MBRKAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            SCATTER NAME POLJA
            SELECT KOCKA2
            APPEND BLANK
            GATHER NAME POLJA
            SELECT FAK   
            SKIP
         ENDDO   
      ENDIF    
     
      USE MTR IN 0 ORDER 1
      SELECT KOCKA2
      INDEX ON MAGACIN TAG MAGACIN
      SET ORDER TO 1
      SET RELATION TO BRKAL INTO FAKG  ADDITIVE
      SET RELATION TO RSIF INTO ROB ADDITIVE
      PUBLIC MMTR,MTRNAZIV,midbroj
      mmtr=fakg.mtr
      SELECT mtr
      LOCATE FOR mtr=mmtr
      IF FOUND()
         mtrnaziv=mtr.naziv
         midbroj=mtr.idbroj
      ELSE
         mtrnaziv=''
         midbroj=''
      ENDIF   
      SELECT MTR 
      USE
      SELECT KOCKA2
      IF ASTAMPA='EKR'
         *REPORT FORM FAK72 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK72'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
      ELSE
         REPORT FORM FAK72 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
      SELECT KOCKA2
      SET RELATION TO
      USE
      SELECT FAK
LOCATE FOR BRKAL=MBRKAL
      SET ORDER TO 
CASE AVRSTA=73
      IF ASTAMPA='EKR'
         *REPORT FORM FAK73 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK73'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK73 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF
      
CASE AVRSTA=74
      IF ASTAMPA='EKR'
         *REPORT FORM FAKmini FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAKmini'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAKmini FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER      
      ENDIF
CASE AVRSTA=75
      IF ASTAMPA='EKR'
         *REPORT FORM FAK06poreklo FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         mfile='FAK06poreklo'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
         DO printer_bullzip WITH mdata02,mfile,uslov
         
      ELSE
         REPORT FORM FAK06poreklo FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF

CASE AVRSTA=76
   *SET STEP ON 
      IF ASTAMPA='EKR'
         mfile='fak01USL'
         uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')" 
         DO printer_bullzip WITH mdata02,mfile,uslov
         *REPORT FORM FAK01 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
      ELSE
         REPORT FORM FAK01USL FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF



   ENDCASE      

SELECT KOCKA
USE
SELECT FAK
POP KEY
