SET PROCEDURE TO PREGLED
PUSH KEY CLEAR
  SELECT ROB
  SET ORDER TO 2
  GO TOP
  DO IDEL WITH (KKOCKAX)
  DO IDEL WITH (KKOCKAX2)
  COPY TO &KKOCKA FOR VAZI<>' '.AND.NAZ<>SPACE(30).AND.MALCENA<>0
  USE &KKOCKA IN 0 ALIAS KOCKA EXCLUSIVE
  SELECT KOCKA
  GO TOP
  DO WHILE.NOT.EOF()
     IF BARKOD=SPACE(20)
        REPLACE BARKOD WITH REPLICATE('0',5-LEN(ALLTRIM(SUBSTR(RSIF,1,5))))+ALLTRIM(SUBSTR(RSIF,1,5))
     ENDIF
     SKIP
  ENDDO
  SORT ON BARKOD TO &KKOCKA2
  DELETE ALL
PACK

  APPEND FROM &KKOCKA2
  DO ROPOC WITH 'KOCKA'
  GO TOP
  BROJAC=1
  DO WHILE.NOT.EOF()
           MPLU=ALLTRIM(STR(BROJAC,4,0)) 
           MPRICE1=ALLTRIM(STR(MALCENA,12,2))
           MNAME=SUBSTR(NAZ,1,14)
           MCENA=INT(MALCENA)
           MCENA2=ROUND((MALCENA-MCENA)*100,0)
           IF LEN(ALLTRIM(STR(MCENA2,2,0)))=1
              MCENA2='00'
              MPRICE=ALLTRIM(STR(MCENA,10,0))+','+MCENA2
           ELSE
              MPRICE=ALLTRIM(STR(MCENA,10,0))+','+ALLTRIM(STR(MCENA2,2,0))
           ENDIF
           DO CASE TARIFA
           CASE TARIFA=SPACE(6)
              MVAT='1'
           CASE ALLTRIM(TARIFA)=TOSTOPA
              MVAT='4'
           CASE ALLTRIM(TARIFA)=TNSTOPA
              MVAT='5'
           OTHERWISE
              MVAT='1'   
           ENDCASE
           MBAR=ALLTRIM(BARKOD)
           MJED='1'
           MVISINA='0'
           MAKTIVAN='1'
           MM=ALLTRIM(MPLU)+CHR(9)+MBAR+CHR(9)+ALLTRIM(MNAME)+CHR(9)+MVAT+CHR(9)+ALLTRIM(MPRICE1)+CHR(9)+MJED+CHR(9)+CHR(9)+MAKTIVAN+CHR(9)+MVISINA
           DO ROUZMI WITH MM,'KOCKA'
           SELECT KOCKA
           BROJAC=BROJAC+1
     SELECT KOCKA
     SKIP
  ENDDO
SET PROCEDURE TO 
SELECT PREGLED
DO  FORM PREGLED
SELECT PREGLED
USE
SELECT ROB
SET ORDER TO 2
POP KEY