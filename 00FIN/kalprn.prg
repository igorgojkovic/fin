PROCEDURE KALPRNPR
      PARAMETERS A1,A2,A3,A4,A5,A6
PUSH KEY CLEAR
      APPEND BLANK
      REPLACE FVRSTA WITH STR(RECNO(),3,0)
      REPLACE SEMA WITH A1
      REPLACE FNAZ WITH A2
      REPLACE OPIS WITH A3
      REPLACE PRENOS WITH A4
      REPLACE INTERNA WITH A5
      replace vpdv WITH a6
      POP KEY
ENDPROC




procedure FakprnPR
   parameters aa
               MINTERNA = ' '
               MPRENOS  = ' '
               MGRUPA   = '   '
               MFKONTR  = '05'
               MFDPO    = 1
               MFVVAL   = 0
               MFVAL    = 1
               MFPOR    = 1
               MFPORTXT = 'na osnovu porudzbenice '
               MFOTP    = 1
               MFOTPTXT1= 'nasom otpremnicom broj '
               MFOTPTXT2= 'isporucili smo vam sledecu robu:'
               MFKOL    = 1
               MFCEN    = 1
               MFNORMAL = 0
               MFFAKT   = 1
               MFTFAKT  ='fakturisao' 
               MFIZDAO  = 1
               MFTIZDAO ='izdao'
               MFDIREKTOR=1
               MFTDIREKTOR='direktor'
               MFPRIMIO  =1
               mftprimio='primio'
               MFSALDA   =1
               MFAMBLEM  =0
               MFZAGLAV  =1
               MIRBR     =1
               MIRSIF    =1
               MIgrupa   =0
               MINAZ     =1
               MITRANSPAK=0
               MIJED     =1
               MIKOLI    =1
               MICENA    =1
               MIVELVRED =1
               MIRABPROC =1
               MIRABAT   =1
               MIPROCPOR =1
               MIPOREZ   =1
               MIVALDAN  =0
               MICENSAP  =1
               MIBRKAL   =1
               MIKUPAC   =1
               MISORT    =1
               MISLOVA   =0
               MFPSIFRA  ='  1'
               MZAGPOMER =0
               MZAG1     =1
               MZAG2     =1
               MZAG3     =1
               MZAG4     =1
               MZAG5     =1
               MSEMA    ='   1'
               MVPDV='UN0'
PUSH KEY CLEAR

               if aa=1
                  MFNAZ    ='RAÈUN'
                  MSEMA='   1'
               endif
               if aa=2
                  MFNAZ    ='OTPREMNICA'
                  MSEMA='   1'

                  MFDPO    = 0
                  MFPOR    = 1
                  MFPORTXT = 'na osnovu porudzbenice '
                  MFOTPTXT1= 'isporucujemo vam sledecu robu:  '
                  MFOTPTXT2= '                                '

               endif
               if aa=3
                  MFNAZ    ='RAÈUN-OTPREMNICA'
                  MSEMA='   1'
                  
               endif
               if aa=4
                  MFNAZ    ='RAÈUN PO ODJAVI'
                  MFOTPTXT1= 'na osnovu vase odjave           '
                  MFOTPTXT2= 'fakturisemo Vam sledecu robu:   '
                  MSEMA='   1'

               endif
               if aa=5
                  MFNAZ    ='OTPREMNICA KONSIGNANTU'
                  MSEMA='   3'

                  MFPOR    = 0
                  MFPORTXT = ' '

                  MFOTPTXT1= 'na osnovu ugovora-dogovora      '
                  MFOTPTXT2= 'saljemo Vam sledecu robu:   '
                  MVPDV='  '
               endif
               if aa=6
                  MFNAZ    ='OTPREMNICA RADNJI     '
                  MPRENOS  = '*'
                  MFKONTR  = '  '
                  MFDPO    = 0
                  MFVAL    = 0
                  MFPOR    = 0
                  MFPORTXT = ' '
                  MFOTP    = 1
                  MFOTPTXT1= 'internom otpremnicom   '
                  MFOTPTXT2= 'isporucujemo Vam sledecu robu:'
                  MSEMA    ='   3'                  
                  MVPDV=''
                endif
               if aa=7
                  MFNAZ    ='OTPIS ROBE '
                  MINTERNA = '*'
                  MFKONTR  = ''
                  MFDPO    = 0
                  MFVVAL   = 0
                  MFVAL    = 0
                  MFPORTXT = 'na osnovu zapisnika o otpisu '
                  MFOTP    = 1
                  MFOTPTXT1= 'na osnovu zapisnika o otpisu '
                  MFOTPTXT2= 'otpisujemo sledeæu robu:'
                  MFFAKT   = 0
                  MFIZDAO  = 0
                  MFDIREKTOR=1
                  MFPRIMIO  =0
                  MFSALDA   =0
                  MFZAGLAV  =1
                  MIRABPROC =0
                  MIRABAT   =0
                  MIPROCPOR =1
                  MIPOREZ   =1
                  MICENSAP  =1
                  MIKUPAC   =0
                  MISORT    =0
                  MSEMA='   1'

               endif

               if aa=8
                  MFNAZ    ='RAÈUN ZA USLUGE'
                  MFOTPTXT1= 'na osnovu ugovora-dogovora      '
                  MFOTPTXT2= 'fakturišemo Vam sledeæe usluge: '
                  MSEMA='   1'

               endif
               
                  
             
           APPEND BLANK
           REPLACE FVRSTA WITH STR(RECNO(),3,0)
           replace fnaz with mfnaz
           replace     intERNA  with   miNTERNA
           replace     PRENOS   with   mPRENOS
           replace     GRUPA    with   mGRUPA
           replace     FVVAL    with   mFVVAL
           replace     FNORMAL  with   mFNORMAL
           replace     FFAKT    with   mFFAKT
           replace     FIZDAO   with   mFIZDAO
           replace     ftfakt WITH mftfakt
           replace     ftizdao WITH mftizdao
           replace     ftdirektor WITH mftdirektor
           replace     ftprimio WITH mftprimio
           replace     FDIREKTOR with  mFDIREKTOR
           replace     FPRIMIO  with   mFPRIMIO
           replace     FPSIFRA  with   mFPSIFRA
           replace vpdv WITH 'IN0'
           REPLACE SEMA WITH MSEMA
           POP KEY
ENDPROC


PROCEDURE TARIFEPR
PARAMETERS AA

PUSH KEY CLEAR

DO CASE 
CASE AA=1
   DO DODTAR WITH '20',20,'2700      ','470020    ','OPŠTA STOPA ','840-714112843-10'
CASE AA=2
   DO DODTAR WITH '10',10,'2710      ','471010    ','POSEBNA STOPA ',''
CASE AA=3
   DO DODTAR WITH '0',0,'','','','840-714113843-17'
ENDCASE
POP KEY
ENDPROC

PROCEDURE DODTAR
   PARAMETERS A1,A2,A3,A4,A5,A6
   PUSH KEY CLEAR

      APPEND BLANK 
      REPLACE TARIFA WITH A1
      REPLACE PROCPOR WITH A2
      REPLACE KON1D WITH A3
      REPLACE KON1P WITH A4
      REPLACE NAZ1 WITH A5
      REPLACE ZIRORAC WITH A6
      POP KEY
ENDPROC      