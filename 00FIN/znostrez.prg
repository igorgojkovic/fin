procedure BILPUNI

PUSH KEY CLEAR

SELECT BILSEMA
GO TOP
IF RECCOUNT() <1
     DO PUNIBIL WITH '   ','                ','  A.NETO REZULTAT IZ POSLOVANJA                          ','*' 
     DO PUNIBIL WITH '2001','                ','  I.NETO DOBITAK (AOP 1064)                               ','*' 
     DO PUNIBIL WITH '2002','                ','  I.NETO GUBITAK (AOP 1065)                               ','*' 
     DO PUNIBIL WITH '   ','                ','  B.OSTALI SVEOBUHVATNI DOBITAK ILI GUBITAK              ','*' 
     DO PUNIBIL WITH '   ','                ',' -a)Stavke koje neæe biti reklasifikovane u              ',' ' 
     DO PUNIBIL WITH '   ','                ','    bilansu uspeha u buduæim periodima                   ','*' 
     DO PUNIBIL WITH '   ','                ','  1.Promene revalorizacije nematerijalne imovine,        ',' ' 
     DO PUNIBIL WITH '   ','                ','    nekretnina,postrojenja i opreme                      ','*' 
     DO PUNIBIL WITH '2003','    330         ','  a)poveæanje revalorizacionih rezervi                   ','*' 
     DO PUNIBIL WITH '2004','                ','  b)smanjenje revalorizacionih rezervi                   ','*' 
     DO PUNIBIL WITH '   ','                ','  2.Aktuarski dobici ili gubici po osnovu planova        ',' ' 
     DO PUNIBIL WITH '   ','                ','    definisanih primanja                                 ','*' 
     DO PUNIBIL WITH '2005','    331         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2006','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','  3.Dobici ili gubici po osnovu ulaganja u               ',' ' 
     DO PUNIBIL WITH '   ','                ','    vlasnièke instrumente kapitala                       ','*' 
     DO PUNIBIL WITH '2007','    332         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2008','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','  4.Dobici ili gubici po osnovu udela u ostalom sveo-    ',' ' 
     DO PUNIBIL WITH '   ','                ','    buhvatnom dobitku ili gubitku pridruženih društava   ','*' 
     DO PUNIBIL WITH '2009','    333         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2010','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','- b)Stavke koje naknadno mogu biti reklasifikovane u     ',' ' 
     DO PUNIBIL WITH '   ','                ','    Bilansu uspeha u buduæim periodima                   ','*' 
     DO PUNIBIL WITH '   ','                ','  1.Dobici ili gubici po osnovu preraèuna finansijskih   ',' ' 
     DO PUNIBIL WITH '   ','                ','    izveštaja inostranog poslovanja                      ','*' 
     DO PUNIBIL WITH '2011','    334         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2012','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','  2.Dobici ili gubici od instrumenata zaštite neto       ',' ' 
     DO PUNIBIL WITH '   ','                ','    ulaganja u inostrano poslovanje                      ','*' 
     DO PUNIBIL WITH '2013','    335         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2014','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','  3.Dobici ili gubici po osnovu instrumenata zaštite     ',' ' 
     DO PUNIBIL WITH '   ','                ','    rizika(hedžinga)novèanog toka                        ','*' 
     DO PUNIBIL WITH '2015','    336         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2016','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','  4.Dobici ili gubici po osnovu hartija od vrednosti     ',' ' 
     DO PUNIBIL WITH '   ','                ','    raspoloživih za prodaju                              ','*' 
     DO PUNIBIL WITH '2017','    337         ','  a)dobici                                               ','*' 
     DO PUNIBIL WITH '2018','                ','  b)gubici                                               ','*' 
     DO PUNIBIL WITH '   ','                ','  I.OSTALI BRUTO SVEOBUHVATNI DOBITAK                    ',' ' 
     DO PUNIBIL WITH '2019','                ','    (2003+2005+2007+2009+2011+2013+2015+2017)-(2004+2006+2008       ',' ' 
     DO PUNIBIL WITH '   ','                ','     +2010+2012+2014+2016+2018)>=0                             ','*' 
     DO PUNIBIL WITH '   ','                ',' II.OSTALI BRUTO SVEOBUHVATNI GUBITAK                    ',' ' 
     DO PUNIBIL WITH '2020','                ','    (2004+2006+2008+2010+2012+2014+2016+2018)-(2003+2005+2007       ',' ' 
     DO PUNIBIL WITH '   ','                ','     +2009+2011+2013+2015+2017)>=0                           ','*' 
     DO PUNIBIL WITH '2021','                ','III.POREZ NA OSTALI SVEOBUHVATNI DOBITAK ILI GUBITAK     ',' ' 
     DO PUNIBIL WITH '   ','                ','    PERIODA                                              ','*' 
     DO PUNIBIL WITH '2022','                ',' IV.NETO OSTALI SVEOBUHVATNI DOBITAK (2019-2020-2021)>=0        ','*'
     DO PUNIBIL WITH '2023','                ','  V.NETO OSTALI SVEOBUHVATNI GUBITAK (2020-2019+2022)>=0        ','*'
     DO PUNIBIL WITH '   ','                ','V.UKUPAN NETO SVEOBUHVATNI REZULTAT PERIODA              ','*' 
     DO PUNIBIL WITH '2024','                ','  I.UKUPAN NETO SVEOBUHVATNI DOBITAK                     ',' ' 
     DO PUNIBIL WITH '   ','                ','    (2001-2002+2022-2023)>=0                             ','*' 
     DO PUNIBIL WITH '2025','                ',' II.UKUPAN NETO SVEOBUHVATNI GUBITAK                     ',' ' 
     DO PUNIBIL WITH '   ','                ','    (2002-2001+2023-2022)>=0                             ','*' 
     DO PUNIBIL WITH '2026','                ','G.UKUPAN NETO SVEOBUHVATNI DOBITAK ILI GUBITAK           ',' ' 
     DO PUNIBIL WITH '   ','                ','    (2027+2028)=aop 2024>=0 ili aop 2025 >0              ','*' 
     DO PUNIBIL WITH '2027','                ','  1.Pripisan veæinskim vlasnicima kapitala               ','*' 
     DO PUNIBIL WITH '2028','                ','  2.Pripisan vlasnicima koji nemaju kontrolu             ','*' 



ENDIF
POP KEY
ENDPROC

procedure punibil
   PARAMETERS MAOP,mkonto,mopis,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace kontA with Mkonto
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc

*------------PRERACUNAVANJE BILANSA----------------
PROCEDURE BILRAC
PUSH KEY CLEAR

      SELECT BILSEMA
      SET ORDER TO 1
      GO TOP
      *-----------AKTIVA---------------
      SEEK '2001'
      NP2001=PRETH
      NN2001=NETO

      SEEK '2002'
      NP2002=PRETH
      NN2002=NETO

      SEEK '2003'
      NP2003=PRETH
      NN2003=NETO

      SEEK '2004'
      NP2004=PRETH
      NN2004=NETO

      SEEK '2005'
      NP2005=PRETH
      NN2005=NETO

      SEEK '2006'
      NP2006=PRETH
      NN2006=NETO

      SEEK '2007'
      NP2007=PRETH
      NN2007=NETO

      SEEK '2008'
      NP2008=PRETH
      NN2008=NETO

      SEEK '2009'
      NP2009=PRETH
      NN2009=NETO

      SEEK '2010'
      NP2010=PRETH
      NN2010=NETO

      SEEK '2011'
      NP2011=PRETH
      NN2011=NETO

      SEEK '2012'
      NP2012=PRETH
      NN2012=NETO

      SEEK '2013'
      NP2013=PRETH
      NN2013=NETO

      SEEK '2014'
      NP2014=PRETH
      NN2014=NETO

      SEEK '2015'
      NP2015=PRETH
      NN2015=NETO

      SEEK '2016'
      NP2016=PRETH
      NN2016=NETO

      SEEK '2017'
      NP2017=PRETH
      NN2017=NETO

      SEEK '2018'
      NP2018=PRETH
      NN2018=NETO

      SEEK '2021'
      NP2021=PRETH
      NN2021=NETO


      SEEK '2019'
      NP2019=(NP2003+NP2005+NP2007+NP2009+NP2011+NP2013+NP2015+NP2017)-(NP2004+NP2006+NP2008+NP2010+NP2012+NP2014+NP2016+NP2018)
      NN2019=(NN2003+NN2005+NN2007+NN2009+NN2011+NN2013+NN2015+NN2017)-(NN2004+NN2006+NN2008+NN2010+NN2012+NN2014+NN2016+NN2018)
      REPLACE PRETH WITH NP2019
      REPLACE NETO  WITH NN2019
      IF NP2019<0
         REPLACE PRETH WITH 0
         NP2019=0
      ENDIF   
      IF NN2019<0
         REPLACE NETO WITH 0
         NN2019=0
      ENDIF   

      SEEK '2020'
      NP2020=(NP2004+NP2006+NP2008+NP2010+NP2012+NP2014+NP2016+NP2018)-(NP2003+NP2005+NP2007+NP2009+NP2011+NP2013+NP2015+NP2017)
      NN2020=(NN2004+NN2006+NN2008+NN2010+NN2012+NN2014+NN2016+NN2018)-(NN2003+NN2005+NN2007+NN2009+NN2011+NN2013+NN2015+NN2017)
      REPLACE PRETH WITH NP2020
      REPLACE NETO  WITH NN2020
      IF NP2020<0
         REPLACE PRETH WITH 0
         NP2020=0
      ENDIF   
      IF NN2020<0
         REPLACE NETO WITH 0
         NN2020=0
      ENDIF   

      SEEK '2022'
      NP2022=NP2019-NP2020-NP2021
      NN2022=NN2019-NN2020-NN2021
      REPLACE PRETH WITH NP2022
      REPLACE NETO  WITH NN2022
      IF NP2022<0
         REPLACE PRETH WITH 0
         NP2022=0
      ENDIF   
      IF NN2022<0
         REPLACE NETO WITH 0
         NN2022=0
      ENDIF   

      SEEK '2023'
      NP2023=NP2020-NP2019+NP2021
      NN2023=NN2020-NN2019+NN2021
      REPLACE PRETH WITH NP2023
      REPLACE NETO  WITH NN2023
      IF NP2023<0
         REPLACE PRETH WITH 0
         NP2023=0
      ENDIF   
      IF NN2023<0
         REPLACE NETO WITH 0
         NN2023=0
      ENDIF   


      SEEK '2024'
      NP2024=NP2001-NP2002+NP2022-NP2023
      NN2024=NN2001-NN2002+NN2022-NN2023
      REPLACE PRETH WITH NP2024
      REPLACE NETO  WITH NN2024
      IF NP2024<0
         REPLACE PRETH WITH 0
         NP2024=0
      ENDIF   
      IF NN2024<0
         REPLACE NETO WITH 0
         NN2024=0
      ENDIF   
      
      
****************************************

      SEEK '2025'
      NP2025=NP2002-NP2001+NP2023-NP2022
      NN2025=NN2002-NN2001+NN2023-NN2022
      REPLACE PRETH WITH NP2025
      REPLACE NETO  WITH NN2025
      IF NP2025<0
         REPLACE PRETH WITH 0
         NP2025=0
      ENDIF   
      IF NN2025<0
         REPLACE NETO WITH 0
         NN2025=0
      ENDIF   
***************************************
      SEEK '2026'
      REPLACE PRETH WITH 0
      IF NP2024>0
         NP2026=NP2024
         REPLACE PRETH WITH NP2026
      ENDIF
      REPLACE NETO WITH 0
      IF NN2024>0
         NN2026=NN2024
         REPLACE NETO WITH NN2026
      ENDIF
**************************************
      SEEK '2026'
      *REPLACE PRETH WITH 0      
      IF NP2025>0
         NP2026=NP2025
         REPLACE PRETH WITH NP2026
      ENDIF
      *REPLACE NETO WITH 0      
      IF NN2025>0
         NN2026=NN2025
         REPLACE NETO WITH NN2026
      ENDIF
POP KEY
ENDPROC