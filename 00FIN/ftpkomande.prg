 
#DEFINE INTERNET_OPEN_TYPE_DIRECT 1
 
PRIVATE hInternet
hInternet = InternetOpen("FoxFtp", INTERNET_OPEN_TYPE_DIRECT, 0,0,0)
 
= InternetCloseHandle(m.hInternet)
#DEFINE INTERNET_INVALID_PORT_NUMBER 0
#DEFINE INTERNET_SERVICE_FTP         1
#DEFINE INTERNET_FLAG_PASSIVE 0x08000000
 
hConnection = InternetConnect(m.hInternet, m.host,;
    INTERNET_INVALID_PORT_NUMBER,;
    m.usr, m.cPsw, INTERNET_SERVICE_FTP, m.nFlags, 0)
 
= InternetCloseHandle(m.hConnection)

LOCAL cBuffer, nBufsize
nBufsize=260
cBuffer = REPLICATE(CHR(0), nBufsize)
 
= FtpGetCurrentDirectory(m.hConnection, @cBuffer, @nBufsize)
RETURN SUBSTR(m.cBuffer, 1, m.nBufsize)
= FtpSetCurrentDirectory(m.hConnection, 'myfiles/images')

typedef struct _WIN32_FIND_DATA {
  DWORD dwFileAttributes;
  FILETIME ftCreationTime;
  FILETIME ftLastAccessTime;
  FILETIME ftLastWriteTime;
  DWORD nFileSizeHigh;
  DWORD nFileSizeLow;
  DWORD dwReserved0;
  DWORD dwReserved1;
  TCHAR cFileName[MAX_PATH];
  TCHAR cAlternateFileName[14];
} WIN32_FIND_DATA, *PWIN32_FIND_DATA

typedef struct _FILETIME {
  DWORD dwLowDateTime;
  DWORD dwHighDateTime;
} FILETIME, *PFILETIME
 
  
FUNCTION dword2num(lcBuffer)
RETURN Asc(SUBSTR(lcBuffer, 1,1)) + ;
    BitLShift(Asc(SUBSTR(lcBuffer, 2,1)),  8) +;
    BitLShift(Asc(SUBSTR(lcBuffer, 3,1)), 16) +;
    BitLShift(Asc(SUBSTR(lcBuffer, 4,1)), 24)
 
FtpRenameFile(m.hConnection, m.cOldName, m.cNewName)

= FtpDeleteFile(m.hConnection, m.cRemoteFile)
= FtpRemoveDirectory(m.hConnection, m.cRemoteFolder)
= FtpCreateDirectory(m.hConnection, m.cFolder)
#DEFINE FTP_TRANSFER_TYPE_ASCII   1
#DEFINE FTP_TRANSFER_TYPE_BINARY  2

IF FtpPutFile(m.hConnection, cLocalFile, cRemoteFile,;
    FTP_TRANSFER_TYPE_BINARY, 0) = 0
    RETURN .F.
ELSE
    RETURN .T.
ENDIF

IF FtpGetFile(m.hConnection, m.cRemoteFile, m.cLocalFile,;
    0, FILE_ATTRIBUTE_NORMAL, FTP_TRANSFER_TYPE_BINARY, 0) = 0
    RETURN .F.
ELSE
    RETURN .T.
ENDIF
 
