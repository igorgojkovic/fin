PARAMETERS MONURL,mopen
*MonURL="http://www.agencijakocka.rs/index.php" 

DECLARE INTEGER ShellExecute ;
 IN SHELL32.dll ;
 INTEGER nWinHandle, ;
 STRING cOperation, ;
 STRING cFileName, ;
 STRING cParameters, ;
 STRING cDirectory, ;
 INTEGER nShowWindow 

 **retreive the main VFP window handle (this handle is used by ShellExecute)

 DECLARE INTEGER FindWindow ;
 IN WIN32API ;
 STRING cNull, ;
 STRING cWinName 

 z=ShellExecute(FindWindow( 0, _SCREEN.caption), mopen , MonURL, "", "c:\temp\", 1) 

 **Error messages if the return value is < 32

 IF z < 32
 DO CASE
 CASE z=2 
 Wait wind "Neispravan url!" 
 CASE z=31
 Wait wind "Nesto nije u redu!" 
 CASE z=29 
 Wait wind "Nije moguce startovanje aplikacije!" 
 CASE z=30 
 Wait wind "Aplikacija je vec startovana!" 
 ENDCASE 
 ENDIF