SET PROCEDURE TO PREGLED
PUSH KEY CLEAR
  DO ROPOC WITH 'ROB'
  SELECT ROB
  SET ORDER TO 2
  GO TOP
  BROJAC=1
  DO WHILE.NOT.EOF()
        *IF MALCENA<>0.AND.NAZ<>SPACE(30)
        IF VAZI<>' '
*           MPLU=ALLTRIM(RSIF)
            MPLU=ALLTRIM(STR(BROJAC,4,0)) 
           IF NAZ<>SPACE(30)
              MNAME=SUBSTR(NAZ,1,24)
           ELSE
              MNAME=ALLTRIM(RSIF)+'A'
           ENDIF
           MBAR=REPLICATE('0',13-LEN(ALLTRIM(SUBSTR(BARKOD,1,13))))+ALLTRIM(SUBSTR(BARKOD,1,13))
           IF MALCENA<>0
              MPRICE1=ALLTRIM(STR(MALCENA,12,2))
              MCENA=INT(MALCENA)
              MCENA2=ROUND((MALCENA-MCENA)*100,0)
              IF LEN(ALLTRIM(STR(MCENA2,2,0)))=1
                 MCENA2='00'
                 MPRICE=ALLTRIM(STR(MCENA,10,0))+','+MCENA2
              ELSE
                 MPRICE=ALLTRIM(STR(MCENA,10,0))+','+ALLTRIM(STR(MCENA2,2,0))
              ENDIF
           ELSE
              MPRICE='0,01'
           ENDIF
           DO CASE TARIFA
           CASE TARIFA=SPACE(6)
              MVAT='1'
           CASE ALLTRIM(TARIFA)=TOSTOPA
              MVAT='3'
           CASE ALLTRIM(TARIFA)=TNSTOPA
              MVAT='4'
           OTHERWISE
              MVAT='1'   
           ENDCASE
           MM=ALLTRIM(MPLU)+','+ALLTRIM(MNAME)+'","'+MBAR+'",'+'1'+','+ALLTRIM(MPRICE)+',"'+ALLTRIM(MVAT)+'",0,0,0,0'
           DO ROUZMI WITH MM,'ROB'
           SELECT ROB
           BROJAC=BROJAC+1
        *ENDIF
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
SET ORDER TO 2
POP KEY