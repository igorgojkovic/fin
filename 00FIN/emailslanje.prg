* Replace addresses with real ones before running the code
 
loMail = NEWOBJECT("Cdo2000", "Cdo2000.prg")
 
WITH loMail
	.cServer = "smtp.gmail.com"
	.nServerPort = 465
	.lUseSSL = .T.
 
	.nAuthenticate = 1 	&& cdoBasic
	.cUserName = "jozef.brnic@gmail.com"
	.cPassword = "kockajoza"
 
	* If From address doesn't match any of the registered identities, 
	*	Gmail will replace it with your default Gmail address
	.cFrom = "jozef.brnic@gmail.com"
 
	.cTo = "ducafilip@gmail.com"
 
	.cSubject = "CDO 2000 email through Gmail SMTP server"
 
	* Uncomment next lines to send HTML body
	*.cHtmlBody = "<html><body><b>This is an HTML body<br>" + ;
	*		"It'll be displayed by most email clients</b></body></html>" 	
 
	.cTextBody = "This is a text body." + CHR(13) + CHR(10) + ;
			"It'll be displayed if HTML body is not present or by text only email clients"
 
	* Attachments are optional
	 .cAttachment = "putanje.dbf"
ENDWITH
 
IF loMail.Send() > 0
	FOR i=1 TO loMail.GetErrorCount()
		? i, loMail.Geterror(i)
	ENDFOR
	* Clear errors
	loMail.ClearErrors()
ELSE
	? "Email je poslat."
ENDIF