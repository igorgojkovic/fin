PROCEDURE ftpdef
*-----kreiranje fajla sa povratnim informacijama
*SET STEP ON 
*novaverzija.lblporuka.caption=' FTP SESIJA JE ZAPOCELA'
*set default to &mbazni
*mprosloje=1
*IF FILE('fin.zip')
*   DELETE FILE fin.zip
*endif
*msajtime="agencijakocka.rs"
*msajtkor="agencija"
*msajtloz="kockajoza"
*mlokaldir=mbazni+'\'
*msajtput="public_html/preuzimanje/dogradnja/"
*mimefajla="fins.zip"
 
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
endproc
*CLEAR
*DO Nftpsalji
*DO nftpprimi
*DO ftpbrisi
*DO PORUKAU WITH ' FTP SESIJA JE ZAVRSENA '
*IF mprosloje=1 
*--------------------------------------
*novaverzija.lblporuka.caption=' fin.zip je prenet u glavni folder fin13'
*novaverzija.lblporuka2.caption='napustite program i raspakujte ga u isti folder '
*novaverzija.lblporuka3.caption='startovanjem fajla nova-verzija.bat '
*endif
 
 
*-----------procedura slanja---------------
PROCEDURE ftpsalji
IF konekcijanaftp (msajtime, msajtkor, msajtloz)
* SET STEP ON 
* lnFiles = ADIR (arr,mimefajla)
* FOR lnCnt=1 TO lnFiles
*  lcSource = mlokalput +'\'+ LOWER (arr [lnCnt, 1])
*  lcTarget = msajtput + '/'+LOWER (arr [lnCnt, 1])
*  salokalanaftp(hFtpSession, lcSource, lcTarget)
*  novaverzija.refresh
* ENDFOR
  lnFiles = ALLTRIM(mimefajla)
  lcSource = mlokalput +'\'+ lnFiles
  lcTarget = msajtput + '/'+ lnFiles
  salokalanaftp(hFtpSession, lcSource, lcTarget)
 = InternetCloseHandle (hFtpSession)
 = InternetCloseHandle (hOpen)
ELSE
   DO porukau WITH ' SAJT JE NEDOSTUPAN ILI JE POGRESNO IME SAJTA '
ENDIF
RETURN
*------------------procedura prijema
PROCEDURE ftpprimi
SET DEFAULT to &mbazni
SET DEFAULT to &mDATA02
*CLOSE ALL 
sAgent = "vfp9"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
hOpen = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF hOpen = 0
   mprosloje=0
   DO porukau WITH ' SAJT JE NEDOSTUPAN ILI JE POGRESNO IME SAJTA '
 RETURN
ENDIF
hFtpSession = InternetConnect (hOpen, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
IF hFtpSession = 0
   mprosloje=0
  DO porukau WITH ' POGRESNO IME SAJTA, KORISNICKO IME  ILI LOZINKA '
 = InternetCloseHandle (hOpen)
 RETURN
ENDIF
*SET STEP ON 
lpszRemoteFile = msajtput+'/'+mimefajla
lpszNewFile    = mlokalput+'\'+mimefajla
fFailIfExists  = 0
dwContext      = 0
*SET STEP ON 
lnResult = FtpGetFile (hFtpSession, lpszRemoteFile, lpszNewFile, fFailIfExists, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, dwContext)
IF lnResult=0
   mprosloje=0
   DO porukau WITH ' Nije moguce ocitati datoteku na serveru '
ENDIF
= InternetCloseHandle (hFtpSession)
= InternetCloseHandle (hOpen)
RETURN

*-----------procedura brisanja---------------
PROCEDURE ftpbrisi
sAgent = "vfp6"
sProxyName = CHR(0)
sProxyBypass = CHR(0)
lFlags = 0
hOpen = InternetOpen (sAgent, INTERNET_OPEN_TYPE_DIRECT, sProxyName, sProxyBypass, lFlags)
IF hOpen = 0
   mprosloje=0
   DO porukau WITH ' neuspelo otvaranje FTP konekcije '
 RETURN
ENDIF
hFtpSession = InternetConnect (hOpen, msajtime, INTERNET_INVALID_PORT_NUMBER, msajtkor, msajtloz, INTERNET_SERVICE_FTP, 0, 0)
IF hFtpSession = 0
   DO porukau WITH ' neuspela konekcija na server '
 = InternetCloseHandle (hOpen)
 RETURN
ENDIF
lpszRemoteFile = msajtput+'/'+imefajla
lpszNewFile    = mlokalput+'\'+imefajla
fFailIfExists  = 0
dwContext      = 0
lnResult = FtpDeleteFile (hFtpSession, lpszRemoteFile)
= InternetCloseHandle (hFtpSession)
= InternetCloseHandle (hOpen)
RETURN
*------------funkcija uspostavljanja konekcije-------
FUNCTION konekcijanaftp (strHost, strUser, strPwd)
hOpen = InternetOpen ("vfp", 1, 0, 0, 0)
IF hOpen = 0
  DO porukau WITH "nedostupna biblioteka  WinInet.Dll"
 RETURN .F.
ENDIF
hFtpSession = InternetConnect (hOpen, strHost, 0, strUser, strPwd, 1,0,0)
IF hFtpSession = 0
   mprosloje=0
   do porukau with "neuspela konekcija na server "
 = InternetCloseHandle (hOpen)
 RETURN .F.
ENDIF
RETURN .T.

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
*   novaverzija.TXTPOKAZIVAC.VALUE=lnBytesWritten
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

