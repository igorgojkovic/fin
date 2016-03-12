PROCEDURE bkSUBVpuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO puniSUBV WITH ' 1 ','Planirano                                                   ','*' 
     DO puniSUBV WITH ' 2 ','Ugovoreno                                                   ','*' 
     DO puniSUBV WITH ' 3 ','Povuèeno                                                    ','*' 
ENDIF
ENDPROC

procedure puniSUBV
   PARAMETERS Mredbr,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE redbr WITH mredbr
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
