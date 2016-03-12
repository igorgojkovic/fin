PUSH KEY CLEAR
        SET ORDER TO 1
        REPLACE ALL BROJ WITH VAL(BR)
        TOTAL ON BROJ TO &KKOCKA FIELDS;
                CASVR,;
                CASUC,;
                CASNOC,;
                CASPROD,;
                CASPRAZ,;
                CASNED,;
                CASBOL,;
                CASBOL2,;
                CASPLAC,;
                CASPLAC2,;
                CASGOD,;
                CASVV,;
                CASDOR,;
                CASRADNAP,;
                CAS1,;
                CAS2,;
                CAS3,;
                DINVR,;
                DINUC,;
                DINMIN,;
                DINNOC,;
                DINPROD,;
                DINPRAZ,;
                DINNED,;
                DINBOL,;
                DINBOL2,;
                DINPLAC,;
                DINPLAC2,;
                DINGOD,;
                DINVV,;
                DINDOR,;
                DINRADNAP,;
                DIN1,;
                DIN2,;
                DIN3,;
                FIKSNA,;
                STIM1PROC,;
                STIM2PROC    ,;                                
                STIM3PROC    ,;                                                                
                STIM1        ,;
                STIM2        ,;
                STIM3       ,;
                TOPLI       ,;
                REGRES      ,;                
                TERENSKI     ,;                
                LDODACI      ,;                                                
                NAKNADE      ,;                
                DINUK        ,;
                BRUTO        ,;                
                POREZ        ,;                
                DOPSOCR      ,;
                DOPPR       ,;                
                DOPZR       ,;                
                DOPNR      ,;                                                
                DOPPF     ,;                
                DOPZF     ,;                
                DOPNF     ,;                                                
                DOPSOCF   ,;                                
                DOPPFU    ,;                
                DOPZFU    ,;                
                DOPNFU    ,;                                                
                DOPPFR    ,;                
                DOPZFR    ,;                
                DOPNFR    ,;                                                
                BENDIN    ,;                
                NETO      ,;                
                KREDITI   ,;                
                AKONTAC   ,;                
                AKONT     ,;                              
                PREVOZ    ,;                
                ALIMENT   ,;                
                KASA      ,;                                                
                KASARATA  ,;                
                SAMODOPR  ,;                
                SINDIKAT1 ,;                
                SINDIKAT2 ,;                                
                SINDDIN   ,;                
                SIND2DIN  ,;                                
                SOLIDARN  ,;                                
                OBUST1    ,;                                
                OBUST2    ,;                                                
                OBUST3    ,;                                                
                OSTALO1   ,;                                
                OSTALO2   ,;                                                
                OSTALO3   ,;                                                
                UKOBUST   ,;  
                ZAISPLATU ,;
                CENARADA  ,;                
                PROPISANA ,;
                OSNOVICA  ,;                
                DOTACIJA  ,;                
                CASSUS    ,;                                
                DINSUS    ,; 
                PIOBOL    ,;
                CTOP      ,;
                DTOP      ,;
                DREG      ,;
                CZASTOJ   ,;
                PORDOH    ,;
                KREDIT    ,;
                DOPSOC    ,;
                FDOPSOC   ,;
                FPENSOC   ,;
                FZDRSOC   ,;
                FNEZSOC   ,;
                PENSOC    ,;
                ZDRSOC    ,;
                NEZSOC    ,;
                OSNOVDOP  ,;
                PROPISDOP,;
                DIN2BOL,;
                DIN2PLAC,;
                CAS2BOL,;
                CAS2PLAC

        DELETE ALL
PACK

        APPEND FROM &KKOCKA
        REPLACE ALL DINPLAC2  WITH DIN2PLAC
        REPLACE ALL DINBOL2 WITH DIN2BOL
        REPLACE ALL POREZ WITH PORDOH
        REPLACE ALL KREDITI WITH KREDIT
        REPLACE ALL DOPSOCF WITH FDOPSOC
        REPLACE ALL DOPPR WITH PENSOC
        REPLACE ALL DOPZR WITH ZDRSOC
        REPLACE ALL DOPNR WITH NEZSOC
        REPLACE ALL DOPPF WITH FPENSOC
        REPLACE ALL DOPZF WITH FZDRSOC
        REPLACE ALL DOPNF WITH FNEZSOC
        REPLACE ALL TOPLI WITH DTOP
        REPLACE ALL REGRES WITH DREG
        REPLACE ALL BRUTO WITH BRUTOLD
        REPLACE ALL DOPSOCR WITH DOPSOC
        REPLACE ALL NETO WITH NETOLD
        REPLACE ALL SAMODOPR WITH SAMODIN
        REPLACE ALL SINDIKAT1 WITH SINDDIN
        REPLACE ALL SINDIKAT2 WITH SIND2DIN
        REPLACE ALL ZAISPLATU WITH ZAISPLAT
        REPLACE ALL CENARADA WITH VRBODA
        REPLACE ALL OSNOVICA WITH OSNOVDOP
        REPLACE ALL PROPISANA WITH PROPISDOP
        REPLACE ALL AKONTAC WITH AKONT
        REPLACE ALL CASBOL2 WITH CAS2BOL
        REPLACE ALL CASPLAC2 WITH CAS2PLAC
        REPLACE ALL OBUST1 WITH OSTALO1   
        REPLACE ALL OBUST2 WITH OSTALO2   
        REPLACE ALL OBUST3 WITH OSTALO3  
        GO TOP
        SET PROCEDURE TO LDOBRACUN
        
        DO WHILE.NOT.EOF()
           DO SABERICAS
           DO SABERIDIN
           DO SABERIDOD
           DO SABERINAK
           DO SABERIOB
           SKIP
        ENDDO   
        SET PROCEDURE TO 
        USE LDRAD IN 0 ORDER 1
        SELECT ld
        SET RELATION TO BROJ INTO LDRAD
        REPLACE ALL IME_PREZ WITH LDRAD.IME_PREZ
        SELECT LDRAD 
        USE
        SELECT LD
        POP KEY