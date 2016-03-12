*--WinINet FoxPro Option example
#DEFINE INTERNET_OPEN_TYPE_DIRECT    1
#DEFINE INTERNET_FLAG_NEED_FILE     16

DO DECL   && declare external functions

PRIVATE hOpen
*--Make sure WinINet is available
hOpen = InternetOpen ("w32vfp=110", ;
  INTERNET_OPEN_TYPE_DIRECT, 0, 0, 0)
IF hOpen = 0
  ? "GetLastError:", GetLastError()
  ? "WinInet is not available on this computer"
  RETURN
ENDIF

LOCAL lcUrlBase,lcFileName, lcPathDst, lcFileDst, ;
  lnCaSize, lnUaSize, lnMxSize, lcUserName, lcPWord

lcUserName = "Korisnicko ime"
lcPWord = "lozinka"
*--Basic URL
lcUrlBase  = "http://www.agencijakocka.rs/"
*-- remote file with UserName and password
lcFileName = "download.asp?file=114&login=" + ;
             lcUserName + ;
            "&password=" + lcPWord
*-- assign a destination directory
lcPathDst  = "e:\fin0\"
*--&& assign a destination FileName
lcFileDst  = ALLTRIM(STR(YEAR(DATE())))+CMONTH(DATE()) + ;
  "CanadaPostalFile.zip"
lnCaSize = GetPostalData(lcUrlBase,lcFileName, ;
  lcPathDst, lcFileDst, ;
  "DownLoading Canadian Postal " + ;
  "Codes File. . .", 20)

*--release Session handle and library
= InternetCloseHandle (hOpen)

*--Now Extract Downloaded File
=Run32Bit("e:\fin0\7za e e:\fin0\" + ;
  ALLTRIM(STR(YEAR(DATE())))+CMONTH(DATE()) + ;
  "CanadaPostalFile.zip -of:\Railinc Postal*.* -y")

RETURN

*--------------------------------------------------------

FUNCTION GetPostalData (lcBaseUrl, lcFile, lcDstPath, ;
    lcDstFile, lcProgMess, lnProgMax)

  * get a handle of the remote file
  hFile = InternetOpenUrl (hOpen,;
    lcBaseUrl + lcFile, "", 0,;
    INTERNET_FLAG_NEED_FILE, 0)

  IF hFile <> 0
    * even if there is no such file, the most evidence
    * you will get is an ASCII file in response
    * (404 error page)
    lnFileSize = 0
    lnProgVal = 0
    lnByteCount = http2local (hFile, ;
                   lcDstPath + lcDstFile, ;
                   lcProgMess, lnProgMax)
    = InternetCloseHandle (hFile)
  ELSE
    ? "Unable to open source file"
    ? "GetLastError:", GetLastError()
  ENDIF

  RETURN lnByteCount

  *------------------------------------------------------

FUNCTION http2local (hSource, lcTarget, lcMess, lnMax)
  * reads data from a remote file
  #DEFINE TransferBuffer   4096

  *-- Progress Status Bar ------------
  *---Note, if you have your own insert it here
  *   If you'd like this one, drop me an email
  *--If you don't want one, comment this out
  DO FORM cpsProgstat NAME wlStatBar
  wlStatBar.Label1.CAPTION = lcMess

  *--as we don't know the exact file size, we'll
  *  use what was passed or, if nothing default
  *  to 40K and reset as required
  IF VARTYPE(lnMax) = 'N'
    wlStatBar.ocxProgressBar.MAX = lnMax
  ELSE
    wlStatBar.ocxProgressBar.MAX = 40
  ENDIF
  *-------end progress/stat init

  * create the target file
  hTarget = FCREATE (lcTarget)
  IF (hTarget = -1)
    ?? "invalid target file name"
    RETURN -1
  ENDIF

  LOCAL lnTotalBytesRead, lnBytesRead
  lnTotalBytesRead = 0

  DO WHILE .T.
    lcBuffer = REPLI (CHR(0), TransferBuffer)
    lnBytesRead = 0

    IF InternetReadFile (hSource, @lcBuffer,;
        TransferBuffer, @lnBytesRead) = 1

      = FWRITE (hTarget, lcBuffer, lnBytesRead)
      IF lnBytesRead = 0
        EXIT
      ENDIF

      lnTotalBytesRead = lnTotalBytesRead + lnBytesRead
      IF MOD(lnTotalBytesRead,1000) = 0
        lnProgVal = lnProgVal+1
        *--Reset bar if required
        *  Comment this section out if not using
        *  a progress bar
        IF lnProgVal > wlStatBar.ocxProgressBar.MAX
          lnProgVal = 0
        ENDIF
        wlStatBar.ocxProgressBar.VALUE = lnProgVal
        *-- end progress bar
      ENDIF
    ELSE
      EXIT
    ENDIF
  ENDDO

  = FCLOSE (hTarget)

  *-- More Satus/Progress Bar updates
  wlStatBar.Label1.CAPTION=LTRIM(STR(lnTotalBytesRead))+ ;
    " bytes Ok"
  wlStatBar.RELEASE

  RETURN  lnTotalBytesRead

  *--------------------------------------------------------

PROCEDURE  DECL
  DECLARE INTEGER GetLastError IN kernel32

  DECLARE INTEGER InternetOpen IN wininet;
    STRING sAgent, INTEGER lAccessTypem,;
    STRING sProxyName, ;
    STRING ProxyBypass, STRING lFlags

  DECLARE INTEGER InternetCloseHandle IN wininet ;
    INTEGER hInet

  DECLARE INTEGER InternetOpenUrl IN wininet;
    INTEGER hInternet, STRING lpszUrl, ;
    STRING lpszHeaders,;
    INTEGER dwHeadersLength, ;
    INTEGER dwFlags,;
    INTEGER dwContext

  DECLARE INTEGER InternetReadFile IN wininet;
    INTEGER hFile, STRING @lpBuffer,;
    INTEGER dwNumberOfBytesToRead,;
    INTEGER @lpdwNumberOfBytesRead

  DECLARE ;
  INTEGER InternetQueryDataAvailable IN wininet;
    INTEGER   hFile,;
    INTEGER @ lpdwBytesAvailable,;
    INTEGER   dwFlags,;
    INTEGER   dwContext


*----------------------------

*Last, but certainly not least the 32bit comand line process to allow us to know when each process completes, and return control to VFP when it does.

*----------------------------


Function Run32Bit
PARAMETERS pcFile2Run, plShowDone
#DEFINE NORMAL_PRIORITY_CLASS 32
#DEFINE IDLE_PRIORITY_CLASS 64
#DEFINE HIGH_PRIORITY_CLASS 128
#DEFINE REALTIME_PRIORITY_CLASS 1600

*-- Return code from WaitForSingleObject() if
*   it timed out.
#DEFINE WAIT_TIMEOUT 0x00000102

*-- This controls how long, in milli secconds,
*   WaitForSingleObject()
*   waits before it times out. Change this to
*   suit your preferences.
#DEFINE WAIT_INTERVAL 200

*--Declare the required kernal32 items
DECLARE INTEGER CreateProcess IN kernel32.DLL ;
  INTEGER lpApplicationName, ;
  STRING lpCommandLine, ;
  INTEGER lpProcessAttributes, ;
  INTEGER lpThreadAttributes, ;
  INTEGER bInheritHandles, ;
  INTEGER dwCreationFlags, ;
  INTEGER lpEnvironment, ;
  INTEGER lpCurrentDirectory, ;
  STRING @lpStartupInfo, ;
  STRING @lpProcessInformation

DECLARE INTEGER WaitForSingleObject IN kernel32.DLL ;
  INTEGER hHandle, INTEGER dwMilliseconds

DECLARE INTEGER CloseHandle IN kernel32.DLL ;
  INTEGER hObject

DECLARE INTEGER GetLastError IN kernel32.DLL
*---------------------------------------------

*-- STARTUPINFO is 68 bytes, of which we need to
*   initially populate the 'cb' or Count of Bytes
*   member with the overall length of the structure.
*   The remainder should be 0-filled
START = long2str(68) + REPLICATE(CHR(0), 64)

*-- PROCESS_INFORMATION structure is 4 longs,
*   or 4*4 bytes = 16 bytes, which we'll fill with nulls.
process_info = REPLICATE(CHR(0), 16)

*-- Start the program that was passed in
*  (EXE name must be null-terminated)
File2Run = pcFile2Run + CHR(0)

*-- Call CreateProcess, obtain a process handle.
*  Treat the application to run as the
*  'command line' argument, accept all other
*  defaults. Important to pass the start and
*   process_info by reference.
RetCode = CreateProcess(0, File2Run, 0, 0, 1, ;
  NORMAL_PRIORITY_CLASS, 0, 0, @START, @process_info)

*-- Unable to run, exit now.
IF RetCode = 0
  =MESSAGEBOX("Error occurred. Error code: ", ;
              GetLastError())
ELSE
  *-- Extract the process handle from the
  *   PROCESS_INFORMATION structure.
  hProcess = str2long(SUBSTR(process_info, 1, 4))

  DO WHILE .T.
    *-- Use timeout of TIMEOUT_INTERVAL msec
    *  so the display will be updated.
    *  Otherwise, the VFP window never repaints until
    *   the loop is exited.
    IF WaitForSingleObject(hProcess, ;
       WAIT_INTERVAL) != WAIT_TIMEOUT
      EXIT
    ELSE
      DOEVENTS
    ENDIF
  ENDDO

  *-- Show a message box when we're done,
  *   If desired
  IF plShowDone
    =MESSAGEBOX ("Process completed")
  ENDIF

  * Close the process handle afterwards.
  RetCode = CloseHandle(hProcess)
ENDIF

RETURN


********************
FUNCTION long2str
  ********************
  * Passed : 32-bit non-negative numeric value (pnLongVal)
  * Returns : ASCII character representation of passed
  *           value in low-high format (lnretstr)
  * Example :
  *    m.longval = 999999
  *    lnLongStr = long2str(m.long)

  PARAMETERS pnLongVal

  PRIVATE i, lnretstr

  lnretstr = ""
  FOR i = 24 TO 0 STEP -8
    lnretstr = CHR(INT(pnLongVal/(2^i))) + lnretstr
    pnLongVal = MOD(pnLongVal, (2^i))
  NEXT
  RETURN lnretstr


  *******************
FUNCTION str2long
  *******************
  * Passed:  4-byte character string (lnLongStr)
  *          in low-high ASCII format
  * returns:  long integer value
  * example:
  *   lcLongStr = "1111"
  *   lnLongVal = str2long(lcLongStr)

  PARAMETERS lcLongStr

  PRIVATE i, lnRetVal

  lnRetVal = 0
  FOR i = 0 TO 24 STEP 8
    lnRetVal = lnRetVal + (ASC(lcLongStr) * (2^i))
    lcLongStr = RIGHT(lcLongStr, LEN(lcLongStr) - 1)
  NEXT
  RETURN lnRetVal