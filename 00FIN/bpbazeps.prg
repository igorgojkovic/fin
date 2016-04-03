PUSH KEY CLEAR
SET EXACT ON
IF !FILE('roba.dbf')
   CREATE TABLE roba(;
        SFROB       N(16), ;
        NAZROB      C(60), ;
        PROIZ       C(30), ;
        JEDMER      C(10), ;
        NABCEN      N(17,2), ;
        POCEN       N(17,2), ;
        TR          C(3), ;     
        SALDO       N(17,4), ; 
        MARKCEN     N(17,2), ; 
        STNABC      N(17,2), ; 
        STARCEN     N(17,2), ; 
        STPOPC      N(17,2), ; 
        DATPOP      D, ;
        MARZA       N(17,5), ;
        PRODCEN     N(17,4), ;
        TARPOR      C(3), ;     
        TIP         N(16), ;
        KATBR       C(14), ;    
        KARAKTERIS  C(255), ;  
        SC          N(16), ; 
        DATUM_IST   D, ;
        MERI        N(16), ; 
        SIFPROGRAM  N(16), ; 
        VRSTA       N(16), ; 
        OZN         N(16), ; 
        PODELA      N(16), ; 
        UG_VRSTA_R  N(16), ; 
        CODE        C(10), ;   
        PLACE       N(16), ;   
        JEDINICA_M  N(16), ;   
        USERCREATE  C(30), ;
        DATECREATE  D, ;
        LASTUSER    C(30), ;
        LASTMODIFI  D, ;
        SFKOM       N(16), ;   
        GALEB       N(16), ;   
        KATALOSKA_  C(20), ;
        RASTER      N(16), ;
        BRAND       N(16), ;
        KOLEKCIJA   C(30), ;
        POL         C(10), ;
        SILUETA     C(30), ;
        KATEGORIJA  C(30), ;
        BOJA        C(50), ;
        SIFRA_GORI  C(20), ;   
        GORIVO_FLA  N(16), ;
        MP_CENA     N(17,2), ;
        VP_CENA     N(17,2), ;
        CAR_TARIFA  C(20), ;
        VRSTA_TROS  C(9), ;
        KALO        N(17,3), ;
        MASA        N(17,6), ;
        GORIVO_NAK  N(17,6), ;
        TIP_VARIJA  N(16), ;
        PERIOD_ZAS  N(16), ;
        AKCIZA      N(17,2), ;
        EXPORT_CRC  N(16), ;
        POPUST_GOL  N(16), ;
        VRSTA_ROBE  N(16), ;
        SFKOM_PROI  N(16), ;
        SIFPODPROG  N(16), ;
        KOLPAK      N(17,4), ;
        NEAKTIVNA   N(16), ;
        TIP_OS      N(16), ;
        KONTO_TROS  C(9), ;
        MAGACIN_SA  C(3), ;
        DRZAVA      N(16), ;
        GARANCIJA   N(16), ;
        WEB         N(16), ;
        MIN_CENA    N(17,4), ;
        CENADEV     N(17,4), ;
        CENADEV1    N(17,4), ;
        CENADEV2    N(17,4), ;
        DIMENZIJE   C(30), ;
        CENADEV3    N(17,4), ;
        IME_AUTORA  C(50), ;
        GODINA_IZD  N(16), ;
        IZDAVACEV_  C(20), ;
        ISBN        C(20), ;
        VRSTA_SKOL  C(20), ;
        SKOLSKI_RA  C(20), ;
        SKOLSKI_PR  C(20), ;
        SIRINA      N(17,4), ;
        DUZINA      N(17,4), ;
        VISINA      N(17,4), ;
        JKL         C(7), ;
        ATC         C(7), ;
        LISTA       C(4), ;
        PN          N(16), ;
        GRUPE_ROBE  C(4), ;
        FARM_OBLIK  C(4), ;
        SP_PA_OS    C(1), ;
        LEK_NELEK_  C(1), ;
        VRSTE_ZA_P  C(3), ;
        GRUPE_FOND  C(4), ;
        DU          C(1), ;
        RASPAKOVAN  N(16), ;
        SERIJA_DA   N(16), ;
        CENA_FOND   N(17,2), ;
        NAKNADA_PU  N(17,2), ;
        NAKNADA_PU  N(17,2) ;
        )
   USE
endif   

IF !FILE('komitenti.dbf')
   CREATE TABLE komitenti(;
        SFKOM       N(16), ;
        NAZKOM1     C(50), ;
        NAZKOM2     C(50), ;
        ADRESA      C(50), ;
        GRAD        C(50), ;
        PBROJ       C(50), ;
        TELEFON     C(20), ;
        TELEX       C(20), ;
        ZIRAC       C(20), ;
        KUPAC_DOBA  N(16), ;
        PIB         C(20), ;
        USERCREATE  C(30), ;
        DATECREATE  D, ;
        LASTUSER    C(30), ;
        LASTMODIFI  D, ;
        NEAKTIVAN   N(16), ;
        PDV         N(16), ;
        POLJOPRIVR  C(50), ;
        JMBG        C(30), ;
        SIFRA_AXAP  C(10), ; 
        TELEFON2    C(20), ;
        MOBILNI     C(20), ;
        MOBILNI2    C(20), ;
        SIFRA_DELA  C(20), ;
        MATICNI_BR  C(20), ;
        E_MAIL      C(50), ;
        OSNIVAC     N(16), ;
        ZIRALAC     N(16), ; 
        VALUTA_DAN  N(16), ;
        PUN_NAZIV   C(255), ;
        INO         N(16), ;
        OPSTINA     N(16), ;
        KATEGORIJA  N(16), ;
        REGIJA      N(16), ;
        SIFRA_MEST  N(16), ;
        DRZAVA      N(16), ;
        PDV_BROJ    C(25), ;
        KOMERC      C(3), ;
        KREDIT      N(17,6), ;
        KREDIT_DEV  N(17,6), ;
        WEBUSERNAM  C(30), ;
        WEBPASSWOR  C(30), ;
        SFKOM2      N(16), ;
        HOMEPAGE    C(200), ;
        REZERVACIJ  N(16), ;
        SFKOM_STAR  N(16), ;
        NAPOMENA    C(255), ;
        RABAT       N(17,2), ;
        NACIN_ZATV  N(16), ;
        EXPORT_CRC  N(16), ;
        SIFRA_ROX   C(20), ;
        KUPAC       N(16), ;
        DOBAVLJAC   N(16), ;
        PROIZVODJA  N(16), ;
        VRSTA_PART  N(16), ;
        PAK         C(50), ;
        BRLK        C(50), ;
        ZDR_UST     C(50) ;
        )
   USE
ENDIF
IF !FILE('zag_razduzenje.dbf')
   CREATE TABLE zag_razduzenje(;
        BROJ        N(16), ;
        SIFMAG      C(3), ;
        DATUM       D, ;
        NAPOMENA    C(80), ;
        STATUS      N(16), ;
        USERID      C(3), ;
        VRSTA       N(16), ;
        USERCREATE  C(30), ;
        DATECREATE  D, ;
        LASTUSER    C(30), ;
        LASTMODIFI  D, ;
        EXPORT_FLA  N(16), ;
        EXPORT_DAT  D, ;
        EXPORT_NUM  N(16), ;
        VRSTE_EVID  N(16), ;
        GODINA      N(16), ;
        KATBROJ     N(16), ;
        OZN         C(20), ;
        NALOG       N(16) ;
        )
   USE
endif           
IF !FILE('stavke_raz.dbf')
   CREATE TABLE 'stavke_raz.dbf' ( ;
        BROJ        N(16), ;
        SIFMAG      C(3), ;
        SIFRA       N(16), ; 
        KOLICINA    N(17,3), ;
        CENA        N(17,2), ;
        BARKOD      C(14), ;
        USERCREATE  C(30), ;
        DATECREATE  D, ;
        LASTUSER    C(30), ;
        LASTMODIFI  D, ;
        TARPOR      C(3), ;
        POREZ       N(17,3) ;
        )
   USE
endif           

IF !FILE('zag_ug_kalk.dbf')
   CREATE TABLE 'zag_ug_kalk.dbf' ( ;
        BROJ        N(16), ;
        SIFMAG      C(3), ;
        VEZA        C(20), ; 
        DOSTAVNICA  C(20), ;
        DATUM       D, ;
        NAPOMENA    C(80), ;
        STATUS      N(16), ;
        USERID      C(3), ;
        OVERA       N(16), ;
        OVERA_KOME  C(3), ;
        VRSTA_KNJI  N(16), ;
        SFKOM       N(16), ;
        SFDOB1      N(16), ;
        SFDOB2      N(16), ;
        SFDOB3      N(16), ;
        BRDOK1      C(12), ;
        BRDOK2      C(12), ;
        BRDOK3      C(12), ;
        TROSAK1     N(17,2), ; 
        TROSAK2     N(17,2), ; 
        TROSAK3     N(17,2), ; 
        IZDOB1      N(17,2), ; 
        IZDOB2      N(17,2), ; 
        IZDOB3      N(17,2), ; 
        KONTO1      C(9), ;
        KONTO2      C(9), ;
        KONTO3      C(9), ;
        USERCREATE  C(30), ;
        DATECREATE  D, ;
        LASTUSER    C(30), ;
        LASTMODIFI  D, ;
        EXPORT_FLA  N(16), ;
        EXPORT_DAT  D, ;
        EXPORT_NUM  N(16), ;
        VRSTE_EVID  N(16), ;
        VALUTA      D, ;
        TAR1        C(3), ; 
        TAR2        C(3), ; 
        TAR3        C(3), ; 
        OBRACUN1    N(16), ; 
        OBRACUN2    N(16), ; 
        OBRACUN3    N(16), ; 
        POVRAT      N(16), ;
        BROJ_PDV    N(16), ; 
        BROJ_PDV_S  N(16), ; 
        GODINA      N(16), ;
        KATBROJ     N(16), ;
        OZN         C(20), ;
        NALOG       N(16), ;
        EXPORT_CRC  N(16) ;
        )
        USE
endif        

IF !FILE('stavke_ug_kalk.dbf')
   CREATE TABLE 'stavke_ug_kalk.dbf' ( ;
        BROJ        N(16), ;
        SIFRA       N(16), ;
        OPIS        C(60), ;
        KOLICINA    N(17,3), ;
        CENA_LAGER  N(17,6), ; 
        MARZA       N(17,3), ; 
        CENA_BEZ_P  N(17,6), ;
        POREZ       N(17,2), ;
        CENA_MP     N(17,2), ;
        KOLICINA_P  N(17,3), ;
        SIFMAG      C(3), ;
        ZAV         N(17,2), ; 
        NABAVNA_CE  N(17,6), ;
        TARPOR      C(3), ;
        BARKOD      C(14), ;
        USERCREATE  C(30), ;
        DATECREATE  D, ;
        LASTUSER    C(30), ;
        LASTMODIFI  D, ;
        RABAT       N(17,3), ;
        FAKTURNA_C  N(17,6), ;
        POREZ_NABA  N(17,3), ;
        TARPOR_NAB  C(3), ;
        KOEFICIJEN  N(17,6), ;
        REDNI_BROJ  N(16), ;
        KOLICINA_N  N(17,3), ;
        CENA_NABAV  N(17,6) ;
        )
   USE
endif   

CLOSE ALL TABLES
POP KEY
