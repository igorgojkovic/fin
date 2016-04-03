PARAMETERS ASTAMPA
PUBLIC acslovima
PUSH KEY CLEAR
USE &KFAKPODN IN 0  ALIAS FAKPODN
SELECT FAKPODN
GOTO 3
USE &KPDVKON IN 0 ALIAS PDVKON
DO IDEL WITH (KKOCKAX)

SELECT PDVKON   
COPY STRUCTURE TO &KKOCKA
USE
USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
APPEND BLANK

SELECT KAL

MBRKAL=BRKAL
set order to 1
LOCATE FOR BRKAL=MBRKAL

IF FOUND()
   amfakvred=0
   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      endif   
      MVELVRED=IZNOS
    
         MRABAT=RABAT
         MPOREZ=PLACPOR
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
      
      SELECT KAL
            
      amfakvred=amfakvred+velvred+porez-rabat
    
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


   *REPORT FORM KAL01MP FOR BRKAL=MBRKAL PREVIEW 
      mfile='KAL01MP'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov
   
   
SELECT KOCKA
USE
SELECT FAKPODN
USE
SELECT FAK
POP KEY

