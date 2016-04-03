FUNCTION vkdef
LPARAMETERS mf
*SET STEP ON 
   SELECT VKPOSTD
   LOCATE FOR LOWER(ALLTRIM(POLJE))==lower(ALLTRIM(MF))
   IF FOUND()
      MPOLJE=ALLTRIM(POLJE)
      MVREDNOST=ALLTRIM(VREDNOST)
      SELECT pregled
      APPEND BLANK
      replace ppolje WITH mvrednost
      SELECT vkpostd
      MTABELA=ALLTRIM(TABELA)
      MTEKST=ALLTRIM(TEKST)
      MFOLDER=ALLTRIM(FOLDER)
      IF LEN(MTABELA)<>0
         IF LOWER(MFOLDER)='data02'
             SET DEFAULT TO &mdata02
         ELSE
             SET DEFAULT TO &mdata02k
         endif                 
         USE &MTABELA IN 0 ALIAS TABELA
         SELECT TABELA
         GO TOP
         MMVREDNOST=&mvredNost    
         USE
         SELECT VKPOST
         MMRET=mtekst+mmvrednost
         RETURN MMRET
      ELSE
         SELECT VKPOST
         MMRET=mtekst         
         RETURN MMRET
      ENDIF
   ELSE
      SELECT VKPOST
      MMRET=''
      return MMRET      
   ENDIF
ENDFUNC