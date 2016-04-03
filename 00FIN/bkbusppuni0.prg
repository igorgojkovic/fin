PROCEDURE bkbuSPpuni
SELECT BU
GO TOP
IF RECCOUNT() <1
     DO punibkbuSP WITH '  POSLOVNI PRIHODI                                     ','*' 
     DO punibkbuSP WITH '  Prihodi od prodaje                                   ','*' 
     DO punibkbuSP WITH '  Prihodi od aktiviranja u�inaka                       ','*' 
     DO punibkbuSP WITH '  Prihodi iz budzeta                                   ','*' 
     DO punibkbuSP WITH '  Subvencije                                           ','*' 
     DO punibkbuSP WITH '  Ostali prihodi iz budzeta                            ','*' 
     DO punibkbuSP WITH '  Ostali poslovni prihodi                              ','*' 
     DO punibkbuSP WITH '  Pove�anje vrednosti zaliha u�inaka                   ','*' 
     DO punibkbuSP WITH '  Smanjenje vrednosti zaliha u�inaka                   ','*' 
     DO punibkbuSP WITH '  POSLOVNI RASHODI                                     ','*' 
     DO punibkbuSP WITH '  Nabavna vrednost prodate robe                        ','*' 
     DO punibkbuSP WITH '  Tro�kovi materijala                                  ','*' 
     DO punibkbuSP WITH '  Tro�kovi zarada,naknada zarada i ostali li�ni rashodi','*' 
     DO punibkbuSP WITH '  Tro�kovi amortizacije i rezervisanja                 ','*' 
     DO punibkbuSP WITH '  Ostali poslovni rashodi                              ','*' 
     DO punibkbuSP WITH '  POSLOVNI DOBITAK                                     ','*' 
     DO punibkbuSP WITH '  POSLOVNI GUBITAK                                     ','*' 
     DO punibkbuSP WITH '  Finansijski prihodi                                  ','*' 
     DO punibkbuSP WITH '  Finansijski rashodi                                  ','*' 
     DO punibkbuSP WITH '  Ostali prihodi                                       ','*' 
     DO punibkbuSP WITH '  Ostali rashodi                                       ','*' 
     DO punibkbuSP WITH '  DOBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA      ','*' 
     DO punibkbuSP WITH '  GUBITAK IZ REDOVNOG POSLOVANJA PRE OPOREZIVANJA      ','*' 
     DO punibkbuSP WITH '  Neto dobitak poslovanja koji se obustavlja           ','*' 
     DO punibkbuSP WITH '  Neto gubitak poslovanja koji se obustavlja           ','*' 
     DO punibkbuSP WITH '  DOBITAK PRE OPOREZIVANJA                             ','*' 
     DO punibkbuSP WITH '  GUBITAK PRE OPOREZIVANJA                             ','*' 
     DO punibkbuSP WITH '  Porez na dobitak                                     ','*' 
     DO punibkbuSP WITH '  NETO DOBITAK PERIODA                                 ','*' 
     DO punibkbuSP WITH '  NETO GUBITAK PERIODA                                 ','*' 

ENDIF
POP KEY
ENDPROC

procedure punibkbuSP
   PARAMETERS mopis,MRLINI
   PUSH KEY CLEAR

   APPEND BLANK
   replace opis with mopis
   replace RLINI with MRLINI
   POP KEY
endproc
