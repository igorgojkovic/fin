PARAMETERS AODAKLEIDE
PUBLIC ODAKLEIDE
ODAKLEIDE=AODAKLEIDE
IF TFPOSSIF='D'.AND.TNEZAJEDNO<>'D'
   TGLAVNISR=1
   DO CASE ODAKLEIDE 
   CASE ODAKLEIDE='ROBA'
      roba.cmdglavni.setfocus
      SELECT ROB
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT ROB
      ROBA.GRD0.COLUMN2.SETFOCUS
      ROBA.GRD0.REFRESH
   CASE ODAKLEIDE='POLU'
      propolu.cmdglavni.setfocus
      SELECT PROPOLU
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROPOLU
      PROPOLU.GRD0.COLUMN2.SETFOCUS
      PROPOLU.GRD0.REFRESH
   CASE ODAKLEIDE='OMAT'
      promat.cmdglavni.setfocus
      SELECT PROMAT
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROMAT
      PROMAT.GRD0.COLUMN2.SETFOCUS
      PROMAT.GRD0.REFRESH
   CASE ODAKLEIDE='PMAT'
      propmat.cmdglavni.setfocus
      SELECT PROPMAT
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROPMAT
      PROPMAT.GRD0.COLUMN2.SETFOCUS
      PROPMAT.GRD0.REFRESH
   CASE ODAKLEIDE='AMBA'
      proamb.cmdglavni.setfocus
      SELECT PROAMB
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROAMB
      PROAMB.GRD0.COLUMN2.SETFOCUS
      PROAMB.GRD0.REFRESH

   CASE ODAKLEIDE='PPOLU'
      propolup.cmdglavni.setfocus
      SELECT PROPOLU
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROPOLU
      PROPOLUP.GRD0.COLUMN2.SETFOCUS
      PROPOLUP.GRD0.REFRESH
   CASE ODAKLEIDE='POMAT'
      promatp.cmdglavni.setfocus
      SELECT PROMAT
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROMAT
      PROMATP.GRD0.COLUMN2.SETFOCUS
      PROMATP.GRD0.REFRESH
   CASE ODAKLEIDE='PPMAT'
      propmatp.cmdglavni.setfocus
      SELECT PROPMAT
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROPMAT
      PROPMATP.GRD0.COLUMN2.SETFOCUS
      PROPMATP.GRD0.REFRESH
   CASE ODAKLEIDE='PAMBA'
      proambp.cmdglavni.setfocus
      SELECT PROAMB
      DO FORM ROBA00 WITH 1
      TGLAVNISR=0
      SELECT PROAMB
      PROAMBP.GRD0.COLUMN2.SETFOCUS
      PROAMBP.GRD0.REFRESH
   ENDCASE
ENDIF
