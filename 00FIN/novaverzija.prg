*-----kreiranje fajla sa povratnim informacijama
*SET STEP ON 
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
mftpkreni='ftpver.bat'
FIDAT=FCREATE(mftpkreni)
mM='FTP  -s:ftpverp.txt'
FPUTS(fidat,MM)
FCLOSE(fidat)

mftpprimi='ftpverp.txt'
FIDAT=FCREATE(mftpprimi)
mm='open '+msajtime
FPUTS(fidat,mm)
mm=msajtkor
FPUTS(fidat,mm)
mm=msajTloz
FPUTS(fidat,mm)
mm='cd '+msajtput
FPUTS(fidat,mm)
mm='binary'
FPUTS(fidat,mm)
mm='hash'
FPUTS(fidat,mm)
mm='get '+mimefajla
FPUTS(fidat,mm)
mm='get '+'zip.exe'
FPUTS(fidat,mm)
mm='get '+'unzip.exe'
FPUTS(fidat,mm)
mm='get '+'nova-verzija.bat'
FPUTS(fidat,mm)
mm='get '+'aktuelno.txt'
FPUTS(fidat,mm)
mm='cd /'
FPUTS(fidat,mm)
mm='cd public_html/prijem/'
FPUTS(fidat,mm)
mm='put '+mmfime
FPUTS(fidat,mm)
mm='disconnect'
FPUTS(fidat,mm)
mm='bye'
FPUTS(fidat,mm)
FCLOSE(fidat)
mstartuj='ftpver.bat'
! &mstartuj 
INKEY(1)
novaverzija.lblporuka.caption=' fin.zip je prenet u glavni folder fin12 ili fin13'
novaverzija.lblporuka2.caption='napustite program i raspakujte ga u isti folder '
novaverzija.lblporuka3.caption='startovanjem fajla nova-verzija.bat '
SET DEFAULT to &mbazni
DELETE FILE ftpver.bat
dELETE FILE ftpverp.txt
dELETE FILE &mMfime
DELETE FILE ftpvrati.bat
dELETE FILE ftpvrime.txt
SET DEFAULT to &mDATA02
CLOSE ALL
