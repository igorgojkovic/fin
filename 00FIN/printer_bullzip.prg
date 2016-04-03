PARAMETERS tdata,tfile,uslov
*SET STEP ON 
iF tpdfprint<>'1'
   mime_reporta=LOWER(tdata)+'\'+tfile+'.frx'   
   IF LEN(ALLTRIM(uslov))=0
      REPORT FORM &mime_reporta PREVIEW
   ELSE
      REPORT FORM &mime_reporta FOR &uslov PREVIEW   
   endif   
ELSE
   *SET STEP ON 
   mfile=lower(tdata)+'\'+tfile+'_'+operater+'.pdf'
   mime_reporta=tfile+'.frx' 
   lcPdf = CreateObject("BullZIP.PDFPrinterSettings")
   lcPdf.SetValue("ShowSettings" ,"never")
   lcPdf.SetValue("ShowPDF" ,"yes")
   lcPdf.SetValue('ConfirmOverWrite','no')
   *myfile=mdata02+'\'+mfile
   myfile=mfile
   lcPdf.SetValue("output",myfile) 
   lcPdf.WriteSettings(.t.)
   IF LEN(ALLTRIM(uslov))=0   
      REPORT FORM &mime_reporta NOCONSOLE TO printer
   ELSE
      REPORT FORM &mime_reporta NOCONSOLE TO printer FOR &uslov   
   endif   
   * Cleanup
   lcpdf = .NULL.
   release lcpdf
   *FCLOSE(mfile)
   *MGET=mfile
   *mlenget=LEN(ALLTRIM(mget))
   *IF mlenget>3
   *DO  RUN_KOCKA WITH mget
   *endif   
   
   **DO printer_prikazi WITH mfile
ENDIF