nCode1252=0

MODIFY PROJECT myproject NOWAIT

FOR i = 1 TO _VFP.ActiveProject.Files.Count

   IF  _VFP.ActiveProject.Files(i).CodePage = 1252

      nCode1252=nCode1252+1

   ENDIF

ENDFOR

?nCode1252    && Show the count in the Visual FoxPro screen