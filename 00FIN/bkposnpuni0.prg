PROCEDURE bkPOSNpuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO puniPOSN WITH ' 1 ','Sponzorstvo                                                 ','*' 
     DO puniPOSN WITH ' 2 ','Donacije                                                    ','*' 
     DO puniPOSN WITH ' 3 ','Humanitarne aktivnosti                                      ','*' 
     DO puniPOSN WITH ' 4 ','Sportske aktivnosti                                         ','*' 
     DO puniPOSN WITH ' 5 ','Reprezentacija                                              ','*' 
     DO puniPOSN WITH ' 6 ','Reklama i propaganda                                        ','*' 
     DO puniPOSN WITH ' 7 ','Ostalo                                                      ','*' 
ENDIF
ENDPROC


procedure puniPOSN
   PARAMETERS Mredbr,mopis,MRLINI
   PUSH KEY CLEAR
   APPEND BLANK
   REPLACE redbr WITH mredbr
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
