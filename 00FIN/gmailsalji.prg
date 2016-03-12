PARAMETERS mmsifmail
*SET STEP ON 
loMail = NEWOBJECT("Cdo2000", "Cdo2000.prg")
MSIFMAIL=mmSIFMAIL
SELECT EMAIL0
LOCATE FOR sifmail=msifmail
MEMAIL=EMAIL
USE EMAILPAR IN 0
SELECT EMAILPAR
    memailsalje=ALLTRIM(EMAILSALJE)
    mepass=ALLTRIM(EPASS)
    meserver=ALLTRIM(ESERVER)
    MEPORT=EPORT
    meautent=EAUTENT
    messl=.T.
    MESUBJ=ESUBJ
USE
DO IDEL WITH (KKOCKAX)
USE EMAILPOR IN 0
SELECT EMAILPOR
COPY TO &KKOCKA FOR SIFMAIL=MSIFMAIL
USE
USE &KKOCKA IN 0 ALIAS KOCKA
SELECT KOCKA
IF RECCOUNT()>0
   GO TOP
   MP1=ALLTRIM(PORUKA1)
   MP2=ALLTRIM(PORUKA2)
   MP3=ALLTRIM(PORUKA3)
   MP4=ALLTRIM(PORUKA4)
   MP5=ALLTRIM(PORUKA5)
   MP6=ALLTRIM(PORUKA6)
   MP7=ALLTRIM(PORUKA7)
   MP8=ALLTRIM(PORUKA8)
   MP9=ALLTRIM(PORUKA9)
   MP10=ALLTRIM(PORUKA10)
   IF LEN(MP1)>0
      MTEKST=MP1+ CHR(13) + CHR(10)+;
             MP2+ CHR(13) + CHR(10)+;
             MP3+ CHR(13) + CHR(10)+;
             MP4+ CHR(13) + CHR(10)+;
             MP5+ CHR(13) + CHR(10)+;
             MP6+ CHR(13) + CHR(10)+;
             MP7+ CHR(13) + CHR(10)+;
             MP8+ CHR(13) + CHR(10)+;
             MP9+ CHR(13) + CHR(10)+;
             MP10+ CHR(13) + CHR(10)
   ENDIF
ELSE
  MTEKST='ZDRAVO'   
ENDIF
SELECT KOCKA
USE

USE EMAILATT IN 0
SELECT EMAILATT
COPY TO &KKOCKA FOR SIFMAIL=MSIFMAIL
USE
USE &KKOCKA IN 0 ALIAS KOCKA
SELECT KOCKA
MMFILE=''
IF RECCOUNT()>0
   GO TOP
   DO WHILE.NOT.EOF()
      IF RECNO()<RECCOUNT()
         MMFILE=MMFILE+ALLTRIM(DATOTEKA)+','
      ELSE
         MMFILE=MMFILE+ALLTRIM(DATOTEKA)
      ENDIF   
      SKIP
   ENDDO   
   MFILE=1
ELSE
  MFILE=0   
ENDIF
SELECT KOCKA
USE

 
WITH loMail
	.cServer =MESERVER
	.nServerPort = MEPORT
	.lUseSSL = .T.
 
	.nAuthenticate = MEAUTENT
	.cUserName = MEMAILSALJE
	.cPassword = MEPASS
 
	* If From address doesn't match any of the registered identities, 
	*	Gmail will replace it with your default Gmail address
	.cFrom = MEMAILSALJE
	
	.cTo = MEMAIL
 
	.cSubject =MESUBJ
 
	* Uncomment next lines to send HTML body
	*.cHtmlBody = "<html><body><b>STIGLA VAM JE PORUKA</b></body></html>" 	
	.cTextBody =MTEKST
	* Attachments are optional
	IF MFILE=1
      	 .cAttachment =MMFILE
   	ENDIF 
ENDWITH
 
IF loMail.Send() > 0
	FOR i=1 TO loMail.GetErrorCount()
		? i, loMail.Geterror(i)
	ENDFOR
	* Clear errors
	loMail.ClearErrors()
ELSE
	DO PORUKAU WITH  "Email je poslat."
ENDIF
SELECT EMAIL0