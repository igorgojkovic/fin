PROCEDURE z1puni
   parameters redni,mbr,mopis,mpodatak,mrlini
PUSH KEY CLEAR
   goto redni
   replace br with mbr
   replace opis with mopis
   replace podatak with mpodatak
   replace rlini with mrlini
POP KEY   
endproC