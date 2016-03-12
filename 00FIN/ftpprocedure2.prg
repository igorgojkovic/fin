PROCEDURE ftpdef
PUBLIC arr[1], larr[1]

#DEFINE INTERNET_INVALID_PORT_NUMBER   0
#DEFINE INTERNET_OPEN_TYPE_DIRECT      1
#DEFINE INTERNET_SERVICE_FTP           1
#DEFINE FTP_TRANSFER_TYPE_ASCII        1
#DEFINE FTP_TRANSFER_TYPE_BINARY       2
#DEFINE INTERNET_FLAG_NEED_FILE       16
#DEFINE FILE_ATTRIBUTE_DIRECTORY      16

#DEFINE GENERIC_READ    2147483648   && &H80000000
#DEFINE GENERIC_WRITE   1073741824   && &H40000000

    DECLARE INTEGER InternetOpen IN wininet.dll;   
        STRING sAgent, INTEGER lAccessType, STRING sProxyName,;   
        STRING sProxyBypass, STRING lFlags   
        
    DECLARE INTEGER InternetCloseHandle IN wininet.dll INTEGER hInet   

    DECLARE INTEGER InternetConnect IN wininet.dll;   
        INTEGER hInternetSession, STRING sServerName,;   
        INTEGER nServerPort, STRING sUsername, STRING sPassword,;   
        INTEGER lService, INTEGER lFlags, INTEGER lContext   

    DECLARE INTEGER FtpFindFirstFile IN wininet.dll;  
        INTEGER hFtpSession, STRING lpszSearchFile,;  
        STRING @lpFindFileData, INTEGER dwFlags, INTEGER dwContent  

    DECLARE INTEGER InternetFindNextFile IN wininet.dll;  
        INTEGER hFind, STRING @lpvFindData  

    DECLARE INTEGER FtpGetCurrentDirectory IN wininet.dll; 
        INTEGER hFtpSession, STRING @lpszDirectory,;  
        INTEGER @lpdwCurrentDirectory  

    DECLARE INTEGER FtpSetCurrentDirectory IN wininet.dll; 
        INTEGER hFtpSession, STRING @lpszDirectory  

    DECLARE INTEGER FtpOpenFile IN wininet.dll; 
        INTEGER hFtpSession, STRING  sFileName, INTEGER lAccess,; 
        INTEGER lFlags, INTEGER lContext 

    DECLARE INTEGER InternetReadFile IN wininet.dll; 
        INTEGER hFile, STRING @lpBuffer,; 
        INTEGER dwNumberOfBytesToRead, INTEGER @lpdwNumberOfBytesRead 

    DECLARE INTEGER FileTimeToSystemTime IN kernel32.dll; 
        STRING @lpFileTime, STRING @lpSystemTime 
ENDPROC

*------------POZIV DO CLICK
PROCEDURE ftppoziv
*IF Seek(ALLTRIM(This.Parent.cbHost.Text), "Sites", "Site")
*   replace sites.timestamp WITH Datetime() 
*ENDIF
*ThisForm.cbHist.Value = Space(50)
*ThisForm.cmdRefreshRemote.Click()
DO click
ENDPROC

***********procedure clik--------------------------------------
PROCEDURE click
PUBLIC hOpen, hFtpSession
PUBLIC arr
*SET STEP ON 
STORE .T. TO lGettingFiles
STORE .F. TO lDirsFiles
STORE .F. TO lLinksFiles

*THISFORM.lstRemote.CLEAR
*THISFORM.oleStatusBar.Panels(2).TEXT = "Konekcija..."
*THISFORM.oleStatusBar.Panels(1).TEXT = "!"

IF connect2ftp(ALLTRIM(msajtime), ;
      ALLTRIM(msajtkor), ;
      ALLTRIM(msajtloz))

  * lcMask = "*.*"
  * IF Empty(thisform.txtFileName.Value)
  *    thisform.txtFileName.Value = "*"
  * ENDIF 
   lcMask = "*"
*   WITH THISFORM.cbHist
*      IF EMPTY(.DisplayValue )
*         .DisplayValue = '/'
*      ENDIF
*   ENDWITH

   lcRemotePath = ALLTRIM(msajtput)
   
*   IF EMPTY(lcRemotePath )
*      lcRemotePath  = "/"
*   ENDIF
   lcLocalPath  = "C:\temp\"
   DIMENSION arr [1, 5]

*   THISFORM.oleStatusBar.Panels(2).TEXT = ;
      "Olitavanje liste datoteka..."
*   THISFORM.oleStatusBar.Panels(1).TEXT = '!'

   nHowMany = remoteDir2array (hFtpSession, lcRemotePath, lcMask, @arr)
   IF nHowMany < 0
      MESSAGEBOX('Problem setovanja serverskog direktorijuma.', 16, 'Bummer')
      RETURN .T.
   ENDIF
   
   nRemoteItemCount=0

   SELECT komandle
   APPEND BLANK
   REPLACE IME WITH CHR(24) + ' - Gore jedan nivo'  &&... up one level
   *... dirs first, then files
   STORE 0 TO nDirCount
   MBROJAC=0
   mDirCount=0
   FOR ii = 1 TO nHowMany
      IF arr[ii, 3] = .F.  &&... fileType = .T., File, else Dir
         BROJAC=BROJAC + 1 
            STORE '' TO cTmpStr
            cTmpStr = '<' + arr [ii, 5] + '>'    &&... name
            SELECT KOMANDLE
            APPEND BLANK
            REPLACE IME WITH cTmpStr
            nDirCount = nDirCount + 1 
      ENDIF
   ENDFOR

   STORE 0 TO nFileCount
   STORE 0 TO nByteCount
   FOR ii = 1 TO nHowMany
      IF arr[ii, 3] = .T.  &&... fileType = .T., File, else Dir
         nRemoteItemCount = nRemoteItemCount + 1 
            STORE '' TO cTmpStr
            cTmpStr = ;
               STR(arr [ii, 2]) +;  &&... bytes
               '  ' +;
               TTOC(arr [ii, 4]) +;  &&... datetime
               '  ' +;
               arr [ii, 5]     &&... name
            SELECT komandle
            APPEND blank   
            replace ime WITH cTmpStr
            nFileCount = nFileCount + 1 
            nByteCount = nByteCount + arr [ii, 2]
      ENDIF
   ENDFOR

   = InternetCloseHandle (hFtpSession)
   = InternetCloseHandle (hOpen)

*   THISFORM.oleStatusBar.Panels(2).TEXT = ;
      Alltrim(Transform(nDirCount, '999,999')) + ;
      IIF(nDirCount = 1, ' dir', ' dirs') + ' || ' +;
      Alltrim(Transform(nFileCount, '999,999,999')) + ;
      IIF(nFileCount = 1, ' file', ' files') + ' || ' +;
      Alltrim(Transform(nByteCount, '999,999,999,999')) +; 
      IIF(nByteCount = 1, ' byte.', ' bytes.')
ELSE
*   THISFORM.oleStatusBar.Panels(2).TEXT = "Nema konekcije"
ENDIF
*THISFORM.oleStatusBar.Panels(1).TEXT = '*'
mtext='*'
RETURN 
ENDPROC
*----------KRAJ PROCEDURE CLICK---------

FUNCTION BUF2NUM
*... buf2num 
LPARAMETERS lcBuffer, lnOffset, lnBytes

* converts N bytes from the buffer into a numeric value  
    lnResult = 0   
    FOR ii=1 TO lnBytes 
        lnResult = lnResult +;   
            BitLShift(Asc(SUBSTR (lcBuffer, lnOffset+ii, 1)), (ii-1)*8)   
    ENDFOR   
RETURN  lnResult  
ENDFUNC

*----------FUNKCIJA  connect2ftp
*...METHOD connect2ftp (strHost, strUser, strPwd)
FUNCTION connect2ftp
LPARAMETERS strHost, strUser, strPwd

#DEFINE INTERNET_INVALID_PORT_NUMBER   0
#DEFINE INTERNET_OPEN_TYPE_DIRECT      1
#DEFINE INTERNET_SERVICE_FTP           1
#DEFINE FTP_TRANSFER_TYPE_ASCII        1
#DEFINE FTP_TRANSFER_TYPE_BINARY       2
#DEFINE INTERNET_FLAG_NEED_FILE       16
#DEFINE FILE_ATTRIBUTE_DIRECTORY      16

#DEFINE GENERIC_READ    2147483648   && &H80000000
#DEFINE GENERIC_WRITE   1073741824   && &H40000000

* open access to Inet functions
hOpen = InternetOpen ("vfp", INTERNET_OPEN_TYPE_DIRECT, 0, 0, 0)

IF hOpen = 0
   MESSAGEBOX( "Nije moguc pristup do WinInet.Dll", 0, 'Greska otvaranja'  )
   RETURN .F.
ENDIF

* connect to FTP
hFtpSession = InternetConnect (hOpen, strHost,;
   INTERNET_INVALID_PORT_NUMBER,;
   strUser, strPwd, INTERNET_SERVICE_FTP, 0, 0)

IF hFtpSession = 0
   * close access to Inet functions and exit
   = InternetCloseHandle (hOpen)
   MESSAGEBOX( "FTP " + strHost + " nije slobodan" , 0, "Sorry" )
   RETURN .F.
ELSE
*   THISFORM.oleStatusBar.Panels(2).TEXT = ;
      "Konakcijana " + strHost + " od: [" + strUser + "]"
*   THISFORM.oleStatusBar.Panels(1).TEXT = '*'
ENDIF
RETURN .T.
ENDFUNC

*-----------------deleteremorefile

FUNCTION DELETEREMOTEFILE
PARAMETERS lcRemoteFile

*...set up API calls
PUBLIC hOpen, hFtpSession
DECLARE INTEGER InternetOpen IN wininet.DLL;
   STRING  sAgent,;
   INTEGER lAccessType,;
   STRING  sProxyName,;
   STRING  sProxyBypass,;
   STRING  lFlags

DECLARE INTEGER InternetCloseHandle IN wininet.DLL INTEGER hInet

DECLARE INTEGER InternetConnect IN wininet.DLL;
   INTEGER hInternetSession,;
   STRING  sServerName,;
   INTEGER nServerPort,;
   STRING  sUsername,;
   STRING  sPassword,;
   INTEGER lService,;
   INTEGER lFlags,;
   INTEGER lContext

DECLARE INTEGER FtpDeleteFile IN wininet.DLL;
   INTEGER hConnect,;
   STRING  lpszFileName

*... open access to Inet functions
hOpen = InternetOpen ("vfp", 1, 0, 0, 0)

IF hOpen = 0
   ? "Nije moguæe pristupiti datoteci WinInet.Dll"
   RETURN .F.
ENDIF

*... connect to FTP host

* connection parameters - you better put your data
WITH THISFORM
   strHost = ALLTRIM(.cbHost.Text)
   strUser = ALLTRIM(.txtUsername.VALUE)
   strPwd  = ALLTRIM(.txtPassword.VALUE)
ENDWITH

hFtpSession = InternetConnect (hOpen, strHost , 0,;
   strUser , strPwd, 1, 0, 0)

IF hFtpSession = 0
   * close access to Inet functions and exit
   = InternetCloseHandle (hOpen)
   MESSAGEBOX( "Nije moguæa konecija na server" , 0, 'Greska u komunikaciji')
   RETURN   
ELSE
   THISFORM.oleStatusBar.Panels(2).TEXT = ;
      "Konekcija na " + strHost + " od: [" + strUser + "]"
      THISFORM.oleStatusBar.Panels(1).TEXT = '*'
      
   lnResult = FtpDeleteFile (hFtpSession, lcRemoteFile)
   IF lnResult = 0
      MESSAGEBOX( "Nije moguæe obrisati selektovanu datoteku ", 0, "Imamo problem")
   ENDIF

ENDIF

= InternetCloseHandle (hFtpSession)
= InternetCloseHandle (hOpen)
THISFORM.oleStatusBar.Panels(2).TEXT = ''
RETURN
ENDFUNC

**************************************
*... ftime2dtime 
FUNCTION ftime2dtime 
LPARAMETERS lcFileTime
    lcSystemTime = REPLI (Chr(0), 16) 
    = FileTimeToSystemTime (@lcFileTime, @lcSystemTime) 

    wYear   = THISFORM.buf2num (lcSystemTime,  0, 2) 
    wMonth  = THISFORM.buf2num (lcSystemTime,  2, 2) 
    wDay    = THISFORM.buf2num (lcSystemTime,  6, 2) 
    wHour   = THISFORM.buf2num (lcSystemTime,  8, 2) 
    wMinute = THISFORM.buf2num (lcSystemTime, 10, 2) 
    wSecond = THISFORM.buf2num (lcSystemTime, 12, 2) 

    lcStoredSet = SET ("DATE") 
    SET DATE TO MDY 
    lcDate = STRTRAN (STR(wMonth,2) + "/" +; 
        STR(wDay,2) + "/" + STR(wYear,4), " ","0") 

    lcTime = STRTRAN (STR(wHour,2) + ":" +; 
        STR(wMinute,2) + ":" + STR(wSecond,2), " ","0") 

    ltResult = CTOT (lcDate + " " + lcTime) 
    SET DATE TO &lcStoredSet 
RETURN  ltResult 
endfunc

*--------------
FUNCTION getCurrentDir
LPARAMETERS hConnection
*... FUNCTION  getCurrentDir (hConnection)
lcDirectory = SPACE(250)
lnLen = LEN(lcDirectory)
IF FtpGetCurrentDirectory (hConnection, @lcDirectory, @lnLen) = 1
   RETURN LEFT(lcDirectory, lnLen)
ELSE
   RETURN ""
ENDIF
ENDFUNC

*------------
FUNCTION isDirectory  
*... isDirectory  
    RETURN BitAnd (fileAttributes,; 
        FILE_ATTRIBUTE_DIRECTORY) = FILE_ATTRIBUTE_DIRECTORY  
ENDFUNC
*-------------------        
PROCEDURE markalstfile
PARAMETERS cWhichFile
SELECT KOMANDDE
mrecde=RECCOUNT()
FOR zzz = 1 TO mrecde
   SELECT komandde
   GOTO mrecde
   mimede=ime 
   IF Upper(ALLTRIM(LEFT(mimede, 36))) =;
      Upper(Justfname(cWhichFile))
      replace oznaceno WITH '*'
*      mimeThisform.lstLocal.SELECTED(zzz) = .T.
      EXIT  &&... no multiselect, so bail as soon as we find it
   ELSE
      replace oznaceno WITH ' '
*      Thisform.lstLocal.SELECTED(zzz) = .F.
   ENDIF
NEXT
SELECT komandde
komander.grd1.setfocus        
ENDPROC
*--------------------------------

FUNCTION REMOTEDIR2ARRAY
LPARAMETERS hConnection, lcRemotePath, lcMask, arr
*... FUNCTION  remoteDir2array (hConnection, lcRemotePath, lcMask, arr)
* fill the array with file data for the given remote path
#DEFINE INTERNET_INVALID_PORT_NUMBER   0
#DEFINE INTERNET_OPEN_TYPE_DIRECT      1
#DEFINE INTERNET_SERVICE_FTP           1
#DEFINE FTP_TRANSFER_TYPE_ASCII        1
#DEFINE FTP_TRANSFER_TYPE_BINARY       2
#DEFINE INTERNET_FLAG_NEED_FILE       16
#DEFINE FILE_ATTRIBUTE_DIRECTORY      16

#DEFINE GENERIC_READ    2147483648   && &H80000000
#DEFINE GENERIC_WRITE   1073741824   && &H40000000

lcStoredPath = getCurrentDir (hConnection)
IF NOT setCurrentDir (hConnection, lcRemotePath)
   RETURN -1    && path not found
ENDIF
*ThisForm.lblRemoteDir.Caption = lcRemotePath
MlcRemotePath= lcRemotePath
SET STEP ON 
*IF !SEEK(ALLTRIM(mlcRemotePath), 'hist', 'hist')
*   STORE lcRemotePath TO m.hist
*   INSERT INTO hist FROM MEMVAR
*   ThisForm.cbHist.AddItem(lcRemotePath)
*ENDIF
*REPLACE hist.timestamp WITH DATETIME()

* finding the first file
lnFound = 0
lpFindFileData = REPLI (CHR(0), 320)
hFind = FtpFindFirstFile (hConnection, lcMask,;
   @lpFindFileData, INTERNET_FLAG_NEED_FILE, 0)

IF hFind <> 0
   DO WHILE .T.
      setValue (lpFindFileData)
      lnFound = lnFound + 1
      DIMEN arr [lnFound, 5]
      arr [lnFound, 1] = komander.fileAttributes
      arr [lnFound, 2] = komander.fileSize
      arr [lnFound, 3] = komander.fileType
      arr [lnFound, 4] = komander.lastWriteTime
      arr [lnFound, 5] = komander.fileName

      lpFindFileData = REPLI (CHR(0), 320)
      IF InternetFindNextFile (hFind, @lpFindFileData) <> 1
         EXIT
      ENDIF
   ENDDO
   = InternetCloseHandle (hFind)
ENDIF
RELEASE STRUCT
setCurrentDir (hConnection, lcStoredPath)
RETURN  lnFound
ENDFUNC


*... rename file on host
FUNCTION RENAMEREMOTEFILE
LPARAMETERS lcNewName

#DEFINE INTERNET_INVALID_PORT_NUMBER   0
#DEFINE INTERNET_OPEN_TYPE_DIRECT      1
#DEFINE INTERNET_SERVICE_FTP           1
#DEFINE FTP_TRANSFER_TYPE_ASCII        1
#DEFINE FTP_TRANSFER_TYPE_BINARY       2

PUBLIC hOpen, hFtpSession
DECLARE INTEGER InternetOpen IN wininet.DLL;
   STRING  sAgent,;
   INTEGER lAccessType,;
   STRING  sProxyName,;
   STRING  sProxyBypass,;
   STRING  lFlags

DECLARE INTEGER InternetCloseHandle IN wininet.DLL INTEGER hInet

DECLARE INTEGER InternetConnect IN wininet.DLL;
   INTEGER hInternetSession,;
   STRING  sServerName,;
   INTEGER nServerPort,;
   STRING  sUsername,;
   STRING  sPassword,;
   INTEGER lService,;
   INTEGER lFlags,;
   INTEGER lContext

DECLARE INTEGER FtpRenameFile IN wininet.DLL;
   INTEGER hConnect,;
   STRING  lpszExisting,;
   STRING  lpszNew

* select FTP connection providing you an appropriate access level
* in all cases it can not be any "anonymous" access
* connection parameters - you better put your data
*WITH THISFORM
   strHost = ALLTRIM(msajtime)
   strUser = ALLTRIM(msajtkor)
   strPwd  = ALLTRIM(msajtloz)
*ENDWITH

IF Connect2ftp (strHost , strUser, strPwd)  &&... need to put in password here
   * select the existing source and valid target file names
   MPOCETAK=ALLTRIM(THISFORM.lstRemote.VALUE)
   MRAT=RAT(' ',MPOCETAK)
   ctmpfilename=ALLTRIM(SUBSTR(MPOCETAK,MRAT,128))
*   STORE ALLTRIM(SUBSTR(THISFORM.lstRemote.VALUE, 36)) TO cTmpFileName
   lcOldName = ALLTRIM(komanlde.ime) + "/" + cTmpFileName 
   lcOldName = STRTRAN(lcOldName , '//', '/')
   lcNewName = ALLTRIM(komandle) + "/" + Alltrim(lcNewName)
   lcNewName = STRTRAN(lcNewName , '//', '/')

   IF FtpRenameFile (hFtpSession, lcOldName, lcNewName) = 0  &&... failed
      MessageBox('Nije moguæe preimenovati datoteku.', 0, "Greška")
   ENDIF
   
   ThisForm.cmdRefreshRemote.CLICK

   = InternetCloseHandle (hFtpSession)
   = InternetCloseHandle (hOpen)
ENDIF
ENDFUNC


FUNCTION SetCurrentDir
LPARAMETERS hConnection, lcNewdir
*...FUNCTION  setCurrentDir (hConnection, lcNewdir)  
RETURN FtpSetCurrentDirectory (hConnection, @lcNewdir) = 1  
ENDFUNC




*... PROCEDURE  setValue (lcValue)
FUNCTION  setValue
LPARAMETERS lcValue
*WITH THISFORM
   mValue = SPACE(300)
   mValue = lcValue

    mfileAttributes   = buf2num (mvalue,  0, 4)  
    mfileSize         = buf2num (mvalue, 32, 4)  
    mfileType         = !isDirectory()
    mlastWriteTime    = ftime2dtime (SUBSTR(mvalue, 21, 8)) 
    mfileName         = ALLTRIM(SUBSTR(mvalue, 45,250))  

    IF AT(Chr(0), mfileName) <> 0  
        mfileName = SUBSTR (mfileName, 1, AT(Chr(0), mfileName)-1)  
    ENDIF  
*ENDWITH
ENDFUNC


*... FUNCTION TrimFile
FUNCTION TrimFile
IF AT(CHR(0), mfileName) <> 0
   mfileName = ;
      SUBSTR (mfileName, 1, AT(CHR(0), mfileName)-1)
ENDIF
RETURN 
endfunc


