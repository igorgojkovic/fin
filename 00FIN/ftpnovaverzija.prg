*-----kreiranje fajla sa povratnim informacijama
*SET STEP ON 
novaverzija.lblporuka.caption=' FTP SESIJA JE ZAPOCELA'
set default to &mbazni
mprosloje=1
*IF FILE('fin.zip')
*   DELETE FILE fin.zip
*endif
msajtime="agencijakocka.rs"
msajtkor="agencija"
msajtloz="kockajoza"
lokaldir=mbazni+'\'
msajtput="public_html/preuzimanje/dogradnja/"
imefajla="fin.zip"
imefajla2="zip.exe"
imefajla3="unzip.exe"
imefajla4="nova-verzija.bat"
imefajla5="config.fpw"
imefajla6="pduput.txt"
imefajla7="teamviewer.exe"
imefajla8="dbfpopravka.zip"


 
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
PUBLIC hOpen, hFtpSession
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
 INTEGER hFtpSession,;
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
 INTEGER hFtpSession,;
 STRING  sFileName,;
 INTEGER lAccess,;
 INTEGER lFlags,;
 INTEGER lContext

 

CLEAR
*DO Nftpsalji
DO nftpprimi
*DO ftpbrisi
*DO PORUKAU WITH ' FTP SESIJA JE ZAVRSENA '
IF mprosloje=1 
*--------------------------------------
novaverzija.lblporuka.caption=' fin.zip je prenet u glavni folder fin13'
novaverzija.lblporuka2.caption='napustite program i raspakujte ga u isti folder '
novaverzija.lblporuka3.caption='startovanjem fajla nova-verzija.bat '
endif
SET DEFAULT to &mbazni
SET DEFAULT to &mDATA02
CLOSE ALL 
 
 
*-----------procedura slanja---------------
PROCEDURE nftpsalji
IF nkonekcijanaftp (msajtime, msajtkor, msajtloz)
* SET STEP ON 
 lnFiles = ADIR (arr, lokaldir + imefajla)
 FOR lnCnt=1 TO lnFiles
  lcSource = lokaldir + LOWER (arr [lnCnt, 1])
  lcTarget = msajtput + LOWER (arr [lnCnt, 1])
  nsalokalanaftp(hFtpSession, lcSource, lcTarget)
  novaverzija.refresh
 ENDFOR
 = InternetCloseHandle (hFtpSession)
 = InternetCloseHandle (hOpen)
ENDIF
RETURN
*------------------procedura prijema
PROCEDURE nftpprimi
sAgent = "vfp6"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
hOpen = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF hOpen = 0
   mprosloje=0
   novaverzija.lblporuka.caption=' SAJT JE NEDOSTUPAN ILI JE POGRESNO IME SAJTA '
 RETURN
ENDIF
hFtpSession = InternetConnect (hOpen, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
IF hFtpSession = 0
   mprosloje=0
   novaverzija.lblporuka.caption=' POGRESNO IME SAJTA, KORISNICKO IME  ILI LOZINKA '
 = InternetCloseHandle (hOpen)
 RETURN
ENDIF
lpszRemoteFile = msajtput+imefajla
lpszNewFile    = lokaldir+imefajla
lpszRemoteFile2 = msajtput+imefajla2
lpszNewFile2    = lokaldir+imefajla2
lpszRemoteFile3 = msajtput+imefajla3
lpszNewFile3    = lokaldir+imefajla3
lpszRemoteFile4 = msajtput+imefajla4
lpszNewFile4    = lokaldir+imefajla4
lpszRemoteFile5 = msajtput+imefajla5
lpszNewFile5    = lokaldir+imefajla5
lpszRemoteFile6 = msajtput+imefajla6
lpszNewFile6    = lokaldir+imefajla6
lpszRemoteFile7 = msajtput+imefajla7
lpszNewFile7    = lokaldir+imefajla7
lpszRemoteFile8 = msajtput+imefajla8
lpszNewFile8    = lokaldir+imefajla8
fFailIfExists  = 0
dwContext      = 0
*SET STEP ON 
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile, lpszNewFile, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile2, lpszNewFile2, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile3, lpszNewFile3, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile4, lpszNewFile4, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile5, lpszNewFile5, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile6, lpszNewFile6, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile7, lpszNewFile7, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile8, lpszNewFile8, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
IF lnResult=0
   mprosloje=0
   novaverzija.lblporuka.caption=' POGRESNA PUTANJA NA SERVERU '
ENDIF
= InternetCloseHandle (hFtpSession)
= InternetCloseHandle (hOpen)
RETURN

*-----------procedura brisanja---------------
PROCEDURE nftpbrisi
sAgent = "vfp6"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
hOpen = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF hOpen = 0
   mprosloje=0
   novaverzija.lblporuka.caption=' NEUSPELA FTP KONEKCIJA '
 RETURN
ENDIF
hFtpSession = InternetConnect (hOpen, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
IF hFtpSession = 0
 = InternetCloseHandle (hOpen)
 RETURN
ENDIF
lpszRemoteFile = msajtput+imefajla
lpszNewFile    = lokaldir+imefajla
fFailIfExists  = 0
dwContext      = 0
lnResult = FtpDeleteFile (hFtpSession, lpszRemoteFile)
= InternetCloseHandle (hFtpSession)
= InternetCloseHandle (hOpen)
RETURN
*------------funkcija uspostavljanja konekcije-------
FUNCTION nkonekcijanaftp (strHost, strUser, strPwd)
hOpen = InternetOpen ("vfp", 1, 0, 0, 0)
IF hOpen = 0
  novaverzija.lblporuka.caption="nedostupna biblioteka  WinInet.Dll"
 RETURN .F.
ENDIF
hFtpSession = InternetConnect (hOpen, strHost, 0, strUser, strPwd, 1,0,0)
IF hFtpSession = 0
   mprosloje=0
   novaverzija.lblporuka.caption="neuspela konekcija"
 = InternetCloseHandle (hOpen)
 RETURN .F.
ENDIF
RETURN .T.

*---------funkcija slanja sa lokala na ftp
FUNCTION nsalokalanaftp (hConnect, lcSource, lcTarget)
hSource = FOPEN (lcSource)
IF (hSource = -1)
 RETURN -1
ENDIF
hTarget = FtpOpenFile(hConnect, lcTarget, GENERIC_WRITE, 2, 0)
IF hTarget = 0
   mprosloje=0
   novaverzija.lblporuka.caption="nema ciljne datoteke"
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
   novaverzija.TXTPOKAZIVAC.VALUE=lnBytesWritten
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

