PROCEDURE ZAMENA0P

PUSH KEY CLEAR

SET DEFAULT TO &MDATA00
*CLOSE ALL 
ERASE *.CDX

SET DEFAULT TO &MDATA01
*CLOSE ALL

ERASE *.CDX

ERASE VPRAC*.DBF
ERASE DPRAC*.DBF
ERASE VPRAC*.CDX
ERASE DPRAC*.CDX

ERASE JPRAC*.DBF
ERASE JPRAC*.DBF
ERASE JPRAC*.CDX
ERASE JPRAC*.CDX
IF MNACINZAM=2
   ZAMENA0.LABEL1.CAPTION=' OSNOVNE TABELE '
ENDIF   

SET DEFAULT TO &MDATA00

DO IP0BAZE WITH 'PDVKON'
DO IP0BAZE WITH 'ZOR'
DO IP0BAZE WITH 'ZOT','ZOR'
DO IP0BAZE WITH 'ZPRA','ZOR'
DO IP0BAZE WITH 'ZUOD','ZOR'
DO IP0BAZE WITH 'ZPRAVP','ZOR'
DO IP0BAZE WITH 'ZPRAVKAL','ZOR'
DO IP0BAZE WITH 'ZUPUTPOR','ZOR'
DO IP0BAZE WITH 'ZUGOVORI','ZOR'
DO IP0BAZE WITH 'PROLOG','ZOR'
DO IP0BAZE WITH 'LOZINKE'
DO IP0BAZE WITH 'KURS'
DO IP0BAZE WITH 'MESTA'
DO IP0BAZE WITH 'VALUTE'
DO IP0BAZE WITH 'NALVRSTA'
DO IP0BAZE WITH 'KSEMA'
DO IP0BAZE WITH 'TARIFA'
DO IP0BAZE WITH 'FAKPRN'
DO IP0BAZE WITH 'KALPRN'
DO IP0BAZE WITH 'FAKPODN'
DO IP0BAZE WITH 'FAKPODN2'
DO IP0BAZE WITH 'KON1'
DO IP0BAZE WITH 'KON2'
DO IP0BAZE WITH 'KON3'
DO IP0BAZE WITH 'KON4'
DO IP0BAZE WITH 'KON5'
DO IP0BAZE WITH 'KON6'
DO IP0BAZE WITH 'KONPLAN'
DO IP0BAZE WITH 'KONTO'
DO IP0BAZE WITH 'PUTANJE'
DO IP0BAZE WITH 'DEV'
DO IP0BAZE WITH 'LOZINKEA'
DO IP0BAZE WITH 'PRENPOD'
DO IP0BAZE WITH 'OSAG'
DO IP0BAZE WITH 'OSAGPOD'
DO IP0BAZE WITH 'LDRADVR'
DO IP0BAZE WITH 'HELPN'
DO IP0BAZE WITH 'KOMANDE'
DO IP0BAZE WITH 'LDZZO01'
DO IP0BAZE WITH 'LDZZO02'
DO IP0BAZE WITH 'LDKON00'
DO IP0BAZE WITH 'emailpar'
DO IP0BAZE WITH 'pduput','zor'
DO IP0BAZE WITH 'statuput','zor'
*DO IP0BAZE WITH 'aktuelno'
DO IP0BAZE WITH 'l2virm0'
DO IP0BAZE WITH 'boje'
SET DEFAULT TO &MDATA0GF
DO IP0BAZE WITH 'sqlpar'
DO IP0BAZE WITH 'sqlpar2'
*--------PRENOSIMO FINBAZEP--------------
*CLOSE all
SET DEFAULT TO &Mtc0
do ip0baze with 'komandle'
do ip0baze with 'komandde'
do ip0baze with 'komander'
do ip0baze with 'komanddl'
do ip0baze with 'komanddd'
SET DEFAULT TO &Mbazni
POP KEY
ENDPROC
