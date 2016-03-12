USE &kfakamb IN 0 ALIAS fakamb EXCLU
SELECT fakamb
ZAP
APPEND BLANK
SELECT FAK
SET ORDER TO 1
LOCATE FOR BRKAL=MBRKAL
MVALDANA=AN0.VALDAN
MVALDAN='   '
MBRAMB=0
SELECT FAK
LOCATE FOR BRKAL=MBRKAL
IF FOUND()
   DO WHILE.NOT.EOF()
      IF BRKAL<>MBRKAL
         EXIT
      ENDIF
      IF koli<>0.or.vtxt<>' '
      MKOLI=KOLI
      MAMB1=ROB.AMB1
      MAMB1N=ROB.AMB1N
      MAMB2N=ROB.AMB2N
      MAMBKOL1=KOLI
      IF rob.ambkol<>0
         mambkol=ROUND(koli/rob.ambkol,0)
      ELSE
         mambkol=0   
      endif
      *---------dodajemo ambalazu--------------
      IF mamb1<>SPACE(5)
         MBRAMB=MBRAMB+1
         SELECT fakamb
         GO bottom
         mreca=mbramb
         IF mreca<10
            mmaMb1='amb1'+REPLICATE('0',2-LEN(ALLTRIM(STR(mreca,2,0))))+ALLTRIM(STR(mreca,2,0))
            mmaMb1n='amb1n'+REPLICATE('0',2-LEN(ALLTRIM(STR(mreca,2,0))))+ALLTRIM(STR(mreca,2,0))
            mmaMb2n='amb2n'+REPLICATE('0',2-LEN(ALLTRIM(STR(mreca,2,0))))+ALLTRIM(STR(mreca,2,0))
            mmaMbkol='ambkol'+REPLICATE('0',2-LEN(ALLTRIM(STR(mreca,2,0))))+ALLTRIM(STR(mreca,2,0))
            mmaMbkol1='ambkol1'+REPLICATE('0',2-LEN(ALLTRIM(STR(mreca,2,0))))+ALLTRIM(STR(mreca,2,0))
         ELSE
            mmaMb1='amb1'+ALLTRIM(STR(mreca,2,0))
            mmaMb1n='amb1n'+ALLTRIM(STR(mreca,2,0))
            mmaMb2n='amb2n'+ALLTRIM(STR(mreca,2,0))
            mmaMbkol='ambkol'+ALLTRIM(STR(mreca,2,0))
            mmaMbkol1='ambkol1'+ALLTRIM(STR(mreca,2,0))
         endif
         
         replace &mmamb1 WITH mamb1
         replace &mmamb1n WITH mamb1n
         replace &mmamb2n WITH mamb2n
         replace &mmambkol WITH MAMBKOL
         replace &mmambkol1 WITH MAMBKOL1
      endif
      *------kraj dodavanja ambalaze-----------
      
      endif
      SELECT FAK
      SKIP
   ENDDO
ENDIF         
SELECT FAK
SEEK MBRKAL
      IF ASTAMPA='EKR'
         *REPORT FORM FAK41 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') PREVIEW 
         
   mfile='FAK41'
   uslov="BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ')"
   DO printer_bullzip WITH mdata02,mfile,uslov
         
         
      ELSE
         REPORT FORM FAK41 FOR BRKAL=MBRKAL.AND.(KOLI<>0.OR.VTXT<>' ') TO PRINTER
      ENDIF
SELECT FAKAMB
USE
SELECT FAK