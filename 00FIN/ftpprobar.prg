* server adress
SET STEP ON 
sajtime="agencijakocka.rs"
* username
sajtkor="agencija"
* password
sajtkor="kockajoza"
* local directory
sajtlokal="C:\"
* FTP server directory
sajtdir="public_html/preuzimanje/dogradnja/"
* file name
sajtprogram="fin.zip"
 

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
*
PUBLIC mftpotvori, mftpsesija
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
 INTEGER mftpsesija,;
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
 INTEGER mftpsesija,;
 STRING  sFileName,;
 INTEGER lAccess,;
 INTEGER lFlags,;
 INTEGER lContext

 

CLEAR
*DO ftpsalji
DO ftpprimi
*DO ftpbrisi
?'FINISHED'

 

PROCEDURE ftpsalji
IF connect2ftp (sajtime, sajtkor, sajtkor)
 lnFiles = ADIR (arr, sajtlokal + sajtprogram)
 FOR lnCnt=1 TO lnFiles
  lcSource = sajtlokal + LOWER (arr [lnCnt, 1])
  lcTarget = sajtdir + LOWER (arr [lnCnt, 1])
  ?? ftpsalokala (mftpsesija, lcSource, lcTarget)
 ENDFOR
 = InternetCloseHandle (mftpsesija)
 = InternetCloseHandle (mftpotvori)
ENDIF
RETURN

PROCEDURE ftpprimi
sAgent = "vfp"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
mftpotvori = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF mftpotvori = 0
 RETURN
ENDIF
mftpsesija = InternetConnect (mftpotvori, sajtime, INTERNET_INVALID_PORT_NUMBER, sajtkor, sajtkor, INTERNET_SERVICE_FTP, 0, 0)
IF mftpsesija = 0
 = InternetCloseHandle (mftpotvori)
 RETURN
ENDIF
lpszRemoteFile = sajtdir+sajtprogram
lpszNewFile    = sajtlokal+sajtprogram
fFailIfExists  = 0
dwContext      = 0
lnResult = FtpGetFile (mftpsesija, lpszRemoteFile, lpszNewFile, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_ASCII, dwContext)
= InternetCloseHandle (mftpsesija)
= InternetCloseHandle (mftpotvori)
RETURN

PROCEDURE ftpbrisi
sAgent = "vfp"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
mftpotvori = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF mftpotvori = 0
 RETURN
ENDIF
mftpsesija = InternetConnect (mftpotvori, sajtime, INTERNET_INVALID_PORT_NUMBER, sajtkor, sajtkor, INTERNET_SERVICE_FTP, 0, 0)
IF mftpsesija = 0
 = InternetCloseHandle (mftpotvori)
 RETURN
ENDIF
lpszRemoteFile = sajtdir+sajtprogram
lpszNewFile    = sajtlokal+sajtprogram
fFailIfExists  = 0
dwContext      = 0
lnResult = FtpDeleteFile (mftpsesija, lpszRemoteFile)
= InternetCloseHandle (mftpsesija)
= InternetCloseHandle (mftpotvori)
RETURN


FUNCTION ftpkonekcija (strHost, strUser, strPwd)
mftpotvori = InternetOpen ("vfp", 1, 0, 0, 0)
IF mftpotvori = 0
 ? "Sem acceso a WinInet.Dll"
 RETURN .F.
ENDIF
mftpsesija = InternetConnect (mftpotvori, strHost, 0, strUser, strPwd, 1,0,0)
IF mftpsesija = 0
 = InternetCloseHandle (mftpotvori)
 RETURN .F.
ENDIF
RETURN .T.


FUNCTION ftpsalokala (hConnect, lcSource, lcTarget)
hSource = FOPEN (lcSource)
IF (hSource = -1)
 RETURN -1
ENDIF
hTarget = FtpOpenFile(hConnect, lcTarget, GENERIC_WRITE, 2, 0)
IF hTarget = 0
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