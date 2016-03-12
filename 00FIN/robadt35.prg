SET PROCEDURE TO PREGLED
PUSH KEY CLEAR
  DO ROPOC WITH 'ROB'
  SET ORDER TO
  GO TOP
  *"1";"ccc bbb aaa ";"104.51";"0";"8691111111111";;"0";"4";

  MM='"PLU";"Name";"Prc";"TypePrc";"BarCode";"BarCode2";"ConnectedPLU";"VAT";'
  DO ROUZMI WITH MM,'ROB'
  SELECT ROB
  SET ORDER TO 1
  mbrojac=0
  DO WHILE.NOT.EOF()
     IF VAZI<>' '
     mbrojac=mbrojac+1
        IF MALCENA<>0.AND.NAZ<>SPACE(30)
           MPLU=ALLTRIM(STR(mbrojac,4,0))
           MNAME=SUBSTR(NAZ,1,30)
           MBAR=SUBSTR(BARKOD,1,14)
           MPRICE=ALLTRIM(STR(MALCENA,12,2))
           MPRCTYPE='0'
           MSTN='1'
           MGRP='0'
           DO CASE TARIFA
           CASE TARIFA=SPACE(6).OR.TOBVEZNIK='N'
              MVAT='1'
           CASE ALLTRIM(TARIFA)=TOSTOPA
              MVAT='4'
           CASE ALLTRIM(TARIFA)=TNSTOPA
              MVAT='5'
           OTHERWISE
              MVAT='1'   
           ENDCASE
           MM='"'+ALLTRIM(MPLU)+'"'+';'+'"'+ALLTRIM(MNAME)+'"'+';'+'"'+ALLTRIM(MPRICE)+'"'+';'+'"'+ALLTRIM(MPRctype)+'"'+';'+'"'+ALLTRIM(MBAR)+'"'+';'+'"'+ALLTRIM(MBAR)+'"'+';'+'"0"'+';'+'"'+ALLTRIM(MVAT)+'";'
           DO ROUZMI WITH MM,'ROB'
           SELECT ROB
        ENDIF
     ENDIF
     SELECT ROB
     SKIP
  ENDDO
SET PROCEDURE TO 
SELECT PREGLED
DO  FORM PREGLED
SELECT PREGLED
USE
SELECT ROB
POP KEY