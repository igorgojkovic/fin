FUNCTION PROVERAF
   *PUSH KEY clear
   *MMIME='cmd_'+'00'+PPAS+'.TXT'
   *MMIME0='cmd_'+'00'+PPAS
   *FIDAT=FCREATE(MMIME)
   *mM='330'
   *FPUTS(fidat,MM)
   *FCLOSE(fidat)
   *COPY FILE &MMIME TO &MFSALJI
   *SET PATH TO &MFPRIMI
   *SET DEFAULT TO &MFPRIMI
   *mfok='F_330.OK'
   *VRCEKAJ=0
   *NPORUKA=''
   *INKEY(1)
   *DO WHILE .T.
   *   IF FILE(MFOK)
   *      NFILE=FOPEN(MFOK,2)
   *      NPORUKA=ALLTRIM(FREAD(NFILE,50))
   *      FCLOSE(NFILE)
   *      ERASE &MFOK
   *      EXIT
   *   ELSE
   *      INKEY(1)
   *      VRCEKAJ=VRCEKAJ+1
   *      IF vrcekaj=5
   *         EXIT
   *      ELSE
   *         loop
   *      endif   
   *   ENDIF
   *ENDDO   
   
   *SET path TO &MDATAPOD
   *SET DEFAULT TO &MDATAPOD
   *POP key
   
   *IF NPORUKA='Fiskalizovan'
   *   RETURN(1)
   *ELSE
      RETURN(1)
   *ENDIF      
ENDFUNC


