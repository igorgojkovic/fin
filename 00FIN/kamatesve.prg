PUSH KEY CLEAR
GO TOP
KK=0
MRBR=RBR
DO WHILE.NOT.EOF()
   MREC=RECNO()
   IF KK=0
   REPORT FORM KAMATE0 FOR RBR=MRBR TO PRINTER NOCONSOLE
      KK=1
   ENDIF
   GOTO MREC
   SKIP
   IF.NOT.EOF()
      IF RBR<>MRBR
         KK=0
         MRBR=RBR
      ENDIF   
   ENDIF
ENDDO    
SELECT KAMATE
GO TOP

POP KEY