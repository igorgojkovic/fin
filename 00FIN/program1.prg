****************************
*!* Example 1
****************************
*!* Zip a file quickly with or without password protection.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
?ZipFileQuick("C:\MyFile1.txt")
?ZipFileQuick("C:\MyFile2.txt", "MyPassword")
SET LIBRARY TO

****************************
*!* Example 2
****************************
*!* Zip a folder quickly with or without respect
*!* for relative pathing of the files. Password
*!* protection can be included if desired.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
?ZipFolderQuick("C:\MyFolder")
?ZipFolderQuick("C:\MyFolder2", .T., "MyPassword")
?ZipFolderQuick("C:\MyFolder2", .F., "MyPassword")
SET LIBRARY TO

****************************
*!* Example 3
****************************
*!* Unzip a zip file quickly with or without respect
*!* for relative pathing of the files. Password
*!* protection can be included if desired.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
?UnzipQuick("C:\MyFile.zip", "C:\")
?UnzipQuick("C:\MyFolder.zip", "C:\", .T.)
?UnzipQuick("C:\MyFolder.zip", "C:\", .F., "MyPassword")
SET LIBRARY TO

****************************
*!* Example 4
****************************
*!* Create a zip file, add some files to it
*!* and then close it when done. Respect
*!* for relative pathing and Password
*!* protection can be included if desired.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
?ZipOpen("MyZipFile.zip", "C:\", .F.)
?ZipFile("C:\SomeFile.txt", .F.)
?ZipFile("C:\AnotherFile.txt", .F., "MyPassword")
?ZipClose()
SET LIBRARY TO

****************************
*!* Example 5
****************************
*!* Create a zip file, add some folders to it
*!* and then close it when done. Respect
*!* for relative pathing and Password
*!* protection can be included if desired.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
?ZipOpen("C:\MyZipFile.zip")
*!* ?ZipOpen("MyZipFile.zip", "C:\", .F.)
?ZipFolder("C:\MyFolder\", .F.) && trailing backslash is optional
?ZipFolder("C:\AnotherFolder", .F., "MyPassword")
?ZipClose()
SET LIBRARY TO

****************************
*!* Example 6
****************************
*!* Compress and decompress a string in memory.
*!* The amount of compression is pretty remarkable.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
CLEAR
lcOriginal = REPLICATE("Visual FoxPro Rocks!",100)
?"Original Length: " + TRANSFORM(LEN(lcOriginal))
?
lcCompressed = ZipString(lcOriginal)
?"Compressed: " + lcCompressed
?"Compressed Length: " + TRANSFORM(LEN(lcCompressed))
?
?"Length Savings: " + TRANSFORM(LEN(lcOriginal) - LEN(lcCompressed)) + " bytes"
?
lcUncompressed = UnzipString(lcCompressed)
*!* ?"Uncompressed: " + lcUncompressed
?"Uncompressed Length: " + TRANSFORM(LEN(lcUncompressed))
?"Equals Original: " + IIF(lcUncompressed == lcOriginal, "YES", "NO")
IF !(lcUncompressed == lcOriginal)
	EXIT
ENDIF
SET LIBRARY TO

****************************
*!* Example 7
****************************
*!* Demonstrates the callback functionality
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
ZipCallback("MyCallback()") && Start Event Handling - Any Function/Procedure/Method (in scope of course)
?ZipOpen("MyZip.zip", "C:\", .F.) && create zip file
?ZipFile("C:\MyFile.txt", .F.) && compress file into zip
?ZipClose() && done zipping
?UnzipQuick("C:\MyZip.zip", "C:\") && unzip contents of Test.zip to C:\
ZipCallback("") && Stop Event Handling
SET LIBRARY TO

*****************************
FUNCTION MyCallback()
	*****************************
	*!* Variables below are created on the fly
	*!* by the FLL when the ZipCallback feature is used

	*!* Depends on the value of nZipEvent
	?cZipObjectName && Name of Zip, File, or Folder being processed

	*!* Events that fire MyCallback
	*!* 0 = Open Zip
	*!* 1 = Start Zip/Unzip of File
	*!* 2 = Read/Write File (nZipBytes will contain value of bytes read for event)
	*!* 3 - End Zip/Unzip of File
	*!* 4 - Folder Opened
	*!* 5 - Close Zip
	?nZipEvent

	*!* Number of Bytes read (Event 3)
	?nZipBytes

ENDFUNC

****************************
*!* Example 8
****************************
*!* Demonstrates how to use the UnzipAFileInfo()
*!* and UnzipAFileInfoByIndex() functions.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
?UnzipOpen("C:\MyZip.zip")
?UnzipGotoTopFile()
?UnzipAFileInfo("laTestArray1")
?UnzipClose()
showfileinfo(@laTestArray1)
?
?UnzipOpen("C:\MyZip.zip")
?UnzipAFileInfoByIndex("laTestArray2",2)
?UnzipClose()
showfileinfo(@laTestArray2)
SET LIBRARY TO

FUNCTION showfileinfo(aFileInfo)
	LOCAL lnCounter
	LOCAL ARRAY aCaptions(13)
	aCaptions(1) = "File Name"
	aCaptions(2) = "Comment"
	aCaptions(3) = "Version"
	aCaptions(4) = "Version Needed"
	aCaptions(5) = "Flags"
	aCaptions(6) = "Compression Method"
	aCaptions(7) = "DateTime"
	aCaptions(8) = "CRC"
	aCaptions(9) = "Compressed Size"
	aCaptions(10) = "Uncompressed Size"
	aCaptions(11) = "Internal Attribute"
	aCaptions(12) = "External Attribute"
	aCaptions(13) = "Folder"
	FOR lnCounter = 1 TO 13
		?aCaptions(lnCounter)
		?aFileInfo(lnCounter)
		?TYPE("aFileInfo(lnCounter)")
	ENDFOR
ENDFUNC

****************************
*!* Example 9
****************************
*!* Manipulate the global zipfile comment of a zip file.
****************************
SET LIBRARY TO LOCFILE("vfpcompression.fll")
ZipComment("C:\MyZip1.zip", "Hello") && add or replace a global comment to a zip file
ZipComment("C:\MyZip2.zip", "") && delete a global comment from a zip file
SET LIBRARY TO