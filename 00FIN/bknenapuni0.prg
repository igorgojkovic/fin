PROCEDURE bkNENApuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO puniNENA WITH ' 1 ','Fizièka lica                                                ','*' 
     DO puniNENA WITH ' 2 ','Privredni subjekti                                          ','*' 
     DO puniNENA WITH ' 3 ','Privredna društva sa veæinskim državnim vlasništvom         ','*' 
     DO puniNENA WITH ' 4 ','Državni organi i organi lokalne vlasti                      ','*' 
     DO puniNENA WITH ' 5 ','Ustanove (zdravstvo,obrazovanje,kultura...)                 ','*' 
     DO puniNENA WITH ' 6 ','Ostalo                                                      ','*' 
ENDIF
ENDPROC

procedure puniNENA
   PARAMETERS Mredbr,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE redbr WITH mredbr
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
