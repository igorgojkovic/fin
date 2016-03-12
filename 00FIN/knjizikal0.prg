PUSH KEY CLEAR
MISPRAVNO=0
*KAL.GRD0.COLUMN1.SETFOCUS
KAL.CMDKNJIZIKAL0.SETFOCUS
*SET STEP ON 
SELECT KAL
MBRKAL=BRKAL
M2BRKAL=BRKAL
MAKNJI=0
MPRENCENE=KALPRN.PRENCENE
MVRSTAOBJ=KALPRN.VRSTAOBJ
MISPRAVNOV=0
IF MVRSTAOBJ<>' '
   IF TOBJEKAT='V'
      IF MVRSTAOBJ='V'
         MISPRAVNOV=1
      ELSE
         MISPRAVNOV=0
      ENDIF
   ELSE
      IF MVRSTAOBJ='M'
         MISPRAVNOV=1
      ELSE
         MISPRAVNOV=0
      ENDIF
   ENDIF         
ELSE
   MISPRAVNOV=1
ENDIF         
IF KALG.BRNAL<>SPACE(6).AND.MISPRAVNOV=1
   SABRKAL=BRKAL
   IF KALG.ARHIVA=' '
      MVNAL=KALG.BRNAL
      REPLACE KALG.DATUM WITH DATE()
      REPLACE KALG.VREME WITH TIME()
      REPLACE KALG.OPER WITH OPERATER
      DO IDEL WITH (KKOCKAX)
      DO IDEL WITH (KKOCKAX1)
      SELECT kalG
      COPY STRUCTURE TO &KKOCKA1
      SELECT kal
      COPY STRUCTURE TO &KKOCKA
      USE &KKOCKA IN 0 ALIAS KOCKA EXCLUSIVE
      USE &KKOCKA1 IN 0 ALIAS KOCKA1 EXCLUSIVE
      SELECT kalG
      SCATTER NAME POLJA
      SELECT KOCKA1
      APPEND BLANK
      GATHER NAME POLJA
      SELECT KAL
      SET ORDER TO 1
      SEEK  MBRKAL
      IF FOUND()
         DO WHILE.NOT.EOF()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            SCATTER NAME POLJA
            SELECT KOCKA
            APPEND BLANK
            GATHER NAME POLJA
            SELECT KAL
            SKIP
         ENDDO   
      ENDIF
      *-------------OVDE SE KOPIRA U SNIMAK-----------
*      SET STEP ON 
      MIME='0'+MVNAL
      MIME1='0'+MVNAL+'G'
      MMIME=MIME+'.DBF'
      MMIME1=MIME1+'.DBF'
      AGDE2=MSNIMAK+'\'+MSSNIMAK 
      SELECT KOCKA
      COPY TO &MIME
      COPY FILE &MMIME TO &AGDE2   
      ERASE &MMIME
      SELECT KOCKA
      USE
      SELECT KOCKA1
      COPY TO &MIME1
      COPY FILE &MMIME1 TO &AGDE2   
      ERASE &MMIME1
      SELECT KOCKA1
      USE
      *-------KRAJ KOPIRANJA U SNIMAK-----------------
      SELECT KAL
      SEEK MBRKAL
       *--------OVDE SE KNJIZI---------------
      IF FOUND()
         DO while.not.eof()
            IF BRKAL<>MBRKAL
               EXIT
            ENDIF
            IF KOL=0.AND.CENA=0.AND.VELCENA=0.AND.MALCENA=0
               REPLACE RSIF WITH SPACE(5)
            ENDIF   
            IF RSIF<>SPACE(5)
               IF DATDOK=CTOD('').OR.CENA=0
                  MISPRAVNO=1
               ENDIF
               IF TOBJEKAT='V'           
                   IF VELCENA=0
                      MISPRAVNO=1
                   ENDIF
               ELSE
                  IF MALCENA=0
                     MISPRAVNO=1
                  ENDIF
               ENDIF        
            ENDIF
            SKIP
         ENDDO   
         SEEK MBRKAL
         IF MISPRAVNO=0
            DO KNJIZIKAL WITH MBRKAL,1
            SELECT KAL
            SEEK SABRKAL
            IF tnet=2
               SELECT kal
               GO top
               DO while.not.eof()
                  SCATTER NAME polja
                  SELECT kals
                  APPEND BLANK
                  GATHER NAME polja
                  SELECT kal
                  skip
               enddo   
            ENDIF
         ELSE
            DO PORUKAU WITH ' KALKULACIJA NEMA DATUM ILI CENU  '   
         ENDIF
      ENDIF   
*      SET STEP ON 
      *--------ARHIVIRANJE KALKULACIJE---------------------------------
      IF MISPRAVNO=0
         SELECT KALG
         SET ORDER TO 1
         SEEK SABRKAL
         IF FOUND()
            REPLACE ARHIVA WITH '*'
         ENDIF
         IF RECNO()=RECCOUNT()
            MMPRENESI=1
         ELSE
            MMPRENESI=0
         ENDIF      
         IF MMPRENESI=1.OR.TNET=2
            *-------------PRENOS CENA IZ KALKULACIJA U SIFARNIK-----------
            SELECT KAL
            SEEK M2BRKAL
            IF FOUND()
               MDATNAB=DATDOK
               DO WHILE.NOT.EOF()
                  IF BRKAL<>M2BRKAL
                     EXIT
                  ENDIF   
                  MRSIF=RSIF
                  MNABCENA=NABCENA
                  MNABVRED=NABVRED
                  MZADNAB=CENA
                  MVELCENA=VELCENA
                  MMALCENA=MALCENA
                  MKOL=KOL
                  MREDNIBR=RECNO()
                  SELECT ROB
                  SEEK MRSIF
                  IF FOUND()
                     IF TOBJEKAT='V'
                        IF TPRENCEN='D'      
                           IF MPRENCENE<>'N'
                               REPLACE VELCENA WITH MVELCENA
                           ENDIF
                           IF KURS<>0
                              MKURS=KURS
                           ELSE
                              MKURS=1
                           ENDIF      
                           REPLACE DCENA WITH ROUND(VELCENA/MKURS,4)
                        ENDIF 
                        IF TMCMARZA='D'
                           IF MPRENCENE<>'N'
                              IF AKCIJACENA=0
                                 REPLACE MALCENA WITH ROUND(VELCENA*(100+MAKSMARMP)*(100+PROCPOR)/100/100,2)
                                 REPLACE DMCENA WITH ROUND(MALCENA/MKURS,4)                     
                              endif
                           ENDIF   
                        ENDIF   
                        IF MPRENCENE<>'N'
                           REPLACE ZADNAB WITH MZADNAB
                           REPLACE NABCENA WITH MNABCENA
                        ENDIF   
                        replace nazita WITH m2brkal
                        *-------------SREDJIVANJE PROSECNE CENE NA OSNOVU KALKULACIJE-------------
                        MPKOL=0
                        MPNABVRED=0
                        MPKOLI=0
                        MPNABVREDI=0
                        SELECT KAL
                        SET ORDER TO 2
                        SEEK MRSIF
                        IF FOUND()
                           DO WHILE.NOT.EOF()
                              IF RSIF<>MRSIF
                                 EXIT
                              ENDIF   
                              MPKOL=MPKOL+KOL
                              MPNABVRED=MPNABVRED+NABVRED
                              SKIP
                           ENDDO
                        ENDIF
                        IF TNET=1
                           SELECT FAK
                        ELSE
                           SELECT FAKS
                        ENDIF
                        SET ORDER TO 2
                        SEEK MRSIF
                        IF FOUND()
                           DO WHILE.NOT.EOF()
                              IF RSIF<>MRSIF
                                 EXIT
                              ENDIF   
                              MPKOLI=MPKOLI+KOLI
                              MPNABVREDI=MPNABVREDI+IZNI
                              SKIP
                           ENDDO
                        ENDIF
                        M2KOL=MPKOL-MPKOLI
                        M2NABVRED=MPNABVRED-MPNABVREDI
                        IF M2KOL<>0
                           MPROSCEN=ROUND(M2NABVRED/M2KOL,3)
                        ELSE
                           MPROSCEN=1
                        ENDIF
                        SELECT ROB
                        SEEK MRSIF
                        IF FOUND()
                           REPLACE PROSCENV WITH MPROSCEN                                
                        ENDIF
                        SELECT KAL
                        SET ORDER TO 1
                        GOTO MREDNIBR
                     ELSE
                        IF TPRENCEN='D'      
                           IF MPRENCENE<>'N'
                              REPLACE MALCENA WITH MMALCENA
                           ENDIF   
                           IF KURS<>0
                              MKURS=KURS
                           ELSE
                              MKURS=1
                           ENDIF      
                           IF MPRENCENE<>'N'
                              REPLACE DMCENA WITH ROUND(MALCENA/MKURS,4)
                           ENDIF   
                        ENDIF  
                        IF MPRENCENE<>'N'
                           REPLACE ZADNABM WITH MZADNAB
                           REPLACE NABCENAM WITH MNABCENA
                        ENDIF   
                        MPKOL=0
                        MPNABVRED=0
                        MPKOLI=0
                        MPNABVREDI=0
                        MPAKCIZAU=0
                        MPAKCIZAI=0
                        SELECT KAL
                        SET ORDER TO 2
                        SEEK MRSIF
                        IF FOUND()
                           DO WHILE.NOT.EOF()
                              IF RSIF<>MRSIF
                                 EXIT
                              ENDIF   
                              MPKOL=MPKOL+KOL
                              MPNABVRED=MPNABVRED+NABVRED
                              MPAKCIZAU=MPAKCIZAU+AKCVRED
                              SKIP
                           ENDDO
                        ENDIF
                        IF TNET=1
                           SELECT FAK
                        ELSE
                           SELECT FAKS
                        ENDIF
                        SET ORDER TO 2
                        SEEK MRSIF
                        IF FOUND()
                           DO WHILE.NOT.EOF()
                              IF RSIF<>MRSIF
                                 EXIT
                              ENDIF   
                              MPKOLI=MPKOLI+KOLI
                              MPNABVREDI=MPNABVREDI+IZNI
                              MPAKCIZAI=MPAKCIZAI+AKCVRED
                              SKIP
                           ENDDO
                        ENDIF
                        M2KOL=MPKOL-MPKOLI
                        M2NABVRED=MPNABVRED-MPNABVREDI
                        M2AKCIZA=MPAKCIZAU-MPAKCIZAI
                        IF M2KOL<>0
                           MPROSCEN=ROUND(M2NABVRED/M2KOL,3)
                           MPROSCENAA=ROUND(M2AKCIZA/M2KOL,3)
                        ELSE
                           MPROSCEN=1
                           MPROSCENAA=0
                        ENDIF
                        SET ORDER TO 1
                        SELECT ROB
                        SEEK MRSIF
                        IF FOUND()
                           REPLACE PROSCENV WITH MPROSCEN                                
                           REPLACE PROSCENAA WITH MPROSCENAA
                        ENDIF
                        SELECT KAL
                        SET ORDER TO 1
                        GOTO MREDNIBR
                     ENDIF          
                     SELECT rob
                     REPLACE DATNAB WITH MDATNAB
                  ENDIF   
                  SELECT KAL
                  SKIP
               ENDDO   
            ENDIF
         ELSE
            SELECT KAL
            SEEK M2BRKAL
            IF FOUND()
               DO WHILE.NOT.EOF()
                  IF BRKAL<>M2BRKAL
                     EXIT
                  ENDIF   
                  SKIP
               ENDDO   
            ENDIF
         ENDIF
         MAKNJI=0
         IF tnet=1
            IF EOF()
               GO BOTTOM
            ENDIF   
            KAL.GRD0.SETFOCUS
            KAL.REFRESH
         ELSE
            SELECT kal
            IF MAKNJI=0
               DELETE ALL
               PACK
            ENDIF
            kal.release
         ENDIF
      ENDIF   
   ELSE
      PUBLIC PPORUKA
      PPORUKA=' KALKULACIJA '+SABRKAL+' JE PROKNJIŽENA  '
      DO PORUKA
      MAKNJI=1
   ENDIF
ELSE
   PUBLIC PPORUKA
   PPORUKA=' KALKULACIJA '+MBRKAL+' NEMA BROJ NALOGA ILI JE NEISRAVNA VRSTA NALOGA  '
   DO PORUKA
   SELECT KAL
ENDIF
POP KEY