PARAMETERS DISP1,DISP2
*PRAVIMO FAJLOVE------------------------
IF MKAMARKA<>4
   IF MKAMARKA=1.OR.MKAMARKA=5
      IF MKAMARKA=1
         *---------AKO JE GALEB--------------------
         MMIME='cmd_'+'00'+PPAS+'.TXT'
         MMIME0='cmd_'+'00'+PPAS
         FIDAT=FCREATE(MMIME)
         mM='10 '+DISP1
         FPUTS(fidat,MM)
         mM='20 '+DISP2
         FPUTS(fidat,MM)
         FCLOSE(fidat)
         DO MFSALJI2 WITH MMIME,MMIME0
      ELSE
         *---------AKO JE FI550--------------------
         MMIME='KOM'+'00'+PPAS+'.TXT'
         MMIME0='KOM'+'00'+PPAS
         FIDAT=FCREATE(MMIME)
         mM='001'
         FPUTS(fidat,MM)
         mM='002'+DISP1
         FPUTS(fidat,MM)
         mM='003'+DISP2
         FPUTS(fidat,MM)
         FCLOSE(fidat)
         DO FI550SALJI2 WITH MMIME,MMIME0
      ENDIF      
   ELSE
   IF MKAMARKA=6
      *--------AKO JE EI PARTNER--------------
      MMIME='pd1.sys'
      FIDAT=FCREATE(MMIME)
      mM=DISP1
      FPUTS(fidat,MM)
      FCLOSE(fidat)
      
      MMIME2='pd2.sys'
      FIDAT=FCREATE(MMIME2)
      mM=DISP2
      FPUTS(fidat,MM)
      FCLOSE(fidat)
      
      MPUTANJA='C:\IPOS\UKASU'
      
      COPY FILE &MMIME TO &MPUTANJA
      COPY FILE &MMIME2 TO &MPUTANJA
      DELETE FILE (MMIME)
      DELETE FILE (MMIME2)
     ENDIF 
   ENDIF
ENDif