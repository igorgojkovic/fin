PARAMETERS MTABELA,MPOLJE,MDEFPOLJA,MVRSTA,mredni
      replace tabela WITH mtabela
      replace polje WITH mpolje
      replace defpolja WITH mdefpolja
      REPLACE VRSTA WITH MVRSTA
      IF redni=0
         replace redni WITH mredni
      endif   
