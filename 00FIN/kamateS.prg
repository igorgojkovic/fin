PROCEDURE KAKOEF
PUSH KEY CLEAR

   SELECT KASTOPE
   GO TOP
   MM1=DAT0
   GO BOTTOM
   MM2=DAT1
   MM3=MM2-MM1+1
   SELECT KAKOEF
   ZAP

   SELECT KASTOPE
   GO TOP
   DO WHILE.NOT.EOF()
      MDATUM0=DAT0
      MDATUM1=DAT1
      MSTOPA=STOPA
      MPERIOD=PERIOD
      mmetoda=metoda
      I=1
      SELECT KAKOEF
      FOR I=0 TO (MDATUM1-MDATUM0)
         APPEND BLANK
         REPLACE DATUM WITH MDATUM0+I
         REPLACE STOPA WITH MSTOPA
         REPLACE PERIOD WITH MPERIOD
         REPLACE METODA WITH MMETODA
         IF MMETODA=' '
            IF MPERIOD<>1        
               MKOEF=ROUND(((100+STOPA)/100)**(1/PERIOD),8)
            ELSE
               MKOEF=ROUND((100+STOPA)/100-1,8)
            ENDIF  
         ELSE
         MKOEF=ROUND(STOPA/100/PERIOD,8) 
         ENDIF
         REPLACE KOEF WITH MKOEF
         
      NEXT
      MM3=MM3-1
      SELECT KASTOPE
      SKIP
   ENDDO
   SELECT KASTOPE
POP KEY      
   
ENDPROC







PROCEDURE KAMOBRAC
PARAMETERS MDAT0,MDAT1,MSIFRA,MKONTO,MREDNAL
PUSH KEY CLEAR

   SET EXACT OFF
*   SET STEP ON   
   SELECT KAKOEF
   SET ORDER TO 1
   
   KANAL='ANAL'+MREDNAL

   
   SELECT KAMATE
   COPY STRU TO &KKOCKA

   DO IDEL WITH (KKOCKAX)
   DO IDEL WITH (KKOCKAX1)
   DO IDEL WITH (KKOCKAX2)
   DO IDEL WITH (KKOCKAX3)
   DO IDEL WITH (KKOCKAX9)
    
    
  
   
   USE &KANAL IN 0 ALIAS ANAL
   DO SERVERSELECT WITH kanal,'anal'                     
   SELECT ANAL
   COPY STRU TO &KKOCKA1
   USE
   
   *-----------KOCKA1 ZA PUNJENJE PODATAKA---------- 
  
   USE &KKOCKA1 IN 0 ALIAS KOCKA1 EXCLU
   SELECT KOCKA1
   INDEX ON DTOS(DATDOK) TAG DATDOK
   
   
   *-----------OTVARAMO ANALITIKU
   USE &KANAL ALIAS NNAL IN 0
   DO SERVERSELECT WITH kanal,'nnal'                     
   SELECT NNAL
   *----------AKO JE SEVER--------------
   IF TFSERVER='D'
      mupit = 'SELECT * FROM '+kAnal+' WHERE sifra=?msifra'
      MODGOVOR=SQLEXEC(povezano, mupit ,'kocka')
      IF modgovor=1
         COPY TO &kkocka9
         USE
         SELECT nnal
         zap
         APPEND FROM &kkocka9
      endif
   ENDIF
   SELECT NNAL
   *----------KRAJ AKO JE SERVER--------
   SET ORDER TO 2
   GO TOP
   SEEK MSIFRA
    IF FOUND()
      DO WHILE.NOT.EOF()
         IF SIFRA<>MSIFRA
            EXIT
         ENDIF   
         IF DTOS(DATDOK)>=DTOS(MDAT0).AND.DTOS(DATDOK)<=DTOS(MDAT1)
            IF SIFRA=MSIFRA
               AMDUG=DUG
               AMPOT=POT
               AMSIFRA=SIFRA
               AMBRRAC=BRRAC
               AMKONTO=KONTO
               AMDATDOK=DATDOK
               AMVALUTA=VALUTA
               SELECT KOCKA1
               APPEND BLANK
               REPLACE KONTO WITH AMKONTO
               REPLACE DUG WITH AMDUG
               REPLACE POT WITH AMPOT
               REPLACE SIFRA WITH AMSIFRA
               REPLACE BRRAC WITH AMBRRAC
*               REPLACE DATDOK WITH AMDATDOK
               REPLACE VALUTA WITH AMVALUTA
               REPLACE DATDOK WITH AMVALUTA  
               SELECT NNAL
            ENDIF   
         ENDIF
         SKIP
      ENDDO      
   ENDIF
   SELECT NNAL
   USE
   *--------ZATVARAMO ANALITIKU------------
   SELECT KAMATE
   COPY STRU TO &KKOCKA2
   *----------OTVARAMO ZA PODATKE--------------
      
   USE &KKOCKA2 IN 0 ALIAS KOCKA2 EXCLU  
   
   SELECT KAKOEF
   GO TOP
   seek DTOS(mdat0)
   IF.NOT.FOUND()
      GO TOP
   ENDIF
   *------PROLAZ KROZ BAZU KOEFICIJENATA---------
   DO WHILE.NOT.EOF()
      IF DTOS(DATUM)>=DTOS(MDAT0).AND.DTOS(DATUM)<=DTOS(MDAT1)
         MMSTOPA=STOPA
         MMPERIOD=PERIOD
         MMDATUM=DATUM
         MMETODA=METODA
         mkoef=koef 
         SELECT KOCKA2
         APPEND BLANK
         REPLACE STOPA WITH MMSTOPA
         REPLACE DATPOC WITH MMDATUM
         REPLACE DATUM WITH MMDATUM
         REPLACE PERIOD WITH MMPERIOD
         REPLACE METODA WITH MMETODA
         REPLACE SIFRA WITH MSIFRA
         replace koef with mkoef
         SELECT KAKOEF
      ENDIF
      SKIP
   ENDDO
   SELECT KOCKA2
   INDEX ON DTOS(DATUM) TAG DATUM
   SET ORDER TO 1
   
   IF RECCOUNT()>0
      *--------AKO IMA KOEFICIJENATA NASTAVLJAMO
      
      *-----NAPUNILI SMO KOEFICIJENTE---------   
      *---------PRELAZIMO U PODATKE----------
      SELECT KOCKA1
      *--------AKO IMA PROMENA NASTAVLJAMO

      IF RECCOUNT()>0      
         REPLACE ALL DATDOK WITH VALUTA
         TOTAL ON DTOS(DATDOK) FIELDS DUG,POT TO &KKOCKA3
         USE
         *---------ZATVORILI SMO KOCKA1 ZA PODATKE-------
         *---------SPOJENI DATUMI U BAZI KOCKA3--------
         *------PRELAZIMO U TABELU KOCKA3 SPOJENI DATUMI-----
         
         USE &KKOCKA3 IN 0 ALIAS KOCKA3 EXCLU
         SELECT KOCKA3
         INDEX ON DTOS(DATDOK) Tag DATDOK
         SET ORDER TO 1
         GO TOP
     
         DO WHILE.NOT.EOF()
            MDUG=DUG
            MPOT=POT
            MDATUM=DATDOK
      
            SELECT KOCKA2
            SEEK DTOS(MDATUM)
         
            IF FOUND()
               REPLACE DUG WITH MDUG
               REPLACE POT WITH MPOT
               REPLACE DATUM WITH MDATUM
            ENDIF
            SELECT KOCKA3
            SKIP
         ENDDO     
         SELECT KOCKA3
         USE 
       

         *------OPET IDEMO U BAZU KAMATA
         SELECT KOCKA2
         SET ORDER TO
         GO TOP
         DO WHILE.NOT.EOF()
            MSTOPA=STOPA
            MPERIOD=PERIOD
            mmetodA=METODA
            MDUG=DUG
            MPOT=POT
            RRR=RECNO()
            IF DUG<>0.OR.POT<>0
               REPLACE VAZI WITH '*'
            ENDIF
            if recno()<reccount()
               GOTO RRR+1
               IF .NOT.(STOPA=MSTOPA.AND.PERIOD=MPERIOD)
                  REPLACE VAZI WITH '*'
               ENDIF
               goto rrr  
            endif
            SKIP
         ENDDO
         *GO BOTTOM
         *REPLACE VAZI WITH '*'
         DELETE ALL FOR VAZI=' '
         PACK
         GO TOP
         DO WHILE.NOT.EOF()
            SKIP
            MDATPOC=DATPOC
            MDUG=DUG
            MPOT=POT
            SKIP -1
            IF MDUG<>0.OR.MPOT<>0
               REPLACE DATKRA WITH MDATPOC
               IF DUG<>0.OR.POT<>0
                  REPLACE DATPOC WITH DATPOC
               ELSE
               
               *   REPLACE DATPOC WITH DATPOC-1
               * PROMENA 01.07.2006
               *   REPLACE DATPOC WITH MDATPOC
                  REPLACE DATPOC WITH DATPOC
               *------KRAJ PROMENE-----------
               ENDIF
            ELSE
               IF DUG=0.AND.POT=0
               *   REPLACE DATPOC WITH DATPOC-1
                  REPLACE DATPOC WITH DATPOC
               ENDIF
               *REPLACE DATKRA WITH MDATPOC-1
               REPLACE DATKRA WITH MDATPOC
            ENDIF
            SKIP
         ENDDO
         GO bottom
         REPLACE DATKRA WITH MDAT1
         *REPLACE DATKRA WITH MDAT1-1         
         MSOSNOVICA=0
         GO TOP
         DO WHILE.NOT.EOF()
            IF DATPOC<>CTOD('').AND.DATKRA<>CTOD('')
               IF RECNO()>1
                  REPLACE DANA WITH DATKRA-DATPOC-1
               ELSE
                  REPLACE DANA WITH DATKRA-DATPOC-1
               ENDIF
            ENDIF
            MPERIOD=PERIOD
            MMETODA=METODA
            IF MPERIOD<>0
               IF MMETODA=' '
                  IF MPERIOD<>1
                     MKOEF=ROUND(((((100+STOPA)/100)**(DANA/PERIOD)))-1,8)
                  ELSE
                     MKOEF=ROUND((100+STOPA)/100-1,8)*DANA
                  ENDIF
               ELSE
                  MKOEF=ROUND(STOPA/PERIOD/100,8) *DANA             
               ENDIF   
               REPLACE KOEF WITH MKOEF
            ENDIF
            REPLACE OSNOVICA WITH SOSNOVICA+DUG-POT
            REPLACE KAMATA WITH ROUND(OSNOVICA*(KOEF),2)
            RRR=RECNO()
            IF MMETODA=' '
               IF MPERIOD<>1
                  MSOSNOVICA=OSNOVICA+KAMATA
               ELSE
                  MSOSNOVICA=OSNOVICA
               ENDIF
            ELSE
               MSOSNOVICA=OSNOVICA
            ENDIF   
            
            if recno()<reccount() 
               GOTO RRR+1
               REPLACE SOSNOVICA WITH MSOSNOVICA
               GOTO RRR
            endif
            SKIP
         ENDDO
         *---------PROMENA 01.07.2006
         * DELETE ALL FOR OSNOVICA=0
         * DELETE ALL FOR OSNOVICA=0.AND.DUG=0.AND.POT=0
         *--KRAJ PROMENE
         PACK
         GO TOP
         DO WHILE.NOT.EOF()
            IF DATPOC<>CTOD('').AND.DATKRA<>CTOD('')
               REPLACE DANA WITH DATKRA-DATPOC
            ENDIF
            MPERIOD=PERIOD
            MMETODA=METODA
            IF MPERIOD<>0
               IF MMETODA=' '
                  IF MPERIOD<>1
                     MKOEF=ROUND(((((100+STOPA)/100)**(DANA/PERIOD)))-1,8)
                  ELSE
                     MKOEF=ROUND((100+STOPA)/100-1,8)*DANA
                  ENDIF
               ELSE
                   MKOEF=ROUND(STOPA/100/PERIOD,8) *DANA
               ENDIF   
               REPLACE KOEF WITH MKOEF
            ENDIF
            REPLACE OSNOVICA WITH SOSNOVICA+DUG-POT
            REPLACE KAMATA WITH ROUND(OSNOVICA*(KOEF),2)
            RRR=RECNO()
            IF MMETODA=' '
               IF MPERIOD<>1
                  MSOSNOVICA=OSNOVICA+KAMATA
               ELSE
                  MSOSNOVICA=OSNOVICA
               ENDIF
            ELSE
               MSOSNOVICA=OSNOVICA            
            ENDIF   
            if recno()<reccount()
               GOTO RRR+1
               REPLACE SOSNOVICA WITH MSOSNOVICA
               GOTO RRR
            endif
            SKIP
         ENDDO
         GO TOP
         SELECT KOCKA2
         SET RELATION TO
         *----------PRELAZIMO U KAMATE--------
         SELECT KAMATE
         GO BOTTOM
         IF RECCOUNT()=0
            MRBR='   1'
         ELSE
            MMRBR=STR(VAL(RBR)+1,4,0)
            MRBRLEN=LEN(ALLTRIM(MMRBR))
            MRBR=SUBSTR('    ',1,4-MRBRLEN)+ALLTRIM(MMRBR)
         ENDIF
         SELECT KOCKA2
         REPLACE ALL SIFRA WITH MSIFRA
         REPLACE ALL RBR WITH MRBR
         DELETE ALL FOR osnovica=0.and.sosnovica=0.and.dug=0.and.pot=0.and.kamata=0
         pack
         USE
         SELECT KAMATE
         APPEND FROM &KKOCKA2
         SELECT KAMATE
         GO BOTTOM

      ELSE
      
         SELECT KOCKA1
         USE
         SELECT KOCKA2
         USE
         SELECT KAMATE
      ENDIF   
   ELSE
      
      SELECT KOCKA1      
      USE
      SELECT KOCKA2
      USE
      SELECT KAMATE
   ENDIF   
   
   SET EXACT ON   
   POP KEY
ENDPROC