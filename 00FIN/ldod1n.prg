 PROCEDURE OD1NPUNI
 PUSH KEY CLEAR
     DO OD1NPUNI2 WITH 'I      ','OBRAÈUN NAKNADE ZARADE,OSNOVICE        ',' '
      DO OD1NPUNI2 WITH '       ','DOPRINOSA I OBRAÈUN DOPRINOSA          ','*'
      DO OD1NPUNI2 WITH '1.     ','Broj zaposlenih                        ','*'
      DO OD1NPUNI2 WITH '2.     ','iznos naknade zarade-osnovica          ',' '
      DO OD1NPUNI2 WITH '       ','doprinosa                              ','*'
      DO OD1NPUNI2 WITH '3.     ','Ukupno obracunati doprinosi za         ',' '
      DO OD1NPUNI2 WITH '       ','uplatu rbr 3.1. + rbr 3.2)             ','*'
      DO OD1NPUNI2 WITH '3.1.   ','Na teret zaposlenih -primalaca         ',' '
      DO OD1NPUNI2 WITH '       ','naknade zarade                         ',' '
      DO OD1NPUNI2 WITH '       ','(r.br 3.1.1. do 3.1.3.)                ','*'
      DO OD1NPUNI2 WITH '3.1.1. ','za PIO                                 ','*'
      DO OD1NPUNI2 WITH '3.1.2. ','za zdravstveno osiguranje              ','*'
      DO OD1NPUNI2 WITH '3.1.3. ','za osiguranje za slucaj nezaposlenosti ','*'
      DO OD1NPUNI2 WITH '3.2.   ','Na teret isplatioca naknade            ',' '
      DO OD1NPUNI2 WITH '       ','zarade                                 ',' '
      DO OD1NPUNI2 WITH '       ','(r.br 3.2.1. do 3.2.3.)                ','*'
      DO OD1NPUNI2 WITH '3.2.1. ','za PIO                                 ','*'
      DO OD1NPUNI2 WITH '3.2.2. ','za zdravstveno osiguranje              ','*'
      DO OD1NPUNI2 WITH '3.2.3. ','za osiguranje za slucaj nezaposlenosti ','*'
POP KEY
ENDPROC

PROCEDURE OD1NPUNI2
   PARAMETERS MREDNI,MKOD,MOPIS,MRLINI
   PUSH KEY CLEAR

   SEEK MREDNI
   REPLACE KOD WITH MKOD
   REPLACE OPIS WITH MOPIS
   REPLACE RLINI WITH MRLINI
   POP KEY
ENDPROC


PROCEDURE OD1NRAC
PUSH KEY CLEAR

   SELECT ldod1
   SET ORDER TO 1
   SELECT LDPARAM
   MNAZMES=NAZMES
   MREDISPL=REDISPL
   MDAT1=DAT1
   MDOPPR2=DOPPR2
   MDOPPR3=DOPPR3
   MDOPPR4=DOPPR4
   MDOPPF2=DOPPF2
   MDOPPF3=DOPPF3
   MDOPPF4=DOPPF4

   MDOPZR2=DOPZR2
   MDOPZR3=DOPZR3
   MDOPZR4=DOPZR4
   MDOPZF2=DOPZF2
   MDOPZF3=DOPZF3
   MDOPZF4=DOPZF4

   MDOPNR2=DOPNR2
   MDOPNR3=DOPNR3
   MDOPNR4=DOPNR4
   MDOPNF2=DOPNF2
   MDOPNF3=DOPNF3
   MDOPNF4=DOPNF4
   SELECT LDOD1
   MKOD='2.     '
   SEEK MKOD
   IF FOUND()
      MPOROSN=PORODILJE
      MBOLOSN=BOLOVANJE
      MINVOSN=INVALIDI
   ELSE
      MPOROSN=0
      MBOLOSN=0
      MINVOSN=0
   ENDIF

   ldod1nrac('3.1.1. ',MPOROSN,MDOPPR2,'PORODILJE')
   ldod1nrac('3.1.1. ',MBOLOSN,MDOPPR3,'BOLOVANJE')
   ldod1nrac('3.1.1. ',MINVOSN,MDOPPR4,'INVALIDI ')
   ldod1nrac('3.1.2. ',MPOROSN,MDOPZR2,'PORODILJE')
   ldod1nrac('3.1.2. ',MBOLOSN,MDOPZR3,'BOLOVANJE')
   ldod1nrac('3.1.2. ',MINVOSN,MDOPZR4,'INVALIDI ')
   ldod1nrac('3.1.3. ',MPOROSN,MDOPNR2,'PORODILJE')
   ldod1nrac('3.1.3. ',MBOLOSN,MDOPNR3,'BOLOVANJE')
   ldod1nrac('3.1.3. ',MINVOSN,MDOPNR4,'INVALIDI ')

   ldod1nrac('3.2.1. ',MPOROSN,MDOPPF2,'PORODILJE')
   ldod1nrac('3.2.1. ',MBOLOSN,MDOPPF3,'BOLOVANJE')
   ldod1nrac('3.2.1. ',MINVOSN,MDOPPF4,'INVALIDI ')
   ldod1nrac('3.2.2. ',MPOROSN,MDOPZF2,'PORODILJE')
   ldod1nrac('3.2.2. ',MBOLOSN,MDOPZF3,'BOLOVANJE')
   ldod1nrac('3.2.2. ',MINVOSN,MDOPZF4,'INVALIDI ')
   ldod1nrac('3.2.3. ',MPOROSN,MDOPNF2,'PORODILJE')
   ldod1nrac('3.2.3. ',MBOLOSN,MDOPNF3,'BOLOVANJE')
   ldod1nrac('3.2.3. ',MINVOSN,MDOPNF4,'INVALIDI ')

   MKOD='3.1.1. '
   SEEK MKOD
   IF FOUND()
      M311P=PORODILJE
      M311B=BOLOVANJE
      M311I=INVALIDI
   ELSE
      M311P=0
      M311B=0
      M311I=0
   ENDIF
   MKOD='3.1.2. '
   SEEK MKOD
   IF FOUND()
      M312P=PORODILJE
      M312B=BOLOVANJE
      M312I=INVALIDI

   ELSE
      M312P=0
      M312B=0
      M312I=0
   ENDIF

   MKOD='3.1.3. '
   SEEK MKOD
   IF FOUND()
      M313P=PORODILJE
      M313B=BOLOVANJE
      M313I=INVALIDI

   ELSE
      M313P=0
      M313B=0
      M313I=0
   ENDIF
   MKOD='3.2.1. '
   SEEK MKOD
   IF FOUND()
      M321P=PORODILJE
      M321B=BOLOVANJE
      M321I=INVALIDI
   ELSE
      M321P=0
      M321B=0
      M321I=0
   ENDIF
   MKOD='3.2.2. '
   SEEK MKOD
   IF FOUND()
      M322P=PORODILJE
      M322B=BOLOVANJE
      M322I=INVALIDI

   ELSE
      M322P=0
      M322B=0
      M322I=0
   ENDIF
   MKOD='3.2.3. '
   SEEK MKOD
   IF FOUND()
      M323P=PORODILJE
      M323B=BOLOVANJE
      M323I=INVALIDI
   ELSE
      M323P=0
      M323B=0
      M323I=0
   ENDIF
   MKOD='3.1.   '
   SEEK MKOD
   IF FOUND()
      M31P=M311P+M312P+M313P
      M31B=M311B+M312B+M313B
      M31I=M311I+M312I+M313I
   ELSE
      M31P=0
      M31B=0
      M31I=0
   ENDIF
      REPLACE PORODILJE WITH M31P
      REPLACE BOLOVANJE WITH M31B
      REPLACE INVALIDI  WITH M31I
   MKOD='3.2.   '
   SEEK MKOD
   IF FOUND()
      M32P=M321P+M322P+M323P
      M32B=M321B+M322B+M323B
      M32I=M321I+M322I+M323I
   ELSE
      M32P=0
      M32B=0
      M32I=0
   ENDIF
      REPLACE PORODILJE WITH M32P
      REPLACE BOLOVANJE WITH M32B
      REPLACE INVALIDI  WITH M32I
   MKOD='3.     '
   SEEK MKOD
   IF FOUND()
      M3P=M31P+M32P
      M3B=M31B+M32B
      M3I=M31I+M32I
   ELSE
      M3P=0
      M3B=0
      M3I=0
   ENDIF
      REPLACE PORODILJE WITH M3P
      REPLACE BOLOVANJE WITH M3B
      REPLACE INVALIDI  WITH M3I
SET ORDER TO       
POP KEY
ENDPROC
procedure OD1NPUNI2 
   PARAMETERS a1,a2,a3)
PUSH KEY CLEAR
   APPEND BLANK
   replace KOD with a1
   replace opis with a2
   replace rlini with a3
POP KEY
ENDPROC


PROCEDURE ldod1nrac
   PARAMETERS MKOD,OSNOVICA,STOPA,POLJE
   PUSH KEY CLEAR

   SEEK MKOD
   IF FOUND()
      MPOLJE=ROUND(OSNOVICA*STOPA/100,0)
      REPLACE &POLJE WITH MPOLJE
   ENDIF
   POP KEY
   ENDPROC



