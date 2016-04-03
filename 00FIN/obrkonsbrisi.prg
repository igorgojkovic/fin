PUSH KEY CLEAR
  IF PPASAN=1
  OBRKONS.CMDBRISI.SETFOCUS
  CLOSE ALL TABLES
  USE OBRKONS EXCLU IN 0 ALIAS ANAL

  SELECT ANAL
  DELETE ALL FOR opOrezd=0.and.gubitak=0.and.osnovica=0.and.ostatkapd=0;
                 .and.porosnkon=0.and.porosnkon=0.and.rasporedp=0.and.;
                  umanjenje=0.and.zauplatu=0.and.akontac=0
  PACK
  OBRKONS.RELEASE
  ELSE
  PUBLIC PPORUKA
  PPORUKA=' NEMATE PRAVO BRISANJA PRAZNIH POLJA U ANALITICI '
  DO PORUKA 
  ENDIF
  POP KEY