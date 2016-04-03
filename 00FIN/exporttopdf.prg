PUBLIC oform1
*SET STEP ON 
oForm1=createobject("form1")
oForm1.Show()
RETURN
 
DEFINE CLASS form1 AS form
 
	Autocenter = .T.
	Height = 768
	Width = 1024
	Caption = "Pregled pdf"
	Name = "Pregledpdf"
 
	* PDF file name
	cPdfFileName = "=SPACE(0)"
	* How long to wait for PDF to load
	nPdfLoadTimeout = 30 			
 
	ADD OBJECT txtpdfname AS textbox WITH ;
		Top = 730, Left = 108, Height = 23, Width = 492, ;
		ReadOnly = .T., Name = "txtPdfName"
 
	ADD OBJECT command1 AS commandbutton WITH ;
		Top = 730, Left = 823, Height = 27, Width = 84, ;
		Caption = "Pregled PDF", Name = "Command1"
 
	ADD OBJECT owb AS olecontrol WITH ;
		Top = 10, Left = 10, Height = 700, Width = 1000, ;
		OleClass = "Shell.Explorer.2", Name = "oWB"
 
	ADD OBJECT label1 AS label WITH ;
		Height = 17, Left = 36, Top = 730, Width = 63, ;
		Caption = "PDF Naziv", Name = "Label1"
 
	PROCEDURE Refresh
		* Required in VFP8 and earlier to prevent an error
	*	NODEFAULT
	ENDPROC
 
	PROCEDURE ShowPdf
		LOCAL lnSeconds
		* Clear Web browser control by loading blank page
		Thisform.oWB.OBJECT.Navigate2("About:Blank")
		* Wait for load to complete
		lnSeconds = SECONDS()
		DO WHILE (Thisform.oWB.OBJECT.Busy OR Thisform.oWB.OBJECT.ReadyState <> 4) ;
				AND (SECONDS() - lnSeconds) < This.nPdfLoadTimeout
			DOEVENTS
		ENDDO
 
		* Load PDF
		WAIT WINDOW NOWAIT "Uèitavamo PDF ..."
		Thisform.oWB.OBJECT.Navigate2(Thisform.cPdfFileName)
		* Wait for PDF to load
		lnSeconds = SECONDS()
		DO WHILE (Thisform.oWB.OBJECT.Busy OR Thisform.oWB.OBJECT.ReadyState <> 4) ;
				AND (SECONDS() - lnSeconds) < This.nPdfLoadTimeout
			DOEVENTS
		ENDDO
		WAIT CLEAR
 
		* PDF display can be adjusted as shown in AdjustPdfView method 
 		*   Uncomment next line if you want to do that and add AdjustPdfView method to the form/class
		*This.AdjustPdfView()
 
	ENDPROC
 
	PROCEDURE command1.Click
		* Get PDF file name
		Thisform.cPdfFileName = GETFILE("pdf")
 
		* Display the name in the textbox
		Thisform.txtPdfName.Value = Thisform.cPdfFileName
		IF NOT EMPTY(Thisform.cPdfFileName)
			* Display PDF
			Thisform.ShowPdf()
		ENDIF
	ENDPROC
 
ENDDEFINE

	PROCEDURE AdjustPdfView
		* PDF control PEMs can only be accessed after it's loaded
		*  TRY...ENDTRY will prevent crash in case when it's not loaded
		TRY
			loDoc = Thisform.oWB.oBJECT.Document
			WITH loDoc 
				* PageMode: 
				*	none — does not display bookmarks or thumbnails (default)
				* 	bookmarks — displays the document and bookmarks
				* 	thumbs — displays the document and thumbnails
				.setPageMode("none")
 
				* LayoutMode:
				*	DontCare — use the current user preference
				*	SinglePage — use single page mode (as it would have appeared in pre-Acrobat 3.0 viewers)
				*	OneColumn — use one-column continuous mode
				*	TwoColumnLeft — use two-column continuous mode with the first page on the left
				*	TwoColumnRight — use two-column continuous mode with the first page on the right
				.setLayoutMode("OneColumn")
 
				* ViewMode:
				*	Fit — Fits the entire page within the window both vertically and horizontally.
				*	FitH — Fits the entire width of the page within the window.
				.setView("FitH")
 
				* Zoom %, overrides ViewMode and vise verse. 
				.setZoom(50)
 
				* Toolbar On/Off
				.setShowToolbar(.F.)
				* Scrollbars On/Off
				.setShowScrollbars(.T.)
			ENDWITH
		CATCH TO oErr	
		FINALLY 	
			loDoc = null
		ENDTRY	
	ENDPROC