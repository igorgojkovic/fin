   PARAMETERS MMBAR,MBAR
*  KASAPOR.GRD0.COLUMN2.BACKCOLOR=RGB(0,255,0)
   SET ORDER TO 2
   KASAPOR.grd0.COLUMN2.TEXT1.SETFOCUS
   IF MMBAR=0.OR.MMBAR=1
      IF KASAPOR.TXTKOL.VALUE=0
         IF TRANSPAK=0
            MKOL=1
         ELSE
            MKOL=TRANSPAK
         ENDIF
      ELSE
         MKOL=KASAPOR.TXTKOL.VALUE
      ENDIF      
   ELSE
      MKOL=VAL(SUBSTR(MBAR,8,2)+'.'+SUBSTR(MBAR,10,3))
   ENDIF  
      MRSIF=RSIF
      MNAZ=NAZ
      MMALCENA=MALCENA
      MTARIFA=TARIFA
      MPROCPOR=PROCPOR
      MJED=SUBSTR(JED,1,3)
      SELECT KASA
      IF RECCOUNT()<1
         DO WHILE .T.
         MN2BRKAL=OPER 
         APPEND BLANK
         REPLACE BRKAL WITH MN2BRKAL
         REPLACE KOLi WITH MKOL
         REPLACE RSIF WITH MRSIF
         REPLACE NAZ WITH MNAZ
         REPLACE TARIFA WITH MTARIFA
         REPLACE PROCPOR WITH MPROCPOR
         REPLACE MALCENA WITH MMALCENA
         REPLACE MALVRED WITH KOLi*MALCENA
         REPLACE JED WITH MJED
         REPLACE OPER WITH PPAS
         IF RECCOUNT()>0
            EXIT
         ELSE
            loop
         ENDIF   
         ENDDO   
         KASAPOR.GRD1.REFRESH
         *------AKO NIJE PRVA STAVKA------------   
      ELSE
         GO BOTTOM
         MN2BRKAL=BRKAL   
         MMREC1=RECCOUNT()
         DO WHILE .T.  
            IF RSIF<>MRSIF.or.storno='S'
               APPEND BLANK
               REPLACE KOLi WITH MKOL
               MNASAOROB=0
               KASAPOR.GRD1.REFRESH
            ELSE
               REPLACE KOLI WITH KOLI+MKOL
               MNASAOROB=1
            ENDIF
            REPLACE BRKAL WITH MN2BRKAL
            REPLACE RSIF WITH MRSIF
            REPLACE NAZ WITH MNAZ
            REPLACE TARIFA WITH MTARIFA
            REPLACE PROCPOR WITH MPROCPOR
            REPLACE MALCENA WITH MMALCENA
            REPLACE MALVRED WITH KOLi*MALCENA
            REPLACE JED WITH MJED
            REPLACE OPER WITH PPAS
            IF RECCOUNT()>MMREC1.AND.MNASAOROB=0
               EXIT
            ELSE
               IF MNASAOROB=1
                  EXIT
               ELSE
                  LOOP
               ENDIF
            ENDIF
         ENDDO            
      ENDIF
      SELECT KASA
      SET ORDER TO
      KASAPOR.GRD0.REFRESH
      KASAPOR.GRD1.REFRESH
      SELECT ROB0
   KASAPOR.LABEL1.CAPTION=RSIF+' '+NAZ+' '+JED+' '+TRAN(KOL,'999 999.999')+' '+TRAN(VELCENA,'999 999 999.99')
   KASAPOR.TXTKOL.VALUE=0
   KASAPOR.TXTTRAZI.VALUE=''
   KASAPOR.TXTTRAZI.SETFOCUS  
