
PROCEDURE KASATAST
ON KEY LABEL F2        ! /N CALC.EXE
ON KEY LABEL F2        DO KASAF2
ON KEY LABEL F3        DO KASAF3
ON KEY LABEL F4        DO KASAF4
ON KEY LABEL F5        DO KASAF5
ON KEY LABEL F6        DO KASAF6
ON KEY LABEL F7        DO KASAF7
ON KEY LABEL F8        DO KASAF8
ON KEY LABEL F9        DO KASAF9
ON KEY LABEL F10       DO KASAF10
ON KEY LABEL F11       DO KASAaF6r
ON KEY LABEL ALT+F1    DO KASAAF1
ON KEY LABEL ALT+F2    DO KASAAF2
ON KEY LABEL ALT+F3    DO KASAAF3
ON KEY LABEL ALT+F4    DO KASAAF4
ON KEY LABEL ALT+F5    DO KASAAF5_00
ON KEY LABEL ALT+F6    DO KASAAF6
ON KEY LABEL CTRL+PGDN DO IDIKRAJ
ON KEY LABEL CTRL+PGUP DO IDIPOC
ON KEY LABEL ESC KASA.RELEASE
ENDPROC

PROCEDURE KASA00TAST
ON KEY LABEL F2        ! /N CALC.EXE
ON KEY LABEL ESC KASA00.RELEASE
ENDPROC

PROCEDURE KASAREVERSITAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL F2        DO KASAFAKF2
   ON KEY LABEL F3        DO KASAFAKF3
   ON KEY LABEL F5        DO KASAREVF5
   ON KEY LABEL F6        DO KASAREVERSIF6
   ON KEY LABEL F7        DO KASAFAKF7
   ON KEY LABEL F10       DO KASAREVF10
   ON KEY LABEL F9        DO KASAFAKAF2
   ON KEY LABEL ESC       KASAREVERSI.RELEASE
ENDPROC


PROCEDURE KASAREVERSIGTAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAREVERSIG.RELEASE
ENDPROC


PROCEDURE KASAFAKZBIRNITAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAfakzbirni.RELEASE
ENDPROC

PROCEDURE KASAFAKZBIRNISTAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAfakzbirniS.RELEASE
ENDPROC

PROCEDURE KASAFAKZBIRNISSTAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAfakzbirniSS.RELEASE
ENDPROC


PROCEDURE KASAFAKF6TAST
   ON KEY LABEL ESC       KASAfakF6.RELEASE
ENDPROC

PROCEDURE KASAROBADEONAZTAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL CTRL+ENTER DO NCALC 
   ON KEY LABEL ESC       KASAROBADEONAZ.RELEASE
   ON KEY LABEL CTRL+PGDN DO IDIKRAJ
   ON KEY LABEL CTRL+PGUP DO IDIPOC
ENDPROC

PROCEDURE WINGSRAZNOTAST
   ON KEY LABEL ESC       WINGSRAZNO.RELEASE
ENDPROC


PROCEDURE INTEGRARAZNOTAST
   ON KEY LABEL ESC       INTEGRARAZNO.RELEASE
ENDPROC

PROCEDURE fi550RAZNOTAST
   ON KEY LABEL ESC       FI550RAZNO.RELEASE
ENDPROC

PROCEDURE GP550RAZNOTAST
   ON KEY LABEL ESC       GP550RAZNO.RELEASE
ENDPROC

PROCEDURE KASAAF5TAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAAF5.RELEASE
ENDPROC

PROCEDURE KASAAF5NAZTAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAAF5NAZ.RELEASE
ENDPROC

PROCEDURE KASAAF6TAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAAF6.RELEASE
ENDPROC


PROCEDURE KASAREVERSIF6TAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAREVERSIF6.RELEASE
ENDPROC


PROCEDURE scraznotAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC      scrazno.RELEASE
ENDPROC

PROCEDURE KASAPORTAST
ON KEY LABEL F2        ! /N CALC.EXE
ON KEY LABEL F2        DO KASAPORF2
ON KEY LABEL F3        DO KASAPORF3
ON KEY LABEL F4        DO KASAPORF4
ON KEY LABEL F5        DO KASAPORF5
ON KEY LABEL F6        DO KASAPORF6
ON KEY LABEL F7        DO KASAPORF7
ON KEY LABEL F9        DO KASAPORF9
ON KEY LABEL CTRL+PGDN DO IDIKRAJ
ON KEY LABEL CTRL+PGUP DO IDIPOC
ON KEY LABEL ESC KASAPOR.RELEASE
ENDPROC

PROCEDURE KASAPORROBADEONAZTAST
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL CTRL+ENTER DO NCALC 
   ON KEY LABEL ESC       KASAPORROBADEONAZ.RELEASE
   ON KEY LABEL CTRL+PGDN DO IDIKRAJ
   ON KEY LABEL CTRL+PGUP DO IDIPOC
ENDPROC


PROCEDURE KASAaf2firmetast
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAaf2firme.RELEASE
ENDPROC

PROCEDURE KASAAF5PIB2tast
   ON KEY LABEL F2        ! /N CALC.EXE
   ON KEY LABEL ESC       KASAAF5PIB2.RELEASE
ENDPROC