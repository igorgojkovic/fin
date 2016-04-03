mvredprod=gotovina+cekovi+kartica+virman+OSTALO
replace vredprod WITH mvredprod
mdnevnipaz=vredprod+ispravka
replace dnevnipaz WITH mdnevnipaz
mnovac=dnevnipaz+kamata+kreditnap
replace novac WITH mnovac
replace papiri WITH kreditodl+cekovinap+cekoviodl
tmpazarskart.refresh
