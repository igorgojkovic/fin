PROCEDURE PUNIKLASE
PUSH KEY CLEAR
   AKONTO=mbazni+'\'+'KonTO1.TXT'
   APPEND FROM &AKONTO SDF
POP KEY
ENDPROC


PROCEDURE PUNIGRUPE
PUSH KEY CLEAR

   AKONTO=mbazni+'\'+'KonTO2.TXT'
   APPEND FROM &AKONTO SDF
POP KEY
ENDPROC

PROCEDURE PUNISINT
PUSH KEY CLEAR

   AKONTO=mbazni+'\'+'KonTO3.TXT'
   APPEND FROM &AKONTO SDF
POP KEY
ENDPROC

PROCEDURE PUNI4
PUSH KEY CLEAR
   *AKONTO=mbazni+'\txt\'+'K4.TXT'
   *APPEND FROM &AKONTO SDF
POP KEY
ENDPROC

PROCEDURE PUNI5
PUSH KEY CLEAR
   AKONTO=mbazni+'\txt\'+'K5.TXT'
   APPEND FROM &AKONTO SDF
   REPLACE ALL K5 WITH SUBSTR(K5,1,4)
POP KEY
ENDPROC
PROCEDURE PUNI6
PUSH KEY CLEAR
   AKONTO=mbazni+'\txt\'+'K6.TXT'
   APPEND FROM &AKONTO SDF
   REPLACE ALL K6 WITH SUBSTR(K6,1,4)
POP KEY

ENDPROC

PROCEDURE PUNIKON
PUSH KEY CLEAR
   AKONTO=mbazni+'\'+'Konto.TXT'
   APPEND FROM &AKONTO SDF
   REPLACE ALL K1 WITH SUBSTR(KONTO,1,1)
   REPLACE ALL K2 WITH SUBSTR(KONTO,1,2)
   REPLACE ALL K3 WITH SUBSTR(KONTO,1,3)
   REPLACE ALL K4 WITH SUBSTR(KONTO,1,4)
   REPLACE ALL KONTO WITH SUBSTR(KONTO,1,4)
   POP KEY
ENDPROC


