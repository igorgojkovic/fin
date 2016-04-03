FUNCTION PPDG1A()
PUSH KEY CLEAR

     PUNIDG1A('6.','    ','      ','     PODACI ZA UTVRDJIVANJE POREZA:')
     PUNIDG1A('  ','6.1.','      ','     Podaci o prihodima                        iznos')
     PUNIDG1A('  ','    ','6.1.1.','     Prihodi od prodaje proizvoda'             )
     PUNIDG1A('  ','    ','6.1.2.','     Prihodi od prodaje robe     '             )
     PUNIDG1A('  ','    ','6.1.3.','     Prihodi od prodaje usluga   '             )
     PUNIDG1A('  ','    ','6.1.4.','     Ostali prihodi              '             )
     PUNIDG1A('  ','    ','6.1.5.','     Ukupni prihodi (od 6.1.1. do 6.1.4) ')
     PUNIDG1A('  ','6.2.','      ','     Podaci o rashodima:'                      )
     PUNIDG1A('  ','    ','6.2.1.','     Nabavna vrednost prodate robe'            )
     PUNIDG1A('  ','    ','6.2.2.','     Troskovi materijala za izradu '           )
     PUNIDG1A('  ','    ','6.2.3.','     Troskovi goriva i energije  '             )
     PUNIDG1A('  ','    ','6.2.4.','     Troskovi zarada-plata zaposlenih '        )
     PUNIDG1A('  ','    ','6.2.5.','     Troskovi amortizacije               '     )
     PUNIDG1A('  ','    ','6.2.6.','     Ostali rashodi                      '     )
     PUNIDG1A('  ','    ','6.2.7.','     Ukupni rashodi (od 6.2.1. do 6.2.6) '     )
     PUNIDG1A('  ','6.3.','      ','     Dobit poslovne godine (6.1.5-6.2.7) '     )
POP KEY
ENDPROC

FUNCTION PUNIDG1A(A,B,C,D)
PUSH KEY CLEAR

   APPEND BLANK
      REPLACE AKOD WITH A
      REPLACE BKOD WITH B
      REPLACE CKOD WITH C
      REPLACE OPIS WITH D
POP KEY      
ENDFUNC


FUNCTION PPDG1B()
PUSH KEY CLEAR

     PUNIDG1B('7.    ','PODACI ZA OSTVARIVANJE PORESKIH PODSTICAJA I PORESKOG KREDITA:             ')
     PUNIDG1B('7.1.  ','Ostvarena dobit u novoosnovanoj poslovnoj jedinici u nedovoljno razvijenim ')
     PUNIDG1B('      ','podrucjima                ')
     PUNIDG1B('7.2.  ','Ulaganje u osnovna sredstva u spostvenoj registrovanoj delatnosti          ')
     PUNIDG1B('7.2.1.','Iznos umanjenja po osnovu ulaganja u osnovna sredstva (Obrazac PK-2)       ')
     PUNIDG1B('7.2.2.','Iznos umanjenja po osnovu ulaganja u osnovna sredstva (Obrazac PK-3)       ')
     PUNIDG1B('7.2.3.','Iznos poreskog oslobodjenja za srazmeran iznos ulaganja u osnovna sredstva ')
     PUNIDG1B('      ', 'u sopstvenoj registrovanoj delatnosti (Obrazac SU-1)')
     PUNIDG1B('7.2.4.','Iznos poreskog oslobodjenja za srazmeran iznos ulaganja u osnovna sredstva ')
     PUNIDG1B('      ', 'u sopstvenoj registrovanoj delatnosti (Obrazac SU-3)')
POP KEY
ENDFUNC

FUNCTION PUNIDG1B(B,C)
PUSH KEY CLEAR

      APPEND BLANK
      REPLACE BKOD WITH B
      REPLACE opis  WITH C
POP KEY
ENDFUNC
FUNCTION PPDG1C()
PUSH KEY CLEAR
     PUNIDG1A('8.','    ','      ','POSEBNI PODACI:               ')
     PUNIDG1A('  ','8.1.','      ','Broj zaposlenih radnika u vreme podnosenja prijave')
     PUNIDG1A('  ','8.2.','      ','Podaci o poslovnom prostoru                       ')
     PUNIDG1A('  ','    ','8.2.1.','Podaci o povrsini posl.prostora-sediste radnje    ')
     PUNIDG1A('  ','    ','8.2.2.','Podaci o povrsini posl.prostora-izdvojene p.j.u:  ')
     PUNIDG1A('  ','    ','8.2.3.','Podaci o povrsini posl.prostora-izdvojene p.j.u:  ')
     PUNIDG1A('  ','    ','8.2.4.','Podaci o povrsini posl.prostora-izdvojene p.j.u:  ')
     PUNIDG1A('  ','    ','8.2.5.','Podaci o povrsini posl.prostora-izdvojene p.j.u:  ')
     PUNIDG1A('  ','    ','8.2.6.','Podaci o povrsini posl.prostora-izdvojene p.j.u:  ')
     PUNIDG1A('  ','8.3.','      ','Podaci o vrednosti osnovnih sredstava             ')
     PUNIDG1A('  ','    ','8.3.1.','Ukupna vrednost osnovnih sredstava                ')
POP KEY
ENDFUNC
