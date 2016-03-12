   PARAMETERS MMIME,MMIME0,MASACEKAJ
   MFSALJI='C:\GP550\TO_FP'

   SET PATH TO &MFsalji
   SET DEFAULT TO &MFSALJI
   IF FILE(mmime)
      ERASE (mmime)
   endif
  * msime=ALLTRIM(mmime)
  * mlensime=LEN(msime)-4
  * mnime=SUBSTR(msime,1,mlensime)+'.txt'
  * IF FILE(mnime)
  *    ERASE (mnime)
  * endif   

   SET path TO &MDATA02
   SET DEFAULT TO &MDATA02

   COPY FILE &MMIME TO &MFSALJI
   
   SET PATH TO &MFsalji
   SET DEFAULT TO &MFSALJI
   IF FILE(mmime)
      msime=ALLTRIM(mmime)
      mlensime=LEN(msime)-4
      mnime=SUBSTR(msime,1,mlensime)+'.dat'
      RENAME (msime) TO (mnime)
   endif   
   INKEY(1)
   *-------------kraj preimenovanja fajla-----------
   SET path TO &MDATA02
   SET DEFAULT TO &MDATA02
