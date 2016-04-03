PARAMETERS DISP1,DISP2
*PRAVIMO FAJLOVE------------------------
DO CASE MKAMARKA
CASE MKAMARKA=1.OR.MKAMARKA=5
      *---------AKO JE GALEB--------------------
      MMIME='cmd_'+'00'+PPAS+'.TXT'
      MMIME0='cmd_'+'00'+PPAS
      FIDAT=FCREATE(MMIME)
      mM='10 '+DISP1
      FPUTS(fidat,MM)
      mM='20 '+DISP2
      FPUTS(fidat,MM)
      FCLOSE(fidat)
      DO KASAMFSALJI2 WITH MMIME,MMIME0
CASE MKAMARKA=6
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
CASE MKAMARKA=8
IF AFDISPLEJ=1
SET PROCEDURE TO DISPLEJ
   LLCD(DISP1,DISP2)
SET PROCEDURE TO 
ENDIF         
ENDCASE         
