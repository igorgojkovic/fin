PROCEDURE bkbupuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO punibkbu WITH '201','                ','  I.POSLOVNI PRIHODI                                     ','*' 
     DO punibkbu WITH '202','      60 i 61   ','  1.Prihodi od prodaje                                   ','*' 
     DO punibkbu WITH '203','      62        ','  2.Prihodi od aktiviranja uèinaka                       ','*' 
     DO punibkbu WITH '206','      64 65     ','  2.Prihodi iz budzeta                                   ','*' 
     DO punibkbu WITH '206','                ','  2.Subvencije                                           ','*' 
     DO punibkbu WITH '   ','                ','  2.Ostali prihodi iz budzeta                            ','*' 
     DO punibkbu WITH '   ','                ','  5.Ostali poslovni prihodi                              ','*' 
     DO punibkbu WITH '204','      630       ','  3.Poveæanje vrednosti zaliha uèinaka                   ','*' 
     DO punibkbu WITH '205','      631       ','  4.Smanjenje vrednosti zaliha uèinaka                   ','*' 
     DO punibkbu WITH '207','                ','  I.POSLOVNI RASHODI                                     ','*' 
     DO punibkbu WITH '208','      50        ','  1.Nabavna vrednost prodate robe                        ','*' 
     DO punibkbu WITH '209','      51        ','  2.Troškovi materijala                                  ','*' 
     DO punibkbu WITH '210','      52        ','  3.Troškovi zarada,naknada zarada i ostali lièni rashodi','*' 
     DO punibkbu WITH '211','      54        ','  4.Troškovi amortizacije i rezervisanja                 ','*' 
     DO punibkbu WITH '212','      53 i 55   ','  5.Ostali poslovni rashodi                              ','*' 
     DO punibkbu WITH '213','                ','  III.POSLOVNA DOBIT(201-207)                            ','*' 
     DO punibkbu WITH '214','                ','  IV. POSLOVNI GUBITAK(207-201)                          ','*' 
     DO punibkbu WITH '215','      66        ','  V.  FINANSIJSKI PRIHODI                                ','*' 
     DO punibkbu WITH '216','      56        ','  VI. FINANSIJSKI RASHODI                                ','*' 
     DO punibkbu WITH '217','   67 i 68      ','  VII.OSTALI PRIHODI                                     ','*' 
     DO punibkbu WITH '218','   57 i 58      ','  VIII.OSTALI RASHODI                                    ','*' 
     DO punibkbu WITH '219','                ','  IX.DOBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA     ',' ' 
     DO punibkbu WITH '220','                ','  X.GUBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA      ',' ' 
     DO punibkbu WITH '221','     69-59      ','  XI.NETO DOBITAK POSLOVANJA KOJE SE OBUSTAVLJA          ','*' 
     DO punibkbu WITH '222','     59-69      ','  XII.NETO GUBITAK POSLOVANJA KOJE SE OBUSTAVLJA          ','*' 
     DO punibkbu WITH '223','                ','  B.DOBITAK PRE OPOREZIVANJA (219-220+221-222)           ','*' 
     DO punibkbu WITH '224','                ','  V.GUBITAK PRE OPOREZIVANJA (220-219+222-221)           ','*' 
     DO punibkbu WITH '   ','                ','  G.POREZ NA DOBITAK                                     ','*' 
     DO punibkbu WITH '229','                ','  DJ.NETO DOBITAK (223-224-225-226+227-228)              ','*' 
     DO punibkbu WITH '230','                ','  E. NETO GUBITAK (224-223+225+226-227+228)              ','*' 

ENDIF
POP KEY
ENDPROC

procedure punibkbu
   PARAMETERS MAOP,mkonto,mopis,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   REPLACE AOP WITH MAOP
   replace kontA with Mkonto
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc

*------------PRERACUNAVANJE BILANSA----------------
PROCEDURE bkburac
PUSH KEY CLEAR

      SELECT Bu
      SET ORDER TO 1
      GO TOP
      SEEK '202'
      NP202=PRETH
      NN202=NETO
      SEEK '203'
      NP203=PRETH
      NN203=NETO
      SEEK '204'
      NP204=PRETH
      NN204=NETO
      SEEK '205'
      NP205=PRETH
      NN205=NETO
      SEEK '206'
      NP206=PRETH
      NN206=NETO

      SEEK '208'
      NP208=PRETH
      NN208=NETO
      SEEK '209'
      NP209=PRETH
      NN209=NETO
      SEEK '210'
      NP210=PRETH
      NN210=NETO
      SEEK '211'
      NP211=PRETH
      NN211=NETO
      SEEK '212'
      NP212=PRETH
      NN212=NETO

      SEEK '215'
      NP215=PRETH
      NN215=NETO
      SEEK '216'
      NP216=PRETH
      NN216=NETO

      SEEK '217'
      NP217=PRETH
      NN217=NETO
      SEEK '218'
      NP218=PRETH
      NN218=NETO

      SEEK '221'
      NP221=PRETH
      NN221=NETO
      SEEK '222'
      NP222=PRETH
      NN222=NETO
      *-------BILANS USPEHA--------------
      SEEK '202'
      NP202=PRETH
      NN202=NETO
      SEEK '203'
      NP203=PRETH
      NN203=NETO
      SEEK '204'
      NP204=PRETH
      NN204=NETO
      SEEK '205'
      NP205=PRETH
      NN205=NETO
      SEEK '206'
      NP206=PRETH
      NN206=NETO

      SEEK '208'
      NP208=PRETH
      NN208=NETO
      SEEK '209'
      NP209=PRETH
      NN209=NETO
      SEEK '210'
      NP210=PRETH
      NN210=NETO
      SEEK '211'
      NP211=PRETH
      NN211=NETO
      SEEK '212'
      NP212=PRETH
      NN212=NETO

      SEEK '215'
      NP215=PRETH
      NN215=NETO
      SEEK '216'
      NP216=PRETH
      NN216=NETO
      SEEK '217'
      NP217=PRETH
      NN217=NETO
      SEEK '218'
      NP218=PRETH
      NN218=NETO


      SEEK '221'
      NP221=PRETH
      NN221=NETO
      SEEK '222'
      NP222=PRETH
      NN222=NETO

      SEEK '225'
      NP225=PRETH
      NN225=NETO
      SEEK '226'
      NP226=PRETH
      NN226=NETO
      SEEK '227'
      NP227=PRETH
      NN227=NETO
      SEEK '228'
      NP228=PRETH
      NN228=NETO

      SEEK '233'
      NP233=PRETH
      NN233=NETO
      SEEK '234'
      NP234=PRETH
      NN234=NETO

      SEEK '201'
      NP201=NP202+NP203+NP204-NP205+NP206
      NN201=NN202+NN203+NN204-NN205+NN206
      REPLACE PRETH WITH NP201
      REPLACE NETO  WITH NN201

      SEEK '207'
      NP207=NP208+NP209+NP210+NP211+NP212
      NN207=NN208+NN209+NN210+NN211+NN212
      REPLACE PRETH WITH NP207
      REPLACE NETO  WITH NN207


      NP213=NP201-NP207
      NN213=NN201-NN207
      NP214=NP207-NP201
      NN214=NN207-NN201


      SEEK '213'
         IF NP213>0
         REPLACE PRETH WITH NP213
         ELSE
         REPLACE PRETH WITH 0
         ENDIF
         IF NN213>0
         REPLACE NETO  WITH NN213
         ELSE
         REPLACE NETO  WITH 0
         ENDIF
      NP213=PRETH
      NN213=NETO

      SEEK '214'
         IF NP214>0
         REPLACE PRETH WITH NP214
         ELSE
         REPLACE PRETH WITH 0
         ENDIF
         IF NN214>0
         REPLACE NETO  WITH NN214
         ELSE
         REPLACE NETO  WITH 0
         ENDIF
      NP214=PRETH
      NN214=NETO


      SEEK '219'
      NP219=NP213-NP214+NP215-NP216+NP217-NP218
      NN219=NN213-NN214+NN215-NN216+NN217-NN218

         IF NP219>0
            REPLACE PRETH WITH NP219
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN219>0
            REPLACE NETO  WITH NN219
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP219=PRETH
      NN219=NETO

      SEEK '220'
      NP220=NP214-NP213-NP215+NP216-NP217+NP218
      NN220=NN214-NN213-NN215+NN216-NN217+NN218
         IF NP220>0
            REPLACE PRETH WITH NP220
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN220>0
            REPLACE NETO  WITH NN220
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP220=PRETH
      NN220=NETO


      SEEK '223'
      NP223=NP219-NP220+NP221-NP222
      NN223=NN219-NN220+NN221-NN222
         IF NP223>0
            REPLACE PRETH WITH NP223
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN223>0
            REPLACE NETO  WITH NN223
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP223=PRETH
      NN223=NETO

      SEEK '224'
      NP224=NP220-NP219+NP222-NP221
      NN224=NN220-NN219+NN222-NN221

         IF NP224>0
            REPLACE PRETH WITH NP224
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN224>0
            REPLACE NETO  WITH NN224
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP224=PRETH
      NN224=NETO

      SEEK '229'
      NP229=NP223-NP224-NP225-NP226+NP227-NP228
      NN229=NN223-NN224-NN225-NN226+NN227-NN228
         IF NP229>0
            REPLACE PRETH WITH NP229
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN229>0
            REPLACE NETO  WITH NN229
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP229=PRETH
      NN229=NETO


      SEEK '230'
      NP230=NP224-NP223+NP225+NP226-NP227+NP228
      NN230=NN224-NN223+NN225+NN226-NN227+NN228
         IF NP230>0
            REPLACE PRETH WITH NP230
         ELSE
            REPLACE PRETH WITH 0
         ENDIF
         IF NN230>0
            REPLACE NETO  WITH NN230
         ELSE
            REPLACE NETO WITH 0
         ENDIF
      NP230=PRETH
      NN230=NETO

POP KEY
ENDPROC
