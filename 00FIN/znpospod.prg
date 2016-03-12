procedure pospodPUNI
PUSH KEY CLEAR
SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH '10001','  Proseèan broj zaposlenih','*' 
     DO PUNIBIL WITH '10005','  Velièina za narednu godinu','*'      
     DO PUNIBIL WITH '10002','  Poslovni prihod','*'           
     DO PUNIBIL WITH '10003','  Poslovna imovina tekuæe godine','*'                
     DO PUNIBIL WITH '10004','  Poslovna imovina prethodne godine','*'                     

ENDIF
POP KEY
ENDPROC

procedure punibil
   PARAMETERS MAOP,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc

