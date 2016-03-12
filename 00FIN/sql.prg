*----*************************
      mupit = 'SELECT * FROM magacing  WHERE (objekat=?mobjekat and oblik=?moblik and (datdok>=?mdat0 and datdok<=?mdat1)) ORDER BY brkal '
      SQLEXEC(povezano, mupit ,'magacing')
*-----izdvajanje----------------------------------------------------------

mapolje=SPACE(0)
mapodatak=SPACE(0)
DO TSELECT  WITH 'rob0','naz',mapolje,mapodatak


*PARAMETERS ktabela,korder,kpolje,kpodatak
mkorderlen=LEN(ALLTRIM(korder))
mkpolje=ALLTRIM(kpolje)
mkpoljelen=LEN(ALLTRIM(kpolje))
mkpodatak=ALLTRIM(kpodatak)
mkpodataklen=LEN(ALLTRIM(kpodatak))
IF povezano  > 0
    IF mkpoljelen=0
      	IF mkorderlen<>0
           mupit = 'SELECT * FROM '+ktabela+' order by '+korder
     	ELSE
         	mupit = 'SELECT * FROM '+ktabela
     	ENDIF
    ELSE
      	IF mkorderlen<>0
           mupit = 'SELECT * FROM '+ktabela+' WHERE '+mkpolje+'=?'+mkpodatak+' ORDER BY '+korder
     	ELSE
           mupit = 'SELECT * FROM '+ktabela+' WHERE '+mkpolje+'=?'+mkpodatak
     	ENDIF
   ENDIF 	   
   SQLEXEC(povezano, mupit ,ktabela)
ENDIF
*------------pregled jednog objekta sa where--------------------------------------------
   mobjekat=tobjekat
   mupit='select * FROM magacint where objekat=?mobjekat'
   mrezultat=SQLEXEC(povezano,mupit,'kocka0')
*-----------foxpro sql sa where-------------------------
   SELECT rsif,kol,koli,poc FROM KOCKA0 INTO TABLE &KKOCKA1 WHERE DATDOK<MDAT0
   use
   SELECT * FROM KOCKA0 INTO TABLE &KKOCKA2 WHERE DATDOK>=MDAT0.AND.DATDOK<=MDAT1
   use
   SELECT KOCKA0
   USE
*----------sql sva polja---------------------------   
   mupit='select * FROM kurs '
   mrezultat=SQLEXEC(povezano,mupit,'kurs')   
*----------sql navedena polja --------------------------   
   mupit='select rob0.rsif,rob0.podnaziv,rob0.grupa,rob0.grupa1,;
          rob0.grupa2,rob0.grupa3,rob0.grupa4,rob0.grupa5,rob0.podrsif,rob0.podrob,;
          rob0.proizv,rob0.neto,rob0.jed,rob0.barkod,rob0.procpor FROM rob0 '
          mrezultat=SQLEXEC(povezano,mupit,'kocka0')
*----------sql navedena polja ---------------------------   
   mupit='select rob.rsif,rob.rvrsta,rob.magacin,rob.velcena,rob.malcena,;
         rob.maksimum,rob.optimum,rob.minimum,rob.plcena,rob.proscenv,;
         rob.potp,rob.poth,rob.poto ;                  
          FROM rob '
          mrezultat=SQLEXEC(povezano,mupit,'kocka01')
*----------foxprosql navedena polja levi spoj---------------------------   

  select kocka0.rsif,kocka0.podnaziv,kocka0.grupa,kocka0.grupa1,;
          kocka0.grupa2,kocka0.grupa3,kocka0.grupa4,kocka0.grupa5,kocka0.podrsif,kocka0.podrob,;
          kocka0.proizv,kocka0.neto,kocka0.jed,kocka0.barkod,kocka0.procpor,;
          kocka01.rvrsta,kocka01.magacin,kocka01.velcena,kocka01.malcena,;
          kocka01.maksimum,kocka01.optimum,kocka01.minimum,kocka01.plcena,kocka01.proscenv,;
          kocka01.potp,kocka01.poth,kocka01.poto from kocka01 left join kocka0 on kocka01.rsif=kocka0.rsif;
          into table kocka02
         COPY TO &kkocka3
         USE
         SELECT kocka0
         USE
         SELECT kocka01
         use  
*----------foxprosql navedena polja levi spoj i where---------------------------   
   SELECT kocka2.rsif,;
          kocka2.naz,;
          kocka2.poc,;
          kocka2.kol,;
          kocka2.koli,;
          kocka2.kolst,;
          kocka2.dug,;
          kocka2.pot,;
          kocka2.saldo,;
          kocka2.ndug,;
          kocka2.npot,;
          kocka2.nsaldo,;
          kocka2.vrednost,;
          kocka2.proscenn,; 
          kocka2.cena,; 
          kocka2.sifra,;
          kocka2.sifrad,;
          kocka2.sifrak,;
          kocka2.marza,;
          kocka2.rabat,;          
          kocka2.rabat2,;                    
          kocka2.porez,;          
          kocka3.grupa,;
          kocka3.grupa1,;
          kocka3.grupa2,;
          kocka3.grupa3,;
          kocka3.grupa4,;
          kocka3.grupa5,;
          kocka3.podnaziv,;
          kocka3.podrsif,;
          kocka3.proizv,;
          kocka3.barkod,;
          kocka3.magacin,;
          kocka3.rvrsta,;
          kocka3.velcena,;
          kocka3.malcena,;
          kocka3.podrob, ;
          kocka3.neto,;
          kocka3.maksimum,; 
          kocka3.optimum,; 
          kocka3.minimum,; 
          kocka3.plcena,; 
          kocka3.jed,;           
          kocka3.proscenv,;           
          kocka3.potp,;
          kocka3.poth,;
          kocka3.poto,;
          kocka3.procpor;
          FROM &KKOCKA2 AS KOCKA2 LEFT JOIN &KKOCKA3 AS KOCKA3 ON KOCKA2.RSIF=KOCKA3.RSIF ;
              where ;
         (kocka3.grupa=mgrupa.or.mgrupa=space(3)).and.;
         (kocka3.grupa1=mgrupa1.or.mgrupa1=space(3)).and.;
         (kocka3.grupa2=mgrupa2.or.mgrupa2=space(3)).and.;   
         (kocka3.grupa3=mgrupa3.or.mgrupa3=space(3)).and.;   
         (kocka3.grupa4=mgrupa4.or.mgrupa4=space(3)).and.;   
         (kocka3.grupa5=mgrupa5.or.mgrupa5=space(3)).and.;   
         (kocka3.podrsif=mpodrsif.or.mpodrsif=space(4)).and.;   
         (kocka3.proizv=mproizv.or.mproizv=space(5)).and.;   
         (kocka3.magacin=mmagacin.or.mmagacin=0).and.;   
         (kocka3.rvrsta=mvrstar.or.mvrstar=space(1)).AND.;
         (kocka2.poc<>0 .or. kocka2.kol<>0 .or. kocka2.koli<>0 .or. kocka2.dug<>0 .or. kocka2.pot<>0 .or. kocka2.ndug<>0 .or. kocka2.npot<>0);
          INTO TABLE &KKOCKA4
   USE      
*------------brisanje-----------------
DO Tbrisanje WITH 'magacint','objekat','tobjekat'

*PARAMETERS ktabela,kpolje,kpodatak
mkpolje=ALLTRIM(kpolje)
mkpodatak=ALLTRIM(kpodatak)
IF povezano  > 0
   mupit = 'DELETE FROM '+ktabela+' WHERE '+mkpolje+'=?'+mkpodatak
   SQLEXEC(povezano, mupit)
ENDIF
*---------dodavanje------------
   DO NUMRED
   DO TINSERT WITH 'magacint'

*parameters atabela
brojpolja= afields(niz)-1  
mmi=''
mmv=''
for i=1 to brojpolja
   mniz=ALLTRIM(LOWER(niz(i,1)))
   IF I<brojpolja
      mmi=mmi+mniz+','
      mmv=mmv+'?'+mniz+','         
   ELSE
      mmi=mmi+mniz
      mmv=mmv+'?'+mniz
   ENDIF
ENDFOR
mpolja=' insert into '+atabela+ ' ('+mmi+')'+' values ('+mmv+')'
sqlexec(povezano,mpolja)      


*------------------------ZAMENA PODATAKA - UPDATE-----------

do tupdate with 'faklica'

parameters atabela
*SET STEP ON 
brojpolja= afields(niz)-1  
mmi=''
mmv=''
for i=1 to brojpolja
   mniz=ALLTRIM(LOWER(niz(i,1)))
   IF I<brojpolja
      mmi=mmi+mniz+'='+'?'+mniz+','
   ELSE
      mmi=mmi+mniz+'='+'?'+mniz
   ENDIF
ENDFOR
*bobi=FCREATE('proba.txt')
*MM=ATABELA
*FPUTS(bobi,MM)
*MM=mmi
*FPUTS(bobi,MM)
*MM=mmv
*FPUTS(bobi,MM)
mnumred=numred
mpolja=' UPDATE '+atabela+ ' set '+mmi+' WHERE numred=?mnumred'
*MM=MPOLJA
*FPUTS(bobi,MM)
sqlexec(povezano,mpolja)      
