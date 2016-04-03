*-----PODACI PORESKE DEKLARACIJE NIVO 0
mtagnivo=0
mtagime='tns:PodaciPoreskeDeklaracije xmlns:xsi='+'"'+'http:'+'//www.w3.org/2001/XMLSchema-instance'+'"'+' xmlns:tns='+'"'
mtagime2='http:'+'//pid.purs.gov.rs'+'"'+' xsi:schemaLocation='+'"'+'http:'+'//pid.purs.gov.rs'+'"'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov=''
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
mtagnivo=1
mtagime='tns:PodaciOPrijavi'
mtagime2=''
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*------------zaglavlje-------------
mtagnivo=3
mtagime='tns:KlijentskaOznakaDeklaracije'
mpodatak='deklarac'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------
mtagnivo=3
mtagime='tns:VrstaPrijave'
mpodatak='vrstaprij'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------
mtagnivo=3
mtagime='tns:ObracunskiPeriod'
mpodatak='period'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------
mtagnivo=3
mtagime='tns:OznakaZakonacnu'
mpodatak='konacna'
MTAGZAD='D'
mtabela='xm2pzar'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------
mtagnivo=3
mtagime='tns:DatumPlacanja'
mpodatak='datumplacc'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------najniza osnovica
mtagnivo=3
mtagime='tns:NajnizaOsnovica'
mpodatak='najniza'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------ZATVARAMO PRVI NIVO----
mtagnivo=1
mtagime='tns:PodaciOPrijavi'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------------PODACI O ISPLATIOCU---
mtagnivo=1
mtagime='tns:PodaciOIsplatiocu'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------tip isplatioca------
mtagnivo=3
mtagime='tns:TipIsplatioca'
mpodatak='tipisp'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------PIB------
mtagnivo=3
mtagime='tns:PoreskiIdentifikacioniBroj'
mpodatak='pib'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------brojzaposlenih------
mtagnivo=3
mtagime='tns:BrojZaposlenih'
mpodatak='brojzapos'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------maticnibrojisplatioca------
mtagnivo=3
mtagime='tns:MaticniBrojisplatioca'
mpodatak='maticni'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------Naziv----
mtagnivo=3
mtagime='tns:NazivPrezimeIme'
mpodatak='naziv'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------Sediste----
mtagnivo=3
mtagime='tns:SedistePrebivaliste'
mpodatak='opstina'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*---------------telefon----
mtagnivo=3
mtagime='tns:Telefon'
mpodatak='telefon'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------ulica i broj----
mtagnivo=3
mtagime='tns:UlicaIBroj'
mpodatak='ulicaibr'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*---------------email----
mtagnivo=3
mtagime='tns:eMail'
mpodatak='email'
MTAGZAD='D'
mtabela='xm2ld'
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*----------ZAVRSETAK----PODACI O ISPLATIOCU---
*thisform.grd0.recordsource=''
mtagnivo=1
mtagime='tns:PodaciOIsplatiocu'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*----------NIVO 1 POCETAK DEKLARISANI PRIHODI---

mtagnivo=1
mtagime='tns:DeklarisaniPrihodi'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*----------NIVO 2 podaci o prihodima-

mtagnivo=2
mtagime='tns:PodaciOPrihodima'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*---------pocinje petlja treceg nivoa
*-------redni broj-------------------
mtagnivo=3
mtagime='tns:RedniBroj'
mpodatak2='rednibroj'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------vrsta identifikatora primaoca-------------------
mtagnivo=3
mtagime='tns:VrstaIdentifikatoraPrimaoca'
mpodatak2='vrstaid'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------identifikatora primaoca-------------------
mtagnivo=3
mtagime='tns:IdentifikatorPrimaoca'
mpodatak2='maticnibr'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------Prezime-------------------
mtagnivo=3
mtagime='tns:Prezime'
mpodatak2='prezime'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------Ime-------------------
mtagnivo=3
mtagime='tns:Ime'
mpodatak2='ime'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------prebivaliste-------------------
mtagnivo=3
mtagime='tns:OznakaPrebivalista'
mpodatak2='prebival'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------sifra vrste primanja------------------
mtagnivo=3
mtagime='tns:SVP'
mpodatak2='sifraprih'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------broj kalendarski dana-----------------
mtagnivo=3
mtagime='tns:BrojKalendarskihDana'
mpodatak2='brojdana'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------broj efekticnih sati-----------------
mtagnivo=3
mtagime='tns:BrojEfektivnihSati'
mpodatak2='brojsati'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------mesecni fonnd sati-----------------
mtagnivo=3
mtagime='tns:MesecniFondSati'
mpodatak2='fondsati'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------bruto-----------------
mtagnivo=3
mtagime='tns:Bruto'
mpodatak2='bruto'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------osnovica poreza-----------------
mtagnivo=3
mtagime='tns:OsnovicaPorez'
mpodatak2='osnovicap'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------porez-----------------
mtagnivo=3
mtagime='tns:Porez'
mpodatak2='porez'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2


*-------osnovica dop-----------------
mtagnivo=3
mtagime='tns:OsnovicaDoprinosi'
mpodatak2='osnovidop'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2


*-------PIO-----------------
mtagnivo=3
mtagime='tns:PIO'
mpodatak2='pio'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*------ZDR-----------------
mtagnivo=3
mtagime='tns:ZDR'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='zdr'
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2


*-------NEZ-----------------
mtagnivo=3
mtagime='tns:NEZ'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='nez'
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------PIO-----------------
mtagnivo=3
mtagime='tns:PIOBen'
mpodatak2='pioben'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

**********MFP********************

*-------DEKLARISANI MFP-----------------
mtagnivo=3
mtagime='tns:DeklarisaniMFP'
mpodatak2=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov="A1=ALLTRIM(MFP1)"
muslov2="A2=ALLTRIM(MFP2)" 
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
muslov3="A3=ALLTRIM(MFP3PROC)" 
muslov4="A4=ALLTRIM(MFP4)" 
muslov5="A5=ALLTRIM(MFP5)" 
muslov6="A6=ALLTRIM(MFP6)" 
muslov7="A7=ALLTRIM(MFP7)" 
muslov8="A8=ALLTRIM(MFP8NEPUN)" 
muslov9="A9=ALLTRIM(MFP9NAJOSN)" 
muslov10="A10=ALLTRIM(MFP10DVEZ)" 
muslov11="A11=ALLTRIM(MFP11NEOP)" 
muslov12="A12=ALLTRIM(MFP12)" 
do xmlpuniszar2B WITH muslov3,MUSLOV4,MUSLOV5,MUSLOV6,MUSLOV7,MUSLOV8,MUSLOV9,MUSLOV10,MUSLOV11,muslov12

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak2=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov="A1=ALLTRIM(mfp1)"
muslov2='' 
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
*-------MFP1-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.1'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp1)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp1
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp1'
muslov="A1=ALLTRIM(mfp1)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp1)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp2)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP2-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.2'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp2)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp2
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp2'
muslov="A1=ALLTRIM(mfp2)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp2)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
muslov="A1=ALLTRIM(mfp3proc)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP3-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.3'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp3proc)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp3
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp3PROC'
muslov="A1=ALLTRIM(mfp3proc)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp3proc)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp4)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP4-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.4'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp4)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp4
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp4'
muslov="A1=ALLTRIM(mfp4)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp4)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp5)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP5-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.5'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp5)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp5
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp5'
muslov="A1=ALLTRIM(mfp5)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp5)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp6)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP6-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.6'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp6)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp6
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp6'
muslov="A1=ALLTRIM(mfp6)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp6)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp7)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP7----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.7'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp7)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp7
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp7'
muslov="A1=ALLTRIM(mfp7)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp7)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp8nepun)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP8---------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.8'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp8nepun)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp8
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp8NEPUN'
muslov="A1=ALLTRIM(mfp8nepun)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp8nepun)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp9najosn)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP9-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.9'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp9najosn)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp9
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp9NAJOSN'
muslov="A1=ALLTRIM(mfp9najosn)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp9najosn)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp10dvez)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP10-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.10'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp10dvez)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp10
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp10DVEZ'
muslov="A1=ALLTRIM(mfp10dvez)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp10dvez)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp11neop)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP11-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.11'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp11neop)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp11
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp11NEOP'
muslov="A1=ALLTRIM(mfp11neop)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp11neop)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2



*-------MFP---12--------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='P'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp12)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP12-----------------
mtagnivo=5
mtagime='tns:Oznaka'
mpodatak='MFP.12'
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp12)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*--------vrednost mfp12
mtagnivo=5
mtagime='tns:Vrednost'
mpodatak=''
MTAGZAD='D'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2='mfp12'
muslov="A1=ALLTRIM(mfp12)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*-------MFP-----------------
mtagnivo=4
mtagime='tns:MFP'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov="A1=ALLTRIM(mfp12)"
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2



*-------DEKLARISANI MFP ZAVRSETAK-----------------
*-------DEKLARISANI MFP-----------------
mtagnivo=3
mtagime='tns:DeklarisaniMFP'
mpodatak2=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak=''
muslov="A1=ALLTRIM(MFP1)"
muslov2="A2=ALLTRIM(MFP2)" 
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2
muslov3="A3=ALLTRIM(MFP3PROC)" 
muslov4="A4=ALLTRIM(MFP4)" 
muslov5="A5=ALLTRIM(MFP5)" 
muslov6="A6=ALLTRIM(MFP6)" 
muslov7="A7=ALLTRIM(MFP7)" 
muslov8="A8=ALLTRIM(MFP8NEPUN)" 
muslov9="A9=ALLTRIM(MFP9NAJOSN)" 
muslov10="A10=ALLTRIM(MFP10DVEZ)" 
muslov11="A11=ALLTRIM(MFP11NEOP)" 
muslov12="A12=ALLTRIM(MFP12)" 
do xmlpuniszar2B WITH muslov3,MUSLOV4,MUSLOV5,MUSLOV6,MUSLOV7,MUSLOV8,MUSLOV9,MUSLOV10,MUSLOV11,muslov12
*----------NIVO 2 zavrsetak PODACI O prihoda----
*thisform.grd0.recordsource=''
mtagnivo=2
mtagime='tns:PodaciOPrihodima'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja='1'
mpetljatab='xm2ld'
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

*----------NIVO 1 ZAVRSETAK DEKLARISANI PRIHODI---

*thisform.grd0.recordsource=''
mtagnivo=1
mtagime='tns:DeklarisaniPrihodi'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2


*-----PODACI PORESKE DEKLARACIJE NIVO 0
mtagnivo=0
mtagime='tns:PodaciPoreskeDeklaracije'
mpodatak=''
MTAGZAD='Z'
mtabela=''
mpetlja=''
mpetljatab=''
mpodatak2=''
muslov='' 
muslov2=''
do xmlpuniszar2 WITH mtagnivo,mtagime,mtagime2,mpodatak,mtagzad,mtabela,mpetlja,mpetljatab,mpodatak2,muslov,muslov2

