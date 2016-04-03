
USE PDVKON IN 0 
   SELECT PDVKON
   IF RECCOUNT()<1
      DO DODPDVK  WITH 'IN0','        ','       ','4700      ','4710      ','RACUNI KUPCIMA     ','3',' ','*'
      DO DODPDVK  WITH 'IN1','        ','       ','4701      ','4711      ','KUPAC NIJE OBVEZNIK','3',' ','*'
      DO DODPDVK  WITH 'IR2','        ','       ','4702      ','4712      ','RASHOD IZNAD DOZV. ','2',' ','*'
      DO DODPDVK  WITH 'IA0','        ','       ','4720      ','4730      ','AVANSNA FAKTURA    ','3',' ','*'
      DO DODPDVK  WITH 'IA1','        ','       ','4721      ','4731      ','AVANS NIJE OBVEZNIK','3',' ','*'
      DO DODPDVK  WITH 'IL0','        ','       ','4740      ','4750      ','LICNA POTROSNJA    ','2',' ','*'
      DO DODPDVK  WITH 'IL1','        ','       ','4741      ','4751      ','LICNE USLUGE       ','2',' ','*'
      DO DODPDVK  WITH 'IL2','        ','       ','4742      ','4752      ','POSLOVNI UZORCI    ','2',' ','*'
      DO DODPDVK  WITH 'IL3','        ','       ','4743      ','4753      ','POKLONI MANJE VREDN','2',' ','*'
      DO DODPDVK  WITH 'IG0','        ','       ','4760      ','4760      ','GOTOVINA           ','3',' ','*'
      DO DODPDVK  WITH 'IG1','        ','       ','4761      ','4761      ','CEKOVI             ','3',' ','*'
      DO DODPDVK  WITH 'IG2','        ','       ','4762      ','4762      ','KARTICA            ','3',' ','*'
      DO DODPDVK  WITH 'IZV','        ','       ','       ','        ','IZVOZ              ','1',' ',' '
      DO DODPDVK  WITH 'UN0','2700      ','2710      ','       ','        ','RACUNI DOBAVLJACA  ','1','*','*'
      DO DODPDVK  WITH 'UN1','2701      ','2711      ','       ','        ','RACUNI KOSOVO      ','1','*','*'
      DO DODPDVK  WITH 'UN2','2702      ','2712      ','       ','        ','RACUNI CRNA GORA   ','1','*','*'
      DO DODPDVK  WITH 'UN3','2703      ','2713      ','       ','        ','ISPRAVKA PRETH.PORE','1','*','*'
      DO DODPDVK  WITH 'UA0','2720      ','2730      ','       ','        ','DAT AVANS          ','1','*','*'
      DO DODPDVK  WITH 'UA1','2721      ','2731      ','       ','        ','DAT AVANS KOSOVO   ','1','*','*'
      DO DODPDVK  WITH 'UA2','2722      ','2732      ','       ','        ','DAT AVANS CRNA GORA','1','*','*'
      DO DODPDVK  WITH 'UU0','2740      ','2750      ','       ','        ','UVOZ               ','1','*','*'
      DO DODPDVK  WITH 'US0','2760      ','2760      ','       ','        ','USLUGE STRANACA    ','1','*','*'
      DO DODPDVK  WITH 'US1','2770      ','2770      ','       ','        ','VRACEN POREZ STRANC','1','*','*'
      DO DODPDVK  WITH 'UP0','2780      ','       ','       ','        ','POLJO.ROBA         ','1','*','*'
      DO DODPDVK  WITH 'UP1','2781      ','       ','       ','        ','POLJO.USLUGE       ','1','*','*'
      DO DODPDVK  WITH 'UP2','2782      ','       ','       ','        ','POLJO.SUMSKI PLODOV','1','*','*'
      DO DODPDVK  WITH 'UBP','        ','       ','       ','        ','DOBAVLJAÈ NIJE OBV ','1',' ','*'
      DO DODPDVK  WITH 'BPO','        ','       ','       ','        ','BEZ PRAVA NA ODBIT.','2',' ','*'
      DO DODPDVK  WITH 'USR','        ','       ','       ','        ','SRAZMERNI ODBITAK. ','3',' ','*'
   ENDIF
USE


use tarifa in 0
select tarifa
if reccount()<1
   set procedure to kalprn
   for maa=1 to 10
      do tarifepr with  maa
   next   
   set procedure to   
endif
use

use osag in 0
select osag
aosag=mbazni+'\txt\'+'nosag.prg'
if reccount()<1
   append from &aosag sdf
endif
use

use osagpod in 0
select osagpod
aosagpod=mbazni+'\txt\'+'nosagpod.prg'
if reccount()<1
   append from &aosagpod sdf
endif
use

use kon1 in 0
select kon1
if reccount()<1
   set procedure to kontplan
     do puniklase
   set procedure to
endif
use

use kon2 in 0
select kon2
if reccount()<1
   set procedure to kontplan
     do punigrupe
   set procedure to
endif
use

use kon3 in 0
select kon3
if reccount()<1
   set procedure to kontplan
     do punisint
   set procedure to
endif
use

use kon4 in 0
select kon4
if reccount()<1
   set procedure to kontplan
     do puni4
   set procedure to
endif
use

use kon5 in 0
select kon5
if reccount()<1
   set procedure to kontplan
     do puni5
   set procedure to
endif
use
use kon6 in 0
select kon6
if reccount()<1
   set procedure to kontplan
     do puni6
   set procedure to
endif

use

use konto in 0
select konto
if reccount()<1
   set procedure to kontplan
     do punikon
   set procedure to
endif

use


use zpra in 0
select zpra
apravrac=mtxt+'pravrac.txt'
if reccount()<1
      append from &apravrac sdf
endif
use


use zuod in 0
select zuod
augoradu=mtxt+'ugoradu.txt'
if reccount()<1
      append from &augoradu sdf
endif
use

use zpravkal in 0
select zpravkal
apravkalo=mtxt+'pravkalo.txt'
if reccount()<1
      append from &apravkalo sdf
endif
use



use prolog in 0
select prolog
aprolog=mtxt+'prolog.txt'
if reccount()<1
   append from &aprolog sdf
endif
use


use zugovori in 0
select zugovori
augovori=mtxt+'ugovori.txt'

if reccount()<1
      append from &augovori sdf
endif
use


astatuput=mtxt+'statuput.txt'
use statuput in 0
select statuput
if reccount()<1
   append from &astatuput sdf
endif
use

apduput='..\pduput.txt'
use pduput in 0
select pduput
if reccount()<1
   IF FILE(apduput)
   append from &apduput sdf
   endif
endif
use


use kurs in 0
select kurs
if reccount()>0
   go bottom
   mdatdok=datdok
   if mdatdok=ctod('  .  .    ')
      mdatdok=date()
      replace datdok with mdatdok
   endif
   mkurs=kurs
   da=.t.
   do while da
      if date()>mdatdok
         append blank
         replace datdok with mdatdok+1
         replace kurs with mkurs
         mdatdok=datdok
         loop
      else
         exit
      endif
   enddo
else
append blank
replace datdok with date()
replace kurs with 1            
endif
use         
  


use mesta IN 0
SELECT MESTA
   if reccount()<1
      append blank
      replace mp with 'PN'
      replace posta WITH '35250'
      replace mesto WITH 'PARAÆIN'
      replace ziro2 WITH '077'
      append blank
      replace mp with 'CU'
      replace posta WITH '35230'
      replace mesto WITH 'ÆUPRIJA'
      replace ziro2 WITH '033'
      append blank
      replace mp with 'JA'
      replace posta WITH '35000'
      replace mesto WITH 'JAGODINA'
      replace ziro2 WITH '096'
      append blank
      replace mp with 'KG'
      replace posta WITH '34000'
      replace mesto WITH 'KRAGUJEVAC'
      replace ziro2 WITH '049'
   endif
use

USE PRENPOD IN 0
SELECT PRENPOD
IF RECCOUNT()<1
  APPEND BLANK
  replace PDISK WITH 'C'
  REPLACE PFOLDER WITH 'PODACI'
  REPLACE PREPORTI WITH 'D'
  REPLACE PFORME   WITH 'D'
  REPLACE PLABELE  WITH 'D'
  REPLACE PSLIKE   WITH 'D'
  REPLACE PDODACI  WITH 'D'
  REPLACE PPRG     WITH 'D'
  REPLACE PTXT     WITH 'D'  
ENDIF  
USE

USE FAKPRN IN 0
SELECT FAKPRN
IF RECCOUNT()<1
   FOR MAA=1 TO 8
      set procedure to KALPRN
         DO FAKPRNPR WITH maa
      set procedure to
   NEXT
ENDIF
USE




USE KALPRN IN 0
SELECT KALPRN
IF RECCOUNT()<1
   set procedure to KALPRN
      DO KALPRNPR WITH '   1','KALKULACIJA VP       ','KALKULACIJA CENA ROBE VP  ',' ',' ','UN0'
      DO KALPRNPR WITH '   2','KALKULACIJA MP       ','KALKULACIJA CENA ROBE VP  ',' ',' ','UN0'
      DO KALPRNPR WITH '   3','PRIMOPREDAJNICA VP   ','ULAZ ROBE IZ MAGACINA     ','*',' ','   '
      DO KALPRNPR WITH '   4','PRIMOPREDAJNICA MP   ','ULAZ ROBE IZ RADNJE       ','*',' ','UBP'
      DO KALPRNPR WITH '   1','POVRAÆAJ DOBAVLJACU  ','POVRAÆAJ ROBE             ',' ',' ','UN0'
      DO KALPRNPR WITH '   3','PRENOS U RADNJU      ','PRENOS IZ RADNJE U RADNJU ','*',' ','   '
      DO KALPRNPR WITH '   3','PRENOS U MAGACIN     ','PRENOS IZ RADNJE U MAGACIN','*',' ','UBP'
      DO KALPRNPR WITH '   4','POPIS ROBE           ','POPIS ROBE -POCETNO STANJE','*','*','UBP'
      DO KALPRNPR WITH '   1','KALKULACIJA VP PDV NE','KALK.VP DOBAVLJAÈ NIJE OBV',' ',' ','UBP'
      DO KALPRNPR WITH '   2','KALKULACIJA MP PDV NE','KALK.MP DOBAVLJAÈ NIJE OBV',' ',' ','UBP'
   set procedure to
ENDIF
USE

USE FAKPODN IN 0
SELECT FAKPODN
IF RECCOUNT()<1
   APPEND BLANK
   REPLACE FPSIFRA WITH '  1'
   REPLACE TXT1 WITH 'U sluèaju kašnjenja sa plaæanjem zaraèunavamo zakonsku, zateznu kamatu '
   replace      TXT2 WITH 'Reklamacije se prihvataju pri preuzimanju robe.'
   APPEND BLANK
   REPLACE FPSIFRA WITH '  2'
   REPLACE TXT1 WITH 'Izvoznik proizvoda koji su obuhvaæeni ovom ispravom izjavljuje '
   replace      TXT2 WITH 'da su osim ako nije drugaèije navedeno ovi proizvodi srpsko-crnogorsko perfekcionalnog'
   REPLACE TXT3 WITH 'porekla na paritetu FCO PARAÆIN  '
   
ENDIF
USE

   USE FAKPODN2 IN 0
   SELECT FAKPODN2
   IF RECCOUNT()<1
      APPEND BLANK
      REPLACE FPSIFRA WITH '  1'
      REPLACE FPSIFRA2 WITH '  1'      
      REPLACE TXT1 WITH 'Na osnovu odredaba Zakona o bezbednosti hrane èl.31 i èl.55 (Sl.Glasnik RS br.41/09) u laboratorijama instituta za higijenu i tehnologiju mesa Beograd, Specijalistièkog '
      REPLACE TXT2 WITH 'Veterinarskog instituta u Šapcu i Zavoda za javno zdravlje Valjevo, redovno se vrši kontrola svežeg mesa,sirovina,aditiva,zaèina,poluproizvoda,vode i gotovih proizvoda.'
      REPLACE TXT3 WITH 'U proizvodnom kompleksu je implementiran i sertifikovan sistem bezbednosti HACCP i standard kvaliteta ISO 9001-2000. Postupajuæi po zakonu o izmenama i dopunama '
      REPLACE TXT4 WITH 'Zakona o vetrrinarstvu Sl.Glasnik RS br.30 od 07.05.2010. godine izdajemo sledeæi. '      
      REPLACE TXT5 WITH '                                     A T E S T  '
      REPLACE TXT6 WITH 'kojim se potvrdjuje da proizvodi-namirnice otpremljene po ovom dokumentu odgovaraju propisima Pravilnika o opštim i posebnim uslovima higijene u bilo kojoj fazi'                        
      REPLACE TXT7 WITH 'proizvodnje,prerade i prometa (Sl.Glasnik RS br.72/10)i Pravilnika o kvalitetu usitnjenog mesa, poluproizvoda od mesa i proizvoda od mesa (Sl.Glasnik RS br.31/12) i Pravilnikom o '
      REPLACE TXT8 WITH 'upotrebi aditiva i namirnicama i drugim zahtevima za aditive i njihove mešavine(Sl.List SRJ br.56/03).'      
      REPLACE TXT9 WITH 'Napomena: Naše preduzeæe ima uveden sistem bezbednosti HACCP.'      
   ENDIF
   USE


USE NALVRSTA IN 0
SELECT NALVRSTA
SET PROCEDURE TO NAlproc
   IF RECCOUNT()<1
      DO PVRNAL WITH '  1','IZVOD BANKE 1       ',0,'I','   ','  ','*',3,'100','*','2410      '
      DO PVRNAL WITH '  2','IZVOD BANKE 2       ',0,'I','   ','  ','*',3,'200','*','2412      '
      DO PVRNAL WITH '  3','IZVOD BANKE 3       ',0,'I','   ','  ','*',3,'300','*','2413      '
      DO PVRNAL WITH '  4','IZVOD BANKE 4       ',0,'I','   ','  ','*',3,'400','*','2414      '
      DO PVRNAL WITH '  5','IZVOD BANKE 5       ',0,'I','   ','  ','*',3,'500','*','2415      '
      DO PVRNAL WITH '  6','IZVOD BANKE 6       ',0,'I','   ','  ','*',3,'600','*','2416      '
      DO PVRNAL WITH '  7','KALKULACIJE VP1     ',0,'K','V1 ','  ','*',2,'V1 ','*',''
      DO PVRNAL WITH '  8','RAÈUNI VP1          ',0,'R','V1 ','  ','*',2,'F1 ','*',''
      DO PVRNAL WITH '  9','NIVELACIJE  VP1     ',0,'N','V1 ','  ','*',2,'N1 ','*',''
      DO PVRNAL WITH ' 10','KALKULACIJE MP1     ',0,'K','M1 ','  ','*',2,'M1 ','*',''
      DO PVRNAL WITH ' 11','RAÈUNI MP1          ',0,'R','M1 ','  ','*',2,'R1 ','*',''
      DO PVRNAL WITH ' 12','NIVELACIJE  MP1     ',0,'N','M1 ','  ','*',2,'L1 ','*',''
      DO PVRNAL WITH ' 13','BLAGAJNA 1          ',0,'B','B1 ','  ','*',3,'243','*',''
      DO PVRNAL WITH ' 14','ULAZNI RAÈUNI       ',0,'T','   ','  ','*',2,'TR ','*',''
      DO PVRNAL WITH ' 15','OSTALO              ',0,'O','   ','  ','*',2,'O1 ','*',''
      DO PVRNAL WITH ' 16','POÈETNO STANJE      ',0,'A','   ','  ','*',2,'PS ','*',''
      DO PVRNAL WITH ' 17','ZAKLJUÈNA KNJIŽENJA ',0,'Z','   ','  ','*',2,'ZK ','*',''
      
         
   ENDIF
set procedure to

USE




USE KSEMA IN 0
SELECT KSEMA
IF RECCOUNT()<1
   set procedure to SEMEK
   FOR MAA=1 TO 4
      DO CASE MAA
      CASE MAA=1
         DO SEMEUN WITH '4330      ',;
                        '1100      ',;
                        '8900      ',;
                        '4940      ',;
                        '1324      ',;
                        '1329      ',;
                        '1109      ',;
                        '8809      ',;
                        '2700      ',;
                        '2710      ',;
                        '2780      ',;
                        '1320      ',;
                        '1200      ',;
                        '8800      ',;
                        '2020      ',;
                        '6020      ',;
                        '6210      ',;
                        '8900      ',;
                        '6029      ',;
                        '6219      ',;
                        '8909      ',;
                        '5010      ',;
                        '5110      ',;
                        '8800      ',;
                        '4700      ',;
                        '4710      ',;
                        '1329      ',;
                        '1109      ',;
                        '8809      ',;
                        '6110      ',;
                        'VELEPRODAJA '

      CASE MAA=2
         DO SEMEUN WITH '4330      ',;
                        '1100      ',;
                        '8900      ',;
                        '4940      ',;
                        '1344      ',;
                        '1349      ',;
                        '1109      ',;
                        '8809      ',;
                        '2700      ',;
                        '2710      ',;
                        '2780      ',;
                        '1340      ',;
                        '1200      ',;
                        '8800      ',;
                        '2020      ',;
                        '6020      ',;
                        '6210      ',;
                        '8900      ',;
                        '6029      ',;
                        '6219      ',;
                        '8909      ',;
                        '5010      ',;
                        '5110      ',;
                        '8800      ',;
                        '4700      ',;
                        '4710      ',;
                        '1329      ',;
                        '1109      ',;
                        '8809      ',;
                        '6110      ',;
                        'MALOPRODAJA '
      CASE MAA=3
         DO SEMEUN WITH '7400      ',;
                        '7400      ',;
                        '7400      ',;
                        '4940      ',;
                        '1324      ',;
                        '1329      ',;
                        '1109      ',;
                        '8809      ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '1320      ',;
                        '1200      ',;
                        '8800      ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '1329      ',;
                        '1109      ',;
                        '8809      ',;
                        '        ',;
                        'VP PRENOS '

      CASE MAA=4
         DO SEMEUN WITH '7400      ',;
                        '7400      ',;
                        '7400      ',;
                        '4940      ',;
                        '1344      ',;
                        '1349      ',;
                        '1109      ',;
                        '8809      ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '1340      ',;
                        '1200      ',;
                        '8800      ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '        ',;
                        '1349      ',;
                        '1109      ',;
                        '8809      ',;
                        '        ',;
                        'MP PRENOS '
      ENDCASE   

   NEXT   
   set procedure to
ENDIF   

USE

USE BOJE IN 0
SELECT BOJE
IF RECCOUNT()<1
   
   DO BOJA WITH '255,128,128',    8421631
   DO BOJA WITH '255,000,000',        255
   DO BOJA WITH '128,064,064',    4210816
   DO BOJA WITH '128,000,000',        128
   DO BOJA WITH '064,000,000',         64
   DO BOJA WITH '000,000,000',          0
   DO BOJA WITH '255,255,128',    8454143
   DO BOJA WITH '255,255,000',      65535
   DO BOJA WITH '255,128,064',    4227327
   DO BOJA WITH '255,128,000',      33023
   DO BOJA WITH '128,064,000',      16512
   DO BOJA WITH '128,128,000',      32896
   DO BOJA WITH '128,255,128',    8454016
   DO BOJA WITH '128,255,000',      65408
   DO BOJA WITH '000,255,000',      65280
   DO BOJA WITH '000,128,000',      32768
   DO BOJA WITH '000,064,000',      16384
   DO BOJA WITH '128,128,064',    4227200
   DO BOJA WITH '000,255,128',    8453888
   DO BOJA WITH '000,255,064',    4259584
   DO BOJA WITH '000,128,128',    8421376
   DO BOJA WITH '000,128,064',    4227072
   DO BOJA WITH '000,064,064',    4210688
   DO BOJA WITH '128,128,128',    8421504
   DO BOJA WITH '128,255,255',   16777088
   DO BOJA WITH '000,255,255',   16776960
   DO BOJA WITH '000,064,128',    8404992
   DO BOJA WITH '000,000,255',   16711680
   DO BOJA WITH '000,000,128',    8388608
   DO BOJA WITH '064,128,128',    8421440
   DO BOJA WITH '000,128,255',   16744448
   DO BOJA WITH '000,128,192',   12615680
   DO BOJA WITH '128,128,255',   16744576
   DO BOJA WITH '000,000,160',   10485760
   DO BOJA WITH '000,000,064',    4194304
   DO BOJA WITH '192,192,192',   12632256
   DO BOJA WITH '255,128,192',   12615935
   DO BOJA WITH '128,128,192',   12615808
   DO BOJA WITH '128,000,064',    4194432
   DO BOJA WITH '128,000,128',    8388736
   DO BOJA WITH '064,000,064',    4194368
   DO BOJA WITH '255,128,255',   16744703
   DO BOJA WITH '255,000,255',   16711935
   DO BOJA WITH '255,000,128',    8388863
   DO BOJA WITH '128,000,255',   16711808
   DO BOJA WITH '064,000,128',    8388672
   DO BOJA WITH '255,255,255',   16777215
ENDIF
USE


use l2virm0 in 0 
select l2virm0

if reccount()<1
   set procedure to l2virm
   do prenv 
   set procedure to 
   
ENDIF   
USE
