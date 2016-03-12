* Start of Code
PARAMETERS ProjName, NewCdPg, FleExt
*SET STEP ON 
   fCnt=0	&&File Count
   **Open The Project
   MODIFY PROJECT (ProjName+".PJX") NOSHOW NOWAIT
   ** Get Project information
   oCurProj=_VFP.ACTIVEPROJECT
   ProjName = oCurProj.NAME
   **Place File Names of Requested Type in an array
   DIMENSION FleNmAry(oCurProj.FILES.COUNT)
   FOR i = 1 TO oCurProj.FILES.COUNT
      IF UPPER(RIGHT(oCurProj.FILES(i).NAME, 3)) = FleExt
         fCnt=fCnt+1
         FleNmAry(fCnt)= oCurProj.FILES(i).NAME
      ENDIF
   ENDFOR
   **Close Project
   oCurProj.CLOSE 
   **Open Project as a Table and UpDate Code Pages
   CLOSE ALL
   USE (ProjName) EXCLUSIVE IN 0
   SELECT (ProjName)
   FOR i = 1 TO fCnt
   	UPDATE (ProjName) SET Cpid = NewCdPg;
   		WHERE UPPER(JUSTFNAME(FleNmAry(i))) = UPPER(JUSTFNAME(NAME))
   ENDFOR
   use
   **Close Project, opened as a Table
   *USE IN (ProjName)
   *MODI PROJ (ProjName) NOWAIT
* End of Code
CLOSE all