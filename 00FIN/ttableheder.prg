PARAMETERS MIME
*How to use lowlevel functions to read dbf-headers and how to get some info from the header.
*Updated with Codepage info, the new VFP 8 AutoIncrement info and a few checks on the integrity of the header.
*Updated on april 6, 2005 with the new VFP 9 fields.
*****************************************************************************************
* Table Header Record Structure
* Byte offset   Description
*  0            File type:
*                 0x02   FoxBASE
*                 0x03   FoxBASE+/Dbase III plus, no memo
*                 0x30   Visual FoxPro
*                 0x31   Visual FoxPro, autoincrement enabled
*                 0x32   Visual FoxPro, Varchar, Varbinary, or Blob-enabled
*                 0x43   dBASE IV SQL table files, no memo
*                 0x63   dBASE IV SQL system files, no memo
*                 0x83   FoxBASE+/dBASE III PLUS, with memo
*                 0x8B   dBASE IV with memo
*                 0xCB   dBASE IV SQL table files, with memo
*                 0xF5   FoxPro 2.x (or earlier) with memo
*                 0xFB   FoxBASE
*  1 - 3        Last update (YYMMDD)
*  4 - 7        Number of records in file
*  8 - 9        Position of first data record
*               Please note that the position of the first data record is a number where 0 is the fist byte, so for use with (V)FP  
*               1 should be added to this number
* 10 - 11       Length of one data record, including delete flag
* 12 - 27       Reserved
* 28            Table flags:
*                 0x01   file has a structural .cdx
*                 0x02   file has a Memo field
*                 0x04   file is a database (.dbc)
*     This byte can contain the sum of any of the above values. For example, the value 0x03 indicates
*     the table has a structural .cdx and a Memo field.
* 29            Code page mark
* 30 - 31       Reserved, contains 0x00
* 32 - n        Field subrecords, see Field Subrecords Structure below
*     The number of fields determines the number of field subrecords. One field subrecord exists for
*     each field in the table.
* n+1           Header record terminator (0x0D)
*      The following is only true for Visual Foxpro tables.
* n+2 to n+264  A 263-byte range that contains the backlink, which is the relative path of an associated
*               database (.dbc) file, information. If the first *byte is 0x00, the file is not associated
*               with a database. Therefore, database files always contain 0x00.
******************************************************************************************
* Field Subrecords Structure
* Byte offset   Description
* 0 - 10        Field name with a maximum of 10 characters. If less than 10,
*               it is padded with null characters (0x00).
* 11            Field type:
*                 C   –   Character
*                 C   –   Character (binary)  Visual Foxpro
*                 Y   –   Currency                Visual Foxpro
*                 D   –   Date
*                 T   –   DateTime               Visual Foxpro
*                 B   –   Double                   Visual Foxpro
*                 F   –   Float                      Visual Foxpro
*                 G   –   General                  Visual Foxpro
*                 I   –   Integer                    Visual Foxpro
*                 L   –   Logical
*                 M   –   Memo
*                 M   –   Memo (binary)       Visual Foxpro
*                 N   –   Numeric                 Visual Foxpro
*                 P   –   Picture                   Visual Foxpro
*                 Q   -   Varbinary               Visual Foxpro 9+
*                 V   -   Varchar (binary)      Visual Foxpro 9+
* 12 - 15       Displacement of field in record
* 16            Length of field (in bytes)
* 17            Number of decimal places
* 18            Field flags:                   Visual Foxpro
*                 0x01   System Column (not visible to user)
*                 0x02   Column can store null values
*                 0x04   Binary column (for CHAR and MEMO only)
*                 0x06   (0x02+0x04) When a field is NULL and binary (Integer, Currency, and Character/Memo fields)
*                 0x0C   Column is autoincrementing
* 19 - 22       Value of autoincrement Next value        Visual Foxpro 8 and higher
* 23            Value of autoincrement Step value        Visual Foxpro 8 and higher
* 24 - 31       Reserved
*
**************************************************************************************        
*                                                                                    *
* In (Visual) Foxpro arrays start with 1 so add 1 to the numbers                     *
* in the structure info above in order to get the info with (Visual) Foxpro programs *
* So the first 32 bytes contain the info                                             *  
* Each field adds another 32 bytes to the header                                     *  
*                                                                                    *
**************************************************************************************
*
* This is a program that reads a DBF-like file using low level functions in order to determine the nature of the file.
* This program can be used in both Foxpro and Visual Foxpro.
* Written by R. Brioul  (rob444)  last revision : 04/06/2005
*
*SET STEP ON 
close all
private filehandle, rdfile, ctype, nrecords, nposrec1, nreclen, nfldpos, cfield
private cfldtype, nflddec, nfldlen, nfldcnt, lhasmem, lhascdx, lisdbc, lisbin
private nfldflag, cassdbc, nfilesize, dtmp, nAutoIncrNextVal, nAutoIncrStepVal
private cSetDate, cSetCentury,  lcdxmemdbcError, nfilesizediff, lisvfp, nFldProblem

dimension dbfhdr[32]

cSetDate = SET('DATE')
cSetCentury = SET('CENTURY')
SET DATE YMD
SET CENTURY off

cfldtype=''
nfldlen=0
nfldcnt=0
nfldflag=0
nfilesize=0
cassdbc=''
rdfile=space(30)
lcdxmemdbcError=.f.

* get filename
*do getfname

* read fileheader

   MATPOS=AT('.',MIME)
   MMIME=SUBSTR(MIME,1,MATPOS-1)
   MMIME=MMIME+'.TXT'

*do readheader
*SET STEP ON 
rdfile=alltrim(MIME)

if len(rdfile)=0
  TABLEHEDER.RELEASE
endif
*CLEAR
filehandle=FOPEN(rdfile)     && Open the file

if filehandle < 0
  wait(rdfile+' NOT FOUND')
   TABLEHEDER.RELEASE
endif  


nfilesize =FSEEK(filehandle, 0 ,2)     && move pointer to last byte to get filesize
=FSEEK(filehandle, 0,0)    && Move pointer to first byte
bytecount=1
do while bytecount < 33
  dbfhdr[bytecount] =  asc(fgets(filehandle,1))
  * if you want to see the contents of these bytes
  * remove the * from the next line
  * ? bytecount,dbfhdr[bytecount]
  bytecount=bytecount+1
enddo  



lisvfp = (dbfhdr[1]=48 or dbfhdr[1]=49)

ctype = FileType(dbfhdr[1])    &&  determine the filetype



nrecords=dbfhdr[5]+dbfhdr[6]*256+dbfhdr[7]*256^2+dbfhdr[8]*256^3    && calculate the number of records (bytes 5,6,7 and 8)
nreclen=dbfhdr[11]+dbfhdr[12]*256                                   && calculete the record length     (bytes 11 and 12)
nposrec1=dbfhdr[9]+dbfhdr[10]*256 + 1                               && calculate the position of the first record (bytes 9 and 10)
dtmp=CTOD(tran(dbfhdr[2],'@L 99')+'/'+tran(dbfhdr[3],'@L 99')+'/'+tran(dbfhdr[4],'@L 99'))  &&  check for a valid update date

*do cdxmemdbc    && determine if this dbf has a structural index file and/or a memo file
do case
case dbfhdr[29]=0
  lhascdx=.f.
  lhasmem=.f.
  lisdbc=.f.
case dbfhdr[29]=1
  lhascdx=.t.
  lhasmem=.f.
  lisdbc=.f.
case dbfhdr[29]=2
  lhascdx=.f.
  lhasmem=.t.
  lisdbc=.f.
case dbfhdr[29]=3
  lhascdx=.t.
  lhasmem=.t.
  lisdbc=.f.
case dbfhdr[29]=4
  lhascdx=.f.
  lhasmem=.f.
  lisdbc=.t.
case dbfhdr[29]=5
  lhascdx=.t.
  lhasmem=.f.
  lisdbc=.t.
case dbfhdr[29]=6
  lhascdx=.f.
  lhasmem=.t.
  lisdbc=.t.
case dbfhdr[29]=7
  lhascdx=.t.
  lhasmem=.t.
  lisdbc=.t.
otherwise
  lhascdx=.f.
  lhasmem=.f.
  lisdbc=.f.
  lcdxmemdbcError=.t.
endcase




BOBI=FCREATE(MMIME)
MM='Headerinfo on '+rdfile
Fputs(BOBI,MM)
MM=''
Fputs(BOBI,MM)
MM='Code / Type      :'+tran( dbfhdr[1],'@L 99')+'  '+ctype
Fputs(BOBI,MM)
MM='Last update      :'+tran(dbfhdr[2],'@L 99')+' '+tran(dbfhdr[3],'@L 99')+' '+tran(dbfhdr[4],'@L 99')
Fputs(BOBI,MM)
MM='Number of records:'+ltrim(str(nrecords))
Fputs(BOBI,MM)
MM='Position 1st rec :'+ltrim(str(nposrec1,5))
Fputs(BOBI,MM)
MM='Header length    :'+ltrim(str(nposrec1-1,5))
Fputs(BOBI,MM)
MM='Record length    :'+ltrim(str(nreclen,5))
Fputs(BOBI,MM)
MM='File size        :'+ltrim(str(nfilesize,8))
Fputs(BOBI,MM)
AA=iif(lcdxmemdbcError,'Unknown/Invalid code found',iif(lhascdx,'Yes','No'))
MM='Struct Index File:'+AA
Fputs(BOBI,MM)
AA=iif(lcdxmemdbcError,'Unknown/Invalid code found',iif(lhasmem,'Yes','No'))
MM='Memo file        :'+AA
Fputs(BOBI,MM)
AA=iif(lcdxmemdbcError,'Unknown/Invalid code found',iif(lisdbc,'Yes','No'))
MM='File is a VFP DBC:'+AA
Fputs(BOBI,MM)
AA=ltrim(str( iif(lisvfp,(nposrec1-296)/32, (nposrec1-33)/32) ) )
MM='Number of fields :'+AA
Fputs(BOBI,MM)
*AA=+ltrim(str(dbfhdr[30]))+'  (',ShowCodePageInfo(dbfhdr[30])'+' )'
MM='Codepage mark    :'
Fputs(BOBI,MM)



nEnddef=0
nFldProblem=0
FOR x=64 TO nfilesize-1 step 32
  =FSEEK(filehandle, x,0)
  nbyte= ASC(FREAD(filehandle,1))
  IF nbyte= 13  && 0x0D
    nEnddef = x+1
    EXIT
  ENDIF   
NEXT

?
* read field definitions...
* the field definitions start at byte 33
* so first move to that position
* check filetype for different approach when it is a visual foxpro file

do case

case dbfhdr[1]=3 or dbfhdr[1]=131 or dbfhdr[1]=139 or dbfhdr[1]=245     && Not a VFP file
  =fseek(filehandle,32,0)  && position at field def positions
  MM= 'Structure of '+rdfile
  Fputs(BOBI,MM)
  ***1234567890123456789012345678901234567890123456789
  MM= 'Field/name     type length offset'
  Fputs(BOBI,MM)
  MM= '                           in rec'
  Fputs(BOBI,MM)
  MM= '---------------------------------'
  Fputs(BOBI,MM)
  
  do while fseek(filehandle,0,1) < nposrec1-32
    nfldcnt=nfldcnt+1
    cfield=fread(filehandle,11)
    cfield=STRTRAN(cfield,CHR(0),' ')
    cfldtype=fread(filehandle,1)
    nfldpos=asc(fread(filehandle,1))
    =fseek(filehandle,3,1)
    nfldlen=asc(fread(filehandle,1))
    * if the field is type N find out how many decimals there are
    if cfldtype='N'
      nflddec=asc(fread(filehandle,1))
      =fseek(filehandle,14,1)
    else
      =fseek(filehandle,15,1)
    endif
    MM= tran(nfldcnt,'@L 999')
    MM=MM+padr(cfield,11)
    MM=MM+Cfldtype
    MM=MM+str(nfldlen,5)
    MM=mm+iif(cfldtype='N','.'+ltrim(str(nflddec)),'  ')
    mm=mm+str(nfldpos,5)
    Fputs(BOBI,MM)
    
    * test field length specificatons
    DO CASE
      CASE cfldtype='D'       && this field should have a length of 8 bytes
         IF nfldlen<>8
            MM= ' Invalid fieldlength, length should be 8'
            Fputs(BOBI,MM)

            nFldProblem=nFldProblem+1
         ENDIF
      CASE cfldtype$'GIPTY'   && these fields are invalid for non visual foxpro dbfs
            MM= 'Invalid fieldtype'
            Fputs(BOBI,MM)            
            nFldProblem=nFldProblem+1
      CASE cfldtype='C'       && this field should have a length of 1-254 bytes
         IF !BETWEEN(nfldlen,1,254)
            MM=' Invalid fieldlength, length should be 1-254'
            Fputs(BOBI,MM)            
            nFldProblem=nFldProblem+1
         ENDIF
      CASE cfldtype$'NF'      && these fields all should have a length of 1-20 bytes
         IF !BETWEEN(nfldlen,1,20)
            MM= ' Invalid fieldlength, length should be 1-20'
            Fputs(BOBI,MM)            
            nFldProblem=nFldProblem+1
             IF nflddec> 18    && field decimals must be fieldlen - 2 maximal
               nFldProblem=nFldProblem+1
               MM= ' Invalid number of decimals, max value is 18'
               Fputs(BOBI,MM)               
             ENDIF
         ELSE   && field length in normal range, check number of decimals
           IF nflddec>0                   && field decimals defined and fieldlen OK
             IF nfldlen - nflddec< 2    && field decimals must be fieldlen - 2 maximal
               MM= ' Invalid number of decimals, max value is '+LTRIM(STR(nfldlen - 2))
               Fputs(BOBI,MM)               
               nFldProblem=nFldProblem+1
          ENDIF
           ENDIF  
         ENDIF
      CASE cfldtype='L'       && this field should have a length of 1 byte
         IF nfldlen<>1
            MM= ' Invalid fieldlength, length should be 1'
            Fputs(BOBI,MM)            
            nFldProblem=nFldProblem+1
      ENDIF
      CASE cfldtype='M'       && this field should have a length of 4 bytes
         IF nfldlen<>4
            MM= ' Invalid fieldlength, length should be 4'
            Fputs(BOBI,MM)            
            nFldProblem=nFldProblem+1
      ENDIF
    ENDCASE
  enddo
  MM= '---------------------------------'
  Fputs(BOBI,MM)  
case lisvfp    && visual foxpro file

  =fseek(filehandle,32,0)  && position at field def positions
  MM= 'Structure of '+rdfile
  Fputs(BOBI,MM)  
  ***1234567890123456789012345678901234567890123456789
  MM= 'Field/name     type length offset  fieldflag      AutoIncr   AutoIncr '
            Fputs(BOBI,MM)  
  MM= '                           in rec                 NextValue  StepValue'
            Fputs(BOBI,MM)  
  MM= '----------------------------------------------------------------------'
              Fputs(BOBI,MM)

  do while fseek(filehandle,0,1) < nposrec1-(295)
    nAutoIncrNextVal = 0
    nAutoIncrStepVal = 0
    nfldcnt=nfldcnt+1
    cfield=fread(filehandle,11)   && first 11 bytes
    cfldtype=fread(filehandle,1)  && byte 12
    * bytes 13, 14, 15 and 16
    nfldpos=asc(fread(filehandle,1))+asc(fread(filehandle,1))*256+asc(fread(filehandle,1))*256^2+asc(fread(filehandle,1))*256^3
    nfldlen=asc(fread(filehandle,1))  && byte 17
    * if the field is type N F B or Y find out how many decimals there are
    DO case
    CASE cfldtype$'NFBY'
      nflddec=asc(fread(filehandle,1))   && byte 18
      nfldflag=asc(fread(filehandle,1))  && byte 19
      =fseek(filehandle,13,1)            && skip 13 bytes
    CASE cfldtype='I'  
      nflddec=asc(fread(filehandle,1))   && byte 18
      nfldflag=asc(fread(filehandle,1))  && byte 19
      nAutoIncrNextVal = ASC(FREAD(filehandle,1)) + ASC(FREAD(filehandle,1))* 256 + ;
      ASC(FREAD(filehandle,1))* 256^2 + ASC(FREAD(filehandle,1)) * 256^3  && bytes 20,21,22 and 23
      nAutoIncrStepVal = ASC(FREAD(filehandle,1))  && byte 24  
      =fseek(filehandle,8,1)            && skip 8 bytes
    OTHERWISE
      nfldflag=asc(fread(filehandle,1))  && byte 18
      =fseek(filehandle,14,1)            && skip 14 bytes
    ENDCASE
    MM=tran(nfldcnt,'@L 9999')
    mm=mm+padr(cfield,11)
    MM=MM+' '+ cfldtype + ' '
    MM=MM+ str(nfldlen,5)+iif(cfldtype='N','.'+ltrim(str(nflddec)),'  ')
    MM=MM+ str(nfldpos,7)

    Do case
      case nfldflag = 1
         MM=MM+ ' System column '
      case nfldflag = 2
         MM=MM+ ' Null values ok'
      case nfldflag = 4
         MM=MM+ ' Binary column '
      CASE nfldflag = 6
         MM=MM+ ' Null val & bin'
      CASE nfldflag = 12   
         MM=MM+ ' Autoincr.     '
      otherwise
         MM=MM+ '               '
    ENDCASE
    IF nAutoIncrNextVal>0
       MM=MM+ PADR(nAutoIncrNextVal,10)+' '+STR(nAutoIncrStepVal,3)
    ENDIF
    * test field length specificatons
    DO CASE
      CASE cfldtype$'DTBY'    && these fields all should have a length of 8 bytes
         IF nfldlen<>8
            MM=MM+ IIF(dbfhdr[1]=49,'  ', SPACE(30))+'Invalid fieldlength, length should be 8'
            nFldProblem=nFldProblem+1
         ENDIF
      CASE cfldtype$'GIMP'    && these fields all should have a length of 4 bytes
         IF nfldlen<>4
            MM=MM+  IIF(dbfhdr[1]=49,'  ', SPACE(30))+'Invalid fieldlength, length should be 4'
            nFldProblem=nFldProblem+1
         ENDIF
      CASE cfldtype='C'       && this field should have a length of 1-254 bytes
         IF !BETWEEN(nfldlen,1,254)
            MM=MM+  IIF(dbfhdr[1]=49,'  ', SPACE(30))+'Invalid fieldlength, length should be 1-254'
            nFldProblem=nFldProblem+1
         ENDIF
      CASE cfldtype$'NF'      && these fields all should have a length of 1-20 bytes
         IF !BETWEEN(nfldlen,1,20)
            MM=MM+  IIF(dbfhdr[1]=49,'  ', SPACE(30))+' Invalid fieldlength, length should be 1-20'
            nFldProblem=nFldProblem+1
             IF nflddec> 18    && field decimals must be fieldlen - 2 maximal
               MM=MM+  ' Invalid number of decimals, max value is 18'
               nFldProblem=nFldProblem+1
             ENDIF
         ELSE   && field length in normal range, check number of decimals
           IF nflddec>0                   && field decimals defined and fieldlen OK
             IF nfldlen - nflddec< 2    && field decimals must be fieldlen - 2 maximal
               MM=MM+  IIF(dbfhdr[1]=49,'  ', SPACE(30))+' Invalid number of decimals, max value is '+LTRIM(STR(nfldlen - 2))
               nFldProblem=nFldProblem+1
             ENDIF
           ENDIF  
         ENDIF
      CASE cfldtype='L'       && this field should have a length of 1 byte
         IF nfldlen<>1
            MM=MM+  IIF(dbfhdr[1]=49,'  ', SPACE(30))+'Invalid fieldlength, length should be 1'
            nFldProblem=nFldProblem+1
         ENDIF
    ENDCASE
    FPUTS(BOBI,MM) 
  enddo
  =fseek(filehandle,1,1)    && skip one byte
  nassdbc=asc(fread(filehandle,1))
  MM= '----------------------------------------------------------------------'
  FPUTS(BOBI,MM)   
  if nassdbc=0
    MM= rdfile+' is not associated with a DBC'
    FPUTS(BOBI,MM) 
  else
    =fseek(filehandle,-1,1)  && skip back one byte
    cassdbc=fread(filehandle,263)
    nsppos=at(chr(0),cassdbc)
    if nsppos>0
      cassdbc=left(cassdbc,nsppos-1)
    endif
    MM= rdfile+' is associated with '+cassdbc
FPUTS(BOBI,MM)     
  endif
endcase

MM=''
FPUTS(BOBI,MM) 
MM= 'Some checks...'
FPUTS(BOBI,MM) 
nfilesizediff = nrecords*nreclen+nposrec1 - nfilesize
MM= 'Physical filesize ok                    :'
FPUTS(BOBI,MM) 
IIF(nfilesizediff=0,'Yes', 'NO, '+ ;
IIF(nfilesizediff>0,'TRUNCATED ','TOO LARGE ') ;
+'('+LTRIM( STR( ABS(nfilesizediff) ) )+' bytes)' )
MM= 'Last update date valid                  :'
mm=mm+IIF(!EMPTY(dtmp),'Yes','No')
FPUTS(BOBI,MM) 
MM= 'Header record terminator (0x0D) found at:'
mm=mm+LTRIM(STR( nEnddef))
mm=mm+IIF(nEnddef = nposrec1 - 1 -iif(lisvfp,263,0),' OK',' Error in header')
FPUTS(BOBI,MM) 
MM= 'Record length according to fielddefinitions is '+ltrim(STR(nfldpos+nfldlen))+' which is '+IIF(nfldpos+nfldlen = nreclen,'OK','WRONG')
FPUTS(BOBI,MM) 
MM= 'There were '+IIF(nFldProblem>0,LTRIM(STR(nFldProblem)),'no')+' problems with the field definitions'
MM=''
FPUTS(BOBI,MM) 
fclose(BOBI)    

=fclose(filehandle)        && close the table
* restore some original settings that were changed possibly....
SET DATE (cSetDate)         && restore original set date setting
SET CENTURY &cSetCentury    && restore original set century setting
RELEASE ALL
TABLEHEDER.RELEASE
***********************************************************







FUNCTION FileType
parameters ctyp
private c_type
do case
case ctyp=2
  c_type='Foxbase'
case ctyp=3
  c_type='Foxbase/Foxpro/dBaseIII/IV no memo'
case ctyp=48
  c_type='Visual Foxpro'
case ctyp=49
  c_type='Visual Foxpro 8+ AutoIncr'
case ctyp=50
  c_type='Visual Foxpro 9+,Varchar,Varbinary or Blob-enabled'
case ctyp=67
  c_type='dBase IV SQL table no memo'
case ctyp=99
  c_type='dBase IV SQL system file no memo'
case ctyp=131
  c_type='Foxbase/dBaseIII Plus with memo'
case ctyp=139
  c_type='dBaseIV with memo'
case ctyp=203
  c_type='dBaseIV SQL table with memo'
case ctyp=245
  c_type='Foxpro 2.x with memo'
case ctyp=251
  c_type='Foxbase'
otherwise
  c_type='Unknown or invalid type'
endcase
return c_type

FUNCTION ShowCodePageInfo
PARAMETERS nCP
PRIVATE cCP
DO case
CASE nCP = 0    && 0x00
  cCP = 'No codepage defined'
CASE nCP = 1    && 0x01
  cCP = 'Codepage 437  US MSDOS'
CASE nCP = 2    && 0x02
  cCP = 'Codepage 850  International MS-DOS'
CASE nCP = 3    && 0x03
  cCP = 'Codepage 1252  Windows ANSI'
CASE nCP = 4    && 0x04
  cCP = 'Codepage 10000  Standard MacIntosh'
CASE nCP = 100  && 0x64
  cCP = 'Codepage 852  Easern European MS-DOS'
CASE nCP = 101  && 0x65
  cCP = 'Codepage 866  Russian MS-DOS'
CASE nCP = 102  && 0x66
  cCP = 'Codepage 865  Nordic MS-DOS'
CASE nCP = 103  && 0x67
  cCP = 'Codepage 861  Icelandic MS-DOS'
CASE nCP = 104  && 0x68
  cCP = 'Codepage 895  Kamenicky (Czech) MS-DOS'
CASE nCP = 105  && 0x69
  cCP = 'Codepage 620  Mazovia (Polish) MS-DOS'
CASE nCP = 106  && 0x6A
  cCP = 'Codepage 737  Greek MS-DOS (437G)'
CASE nCP = 107  && 0x6B
  cCP = 'Codepage 857  Turkish MS-DOS'
CASE nCP = 120  && 0x78
  cCP = 'Codepage 950    Chinese (Hong Kong SAR, Taiwan) Windows'
CASE nCP = 121  && 0x79
  cCP = 'Codepage 949  Korean Windows'
CASE nCP = 122  && 0x7A
  cCP = 'Codepage 936  Chinese (PRC, Singapore) Windows'
CASE nCP = 123  && 0x7B
  cCP = 'Codepage 932  Japanese Windows'
CASE nCP = 124  && 0x7C
  cCP = 'Codepage 874  Thai Windows'
CASE nCP = 125  && 0x7D
  cCP = 'Codepage 1255  Hebrew Windows'
CASE nCP = 126  && 0x7E
  cCP = 'Codepage 1256  Arabic Windows'
CASE nCP = 150  && 0x96
  cCP = 'Codepage 10007  Russian MacIntosh'
CASE nCP = 151  && 0x97
  cCP = 'Codepage 10029  MacIntosh EE'
CASE nCP = 152  && 0x98
  cCP = 'Codepage 10006  Greek MacIntosh'
CASE nCP = 200  && 0xC8
  cCP = 'Codepage 1250  Eastern European Windows'
CASE nCP = 201  && 0xC9
  cCP = 'Codepage 1251  Russian Windows'
CASE nCP = 202  && 0xCA
  cCP = 'Codepage 1254  Turkish Windows'
CASE nCP = 203  && 0xCB
  cCP = 'Codepage 1253  Greek Windows'
OTHERWISE
  cCP = 'Unknown / invalid codepage'
ENDCASE
RETURN cCP
