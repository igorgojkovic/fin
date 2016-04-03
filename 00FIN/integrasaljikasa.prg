PARAMETERS MMIME,MMIME0,MASACEKAJ
   MFSALJI='C:\HCP\TO_FP'
   MFPRIMI='C:\HCP\FROM_FP'
   SET PATH TO &MFsalji
   SET DEFAULT TO &MFSALJI
   IF FILE(mmime)
      ERASE (mmime)
   endif
   msime=ALLTRIM(mmime)
   mlensime=LEN(msime)-4
   mnime=SUBSTR(msime,1,mlensime)+'.txt'
   IF FILE(mnime)
      ERASE (mnime)
   endif   
 *----------------preimenovanje fajla----------
   SET path TO &MDATA02
   SET DEFAULT TO &MDATA02

   COPY FILE &MMIME TO &MFSALJI
   
   SET PATH TO &MFsalji
   SET DEFAULT TO &MFSALJI
   IF FILE(mmime)
      msime=ALLTRIM(mmime)
      mlensime=LEN(msime)-4
      mnime=SUBSTR(msime,1,mlensime)+'.txt'
      RENAME (msime) TO (mnime)
      SET path TO &MDATA02
      SET DEFAULT TO &MDATA02
   endif   
   IF MASACEKAJ=0
      INKEY(2)
   ENDIF

   SET path TO &MDATA02
   SET DEFAULT TO &MDATA02

   *-------------kraj preimenovanja fajla-----------