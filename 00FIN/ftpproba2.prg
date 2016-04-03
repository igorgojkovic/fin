*-----kreiranje fajla sa povratnim informacijama
SET STEP ON 
set default to &mdata02
use firma in 0
select firma
mfime=STRTRAN(ALLTRIM(fime), ' ', '') 
IF LEN(mfime)=0
   mfime='nepoznat'
endif
mmfime=mfime+dtos(DATE())+substr(TIME(),1,2)+substr(TIME(),4,2)+'.txt'
mporuka=ALLTRIM(fime)+' '+dtoc(DATE())+' '+TIME()
USE
set default to &mbazni
*----------povratna informacija
fidat=fcreate(mmfime)
mm=mporuka
fputs(fidat,mm)
fclose(fidat)
*---------------------------
dELETE FILE FIN.ZIP
dELETE FILE aktuelno.txt
SET DEFAULT to &mbazni
msajtime='agencijakocka.rs'
msajtput='public_html/preuzimanje/dogradnja/'
msajtkor='agencija'                              
msajtloz='kockajoza'
mimefajla='fin.zip'
lokaldir=&mbazni
 

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
*DO ftpsalji
DO ftpprimi
*DO ftpbrisi
DO porukau WITH 'prijem zavrsen'

 

PROCEDURE ftpsalji
IF connect2ftp (msajtime, msajtkor, msajtloz)
 lnFiles = ADIR (arr, lokaldir + imefajla)
 FOR lnCnt=1 TO lnFiles
  lcSource = lokaldir + LOWER (arr [lnCnt, 1])
  lcTarget = msajtput + LOWER (arr [lnCnt, 1])
  DO porukau WITH local2ftp (hFtpSession, lcSource, lcTarget)
 ENDFOR
 = InternetCloseHandle (hFtpSession)
 = InternetCloseHandle (hOpen)
ENDIF
RETURN

PROCEDURE ftpprimi
sAgent = "vfp6"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
hOpen = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF hOpen = 0
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
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile, lpszNewFile, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
= InternetCloseHandle (hFtpSession)
= InternetCloseHandle (hOpen)
RETURN

PROCEDURE ftpbrisi
sAgent = "vfp6"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
hOpen = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF hOpen = 0
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

FUNCTION connect2ftp (strHost, strUser, strPwd)
hOpen = InternetOpen ("vfp", 1, 0, 0, 0)
IF hOpen = 0
 DO porukau WITH  "Nema pristupa do WinInet.Dll"
 RETURN .F.
ENDIF
hFtpSession = InternetConnect (hOpen, strHost, 0, strUser, strPwd, 1,0,0)
IF hFtpSession = 0
 = InternetCloseHandle (hOpen)
 RETURN .F.
ENDIF
RETURN .T.

FUNCTION local2ftp (hConnect, lcSource, lcTarget)
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
*--------------------------------------
novaverzija.lblporuka.caption=' fin.zip je prenet u glavni folder fin13'
novaverzija.lblporuka2.caption='napustite program i raspakujte ga u isti folder '
novaverzija.lblporuka3.caption='startovanjem fajla nova-verzija.bat '
SET DEFAULT to &mbazni
SET DEFAULT to &mDATA02
CLOSE ALL
