   SELECT KASA
   IF RECCOUNT()>0
         IF STORNO=' '
            REPLACE STORNO WITH 'S'
            SCATTER NAME POLJA
            MRREDNI=RECNO()
            APPEND BLANK
            GATHER NAME POLJA
            REPLACE KOLI WITH -KOLI
            MKOLI=KOLI
            MRSIF=RSIF
            KASAPOR.GRD1.REFRESH
            SELECT ROB0
            SET ORDER TO 2
            KASAPOR.GRD0.REFRESH
            KASAPOR.GRD1.REFRESH
         ELSE
            DO PORUKAU WITH ' STAVKA JE STORNIRANA '
         ENDIF   
   ENDIF
   KASAPOR.GRD1.SetFocus 
   KASAPOR.REFRESH   
