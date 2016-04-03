      if SVEGA<>0
         mAIDBROJ=STR(VAL(ALLTRIM(IDBROJ)),5,0)
         MSVEGA=SVEGA
         MZBIRNI=ZBIRNI

         SELECT AN0
         SEEK MAIDBROJ
         IF FOUND()
            MANAZIV=NAZIV
            mAulica=ALLTRIM(ulica)+' '+ALLTRIM(ULBROJ)
            MAMESTO=ALLTRIM(MESTO)
         ELSE
            MANAZIV=''
            MAULICA=''
            MAMESTO=''
         ENDIF      
         SELECT KOCKA     
        
         *------PRELAZIMO U TABELU OBRACUN-------
         select VPOBRAC
         mbrcen=CENOVNIK
         *------NALAZIMO CENOVNIK----------------
         select VPCENE
         goto mbrcen
         mpstanje=pstanje
         mzstanje=zstanje
         mdatum=datum
         mvaluta=valuta
         mdatod=datod
         mdatdo=datdo
         
         MBRRAC=ALLTRIM(MAIDBROJ)+'-'+ALLTRIM(STR(MzSTANJE,2,0))+'-04'
                 
         select VPRACD
        
         append blank
         replace datum with mdatum
         replace valuta with mvaluta
         replace datod with mdatod
         replace datdo with mdatdo
         REPLACE IDBROJ WITH MAIDBROJ
         REPLACE ANAZIV WITH MANAZIV
         REPLACE AMESTO WITH MAMESTO
         REPLACE AULICA WITH MAULICA
         REPLACE BRRAC WITH MBRRAC
         replace svega with MSVEGA
         REPLACE DUG WITH MZBIRNI
         select KOCKA
      endif   
