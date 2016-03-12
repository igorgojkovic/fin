PARAMETERS CDOC
*SET STEP ON 
PRIVATE cParam,cPath
local lError
 cParam = ''
 cPath = ''
DECLARE INTEGER ShellExecute IN SHELL32.DLL ;
      INTEGER nWinHandle ,;
      STRING cOperation  ,;
      STRING cFileName  ,;
      STRING cParameters ,;
      STRING cDirectory  ,;
      INTEGER nShowWindow
lError = ShellExecute(0, "Open", cDoc, cParam, cPath,1)
