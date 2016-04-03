SET DEFAULT TO &MDATABAZE

IF !FILE('JP.DBF')
   CREATE TABLE JP(;
      PIB       C(13),;
      GRUPA     C(2),;
      IME_PREZ  C(30) ,;
      SIFUL     C(3),; 
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      PSMECE    C(1) ,;
      POV       N(12),;
      POVNE     N(12),;
      ZBIRNI    N(5),;
      POPSOC    N(4) ,;  
      CENOVNIK  N(10),;
      SMECE     N(12,2) ,;
      SMECEN    N(12,2),;
      EKODINAR  N(12,2) ,;
      UKUPNO    N(12,2) ,;
      POREZ     N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      RABAT     N(12,2) ,;
      SOC       N(12,2),;  
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      OSTALO    N(12,2) ,;      
      SIFRA     C(9) ,;
      VSIF      C(9),; 
      VRSTA     C(1),; 
      DATPRI    D(8) ,;
      DATODJ    D(8) ,;
      MESECI    N(2)  ,; 
      NAPOMENA  C(50) ,;
      NAPOMENA2 C(50),;
      SPORAZUM  N(12,2),;   
      DATSPORAZ D(8),;
      broj      c(10),; 
      IDBROJ    C(10),;
      STSMECE   C(1),; 
      BRRAC     C(20) ,;      
      POZIVO    C(20) ,;      
      DATUM     D(8) ,;
      VALUTA    D(8) ,; 
      PIB2      C(5),;
      MATICNIBR C(13);     
      )                                                                                                                                                                         
   USE
ENDIF

IF !FILE('JPUPL.DBF')
   CREATE TABLE JPUPL(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       VALUTA    D(8) ,;
       ZATVAR    C(1),;
       BRRAC     C(20),;  
       OPIS      C(20),;
       SIFRA     C(9) ,;
       SALDO     N(18,2),;
       DANAS     D(8) ,;
       VREME     C(8) ,; 
       OPER      C(2) ,;
       ARHIVA    C(1); 
       )
   USE
ENDIF

IF !FILE('JPCENE.DBF')
   CREATE TABLE JPCENE(;
      CENOVNIK  N(2) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CSMECE    N(10,3) ,;
      CSMECEN   N(10,3) ,;   
      CEKO      N(10,2),;   
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      DATUOD    D(8) ,;
      DATUDO    D(8),;      
      MESEC     N(2),; 
      CS1       N(12,5),;
      CS2       N(12,5),;
      CS3       N(12,5),;
      CS4       N(12,5),;
      CS5       N(12,5),;
      CS6       N(12,5),;
      CS7       N(12,5),;
      CS8       N(12,5),;
      CS9       N(12,5),;
      CS10      N(12,5),;
      CS11      N(12,5),;
      CS12      N(12,5),;
      CS13      N(12,5),;
      CS14      N(12,5),;
      CS15      N(12,5),;
      CS16      N(12,5),;
      CS17      N(12,5),;
      CS18      N(12,5),;
      CS19      N(12,5),;
      CS20      N(12,5),;
      CS21      N(12,5),;
      CS22      N(12,5),;
      CS23      N(12,5),;
      CS24      N(12,5),;
      CS25      N(12,5),;
      CS26      N(12,5),;
      CS27      N(12,5),;
      CSN21     N(12,5),;      
      CSN22     N(12,5),;
      CSN23     N(12,5),;
      CSN24     N(12,5),;
      CSN25     N(12,5),;
      CSN26     N(12,5),;
      CSN27     N(12,5),;
      NCS1      C(25),;
      NCS2      C(25),;
      NCS3      C(25),;
      NCS4      C(25),;
      NCS5      C(25),;
      NCS6      C(25),;
      NCS7      C(25),;
      NCS8      C(25),;
      NCS9      C(25),;
      NCS10     C(25),;
      NCS11     C(25),;
      NCS12     C(25),;
      NCS13     C(25),;
      NCS14     C(25),;
      NCS15     C(25),;
      NCS16     C(25),;
      NCS17     C(25),;
      NCS18     C(25),;
      NCS19     C(25),;
      NCS20     C(25),;
      NCS21     C(25),;
      NCS22     C(25),;
      NCS23     C(25),;
      NCS24     C(25),;
      NCS25     C(25),;
      NCS26     C(25),;
      NCS27     C(25),;
      PROCPOR   N(09,3);
      )                                                                                                                                                                         
   USE
ENDIF
IF !FILE('JPULICE.DBF')
   CREATE TABLE JPULICE(;
   SIFUL      C(3) ,;
   ULICA      C(25);
   )
   USE
ENDIF
IF !FILE('JPOBRAC.DBF')
   CREATE TABLE JPOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2) ;
   )
   USE
ENDIF
IF !FILE('JPKAM.DBF')
   CREATE TABLE JPKAM(;
      RBR         C(4),;
      PIB         C(13),;
      SIFRA       C(9),;
      DATPOC      D(8),;
      DATKRA      D(8),;
      DANA        N(4),;
      STOPA       N(18,4),;
      PERIOD      N(3),;
      KOEF        N(18,8),;
      SOSNOVICA   N(18,4),;
      DUG         N(18,2),;
      POT         N(18,2),;
      OSNOVICA    N(18,4),;
      DATUM       D(8),;
      DATDOK      D(8),;
      VAZI        C(1),;
      BRRAC       C(20),;
      ANSIF       N(2),;
      KAMATA      N(18,4),;
      IME_PREZ    C(30),;
      ULICA       C(25),;
      ULBROJ      C(7);
      )
   USE
ENDIF
IF !FILE('JPKastop.dbf')
   create table JPkastop;
         (;
          dat0      D(8) ,;
          dat1      D(8) ,;
          stopa     N(18,4) ,;
          koef      N(18,8) ,;
          period    N(3) ;
          )
       USE   
   ENDIF
IF !FILE('JPkaKOEF.dbf')
   create table JPkaKOEF;
         (;
          datUM     D(8) ,;
          stopa     N(18,4) ,;
          koef      N(18,8) ,;
          period    N(3) ;
          )
       USE   
   ENDIF
IF !FILE('JPRACTXT.DBF')
   CREATE TABLE JPRACTXT(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50);
      )
   USE
ENDIF

IF !FILE('JPRACTXF.DBF')
   CREATE TABLE JPRACTXF(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50);
      )
   USE
ENDIF

IF !FILE('JPUNP.DBF')
   CREATE TABLE JPunp ;
               (POC       N(2)     ,;
                KRAJ      N(2)     ;
                )
USE
ENDIF
IF !FILE('JPGRUPAK.DBF')
   CREATE TABLE JPGRUPAK(;
      GRUPA     C(3),;
      NAZIV     C(20),;
      DUG       N(12,2),;
      POT       N(12,2),;
      BRNAL     C(6),;
      DATUM     D(8);
      )                                                                                                                                                                         
   USE
ENDIF

IF !FILE('JPGRUPA.DBF')
   CREATE TABLE JPGRUPA(;
      GRUPA     C(2),;
      NAZIV     C(20);
      )                                                                                                                                                                         
   USE
ENDIF
IF !FILE('JPFK.DBF')
   CREATE TABLE JPFK(;
   BRNAL      C(6) ,;
   BRANAL     N(2) ,;
   GRUPA      C(2);   
   )
   USE
ENDIF

IF !FILE('JPRACD.DBF')
   CREATE TABLE JPRACD(;
      PIB       C(13),;
      GRUPA     C(2),;
      IME_PREZ  C(30) ,;
      SIFUL     C(3),; 
      PSMECE    C(1) ,;
      Pov       N(12),;
      PovNE     N(12),;      
      POPSOC    N(4) ,;  
      CENOVNIK  N(10),;
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      SMECE     N(12,2) ,;
      SMECEN    N(12,2) ,;
      EKODINAR  N(12,2) ,;
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      POREZ     N(12,2) ,;
      PROCPOR   N(09,3) ,;
      KAMATA    N(12,2) ,;
      SOC       N(12,2) ,;  
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      RABAT     N(12,2) ,;
      OSTALO    N(12,2),;
      SIFRA     C(9) ,;
      VSIFRA    C(9),; 
      VRSTA     C(1),; 
      PSTANJE   N(12) ,;
      ZSTANJE   N(12) ,;
      BRRAC     C(20) ,;      
      POZIVO    C(20) ,;      
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CSMECE    N(10,3) ,;
      CSMECEN   N(10,3) ,;
      CEKO      N(10,3) ,;
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      MESEC     N(2),; 
      SPORAZUM  N(12,2),;
      CS        N(12,4),;
      NCS       C(30),;      
      ANAZIV    C(30),;              
      AMESTO    C(25),;                
      AULICA    C(25),;     
      IDBROJ    C(10),;
      SSIFRA    C(6),; 
      PIB2      C(5);
      )                                                                                                                                                                         
   USE
ENDIF


IF !FILE('JPRACU.DBF')
   CREATE TABLE JPRACU(;
       D1           D(8) ,;
       DIN1         N(10,2) ,;
       D2           D(8) ,;
       DIN2         N(10,2) ,;
       D3           D(8) ,;
       DIN3         N(10,2) ,;
       D4           D(8) ,;
       DIN4         N(10,2) ,;
       D5           D(8) ,;
       DIN5         N(10,2) ,;
       D6           D(8) ,;
       DIN6         N(10,2) ,;
       D7           D(8) ,;
       DIN7         N(10,2) ,;
       D8           D(8) ,;
       DIN8         N(10,2) ,;
       D9           D(8) ,;
       DIN9         N(10,2) ,;
       D10          D(8) ,;
       DIN10        N(10,2) ,;
       D11          D(8) ,;
       DIN11        N(10,2) ,;
       D12          D(8) ,;
       DIN12        N(10,2) ,;
       D13          D(8) ,;
       DIN13        N(10,2) ,;
       D14          D(8) ,;
       DIN14        N(10,2) ,;
       D15          D(8) ,;
       DIN15        N(10,2) ,;
       D16          D(8) ,;
       DIN16        N(10,2) ,;
       D17          D(8) ,;
       DIN17        N(10,2) ,;
       D18          D(8) ,;
       DIN18        N(10,2) ,;
       D19          D(8) ,;
       DIN19        N(10,2) ,;
       D20          D(8) ,;
       DIN20        N(10,2) ,;
       D21          D(8) ,;
       DIN21        N(10,2) ,;
       D22          D(8) ,;
       DIN22        N(10,2) ,;
       D23          D(8) ,;
       DIN23        N(10,2) ,;
       D24          D(8) ,;
       DIN24        N(10,2) ,;       
       PIB          C(13) ,;
       UPLACENO     N(10,2),;
       UPLACPER    N(10,2);
       )
    USE   
ENDIF

IF !FILE('JPRACU.DBF')
   CREATE TABLE JPRACU(;
       PIB       C(13),;
       DATUM     D(8) ,;
       POT       N(18,2);
       )
   USE
ENDIF

IF !FILE('MATICNA.DBF')
   CREATE TABLE MATICNA(;
      MATICNIBR C(13) ,;
      PREZ      C(25) ,;
      IME       C(25) ,; 
      ULICA     C(25) ,;
      ULBROJ    C(7)  ,;
      POSTA     C(5)  ,;
      MESTO     C(25) ,;   
      OTAC      C(25) ,;
      POL       C(1)  ,; 
      PIB       C(13) ,;
      IME_PREZ  C(30) ,;
      VULICA    C(25) ,;
      VULBROJ   C(7) ;      
      )                                                                                                                                                                         
   USE
ENDIF

close all tables
SET DEFAULT TO 
SET DEFAULT TO &mbazni
