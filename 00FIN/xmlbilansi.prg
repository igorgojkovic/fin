procedure xmlbupuni
*SET STEP ON 
IF MPLICA=0
USE znbilN IN 0 ALIAS ZNBILN
ELSE
USE znbilD IN 0 ALIAS ZNBILN
ENDIF
SELECT znbilN
GO top
DO while.not.eof()
   maop=aop
   mnapomena=ALLTRIM(STR(napomena,14,0))
   mneto=ALLTRIM(STR(neto,14,0))
   mpreth=ALLTRIM(STR(preth,14,0))
   mprethp=ALLTRIM(STR(prethp,14,0))   
   punixmlbu(maop,mneto,mpreth,mnapomena,mprethp)
   SELECT znbilN
   SKIP
ENDDO
SELECT znbilN
USE
SELECT xmlbu
endproc
   
FUNCTION punixmlbu
   PARAMETERS maop,mneto,mpreth,mnapomena,mprethp
   SELECT xmlbu
   LOCATE FOR aop=maop.and.kol='5'
   IF FOUND()
      replace podatak WITH mneto
      iF mneto='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='6'
   IF FOUND()
      replace podatak WITH mpreth
      iF mpreth='0'
          replace podatak WITH ''
      endif
      
   endif   
   LOCATE FOR aop=maop.and.kol='7'
   IF FOUND()
      replace podatak WITH mprethp
      iF mprethp='0'
          replace podatak WITH ''
      endif
      
   endif   
   LOCATE FOR aop=maop.and.kol='4'
   IF FOUND()
      replace podatak WITH mnapomena
      iF mnapomena='0'
          replace podatak WITH ''
      endif
   endif   
  
ENDFUNC





procedure xmlSIpuni
*SET STEP ON 
IF MPLICA=0
USE znSTATN IN 0 ALIAS ZNSTATN
ELSE
USE znSTATD IN 0 ALIAS ZNSTATN
ENDIF


SELECT znstatn

GO top
DO while.not.eof()
   maop=aop
   IF VAL(maop)>=9001.and.val(maop)<=9005
      *mBRUTO=ALLTRIM(STR(bruto,14,0))
      *mispravka=ALLTRIM(STR(ispravka,14,0))
      mneto=ALLTRIM(STR(neto,14,0))
      mpreth=ALLTRIM(STR(preth,14,0))      
      punixmlsi(maop,mneto,mpreth,'0','0')
   ENDIF
   
   IF VAL(maop)>=9006.and.val(maop)<=9020
      mBRUTO=ALLTRIM(STR(bruto,14,0))
      mispravka=ALLTRIM(STR(ispravka,14,0))
      mneto=ALLTRIM(STR(neto,14,0))
      *mpreth=ALLTRIM(STR(preth,14,0))      
      punixmlsi(maop,'0',mbruto,mispravka,mneto)
   endif

   IF VAL(maop)>=9021.and.val(maop)<=9083
      *mBRUTO=ALLTRIM(STR(bruto,14,0))
      *mispravka=ALLTRIM(STR(ispravka,14,0))
      mneto=ALLTRIM(STR(neto,14,0))
      mpreth=ALLTRIM(STR(preth,14,0))      
      punixmlsi(maop,'0',mneto,mpreth,'0')
   endif

   IF VAL(maop)>=9084.and.val(maop)<=9107
      *mBRUTO=ALLTRIM(STR(bruto,14,0))
      *mispravka=ALLTRIM(STR(ispravka,14,0))
      mneto=ALLTRIM(STR(neto,14,0))
      mpreth=ALLTRIM(STR(preth,14,0))      
      punixmlsi(maop,mneto,mpreth,'0','0')
   endif


   IF VAL(maop)>=9108.and.val(maop)<=9130
      mBRUTO=ALLTRIM(STR(bruto,14,0))
      mispravka=ALLTRIM(STR(ispravka,14,0))
      mneto=ALLTRIM(STR(neto,14,0))
      *mpreth=ALLTRIM(STR(preth,14,0))      
      punixmlsi(maop,'0',mbruto,mispravka,mneto)
   endif

   SELECT znstatn
   SKIP
ENDDO
SELECT znstatn
USE
SELECT xmlbu
endproc
   
FUNCTION punixmlsi
   PARAMETERS maop,mbruto,mispravka,mneto,mpreth
   SELECT xmlbu
   LOCATE FOR aop=maop.and.kol='3'
   IF FOUND()
      replace podatak WITH mbruto
      iF mbruto='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='4'
   IF FOUND()
      replace podatak WITH mispravka
      iF mispravka='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='5'
   IF FOUND()
      replace podatak WITH mneto
      iF mneto='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='6'
   IF FOUND()
      replace podatak WITH mpreth
      iF mpreth='0'
          replace podatak WITH ''
      endif
   endif   
 
ENDFUNC

*tokovi gotovine

procedure xmltokpuni
*SET STEP ON 
USE zntokn IN 0 ALIAS ZNBILN
SELECT znbilN
GO top
DO while.not.eof()
   maop=aop
   IF maop<>SPACE(4)
      mneto=ALLTRIM(STR(neto,14,0))
      mpreth=ALLTRIM(STR(preth,14,0))
      IF neto<>0.or.preth<>0
         punixmltok(maop,mneto,mpreth)
      endif
   endif
   SELECT znbilN
   SKIP
ENDDO
SELECT znbilN
USE
SELECT xmlbu
endproc
   
FUNCTION punixmltok
   PARAMETERS maop,mneto,mpreth
   SELECT xmlbu
   LOCATE FOR aop=maop.and.kol='3'
   IF FOUND()
      replace podatak WITH mneto
      iF mneto='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='4'
   IF FOUND()
      replace podatak WITH mpreth
      iF mpreth='0'
          replace podatak WITH ''
      endif
      
   endif   
  
ENDFUNC

procedure xmlostpuni
*SET STEP ON 
USE znOSTrez IN 0 ALIAS ZNBILN
SELECT znbilN
GO top
DO while.not.eof()
   maop=aop
   mnapomena=ALLTRIM(STR(napomena,14,0))
   mneto=ALLTRIM(STR(neto,14,0))
   mpreth=ALLTRIM(STR(preth,14,0))
   punixmlOST(maop,mneto,mpreth,mnapomena)
   SELECT znbilN
   SKIP
ENDDO
SELECT znbilN
USE
SELECT xmlbu
endproc
   
FUNCTION punixmlost
   PARAMETERS maop,mneto,mpreth,mnapomena
   SELECT xmlbu
   LOCATE FOR aop=maop.and.kol='5'
   IF FOUND()
      replace podatak WITH mneto
      iF mneto='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='6'
   IF FOUND()
      replace podatak WITH mpreth
      iF mpreth='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='4'
   IF FOUND()
      replace podatak WITH mNapomena
      iF mnapomena='0'
          replace podatak WITH ''
      endif
   endif   
ENDFUNC

*****************************


procedure xmlkappuni
*SET STEP ON 
USE znkapn IN 0 ALIAS ZNBILN
SELECT znbilN
GO top
*SET STEP ON 
DO while.not.eof()

   maop03=aop03
   maop04=aop04         
   maop05=aop05
   maop06=aop06
   maop07=aop07
   maop08=aop08
   maop09=aop09
   maop10=aop10
   maop11=aop11
   maop12=aop12
   maop13=aop13           
   maop14=aop14  
   maop15=aop15
   maop16=aop16
   maop17=aop17
            
   mk30=ALLTRIM(STR(k30,14,0))
   mk31=ALLTRIM(STR(k31,14,0))   
   mk32=ALLTRIM(STR(k32,14,0))   
   mk35=ALLTRIM(STR(k35,14,0))   
   mk047=ALLTRIM(STR(k047,14,0))         
   mk34=ALLTRIM(STR(k34,14,0))         
   mk330=ALLTRIM(STR(k330,14,0))         
   mk331=ALLTRIM(STR(k331,14,0))         
   mk332=ALLTRIM(STR(k332,14,0))         
   mk333=ALLTRIM(STR(k333,14,0))         
   mk334=ALLTRIM(STR(k334,14,0))         
   mk336=ALLTRIM(STR(k336,14,0))         
   mk337=ALLTRIM(STR(k337,14,0))         
   mkukup=ALLTRIM(STR(kukup,14,0))         
   mkgubitak=ALLTRIM(STR(kgubitak,14,0))               
   SELECT xmlbu
      LOCATE FOR aop=MAOP03.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk30
      ENDIF
      LOCATE FOR aop=MAOP04.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk31
      ENDIF
      LOCATE FOR aop=MAOP05.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk32
      ENDIF
      LOCATE FOR aop=MAOP06.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk35
      ENDIF
      LOCATE FOR aop=MAOP07.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk047
      ENDIF
      LOCATE FOR aop=MAOP08.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk34
      ENDIF
      LOCATE FOR aop=MAOP09.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk330
      ENDIF
      LOCATE FOR aop=MAOP10.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk331
      ENDIF
      LOCATE FOR aop=MAOP11.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk332
      ENDIF
      LOCATE FOR aop=MAOP12.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk333
      ENDIF
      LOCATE FOR aop=MAOP13.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk334
      ENDIF
      LOCATE FOR aop=MAOP14.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk336
      ENDIF
      LOCATE FOR aop=MAOP15.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mk337
      ENDIF
      LOCATE FOR aop=MAOP16.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mkukup
      ENDIF
      LOCATE FOR aop=MAOP17.and.aop<>SPACE(4)
      IF FOUND()
         replace podatak WITH mkgubitak
      ENDIF
   SELECT znbilN
   SKIP
ENDDO
SELECT znbilN
USE
SELECT xmlbu
endproc
   
