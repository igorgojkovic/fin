TEHVIRME.GRD0.RECORDSOURCE=''
SELECT OTVIRME
SET RELATION TO
IF RECCOUNT()<1
   MAREC=0
ELSE
   MAREC=RECNO()   
ENDIF
SET ORDER TO 
SELECT OTG
SET ORDER TO 1
DO FORM TEHREG00
IF MAREC=0
   SELECT OTG
   MSIFRA=SIFRA
   MPREZIME=PREZIME
   MIME=IME
   MMESTO=MESTO
   MZAPR=ZAPR
   USE otgrad IN 0 
   SELECT otgrad
   DO FORM tehgrad
   SELECT otgrad
   MZSIFRA=zsifra
   MPOZIVO=POZIVO
   use
   SELECT OTZAPR
   SET ORDER TO 1
   SEEK MZSIFRA
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF ZSIFRA<>MZSIFRA
            EXIT
         ENDIF
         IF VAL(MZAPR)>=VAL(ZAPR0).AND.VAL(MZAPR)<=VAL(ZAPR1)
            MGRAD=GRAD
            MIZNOS=IZNOS
            MNAZZ=NAZZ
            MZIRORAC=ZIRORAC
            SELECT OTG
            SEEK MSIFRA
            IF FOUND()
               MPREZIME=PREZIME
               MIME=IME
               MOZNAKA=OZNAKA
               MSASIJA=SASIJA
               MDATUM=DATUM
               MPREZIME=PREZIME
               MIME=IME
               MULICA=ULICA
               MKUCBR=KUCBR
               MMESTO=MESTO
               MGRUPA='2'
               SELECT OTVIRME
               APPEND BLANK
               REPLACE SIFRA WITH MSIFRA
               REPLACE ZSIFRA WITH MZSIFRA
               IF LEN(ALLTRIM(PREZIME))<>0
                  REPLACE SVRHA WITH 'REG.VOZILA NA IME    '+ALLTRIM(MPREZIME)+' '+ALLTRIM(MIME)+SPACE(28-LEN(ALLTRIM(MPREZIME))-LEN(ALLTRIM(MIME)))+' '+MOZNAKA
               ELSE
                  REPLACE SVRHA WITH 'REG.VOZILA NA IME    '+ALLTRIM(MPREZIME)+' '+ALLTRIM(MIME)+SPACE(28)+' '+MOZNAKA               
               ENDIF
               REPLACE DATDOK WITH MDATUM
               REPLACE PREZIME WITH MPREZIME
               REPLACE IME WITH MIME
               REPLACE ULICA WITH MULICA
               REPLACE KUCBR WITH MKUCBR
               REPLACE OZNAKA WITH MOZNAKA
               REPLACE DUG WITH MIZNOS
               REPLACE ZIRORAC WITH MZIRORAC
               IF MOZNAKA<>SPACE(20)
                  REPLACE SVRHA WITH MNAZZ+' '+ALLTRIM(MOZNAKA)
               ELSE
                  REPLACE SVRHA WITH MNAZZ+' '+ALLTRIM(MSASIJA)
               ENDIF
               REPLACE POZIVO WITH MPOZIVO
               replace modelo with '97'
               IF SUBSTR(MNAZZ,1,8)='POS.REP.'.or. SUBSTR(MNAZZ,1,5)='POREZ'
                  REPLACE NAZRAC WITH 'REPUBLIKA SRBIJA '
               ELSE
                  REPLACE NAZRAC WITH 'S.O.'+MGRAD
               ENDIF
               REPLACE MESTO WITH MMESTO
               REPLACE SIF1 WITH '153'
               REPLACE GRUPA WITH '2'
            ENDIF
            SELECT OTZAPR
         ENDIF
         SKIP
      ENDDO
   ENDIF
   SELECT OTVIRME
   GO TOP
   DO WHILE.NOT.EOF()
      DO TEHOBRACPROV
      SKIP
   ENDDO
ENDIF   
SELECT OTVIRME
GO TOP
TEHVIRME.GRD0.RECORDSOURCE='OTVIRME'
TEHVIRME.GRD0.REFRESH