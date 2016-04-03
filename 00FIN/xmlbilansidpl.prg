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
   punixmlbu(maop,mneto,mpreth,mnapomena)
   SELECT znbilN
   SKIP
ENDDO
SELECT znbilN
USE
SELECT xmlbu
endproc
   
FUNCTION punixmlbu
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
   IF VAL(maop)>=9001.and.val(maop)<=9004
      mneto=ALLTRIM(STR(neto,14,0))
      mpreth=ALLTRIM(STR(preth,14,0))      
      punixmlsi34(maop,mneto,mpreth)
   ENDIF
   
   IF VAL(maop)>=9005.and.val(maop)<=9062
      mneto=ALLTRIM(STR(neto,14,0))
      mpreth=ALLTRIM(STR(preth,14,0))
      punixmlsi45(maop,MNETO,mPRETH)
   endif
   SELECT znstatn
   SKIP
ENDDO
SELECT znstatn
USE
SELECT xmlbu
endproc
   
FUNCTION punixmlsi34
   PARAMETERS maop,mneto,mpreth
   SELECT xmlbu
   LOCATE FOR aop=maop.and.kol='3'
   IF FOUND()
      replace podatak WITH mneto
      iF mNETO='0'
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
ENDFUNC

FUNCTION punixmlsi45
   PARAMETERS maop,mneto,mpreth
   SELECT xmlbu
   LOCATE FOR aop=maop.and.kol='4'
   IF FOUND()
      replace podatak WITH mneto
      iF mNETO='0'
          replace podatak WITH ''
      endif
   endif   
   LOCATE FOR aop=maop.and.kol='5'
   IF FOUND()
      replace podatak WITH mpreth
      iF mPRETH='0'
          replace podatak WITH ''
      endif
   endif   
ENDFUNC