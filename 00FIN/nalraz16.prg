
*------------------UTVRDJIVANJE REZULTATA-------------------------
PROCEDURE NALREZUL6
PARAMETERS KONP,KONR,MDAT0,MDAT1,MBRNAL,MOPIS
PUSH KEY CLEAR

KKNALIZV=MDATA01+'\NALIZV'+OPERATER+'.DBF'
KKNALIZVX=MDATA01+'\NALIZV'+OPERATER+'.CDX'
KNALIZV=MDATA01+'\NALIZV'+OPERATER
KNALIZVX=MDATA01+'\NALIZV'+OPERATER


DO IDEL WITH (KKNALIZV)
DO IDEL WITH (KKNALIZVX)
DO IBAZE WITH KNALIZV,'NALIZV'
DO IIND WITH KNALIZV,'KONTO+DTOS(DATDOK)','BRNAL','DTOS(DATDOK)',;
             'KONTO+SIFRA+DTOS(DATDOK)','SIFRA+DTOS(DATDOK)','SIFRA+BRRAC+DTOS(DATDOK)'


   DO idel WITH (kkockax)   


SELECT NAL
SET RELATION TO

USE &KNALIZV EXCLU IN 0 ALIAS NALIZV

SELECT NAL
GO TOP
DO WHILE.NOT.EOF()
   IF DATDOK>=MDAT0.AND.DATDOK<=MDAT1
      IF (SUBSTR(KONTO,1,1)=KONR.OR.SUBSTR(KONTO,1,1)=KONP.OR.SUBSTR(KONTO,1,3)='721'.OR.SUBSTR(KONTO,1,3)='722'.OR.SUBSTR(KONTO,1,3)='723')
         NMKONTO=KONTO
         NMDUG=DUG
         NMPOT=POT
         NMDATDOK=DATDOK
         SELECT NALIZV
         APPEND BLANK
         REPLACE KONTO WITH NMKONTO
         REPLACE DUG WITH NMDUG
         REPLACE POT WITH NMPOT
         REPLACE DATDOK WITH NMDATDOK
         SELECT NAL
      ENDIF
   ENDIF      
   SKIP
ENDDO
SELECT NALIZV      
INDEX ON KONTO TAG KONTO
SET ORDER TO 1
TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT
ZAP
USE

USE &KKOCKA IN 0 ALIAS KOCKA EXCLU
SELECT KOCKA
*---------POSLOVNI PRIHODI I RASHODI-------------
GO TOP
MDUG710=0
MPOT710=0
M721=0
M722=0
M723=0
MDUG599=0
MPOT699=0
DO WHILE.NOT.EOF()
   *---------710-------------
   IF SUBSTR(KONTO,1,1)='5'
      MDUG599=MDUG599+DUG-POT
      IF SUBSTR(KONTO,1,3)='599'
         MDUG599=MDUG599-DUG+POT
      ENDIF      
   ENDIF

   IF SUBSTR(KONTO,1,1)='6'
      MPOT699=MPOT699+POT-DUG
      IF SUBSTR(KONTO,1,3)='699'
         MPOT699=MPOT699+POT-DUG
      ENDIF      
   ENDIF
   *----------721------------
   IF SUBSTR(KONTO,1,3)='721'
      M721=M721+DUG-POT
   ENDIF
   *----------722------------
   IF SUBSTR(KONTO,1,3)='722'
      M722=M722+DUG-POT
   ENDIF
   *----------723------------
   IF SUBSTR(KONTO,1,3)='723'
      M723=M723+DUG-POT
   ENDIF
   SKIP
ENDDO
SELECT KOCKA
USE



USE NALAP IN 0 ALIAS NALAP
SELECT NALAP


DO NALREZUL26 WITH '5990',0,MDUG599,MDAT1,MBRNAL,MOPIS
DO NALREZUL26 WITH '7100',MDUG599,0,MDAT1,MBRNAL,MOPIS
DO NALREZUL26 WITH '6990',MPOT699,0,MDAT1,MBRNAL,MOPIS
DO NALREZUL26 WITH '7100',0,MPOT699,MDAT1,MBRNAL,MOPIS




SELECT NALAP 
APPEND BLANK
   REPLACE KONTO WITH '7100'
   IF MPOT699>MDUG599
      REPLACE DUG WITH MPOT699-MDUG599
   ELSE
      REPLACE POT WITH MDUG599-MPOT699
   ENDIF
   M712=MPOT699-MDUG599
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS
  
   APPEND BLANK
   REPLACE KONTO WITH '7120'
   IF M712>0
      REPLACE POT WITH M712
   ELSE
      REPLACE DUG WITH -M712
   ENDIF         
   M720=M712
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS
      

   APPEND BLANK
   REPLACE KONTO WITH '7120'
   IF M712>0
      REPLACE DUG WITH M712
   ELSE
      REPLACE POT WITH -M712
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS

   APPEND BLANK
   REPLACE KONTO WITH '7200'
   IF M720>0
      REPLACE POT WITH M720
   ELSE
      REPLACE DUG WITH -M720
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS

          
   APPEND BLANK
   REPLACE KONTO WITH '7200'
   IF M720>0
      REPLACE DUG WITH M720
   ELSE
      REPLACE POT WITH -M720
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS
    
   M724=M720-M721-m722-M723
   
   APPEND BLANK
   REPLACE KONTO WITH '7210'
   IF M721>0
      REPLACE POT WITH M721
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS

   APPEND BLANK
   REPLACE KONTO WITH '7230'
   IF M723>0
      REPLACE POT WITH M723
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS



   APPEND BLANK
   REPLACE KONTO WITH '7220'
   IF M722>0
      REPLACE POT WITH M722
   ELSE
      REPLACE DUG WITH -M722   
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS


   APPEND BLANK
   REPLACE KONTO WITH '7240'
   IF M724>0
      REPLACE POT WITH M724
   ELSE
      REPLACE DUG WITH -M724
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS

   APPEND BLANK
   REPLACE KONTO WITH '7240'
   IF M724>0
      REPLACE DUG WITH M724
   ELSE
      REPLACE POT WITH -M724
   ENDIF         
   M341=M724
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS

   IF M341>0
      APPEND BLANK
      REPLACE KONTO WITH '3410'
      REPLACE POT WITH M341
   ELSE
      APPEND BLANK
      REPLACE KONTO WITH '3510'
      REPLACE DUG WITH -M341
   ENDIF         
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS




SELECT NALAP
USE
SELECT NAL
SET ORDER TO 3
SET RELATION TO BRNAL INTO NALBROJ ADDITIVE
SET RELATION TO KONTO INTO KONTo ADDITIVE
SET RELATION TO MP INTO MESTA ADDITIVE
SET RELATION TO MTR INTO MTR ADDITIVE

GO TOP
POP KEY
ENDPROC





PROCEDURE NALREZUL26
   PARAMETERS MKONTO,MDUG,MPOT,MDAT1,MBRNAL,MOPIS
PUSH KEY CLEAR
   
   APPEND BLANK
   REPLACE KONTO WITH MKONTO
   REPLACE DUG WITH MDUG
   REPLACE POT WITH MPOT
   DO NALREZUL36 WITH MDAT1,MBRNAL,MOPIS
   POP KEY
ENDPROC   


PROCEDURE NALREZUL36
   PARAMETERS MDAT1,MBRNAL,MOPIS
   PUSH KEY CLEAR

   replace brnal with MBRNAL
   REPLAC DATDOK WITH MDAT1
   REPLACE OPIS WITH MOPIS
   POP KEY
ENDPROC   

