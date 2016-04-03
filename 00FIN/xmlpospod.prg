procedure xmlPOSPODPUNI
*SET STEP ON 
USE znPOSPOD IN 0 
SELECT ZNPOSPOD
GO top
DO while.not.eof()
   maop=aop
   mneto=ALLTRIM(STR(neto,14,0))
   punixmlPOSPOD(maop,mneto)
   SELECT znPOSPOD
   SKIP
ENDDO
SELECT znPOSPOD
USE
SELECT xmlBU
endproc
   
FUNCTION punixmlPOSPOD
   PARAMETERS maop,mneto
   SELECT xmlBU
   LOCATE FOR aop=maop
   IF FOUND()
      replace podatak WITH mneto
      iF mneto='0'
          replace podatak WITH ''
      endif
   endif   
ENDFUNC
