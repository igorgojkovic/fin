PUSH KEY CLEAR
SELECT FAK
MREDREC=RECNO()
MREDZAD=RECCOUNT()
MBRKAL=BRKAL
MDATDOK=DATDOK
SELECT ROB
MKOL=KOL
MROBKOL=KOL
MRSIF=RSIF
MTARIFA=TARIFA
MVELCENA=VELCENA
MMALCENA=MALCENA
MRCENA=PLCENA
MPROCPOR=PROCPOR
MNAZ=NAZ
IF TOBJEKAT='V'
   MZADNAB=ZADNAB
   MAPROSCEN=PROSCENV
ELSE
   MZADNAB=ZADNABM
   MAPROSCEN=PROSCENM
ENDIF   
IF TUNKOL='D'
   IF MREDREC=MREDZAD
      SELECT ROB
      DO FORM TVUNKOL
      *SET STEP ON 
      SELECT ROB
      ROBA.GRD0.SETFOCUS
      ROBA.GRD0.REFRESH
      MKOL=T2UNKOL
      IF TPRACENJE='D'
         IF MKOL>KOL
            MKOL=0
         ENDIF   
      ENDIF
      IF MKOL<>0
         REPLACE KOL WITH KOL-MKOL
      ENDIF
   ELSE
      DO PORUKAU WITH ' NISTE NA ZADNJEM POLJU RA�UNA '
   ENDIF
ELSE
   MKOL=0
ENDIF
SELECT FAK
IF MREDREC=MREDZAD
   IF FAKG.ARHIVA=' '
      IF TPRACENJE<>'D'
         SELECT IROB
         APPEND BLANK
         REPLACE REDBR WITH RECNO()
         REPLACE RSIF WITH MRSIF
         REPLACE NAZ WITH MNAZ
         REPLACE KOL WITH MKOL
         REPLACE BRKAL WITH MBRKAL
         REPLACE DATDOK WITH MDATDOK
         REPLACE TARIFA WITH MTARIFA
         REPLACE PROCPOR WITH MPROCPOR
         REPLACE VELCENA WITH MVELCENA
         REPLACE MALCENA WITH MMALCENA
         REPLACE ZADNAB WITH MZADNAB
         REPLACE CENA WITH MAPROSCEN
      ELSE
         IF MROBKOL<>0   
            SELECT IROB
            APPEND BLANK
            REPLACE REDBR WITH RECNO()
            REPLACE RSIF WITH MRSIF
            REPLACE KOL WITH MKOL
            REPLACE NAZ WITH MNAZ
            REPLACE BRKAL WITH MBRKAL
            REPLACE DATDOK WITH MDATDOK
            REPLACE TARIFA WITH MTARIFA
            REPLACE PROCPOR WITH MPROCPOR
            REPLACE VELCENA WITH MVELCENA
            REPLACE MALCENA WITH MMALCENA
            REPLACE ZADNAB WITH MZADNAB
            REPLACE CENA WITH MAPROSCEN
         ENDIF
      ENDIF
      
   ENDIF
ELSE
   DO PORUKAU WITH ' NISTE NA ZADNJEM POLJU RA�UNA'
endif   
SELECT ROB
POP KEY
