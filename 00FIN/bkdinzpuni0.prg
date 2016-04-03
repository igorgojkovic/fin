PROCEDURE bkdinzpuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO punidinz WITH '   ','Stanje na dan 31.12.2013 godine*                             ','*' 
     DO punidinz WITH ' 1 ','Odliv kadrova                                               ','*' 
     DO punidinz WITH ' 2 ','navesti osnov                                               ','*' 
     DO punidinz WITH ' 3 ','                                                            ','*' 
     DO punidinz WITH ' 4 ','                                                            ','*' 
     DO punidinz WITH ' 5 ','                                                            ','*' 
     DO punidinz WITH '   ','                                                            ','*' 
     DO punidinz WITH ' 6 ','Prijem                                                      ','*' 
     DO punidinz WITH ' 7 ','navesti osnov                                               ','*' 
     dO punidinz WITH ' 8 ','                                                            ','*' 
     dO punidinz WITH ' 9 ','                                                            ','*' 
     dO punidinz WITH '10 ','                                                            ','*' 
     DO punidinz WITH '   ','Stanje na dan 31.03.2014 godine**                             ','*' 
               
ENDIF
ENDPROC

procedure punidinz
   PARAMETERS Mredbr,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE redbr WITH mredbr
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
