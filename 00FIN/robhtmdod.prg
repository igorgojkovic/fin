PARAMETERS MaGRUPA,MaGRUPA1,MaGRUPA2,MaGRUPA3,MaGRUPA4,MaGRUPA5,MaPROIZV
PUSH KEY CLEAR
SELECT ROB
SET ORDER TO 1
USE AATM IN 0 
SELECT AATM
SET ORDER TO 
GO TOP
DO WHILE.NOT.EOF()
   IF FLAGER='D'

   IF RECNO()<16

   IF SIFARNIK=' '
      MREC=ALLTRIM(STR(RECNO(),2,0))
      KROB='ROB'
   ELSE   
      MREC=ALLTRIM(STR(RECNO(),2,0))
      KROB='MROB'+MREC
   ENDIF      
   
   if tfpossif='D'.AND.TNEZAJEDNO<>'D'

      KROB='ROB'+'M'+MREC
   ENDIF     
   kKROB=krOB+'.dbf'   
   IF FILE(KKROB)
         USE &KROB IN 0 ALIAS MMROB ORDER 1
         SELECT MMROB
         DO WHILE.NOT.EOF()
            IF GRUPA=MaGRUPA.OR.MaGRUPA=SPACE(3)
            IF GRUPA1=MaGRUPA1.OR.MaGRUPA1=SPACE(3)
            IF GRUPA2=MaGRUPA2.OR.MaGRUPA2=SPACE(3)
            IF GRUPA3=MaGRUPA3.OR.MaGRUPA3=SPACE(3)
            IF GRUPA4=MaGRUPA4.OR.MaGRUPA4=SPACE(3)
            IF GRUPA5=MaGRUPA5.OR.MaGRUPA5=SPACE(3)
            IF PROIZV=MaPROIZV.OR.MaPROIZV=SPACE(5)
         
            MRSIF=RSIF
            MKOL=KOL
            MMALCENA=MALCENA
            MNAZ=NAZ
            MMKOL='KOL'+MREC
            MULAZM=ULAZM
            MIZLAZM=IZLAZM
            MPODNAZIV=PODNAZIV
            MBARKOD=BARKOD
            MPODROB=PODROB
            MGRUPA=GRUPA
            MGRUPA1=GRUPA1
            MGRUPA2=GRUPA2
            MGRUPA3=GRUPA3
            MGRUPA4=GRUPA4
            MGRUPA5=GRUPA5
            MSIFRA=SIFRA
            MPROIZV=PROIZV
            mpolica=polica
            SELECT ROB
            SEEK MRSIF
            IF.NOT.FOUND()
               APPEND BLANK
               REPLACE RSIF WITH MRSIF
               REPLACE MALCENA WITH MMALCENA
               REPLACE NAZ WITH MNAZ
               REPLACE &MMKOL WITH MKOL
               REPLACE PODNAZIV WITH MPODNAZIV
               REPLACE ULAZM WITH ULAZM+MULAZM
               REPLACE IZLAZM WITH IZLAZM+MIZLAZM
               REPLACE BARKOD WITH MBARKOD
               REPLACE PODROB WITH MPODROB
               REPLACE GRUPA WITH MGRUPA
               REPLACE GRUPA1 WITH MGRUPA1
               REPLACE GRUPA2 WITH MGRUPA2
               REPLACE GRUPA3 WITH MGRUPA3
               REPLACE GRUPA4 WITH MGRUPA4
               REPLACE GRUPA5 WITH MGRUPA5
               REPLACE SIFRA WITH MSIFRA
               REPLACE PROIZV WITH MPROIZV
               replace polica WITH mpolica
            ELSE
               REPLACE &MMKOL WITH MKOL
               REPLACE ULAZM WITH ULAZM+MULAZM
               REPLACE IZLAZM WITH IZLAZM+MIZLAZM
            ENDIF   
         endif
         endif
         endif
         endif
         endif
         endif
         endif
            SELECT MMROB
            SKIP
         ENDDO
         SELECT MMROB
         USE
      ENDIF         
   ENDIF
   ENDIF
   SELECT AATM  
   SKIP
ENDDO
SELECT AATM
USE
SELECT ROB
REPLACE ALL KOLSVE WITH KOL1+KOL2+KOL3+KOL4+KOL5+KOL6+KOL7+KOL8+kol9+kol10+kol11+kol12+kol13+kol14+kol15+kol16+kol17+kol18+kol19+kol20+kol21+kol22+kol23+kol24+kol25+kol26+kol27+kol28+kol29+kol30+kol31+kol32+kol33+kol34+kol35+kol36+kol37+kol38+kol39+kol40
*DELETE ALL FOR KOLSVE=0
*PACK
*---prenos vp
USE AATV IN 0 
SELECT AATV
LOCATE FOR FLAGER='D'
IF FOUND()
   IF SIFARNIK=' '
      MREC=ALLTRIM(STR(RECNO(),2,0))
      KROB='ROB'
   ELSE   
      MREC=ALLTRIM(STR(RECNO(),2,0))
      KROB='ROB'+MREC
   ENDIF    
   
   If tfpossif='D'.AND.TNEZAJEDNO<>'D'   
      KROB='ROB'+'V'+MREC
   ENDIF     
   kKROB=krOB+'.dbf'
   
   IF FILE(kKROB)
         USE &KROB IN 0 ALIAS MMROB ORDER 1
         SELECT MMROB
         DO WHILE.NOT.EOF()
            IF GRUPA=MaGRUPA.OR.MaGRUPA=SPACE(3)
            IF GRUPA1=MaGRUPA1.OR.MaGRUPA1=SPACE(3)
            IF GRUPA2=MaGRUPA2.OR.MaGRUPA2=SPACE(3)
            IF GRUPA3=MaGRUPA3.OR.MaGRUPA3=SPACE(3)
            IF GRUPA4=MaGRUPA4.OR.MaGRUPA4=SPACE(3)
            IF GRUPA5=MaGRUPA5.OR.MaGRUPA5=SPACE(3)
            IF PROIZV=MaPROIZV.OR.MaPROIZV=SPACE(5)
            MRSIF=RSIF
            MKOL=KOL
            MMALCENA=MALCENA
            MNAZ=NAZ
            MMKOL='KOL33'
            MULAZM=ULAZ
            MIZLAZM=IZLAZ
            MPODNAZIV=PODNAZIV
            MBARKOD=BARKOD
            MPODROB=PODROB
            MGRUPA=GRUPA
            MGRUPA1=GRUPA1
            MGRUPA2=GRUPA2
            MGRUPA3=GRUPA3
            MGRUPA4=GRUPA4
            MGRUPA5=GRUPA5
            MSIFRA=SIFRA
            MPROIZV=PROIZV
            mpolica=polica
            SELECT ROB
            SEEK MRSIF
            IF.NOT.FOUND()
               APPEND BLANK
               REPLACE RSIF WITH MRSIF
               REPLACE MALCENA WITH MMALCENA
               REPLACE NAZ WITH MNAZ
               REPLACE &MMKOL WITH MKOL
               REPLACE PODNAZIV WITH MPODNAZIV
               REPLACE ULAZM WITH ULAZM+MULAZM
               REPLACE IZLAZM WITH IZLAZM+MIZLAZM
               REPLACE BARKOD WITH MBARKOD
               REPLACE PODROB WITH MPODROB
               REPLACE GRUPA WITH MGRUPA
               REPLACE GRUPA1 WITH MGRUPA1
               REPLACE GRUPA2 WITH MGRUPA2
               REPLACE GRUPA3 WITH MGRUPA3
               REPLACE GRUPA4 WITH MGRUPA4
               REPLACE GRUPA5 WITH MGRUPA5
               REPLACE SIFRA WITH MSIFRA
               REPLACE PROIZV WITH MPROIZV
               replace polica WITH mpolica
            ELSE
               REPLACE &MMKOL WITH MKOL
               REPLACE ULAZM WITH ULAZM+MULAZM
               REPLACE IZLAZM WITH IZLAZM+MIZLAZM
            ENDIF   
            ENDIF
            ENDIF
            ENDIF
            ENDIF
            ENDIF
            ENDIF
            ENDIF
            SELECT MMROB
            SKIP
         ENDDO
         SELECT MMROB
         USE
      ENDIF         
   ENDIF
SELECT AATV
USE
SELECT ROB
REPLACE ALL KOLSVE WITH KOL1+KOL2+KOL3+KOL4+KOL5+KOL6+KOL7+KOL8+kol9+kol10+kol11+kol12+kol13+kol14+kol15+kol16+kol17+kol18+kol19+kol20+kol21+kol22+kol23+kol24+kol25+kol26+kol27+kol28+kol29+kol30+kol31+kol32+kol33+kol34+kol35+kol36+kol37+kol38+kol39+kol40
POP KEY