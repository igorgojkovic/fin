PARAMETERS rptFile
PUBLIC oform1,arep
arep=rptFile
*SET STEP ON
oform1=NEWOBJECT("gsreport")
RETURN
**********************************************
DEFINE CLASS gsreport AS form

   ShowWindow = 2
   DoCreate = .T.
   Caption = "PREGLED IZVEŠTAJA"
   WindowState = 2
   Name = "gsreport"
   creport = ""

   PROCEDURE Init
      PARAMETERS pReport

      IF EMPTY(pReport)
      *         pReport=GETFILE("FRX")
               pReport=RPTFILE      
      ENDIF
      ThisForm.cReport = pReport
      IF ! EMPTY(ThisForm.cReport)
         _screen.Visible = .f.
         This.Visible = .t.
         WITH This
           .AddProperty('oPreViewBar', .NULL.)
           .oPreviewBar = ;
                CREATEOBJECT('gsPreViewToolBar',This)
           .oPreViewBar.SHOW
           .oPreViewBar.Dock(0)
           .Refresh()
        ENDWITH
        wName = ThisForm.Name
        REPORT FORM (ThisForm.cReport) ;
           PREVIEW IN WINDOW &wName TO PRINTER PROMPT
        _screen.Visible = .T.
     ENDIF
     RETURN .f.
   ENDPROC
ENDDEFINE
*
*-- EndDefine: gsreport
**************************************************
*-- Class:       gsPreviewToolBar
*-- ParentClass: ToolBar
*-- BaseClass:   ToolBar
*
DEFINE CLASS gsPreViewToolBar AS Toolbar

   Caption = "PRIKAZ"
   ShowWindow = 1

   ADD OBJECT btnExit  AS CommandButton
   ADD OBJECT sepExit  AS Separator

   ADD OBJECT btnDev   AS CommandButton
   ADD OBJECT sepDev   AS Separator

   ADD OBJECT btnizbor   AS CommandButton
   ADD OBJECT sepizbor  AS Separator

   ADD OBJECT sepNav1  AS Separator
   ADD OBJECT btnZoom  AS CommandButton
   ADD OBJECT btnHome  AS CommandButton
   ADD OBJECT btnPrev  AS CommandButton
   ADD OBJECT btnGoTo  AS CommandButton
   ADD OBJECT btnNext  AS CommandButton
   ADD OBJECT btnEnd   AS CommandButton
   ADD OBJECT sepNav2  AS Separator
   

   btnDev.Caption = "Podešavanje štampe"
   btnDev.ToolTipText = "Podešavanje štampe"
   btnDev.Width = 100

   btnizbor.Caption = "Izbor printera"
   btnizbor.ToolTipText = "Izbor printera za stampu"
   btnizbor.Width = 120



   btnZoom.Caption = "zum"
   btnZoom.Picture = "Zoom.BMP"
   btnZoom.ToolTipText = "Korak Zoom"
   btnZoom.Width = 60

   btnHome.Caption = "prva"
   btnHome.Picture = "Top.bmp"
   btnHome.ToolTipText = "Prva strana"
   btnHome.Width = 60

   btnPrev.Caption = "preth"
   btnPrev.Picture = "previous.bmp"
   btnPrev.ToolTipText = "Prethodna strana"
   btnPrev.Width = 60

   btnGoTo.Caption = "idi"
   btnGoTo.Picture = "Search.bmp"
   btnGoTo.ToolTipText = "Id na stranu"
   btnGoTo.Width = 60

   btnNext.Caption = "sled"
   btnNext.Picture = "next.Bmp"
   btnNext.ToolTipText = "Sledeca strana"
   btnNext.Width = 60

   btnEnd.Caption = "zad"
   btnEnd.Picture = "bottom.bmp"
   btnEnd.ToolTipText = "Poslednja strana"
   btnEnd.Width = 60

   btnExit.Caption = "Izlaz"
   btnExit.ToolTipText = "Close this Report"
   btnExit.Width = 100


   PROCEDURE Init
      PARAMETERS pForm
      This.AddProperty('oForm', .NULL.)
      IF PARAMETERS() > 0
         This.OForm = pForm
      ENDIF
      This.SetAll("Height",25,"CommandButton")
   ENDPROC

   PROCEDURE btnExit.Click
        KEYBOARD '{ESC}'
   ENDPROC

   PROCEDURE btnDev.Click
      SYS(1037)
   ENDPROC

   PROCEDURE btnizbor.Click
      getprinter()
        *REPORT FORM (arep) TO PRINTER PROMPT
   ENDPROC

   PROCEDURE btnZoom.Click
      KEYBOARD "{L}"
   ENDPROC

   PROCEDURE btnGoTo.Click
      KEYBOARD "{G}"
   ENDPROC

   PROCEDURE btnHome.Click
      KEYBOARD "{Home}"
   ENDPROC

   PROCEDURE btnPrev.Click
      KEYBOARD '{PGUP}'
   ENDPROC

   PROCEDURE btnNext.Click
      KEYBOARD "{PGDN}"
   ENDPROC

   PROCEDURE btnEnd.Click
      KEYBOARD "{END}"
   ENDPROC

ENDDEFINE




*PARAMETERS rptFile
*oforma1=NEWOBJECT("forma1")
*   REPORT FORM (rptFile) PREVIEW WINDOW (oforma1.OLE.Name) TO PRINTER PROMPT
*oforma1.Release()
*RETURN .t.
* 
*DEFINE CLASS forma1 AS form
* *
*	Autocenter = .T.*
*	Height = 768*
*	Width = 102*4
*	Caption = "Forma za pregled "
*	Name = "Forma1"
* 
*	ADD OBJECT command1 AS commandbutton WITH ;
*		Top = 730, Left = 823, Height = 27, Width = 84, ;
*		Caption = "Pregled PDF", Name = "Command1"
 *
	*ADD OBJECT label1 AS label WITH ;
		Height = 17, Left = 36, Top = 730, Width = 63, ;
		Caption = "OVO JE NEKA LABELA", Name = "Label1"
 
* 	ADD OBJECT OLE AS olecontrol WITH ;
		Top = 10, Left = 10, Height = 700, Width = 1000, ;
		OleClass = "Shell.Explorer.2", Name = "oWB"
 
*	PROCEDURE Refresh
		* Required in VFP8 and earlier to prevent an error
*		NODEFAULT
*	ENDPROC
  
*	PROCEDURE command1.Click
*	   WAIT windows ' proba '
*	ENDPROC
 
*ENDDEFINE

