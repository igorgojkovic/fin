   SELECT KOCKA
   GO TOP
   IF RECCOUNT()>0
      MMIME='TXT_'+'00'+PPAS+'.TXT'
      MMIME0='TXT_'+'00'+PPAS
      FIDAT=FCREATE(MMIME)
      MM='NALOG ZA IZDAVANJE '+BRKAL
      FPUTS(fidat,MM)
      MM=SUBSTR(AKORISNIK,1,22)
      FPUTS(fidat,MM)
      MM=DTOC(DATE())+' '+TIME()
      FPUTS(fidat,MM)
      MM=REPLICATE('*',30)
      FPUTS(fidat,MM)
      DO WHILE.NOT.EOF()
         MM=SUBSTR(NAZ,1,30)
         FPUTS(fidat,MM)
         MM='= '+TRANSFORM(KOLI,'99 999.999')
         FPUTS(fidat,MM)
         SKIP
      ENDDO  
      FCLOSE(fidat)
      DO MFSALJI WITH MMIME,MMIME0,1
  ENDIF
               
