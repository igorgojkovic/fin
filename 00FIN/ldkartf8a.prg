IF EOF()
   MRREC=RECCOUNT()
ELSE
   mrrec=recno()
ENDIF
DO FORM radnikkarta with mrrec
