PARAMETERS AGDE,ABROJ
PUSH KEY CLEAR
PUBLIC acslovima,amfakvred
DO IDEL WITH (KKOCKAX)


USE &KPDVKON IN 0 ALIAS PDVKON
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
   amfakvred=0
   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      endif   
      MVELVRED=VELVRED
      MRABAT=RABAT
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



USE &KFAKVAL IN 0 ALIAS FAKVAL EXCLU ORDER 2
SELECT FAKVAL

DELETE ALL
PACK

*SET STEP ON 
SELECT FAK
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
MVALDANA=AN0.VALDAN
MVALDAN='   '
SELECT FAK
LOCATE FOR BRKAL=MBRKAL
IF FOUND()
   DO WHILE.NOT.EOF()
      IF BRKAL<>MBRKAL
         EXIT
      ENDIF
      IF koli<>0.or.vtxt<>' '
      mrsif=rsif
      MKOLI=KOLI
      MVELCENA=VELCENA
      MVELVRED=VELVRED
      MRABPROC=RABPROC
      MRABAT=RABAT
      MRABPROC2=RABPROC2
      MRABAT2=RABAT2
      MPROCPOR=PROCPOR
      MPOREZ=POREZ
      MDATDOK=DATDOK
      DO CASE MVALDANA
         CASE MVALDANA=1
            MVALDAN=ROB.VALDAN1
         CASE MVALDANA=2
            MVALDAN=ROB.VALDAN2
         CASE MVALDANA=3
            MVALDAN=ROB.VALDAN3
         CASE MVALDANA=4
            MVALDAN=ROB.VALDAN4
         CASE MVALDANA=5
            MVALDAN=ROB.VALDAN5
         OTHERWISE
            MVALDAN='0'
      ENDCASE             
      REPLACE VALDAN WITH MVALDAN     
      MBRRAC=FAKG.BRRAC
      MSIFRA=FAKG.SIFRA
      MIZNOS=VELVRED+POREZ-RABAT-RABAT2
      MGRUPA=ROB.GRUPA
      MGRUPA1=ROB.GRUPA1
      MGRUPA2=ROB.GRUPA2
      MTRANSPAK=ROB.TRANSPAK
      MUNPAK=ROB.UNPAK
      MKOMPAK=ROB.KOMPAK
      MMAGACIN=ROB.MAGACIN
      MMALCENA=MALCENA
      MMALVRED=MALVRED
      MVALUTA=MDATDOK+VAL(ALLTRIM(MVALDAN))
      MBRUTO=BRUTO
      MNETO=NETO
      MPODRSIF=ROB.PODRSIF
      MZADKOLI=ZADKOLI
      SELECT FAKVAL
      APPEND BLANK
      replace rsif with mrsif
      REPLACE BRKAL WITH MBRKAL
      REPLACE KOLI WITH MKOLI
      REPLACE VELCENA WITH MVELCENA
      REPLACE VELVRED WITH MVELVRED
      REPLACE RABPROC WITH MRABPROC
      REPLACE RABAT WITH MRABAT
      REPLACE RABPROC2 WITH MRABPROC2
      REPLACE RABAT2 WITH MRABAT2
      REPLACE PROCPOR WITH MPROCPOR
      REPLACE POREZ WITH MPOREZ
      REPLACE DATDOK WITH MDATDOK
      REPLACE VALDAN WITH MVALDAN
      M0BRRAC=REPLICATE('0',6-LEN(ALLTRIM(SUBSTR(BRKAL,1,6))))+ALLTRIM(BRKAL)
      MMSIFRA=REPLICATE('0',5-LEN(ALLTRIM(SUBSTR(MSIFRA,1,5))))+ALLTRIM(MSIFRA)
      MBRRAC=ALLTRIM(M0BRRAC)+MMSIFRA+ALLTRIM(VALDAN)
      REPLACE BRRAC WITH ALLTRIM(M0BRRAC)+'-'+MMSIFRA+'-'+MVALDAN
      REPLACE VALUTA WITH MVALUTA
      REPLACE IZNOS WITH MIZNOS
      REPLACE GRUPA WITH MGRUPA
      REPLACE GRUPA1 WITH MGRUPA1
      REPLACE GRUPA2 WITH MGRUPA2
      REPLACE TRANSPAK WITH MTRANSPAK
      REPLACE UNPAK WITH MUNPAK
      REPLACE KOMPAK WITH MKOMPAK
      REPLACE MALCENA WITH MMALCENA
      REPLACE MALVRED WITH MMALVRED
      REPLACE MAGACIN WITH MMAGACIN
      REPLACE BRUTO WITH MBRUTO
      REPLACE NETO WITH MNETO
      REPLACE PODRSIF WITH MPODRSIF
      REPLACE ZADKOLI WITH MZADKOLI
      endif
      SELECT FAK
      SKIP
   ENDDO
ENDIF         

SELECT FAK         
LOCATE FOR BRKAL=MBRKAL
DO FAKPRNPUBLIC
SELECT FAK
SET RELATION TO
SELECT FAKVAL
SET RELATION TO BRKAL INTO FAKG  ADDITIVE
SET RELATION TO RSIF INTO ROB ADDITIVE
SELECT fak
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
IF FOUND()
   amfakvred=0
   DO while.not.eof()
      IF brkal<>mbrkal
         EXIT
      endif   
      amfakvred=amfakvred+velvred+porez-rabat-RABAT2+ZAOKRUZ
      SKIP
   enddo   
   SET PROCEDURE TO slovima
   acslovima=brojuslova(amfakvred)
   SET PROCEDURE TO 
ELSE
   acslovima='nema'   
ENDIF
SELECT fakval
GO TOP
IF ABROJ=1
   IF AGDE=1
      REPORT FORM FAK2DB FOR BRKAL=MBRKAL TO PRINTER
   ELSE
      *REPORT FORM FAK2DB FOR BRKAL=MBRKAL PREVIEW
      mfile='FAK2DB'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov
      
   ENDIF
ELSE
   IF AGDE=1
      REPORT FORM FAK2DBMARZA FOR BRKAL=MBRKAL TO PRINTER
   ELSE
      *REPORT FORM FAK2DBMARZA FOR BRKAL=MBRKAL PREVIEW
      mfile='FAK2DBMARZA'
      uslov="BRKAL=MBRKAL"
      DO printer_bullzip WITH mdata02,mfile,uslov
   ENDIF
ENDIF   
SELECT FAKVAL
SET RELATION TO
USE
SELECT KOCKA 
USE
SELECT FAK
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
SET ORDER TO 
SET RELATION TO BRKAL INTO FAKG  ADDITIVE
SET RELATION TO RSIF INTO ROB ADDITIVE
POP KEY