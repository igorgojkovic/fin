procedure pospodPUNI
PUSH KEY CLEAR
SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH '10001','  Prose�an broj zaposlenih','*' 
     DO PUNIBIL WITH '10005','  Veli�ina za narednu godinu','*'      
     DO PUNIBIL WITH '10002','  Poslovni prihod','*'           
     DO PUNIBIL WITH '10003','  Poslovna imovina teku�e godine','*'                
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

