* server adress
*SET STEP ON 
*msajtime="agencijakocka.rs"
* username
*msajtkor="agencija"
* password
*msajtloz="kockajoza"
* local directory
*mlokalput="C:\"
* FTP server directory
*msajtput="public_html/preuzimanje/dogradnja/"
* file name
*imefajla="fin.zip"
PROCEDURE ftpdef 

#DEFINE GENERIC_READ     2147483648
#DEFINE GENERIC_WRITE     1073741824
#DEFINE INTERNET_INVALID_PORT_NUMBER 0
#DEFINE INTERNET_OPEN_TYPE_DIRECT  1
#DEFINE INTERNET_OPEN_TYPE_PROXY  3
#DEFINE INTERNET_DEFAULT_FTP_PORT  21
#DEFINE INTERNET_FLAG_ASYNC    268435456
#DEFINE INTERNET_FLAG_FROM_CACHE  16777216
#DEFINE INTERNET_FLAG_OFFLINE   16777216
#DEFINE INTERNET_FLAG_CACHE_IF_NET_FAIL 65536
#DEFINE INTERNET_OPEN_TYPE_PRECONFIG 0
#DEFINE FTP_TRANSFER_TYPE_ASCII   1
#DEFINE FTP_TRANSFER_TYPE_BINARY  2
#DEFINE INTERNET_SERVICE_FTP   1
#DEFINE INTERNET_SERVICE_GOPHER   2
#DEFINE INTERNET_SERVICE_HTTP   3
#DEFINE FILE_ATTRIBUTE_NORMAL   128
#DEFINE INTERNET_SERVICE_FTP           1
#DEFINE INTERNET_FLAG_NEED_FILE       16
#DEFINE FILE_ATTRIBUTE_DIRECTORY      16

*
PUBLIC otvorikon, ftpsesija
*
DECLARE INTEGER InternetOpen IN WININET.DLL;
   STRING  sAgent,;
   INTEGER lAccessType,;
   STRING  sProxyName,;
   STRING  sProxyBypass,;
   STRING  lFlags
*
DECLARE INTEGER InternetCloseHandle IN WININET.DLL;
   INTEGER hInet
*
DECLARE INTEGER InternetConnect IN WININET.DLL;
   INTEGER hInternetSession,;
   STRING  sServerName,;
   INTEGER nServerPort,;
   STRING  sUsername,;
   STRING  sPassword,;
   INTEGER lService,;
   INTEGER lFlags,;
   INTEGER lContext
*
DECLARE INTEGER FtpGetFile IN WININET.DLL;
   INTEGER ftpsesija,;
   STRING  lpszRemoteFile,;
   STRING  lpszNewFile,;
   INTEGER fFailIfExists,;
   INTEGER dwFlagsAndAttributes,;
   INTEGER dwFlags,;
   INTEGER dwContext
*
DECLARE INTEGER FtpDeleteFile IN WININET.DLL ;
   INTEGER nFile,;
   STRING  lpszFileName
*
DECLARE INTEGER InternetWriteFile IN WININET.DLL;
   INTEGER   hFile,;
   STRING  @ sBuffer,;
   INTEGER   lNumBytesToWrite,;
   INTEGER @ dwNumberOfBytesWritten
*
DECLARE INTEGER FtpOpenFile IN WININET.DLL;
   INTEGER ftpsesija,;
   STRING  sFileName,;
   INTEGER lAccess,;
   INTEGER lFlags,;
   INTEGER lContext
   
DECLARE INTEGER FtpFindFirstFile IN wininet.dll;  
   INTEGER ftpsesija,;
   STRING lpszSearchFile,;  
   STRING @lpFindFileData,;
   INTEGER lflags,;
   INTEGER lcontext  

DECLARE INTEGER InternetFindNextFile IN wininet.dll;  
   INTEGER hFind,;
   STRING @lpvFindData  

    DECLARE INTEGER FtpGetCurrentDirectory IN wininet.dll; 
        INTEGER hFtpSession,;
        STRING @lpszDirectory,;  
        INTEGER @lpdwCurrentDirectory  


DECLARE INTEGER FtpSetCurrentDirectory IN wininet.dll; 
   INTEGER hFtpSession,;
   STRING @lpszDirectory  

DECLARE INTEGER InternetReadFile IN wininet.dll; 
   INTEGER hFile,;
   STRING @lpBuffer,; 
   INTEGER dwNumberOfBytesToRead,;
   INTEGER @lpdwNumberOfBytesRead 

DECLARE INTEGER FileTimeToSystemTime IN kernel32.dll; 
   STRING @lpFileTime,;
   STRING @lpSystemTime 

********************************************

*CLEAR
endproc
*DO UPLOAD_FTP
*DO DOWNLOAD_FTP
*DO DELETE_FTP
*?'FINISHED'


*DO ftpsalji
*DO ftpprimi
*DO ftpbrisi
*DO PORUKAU WITH ' FTP SESIJA JE ZAVRSENA '
 
*-----------procedura slanja---------------
PROCEDURE ftpsalji
   IF konekcijanaftp (msajtime, msajtkor, msajtloz)
      * SET STEP ON 
       lnFiles = ADIR (arr, lokaldir + imefajla)
       FOR lnCnt=1 TO lnFiles
          lcSource = mlokalput + LOWER (arr [lnCnt, 1])
          lcTarget = msajtput + LOWER (arr [lnCnt, 1])
          salokalanaftp(ftpsesija, lcSource, lcTarget)
         * novaverzija.refresh
       ENDFOR
       = InternetCloseHandle (ftpsesija)
       = InternetCloseHandle (otvorikon)
   ENDIF
ENDPROC

*------------------procedura prijema
PROCEDURE ftpprimi
*   SET STEP ON 
   sAgent = "vfp6"
   imefajla="fin.zip"
   sProxyName = CHR(0)
   sProxyBypass = CHR(0)
   lFlags = 0
   otvorikon = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
   IF otvorikon = 0
      mprosloje=0
      DO porukau WITH ' SAJT JE NEDOSTUPAN ILI JE POGRESNO IME SAJTA '
      RETURN
   ENDIF
   ftpsesija = InternetConnect (otvorikon, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
   IF ftpsesija = 0
      mprosloje=0
      DO porukau WITH ' POGRESNO IME SAJTA, KORISNICKO IME  ILI LOZINKA '
      = InternetCloseHandle (otvorikon)
      RETURN
   ENDIF
   lpszRemoteFile = msajtput+imefajla
   lpszNewFile    = mlokalput+imefajla
   fFailIfExists  = 0
   dwContext      = 0
   *SET STEP ON 
   rezultat = FtpGetFile (ftpsesija, lpszRemoteFile, lpszNewFile, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
   IF rezultat=0
      mprosloje=0
      DO porukau WITH ' POGRESNA PUTANJA NA SERVERU '
   ENDIF
   = InternetCloseHandle (ftpsesija)
   = InternetCloseHandle (otvorikon)
endproc

*-----------procedura brisanja---------------
PROCEDURE ftpbrisi
   sAgent = "vfp6"
   sProxyName = CHR(0)
   sProxyBypass = CHR(0)
   lFlags = 0
   otvorikon = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
   IF otvorikon = 0
      mprosloje=0
      DO porukau WITH ' NEUSPELA FTP KONEKCIJA '
      RETURN
   ENDIF
   ftpsesija = InternetConnect (otvorikon, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
   IF ftpsesija = 0
      = InternetCloseHandle (otvorikon)
      RETURN
   ENDIF
   lpszRemoteFile = msajtput+imefajla
   lpszNewFile    = mlokalput+imefajla
   fFailIfExists  = 0
   dwContext      = 0
   rezultat = FtpDeleteFile (ftpsesija, lpszRemoteFile)
   = InternetCloseHandle (ftpsesija)
   = InternetCloseHandle (otvorikon)
endproc
*------------funkcija uspostavljanja konekcije-------
FUNCTION konekcijanaftp (strHost, strUser, strPwd)
   otvorikon = InternetOpen ("vfp", 1, 0, 0, 0)
   IF otvorikon = 0
      DO porukau WITH "nedostupna biblioteka  WinInet.Dll"
      RETURN .F.
   ENDIF
   ftpsesija = InternetConnect (otvorikon, strHost, 0, strUser, strPwd, 1,0,0)
   IF ftpsesija = 0
      mprosloje=0
      DO porukau WITH "neuspela konekcija"
      = InternetCloseHandle (otvorikon)
      RETURN .F.
   ENDIF
   RETURN .T.
endfunc
*---------funkcija slanja sa lokala na ftp
FUNCTION salokalanaftp (hConnect, lcSource, lcTarget)
   hSource = FOPEN (lcSource)
   IF (hSource = -1)
      RETURN -1
   ENDIF
   hTarget = FtpOpenFile(hConnect, lcTarget, GENERIC_WRITE, 2, 0)
   IF hTarget = 0
      mprosloje=0
      DO porukau WITH "nema ciljne datoteke"
      = FCLOSE (hSource)
      RETURN -2
   ENDIF
   lnBytesWritten = 0
   lnChunkSize =  128
   DO WHILE !FEOF(hSource)
      lcBuffer = FREAD (hSource, lnChunkSize)
      lnLength = Len(lcBuffer)
      IF lnLength<>0
         IF InternetWriteFile (hTarget, @lcBuffer, lnLength, @lnLength) = 1
            lnBytesWritten = lnBytesWritten + lnLength
            DO porukau WITH lnBytesWritten
         ELSE
            EXIT
         ENDIF
      ELSE
         EXIT
      ENDIF
   ENDDO
   = InternetCloseHandle (hTarget)
   = FCLOSE (hSource)
   RETURN lnBytesWritten
ENDFUNC


*******************ocitavanje servera*********************
PROCEDURE ftpocitaj
   SET STEP ON 
   SELECT KOMANDLE
   ZAP
   sAgent = "vfp6"
   imefajla="fin.zip"
   sProxyName = CHR(0)
   sProxyBypass = CHR(0)
   lFlags = 0
   otvorikon = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
   IF otvorikon = 0
      mprosloje=0
      DO porukau WITH ' SAJT JE NEDOSTUPAN ILI JE POGRESNO IME SAJTA '
      RETURN
   ENDIF
   ftpsesija = InternetConnect (otvorikon, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
   IF ftpsesija = 0
      mprosloje=0
      DO porukau WITH ' POGRESNO IME SAJTA, KORISNICKO IME  ILI LOZINKA '
      = InternetCloseHandle (otvorikon)
      RETURN
   ELSE
      *************************************************************
      *************************************************************
      ************ocitavanje fajlova i direktorijuma***************
      PUBLIC hOpen, hFtpSession
      PUBLIC arr
      STORE .T. TO lGettingFiles
      STORE .F. TO lDirsFiles
      STORE .F. TO lLinksFiles
      lcMask = '*'
      IF EMPTY(msajtput)
         lcRemotePath  = "/"
      ENDIF
      ***????????????????
      nHowMany = serveruniz(ftpsesija, msajtput, lcMask, @arr)
      IF nHowMany < 0
         DO porukau WITH 'Problem odredjivanja serverskog direktorijuma.'
         RETURN .T.
      ENDIF
      STORE 0 TO nHowMany
      SELECT komaNdle
      APPEND blank
      REPLACE ime WITH '..'
      STORE 0 TO nDirCount
      mocitajdir=0
      FOR ii = 1 TO nHowMany
         IF arr[ii, 3] = .F.  &&... fileType = .T., File, else Dir
            mocitajdir=mocitajdir + 1 
            STORE '' TO cTmpStr
            cTmpStr = '=>' + arr [ii, 5]    &&... name
            SELECT komandle
            APPEND blank
            replace ime WITH cTmpStr
            nDirCount = nDirCount + 1 
         ENDIF
      ENDFOR
      ******???????  
      STORE 0 TO nFileCount
      STORE 0 TO nByteCount
      FOR ii = 1 TO nHowMany
         IF arr[ii, 3] = .T.  &&... fileType = .T., File, else Dir
            mocitajdir=mocitajdir + 1 
            STORE '' TO cTmpStr
            cTmpStr = ;
            arr [ii, 5]     &&... name
            SELECT komandle
            APPEND blank
            replace ime WITH cTmpStr
            nFileCount = nFileCount + 1 
            nByteCount = nByteCount + arr [ii, 2]
         ENDIF
      ENDFOR
      
*      THISFORM.oleStatusBar.Panels(2).TEXT = ;
      Alltrim(Transform(nDirCount, '999,999')) + ;
      IIF(nDirCount = 1, ' dir', ' dirs') + ' || ' +;
      Alltrim(Transform(nFileCount, '999,999,999')) + ;
      IIF(nFileCount = 1, ' file', ' files') + ' || ' +;
      Alltrim(Transform(nByteCount, '999,999,999,999')) +; 
      IIF(nByteCount = 1, ' byte.', ' bytes.')
      SELECT KOMANDLE
      BROW
      = InternetCloseHandle (ftpsesija)
      = InternetCloseHandle (hOpen)
   ENDIF
endproc 

*------------------dodate funcije-----------------------
FUNCTION serveruniz
   LPARAMETERS hConnection, lcRemotePath, lcMask, arr
   *... FUNCTION  serveruniz (hConnection, lcRemotePath, lcMask, arr)
   * fill the array with file data for the given remote path
   lcStoredPath = citajaktivdir (hConnection,lcRemotePath)
   IF setCurrentDir (hConnection, lcRemotePath)
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
            SELECT komandle
            mime=ime
            arr [lnFound, 5] = mime
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
   ELSE
      RETURN -1   
   endif   
endfunc   

**************************************
FUNCTION bufferubroj 
LPARAMETERS lcBuffer, lnOffset, lnBytes

* converts N bytes from the buffer into a numeric value  
    lnResult = 0   
    FOR ii=1 TO lnBytes 
        lnResult = lnResult +;   
            BitLShift(Asc(SUBSTR (lcBuffer, lnOffset+ii, 1)), (ii-1)*8)   
    ENDFOR   
RETURN  lnResult  
ENDFUNC     
*************************************
FUNCTION citajaktivdir
LPARAMETERS hConnection,LCRemotePath

*... FUNCTION  citajaktivdir (hConnection)
lcDirectory = lcRemotePath
lnLen = LEN(lcDirectory)

IF FtpGetCurrentDirectory (hConnection, lcDirectory, @lnLen) = 1
   RETURN LEFT(lcDirectory, lnLen)
ELSE
   RETURN ""
ENDIF
endfunc
***********************************
FUNCTION setCurrentdir
LPARAMETERS hConnection, lcNewdir
*...FUNCTION  setCurrentDir (hConnection, lcNewdir)  
RETURN FtpSetCurrentDirectory (hConnection, @lcNewdir) = 1  
ENDFUNC

*************************************
*... PROCEDURE  setValue (lcValue)
FUNCTION setValue
   LPARAMETERS lcValue
   mValue = SPACE(300)
   mValue = lcValue
   mfileName         = ALLTRIM(SUBSTR(mvalue, 45,250))  
   IF AT(Chr(0), mfileName) <> 0  
       mfileName = SUBSTR (mfileName, 1, AT(Chr(0), mfileName)-1)  
   ENDIF  
ENDFUNC
