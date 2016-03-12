*-----------------vodovod paracin-----------------------------
*-----------------grad----------------------------------------
push key CLEAR   
set default to &mdatabazekom
if !file('vp.dbf')
   create table vp(;
      sifra     c(05) ,;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      slep      c(1) ,;
      popproc   n(7,3) ,;
      popkan    n(7,3) ,;
      popsoc    n(4) ,;  
      poplava   n(4) ,;        
      pausal    c(1) ,; 
      mespausal n(9),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      st0k      n(9) ,;
      st1k      n(9) ,;
      st2k      n(9) ,;
      st3k      n(9) ,;
      st4k      n(9) ,;
      st5k      n(9) ,;
      st6k      n(9) ,;
      st7k      n(9) ,;
      st8k      n(9) ,;
      st9k      n(9) ,;
      st10k     n(9) ,;
      st11k     n(9) ,;
      st12k     n(9) ,;
      potk      n(9) ,;
      potsk     n(9) ,;
      st0p      n(9) ,;
      st1p      n(9) ,;
      st2p      n(9) ,;
      st3p      n(9) ,;
      st4p      n(9) ,;
      st5p      n(9) ,;
      st6p      n(9) ,;
      st7p      n(9) ,;
      st8p      n(9) ,;
      st9p      n(9) ,;
      st10p     n(9) ,;
      st11p     n(9) ,;
      st12p     n(9) ,;
      potp      n(9) ,;
      potsp     n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      procpor   n(09,2),;
      porez     n(12,2),;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      socp       n(12,2),;        
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      datpri    d(8) ,;
      datodj    d(8) ,;
      ugovor    c(20) ,;
      ugovork   c(20) ,;
      meseci    n(2)  ,; 
      precnik   c(10) ,;
      brojvodom c(15) ,;
      datugrad  d(8) ,;
      bazdar1   d(8) ,;
      radi      c(1) ,;
      napomena  c(50) ,;
      napomena2 c(50),;
      napomena3 c(50),;
      napomena4 c(50),;
      napomena5 c(50),;
      sporazum  n(12,2),;   
      datsporaz d(8),;
      zbirni    n(5),;
      brrac     c(25),;
      model     c(20),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      pock      n(9),;
      krajk     n(9),;
      pocp      n(9),;
      krajp     n(9),;
      mesto     c(25),;
      maticni0  c(13),;
      maticni1  c(13),;
      prethvlas c(40),;
      opis      c(50),;
      brnal     c(6),;
      broj      c(7),;
      popust    c(1),;
      saldo     n(12,2),;
      datcit    d(8),;
      utuziznos n(12,2),;
      utuzdat0  d(8),;
      utuzdat1  d(8),;
      sime_prez  c(30) ,;
      sulica     c(25) ,;
      smesto     c(25),;
      komdinar   n(12,2),;      
      radikam    n(18,0),;      
      ime_prezc  c(30) ,;
      ulicac     c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
      


if !file('vpopom.dbf')
   create table vpopom(;
      datdok    d(8),;
      sifra     c(05) ,;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3) ,;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      napomena  c(50),;
      rokuplate  d(8),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpopomd.dbf')
   create table vpopomd(;
      datdok    d(8),;
      sifra     c(05) ,;
      pib       c(13),;
      dug       n(18,2) ,;
      pot       n(18,2) ,;
      valuta    d(8) ,;
      brrac     c(25),;  
      dana      n(12,0),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif




if !file('vpupl.dbf')
   create table vpupl(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       brnal     c(6) ,;
       grupa     c(3) ,;
       zatvar    c(1),;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       saldo     n(18,2),;
       sifra     c(9) ,;
       dana      n(12,0),;
       danas     d(8) ,;
       vreme     c(8) ,; 
       oper      c(2) ,;
       arhiva    c(1) ,; 
       stan      c(3),;
       nsporaz   n(18,2),;
       sprazlika n(18,2),;
       naz       c(35),;
       ime_prez  c(35),;
       preneto   c(1),;
       idbr      n(11);
      )
   use
endif

if !file('vpupld.dbf')
   create table vpupld(;
      pib       c(13),;
      brnal     c(6), ;
      brrac     c(25),;
      grupa     c(2),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      mesec     n(2),; 
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      osnov     n(12,2) ,;
      procpor   n(09,2),;
      porez     n(12,2),;
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      socp      n(12,2),;        
      svega     n(12,2) ,;
      rabat     n(12,2) ,;
      ostalo    n(12,2),;
      sporazum  n(12,2),;
      model     c(20),;
      pot       n(9) ,;
      pots      n(9) ,;
      potk      n(9) ,;
      potsk     n(9) ,;
      potp      n(9) ,;
      potsp     n(9) ,;
      pov       n(12,2) ,;
      povne     n(12,2) ,;
      akont     n(12,2) ,;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      pock      n(9),;
      krajk     n(9),;
      pocp      n(9),;
      krajp     n(9),;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      cdkomdin  n(10,3) ,;      
      procakont n(10,3) ,;
      ime_prez  c(30) ,;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      broj      c(7) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      zona      n(3)   ,;
      slep      c(1) ,;
      popproc   n(7,3) ,;
      popkan    n(7,3) ,;
      popsoc    n(4) ,;  
      poplava   n(4) ,;        
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      aprez     c(20)      ,;
      aime      c(20)     ,;                                
      aotac     c(20)     ,;                                
      aposta0   c(5)     ,; 
      amesto0   c(25)     ,;
      asiful0   c(3)     ,;
      aulica0   c(25)     ,;
      aulbroj0  c(10)     ,;
      astan0    c(05),;
      apib      c(09),;
      amaticni0 c(13),;
      amaticni1 c(13),;
      saldo     n(12,2),;
      datcit    d(8),;
      sifra     c(5),;
      nfirma    n(12,0),; 
      nredni    n(18,0),;      
      sime_prez  c(30) ,;
      samesto0   c(25) ,;
      komdinar  n(14,2),;
      pausal    c(1),; 
      mespausal n(9),;        
      cvoda2    n(10,3), ;
      ckanal2   n(10,3), ;
      cvoda3    n(10,3), ;
      ckanal3   n(10,3), ;
      cvodado   n(10,2), ;
      cvodado2  n(10,2), ;
      voda2     n(10,3), ;
      kan2      n(10,3), ;
      voda3     n(10,3), ;
      kan3      n(10,3),;
      aprezc    c(60),;
      amesto0c  c(25),;
      aulica0c  c(25),;
      ime_prezc  c(30) ,;
      ulicac     c(25),;
      radikam    n(18,0),;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpcene.dbf')
   create table vpcene(;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      procpor   n(09,2),;
      rabproc   n(09,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
if !file('vpulice.dbf')
   create table vpulice(;
   siful      c(3) ,;
   ulica      c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpobrac.dbf')
   create table vpobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpkam.dbf')
   create table vpkam(;
      rbr         c(4),;
      pib         c(13),;
      sifra       c(9),;
      datpoc      d(8),;
      datkra      d(8),;
      dana        n(4),;
      stopa       n(18,4),;
      period      n(3),;
      metoda    c(1) ,;                
      koef        n(18,8),;
      sosnovica   n(18,4),;
      dug         n(18,2),;
      pot         n(18,2),;
      osnovica    n(18,4),;
      datum       d(8),;
      datdok      d(8),;
      vazi        c(1),;
      brrac       c(25),;
      ansif       n(2),;
      kamata      n(18,4),;
      ime_prez    c(30),;
      ulica       c(25),;
      ulbroj      c(7),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpkastop.dbf')
   create table vpkastop;
         (;
          dat0      d(8) ,;
          dat1      d(8) ,;
          stopa     n(18,4) ,;
          koef      n(18,8) ,;
          period    n(3) ,;
          metoda    c(1),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpkakoef.dbf')
   create table vpkakoef;
         (;
          datum     d(8) ,;
          stopa     n(18,4) ,;
          koef      n(18,8) ,;
          period    n(3) ,;
          metoda    c(1),;                    
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpractxt.dbf')
   create table vpractxt(;
     txt1     c(70),;
     txt2     c(70),;
     txt3     c(70),;
     txt4     c(70),;
     txt5     c(70),;
     txt6     c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpractx2.dbf')
   create table vpractx2(;
     txt1     c(70),;
     txt2     c(70),;
     txt3     c(70),;
     txt4     c(70),;
     txt5     c(70),;
     txt6     c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpractxf.dbf')
   create table vpractxf(;
     txt1     c(50),;
     txt2     c(50),;
     txt3     c(50),;
     txt4     c(50),;
     txt5     c(50),;
     txt6     c(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpunp.dbf')
   create table vpunp ;
               (poc       n(2)     ,;
                kraj      n(2)     ,;
                datcit    d(8)  , ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpgrupa.dbf')
   create table vpgrupa(;
      grupa     c(2),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpgrupak.dbf')
   create table vpgrupak(;
      grupa     c(3),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpprenos.dbf')
   create table vpprenos(;
      putanja   c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
      

if !file('vpprv.dbf')
   create table vpprv(;
      vrsta     c(4),; 
      opis      c(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vppr.dbf')
   create table vppr(;
      redbroj   n(6),;
      poziv     n(6),;
      radnal    n(6),; 
      pib       c(13),;
      ime_prez  c(30),;
      adresa    c(30),;
      telefon   c(20),;      
      vrsta     c(4),; 
      datnal    d(8),;
      vremenal  c(10),;
      datpoc    d(8),;
      vremepoc  c(10),;
      datkraj   d(8),;
      vremekraj c(10),;
      datobav   d(8),;
      vremeobav c(10),;
      opis1     c(70),;
      opis2     c(70),;
      opis3     c(70),;
      opis4     c(70),;
      uradjenrn n(6),;  
      odgovor   n(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpprrad.dbf')
   create table vpprrad(;
       radnal    n(6),; 
       broj      n(4),;
       ime_prez  c(30),;
       startbod  n(10,3),;      
       dana      n(6),;
       sati      n(6),;
       minuti    n(6),;
       iznos     n(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpprmat.dbf')
   create table vpprmat(;
       radnal    n(6),; 
       rsif      c(5),;
       naz       c(30),;
       koli      n(18,3),;      
       velcena   n(18,3),;
       velvred   n(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpprvoz.dbf')
   create table vpprvoz(;
       radnal    n(6),; 
       vsifra    c(4),;
       naz       c(30),;
       koli      n(18,3),;      
       vozcena   n(18,3),;
       vozvred   n(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpk.dbf')
   create table vpk(;
   brnal      c(6) ,;
   branal     n(2) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vDk.dbf')
   create table vDk(;
   brnal      c(6) ,;
   branal     n(2) ,;
   grupa      c(4),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpnalz.dbf')
   create table vpnalz(;
   brnal1     c(6) ,;
   brnal2     c(6) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpspis.dbf')
   create table vpspis(;
   grupa      c(2),;   
   siful      c(3),; 
   brnal      c(6),;
   kssifra    c(9),;  
   pvoda      c(1) ,;
   pkanal     c(1) ,;
   slep       c(1) ,;
   pausal     c(1) ,; 
   bazdar1    d(8) ,;
   radi       c(1) ,;
   datOPOM    d(8),;
   rokuplate  d(8),;   
   dat0       d(8),;
   dat1       d(8),;
   din0       n(18,2),;
   din1       n(18,2),; 
   dinmin     n(18,2),; 
   ulica      c(25) ,;   
   bezuplate  c(1) ,;   
   abeceda    c(1) ,;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



if !file('vpizv02.dbf')
   create table vpizv02(;
      grupa     c(2),;
      naziv     c(20),;
      voda      n(12,0),;
      vodaproc  n(09,3),;
      vodapre   n(12,0),;
      vodaprocp n(09,3),;
      odnos     n(18,2),;
      vodomera  n(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpizv03.dbf')
   create table vpizv03(;
      grupa     c(2),;
      naziv     c(20),;
      vodastan  n(12,0),;
      procsvoda n(09,3),; 
      kanstan   n(12,0),;
      procskan  n(09,3),; 
      potvoda   n(12,0),;
      procvoda  n(09,3),; 
      potkan    n(12,0),;
      prockan   n(09,3),; 
      odnos     n(12,3),;
      mesecno   n(12,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpizv05.dbf')
   create table vpizv05(;
      grupa     c(2),;
      naziv     c(20),;
      potv      n(12,0),;
      procpotv  n(09,3),; 
      potk      n(12,0),;
      procpotk  n(09,3),; 
      voda      n(12,0),;
      procvoda  n(09,3),; 
      kan       n(12,0),;
      prockan   n(09,3),; 
      dopv      n(12,0),;
      svega     n(12,0),;
      sveproc   n(09,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpracd.dbf')
   create table vpracd(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(40) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1),;
      pkomnak   c(1),;
      pkomnakn  c(1),;
      slep      c(1) ,;
      popproc   n(4) ,;
      popkan    n(4) ,;
      popsoc    n(4) ,;  
      poplava   n(4) ,;        
      pausal    c(1) ,; 
      mespausal n(9),;
      pov       n(12,2),;
      povne     n(12,2),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      ukpot     n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      komdinar  n(12,2) ,;      
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      socp       n(12,2),;        
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(5) ,;
      vsifra    c(9),; 
      vrsta     c(1),; 
      pstanje   n(12) ,;
      zstanje   n(12) ,;
      datum     d(8) ,;
      datdok     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      cdkomdin  n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      sporazum  n(12,2),;       
      broj      c(7),;
      asifra    c(5),;
      anaziv    c(40),;
      amesto    c(25),;
      aulica    c(30),;
      aulbroj   c(10),;
      apib      c(13),; 
      brrac     c(25),;  
      model     c(20),;  
      pib2      c(5),;         
      procpor   n(09,2),;
      porez     n(12,2),;
      poc       n(9),;
      kraj      n(9),;
      kssifra   c(9),;       
      ssifra    c(6),;
      prez     c(20)      ,;
      ime      c(20)     ,;                                
      otac     c(20)     ,;                                
      posta0   c(05)     ,; 
      mesto0   c(25)     ,;
      siful0   c(3)     ,;
      ulica0   c(25)     ,;
      ulbroj0   c(10)     ,;
      stan0    c(05),;
      maticni0 c(13),;
      maticni1 c(13),;
      maticnibr c(13),;
      datcit    d(8),;
      aprezc    c(20),;
      amesto0c  c(25),;
      aulica0c  c(25),;
      ime_prezc  c(30) ,;
      ulicac     c(25),;
      datOPOM    d(8),;
      rokuplate  d(8),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpracu.dbf')
   create table vpracu(;
       d1           d(8) ,;
       din1         n(10,2) ,;
       d2           d(8) ,;
       din2         n(10,2) ,;
       d3           d(8) ,;
       din3         n(10,2) ,;
       d4           d(8) ,;
       din4         n(10,2) ,;
       d5           d(8) ,;
       din5         n(10,2) ,;
       d6           d(8) ,;
       din6         n(10,2) ,;
       d7           d(8) ,;
       din7         n(10,2) ,;
       d8           d(8) ,;
       din8         n(10,2) ,;
       d9           d(8) ,;
       din9         n(10,2) ,;
       d10          d(8) ,;
       din10        n(10,2) ,;
       d11          d(8) ,;
       din11        n(10,2) ,;
       d12          d(8) ,;
       din12        n(10,2) ,;
       d13          d(8) ,;
       din13        n(10,2) ,;
       d14          d(8) ,;
       din14        n(10,2) ,;
       d15          d(8) ,;
       din15        n(10,2) ,;
       d16          d(8) ,;
       din16        n(10,2) ,;
       d17          d(8) ,;
       din17        n(10,2) ,;
       d18          d(8) ,;
       din18        n(10,2) ,;
       d19          d(8) ,;
       din19        n(10,2) ,;
       d20          d(8) ,;
       din20        n(10,2) ,;
       d21          d(8) ,;
       din21        n(10,2) ,;
       d22          d(8) ,;
       din22        n(10,2) ,;
       d23          d(8) ,;
       din23        n(10,2) ,;
       d24          d(8) ,;
       din24        n(10,2) ,;
       pib          c(13) ,;
       uplaceno     n(10,2),;
       preneto   c(1),;
       idbr      n(11);
      )
   use
endif

if !file('vpobrac.dbf')
   create table vpobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('masine.dbf')
   create table masine ;
               (massif    c(4)     ,;
                regbroj   c(12)    ,;
                naziv     c(30)    ,;              
                nosivost  n(12,2),; 
                mascena   n(12,2),;  
                god       c(4),;
                mtr       n(5),;    
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('an00.dbf')
   create table an00 ;
               (sifra    c(05)      ,;
                prez     c(20)      ,;
                ime      c(20)     ,;                                
                otac     c(20)     ,;                                
                PAK      c(6)     ,; 
                POSTA0   c(5) ,;                 
                mesto0   c(25)     ,;
                siful0   c(3)     ,;
                ulica0   c(25)     ,;
                ulbroj0  c(10)     ,;
                stan0    c(05),;
                pib      c(09),;
                maticni0 c(13),;
                maticni1 c(13),;
                ime_prez c(30) ,;
                siful    c(3),; 
                ulica    c(25) ,;
                ulbroj   c(7),;
                mesto    c(25),;
                s_p      c(2),;
                nfirma    n(12,0),; 
                nredni    n(18,0),;      
                sprez     c(20)      ,;
                sime      c(20)     ,;                                
                sotac     c(20)     ,;                                
                sposta0   c(5)     ,; 
                smesto0   c(25)     ,;
                ssiful0   c(3)     ,;
                sulica0   c(25)     ,;
                sulbroj0  c(10)     ,;
                sime_prez c(30) ,;
                sulica    c(25) ,;
                smesto    c(25),;
                prezc     c(20)      ,;
                imec      c(20)     ,;                                
                mesto0c   c(25)     ,;
                ulica0c   c(25)     ,;
                ime_prezc c(30) ,;
                ulicac    c(25) ,;
                mestoc    c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vprac.dbf')
   create table vprac(;
      pib       c(13),;
      grupa     c(2),;
      siful     c(3),; 
      brnal     c(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpkart.dbf')
   create table vpkart(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       saldo     n(18,2),;
       KAMATA    n(18,2),;
       brnal     c(6) ,;
       grupa     c(3) ,;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       ime_prez  c(30),;
       siful     c(3) ,; 
       ulica     c(25),;
       ulbroj    c(7) ,;
       redosled  c(1) ,;        
       zatvar    c(1) ,; 
       datOPOM   d(8) ,;
       ROKUPLATE d(8) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


*-----------------vodovod paracin-----------------------------
*-----------------grad----------------------------------------
if !file('vpsud0.dbf')
   create table vpsud0(;
      redbr     c(6),;        
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpsud.dbf')
   create table vpsud(;
      redbr     c(6),;             
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      brrac     c(25),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vpeks.dbf')
   create table vpeks(;
      pib       c(9),;
      ime_prez  c(30),; 
      poc2      c(55),;
      tdatcit   c(10),;   
      poc1      c(10),;             
      tpot      c(15),;
      napomena  c(60),;
      pot       n(15,0),;
      datcit    d(8),;       
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpeput.dbf')
   create table vpeput(;
      putanja   c(70),; 
      stanje    c(2),; 
      stpoc     c(2),; 
      stkraj    c(2),; 
      stunos    c(2),; 
      stmesdod  c(2),; 
      brmes     n(2),; 
      brmeso    n(2),; 
      grupa     c(2),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vpuvoz.dbf')
   create table vpuvoz(;
      redbr     c(6),;             
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      brrac     c(25),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



if !file('vpsporaz.dbf')
   create table vpsporaz(;
      sifra      c(05) ,;
      pib        c(13),;
      grupa      c(2),;
      ime_prez   c(30) ,;
      brrac      c(25),;
      datums     d(8),;
      datum      d(8),;
      iznos      n(12,2),;
      brojrata   n(09,0),;
      dana       n(09,0),;
      mesiznos   n(12,2),;
      dok       c(5),;                   
      pr1       n(3),;
      pv1       d(8),;
      prdin1    n(14,2),;
      pr2       n(3),;
      pv2       d(8),;
      prdin2    n(14,2),;
      pr3       n(3),;
      pv3       d(8),;
      prdin3    n(14,2),;
      pr4       n(3),;
      pv4       d(8),;
      prdin4    n(14,2),;
      pr5       n(3),;
      pv5       d(8),;
      prdin5    n(14,2),;
      pr6       n(3),;
      pv6       d(8),;
      prdin6    n(14,2),;
      pr7       n(3),;
      pv7       d(8),;
      prdin7    n(14,2),;
      pr8       n(3),;
      pv8       d(8),;
      prdin8    n(14,2),;
      pr9       n(3),;
      pv9       d(8),;
      prdin9    n(14,2),;
      pr10      n(3),;
      pv10      d(8),;
      prdin10   n(14,2),;
      pr11      n(3),;
      pv11      d(8),;
      prdin11   n(14,2),;
      pr12      n(3),;
      pv12      d(8),;
      prdin12   n(14,2),;
      pr13      n(3),;
      pv13      d(8),;
      prdin13   n(14,2),;
      pr14      n(3),;
      pv14      d(8),;
      prdin14   n(14,2),;
      pr15      n(3),;
      pv15      d(8),;
      prdin15   n(14,2),;
      pr16      n(3),;
      pv16      d(8),;
      prdin16   n(14,2),;
      pr17      n(3),;
      pv17      d(8),;
      prdin17   n(14,2),;
      pr18      n(3),;
      pv18      d(8),;
      prdin18   n(14,2),;
      uplata     n(12,2),;
      zatvoreno  c(1),;
      arhiva     c(1),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vc.dbf')
   create table vc(;
        pib         c(13), ;
        grupa       c(2), ;
        ime_prez    c(30), ;
        siful       c(3), ;
        pvoda       c(1), ;
        pkanal      c(1), ;
        slep        c(1), ;
        popproc     n(7,3), ;
        popkan      n(7,3), ;
        popsoc      n(4), ;
        pausal      c(1), ;
        mespausal   n(9), ;
        nsporaz     n(12,2), ;
        nspdat      d, ;
        brstan      n(10), ;
        ukstan      n(10), ;
        domac       n(10), ;
        cenovnik    n(10), ;
        ulica       c(25), ;
        ulbroj      c(7), ;
        st0         n(9), ;
        st1         n(9), ;
        st2         n(9), ;
        st3         n(9), ;
        st4         n(9), ;
        st5         n(9), ;
        st6         n(9), ;
        st7         n(9), ;
        st8         n(9), ;
        st9         n(9), ;
        st10        n(9), ;
        st11        n(9), ;
        st12        n(9), ;
        pot         n(9), ;
        pots        n(9), ;
        voda        n(12,2), ;
        kan         n(12,2), ;
        voda2       n(12,2), ;
        kan2        n(12,2), ;
        voda3       n(12,2), ;
        kan3        n(12,2), ;
        dopv        n(12,2), ;
        dopk        n(12,2), ;
        ukupno      n(12,2), ;
        procpor     n(9,2), ;
        porez       n(12,2), ;
        dug         n(12,2), ;
        uplac       n(12,2), ;
        kamata      n(12,2), ;
        soc         n(12,2), ;
        svega       n(12,2), ;
        akont       n(12,2), ;
        odug        n(12,2), ;
        opot        n(12,2), ;
        osaldo      n(12,2), ;
        rabat       n(12,2), ;
        sdug        n(12,2), ;
        ostalo      n(12,2), ;
        sifra       c(5), ;
        vsifra      c(9), ;
        ks          c(1), ;
        kssifra     c(9), ;
        vrsta       c(1), ;
        datpri      d, ;
        datodj      d, ;
        ugovor      c(20), ;
        ugovork   c(20) ,;
        ssifra      c(6), ;
        meseci      n(2), ;
        precnik     c(10), ;
        brojvodom   c(15), ;
        datugrad    d, ;
        bazdar1     d, ;
        radi        c(1), ;
        prijavak    c(20), ;
        prijavak2   c(20), ;
        prijavak3   c(20), ;
        napomena    c(50), ;
        napomena2   c(50), ;
        napomena3 c(50),;
        napomena4 c(50),;
        napomena5 c(50),;
        maticni0  c(13),;
        maticni1  c(13),;
        prethvlas c(40),;
        sporazum    n(12,2), ;
        datsporaz   d, ;
        zbirni      n(5), ;
        idbroj      c(10), ;
        broj        c(7), ;
        stvoda      c(1), ;
        stkan       c(1), ;
        stan        c(3), ;
        vsif        c(6), ;
        pib2        c(5), ;
        brrac       c(20), ;
        model       c(20), ;
        datum       d, ;
        valuta      d, ;
        datod       d, ;
        datdo       d, ;
        mes         n(2), ;
        ukpot       n(9), ;
        poc         n(9), ;
        kraj        n(9), ;
        maticnibr   c(13), ;
        komdinar    n(12,2),;
        utuziznos   n(12,2),;
        utuzdat0    d(8),;
        utuzdat1    d(8),;
        sime_prez   c(30) ,;
        sulica      c(25) ,;
        smesto      c(25),;
        cvoda       n(10,3), ;
        ckanal      n(10,3), ;
        cvoda2      n(10,3), ;
        ckanal2     n(10,3), ;
        cvoda3      n(10,3), ;
        ckanal3     n(10,3), ;
        cdvoda      n(10,3), ;
        cdkanal     n(10,3), ;
        cvodado     n(10,2), ;
        cvodado2    n(10,2), ;
        cdkomdin    n(10,3), ;        
        brnal       c(6), ;  
        datcit      d(8),;              
        opis        c(50),;
        radikam     n(06),;     
        ime_prezc  c(30) ,;
        ulicac     c(25),;
        preneto   c(1),;
        idbr      n(11);
      )
   use
endif

if !file('vccene.dbf')
   create table vccene(;
        cenovnik    n(2), ;
        pstanje     n(2), ;
        zstanje     n(2), ;
        datum       d, ;
        valuta      d, ;
        cvoda       n(10,3), ;
        ckanal      n(10,3), ;
        cvodado     n(10,2), ;
        cvoda2      n(10,3), ;
        ckanal2     n(10,3), ;
        cvodado2    n(10,2), ;
        cvoda3      n(10,3), ;
        ckanal3     n(10,3), ;
        cdvoda      n(10,3), ;
        cdkanal     n(10,3), ;
        cdkomdin    n(10,3), ;
        procakont   n(10,3), ;
        datod       d, ;
        datdo       d, ;
        mesec       n(2), ;
        procpor     n(9,2),;
        rabproc   n(09,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('pu0.dbf')
*   wait windows ' evidencija radnika '   
   create table pu0 ;
               (sifra     c(5)      ,;
                ime_prez  c(30)     ,;
                grupa     n(2,0)    ,;      
                maticnibr c(13)     ,;
                posta     c(5)      ,;
                mesto     c(25)     ,;
                adresa    c(40)     ,;
                telefon   c(20)     ,;
                grupaime  c(25)     ,;  
                iznos     n(12,2)   ,;
                aktivan   c(1)      ,;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('pu.dbf')
*   wait windows ' evidencija radnika '   
   create table pu ;
               (sifra     c(5)      ,;
                mesec     n(2)      ,; 
                ime_prez  c(30)     ,;
                iznos     n(12,2)   ,;
                dana      n(10,0)   ,;
                dana100   n(10,0)   ,;
                dana50    n(10,0)   ,;
                iznos100  n(12,2)   ,;
                iznos50   n(12,2)   ,;
                zauplatu  n(12,2)   ,;
                napomena  c(30)     ,;
                grupa     n(2,0),;
                datdok    d(8),;
                valuta    d(8),;
                brrac     c(20),;
                brnal     c(6),;
                zatvar    c(1),;
                arhiva    c(1),;   
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('puanal.dbf')
 *  wait windows ' anal evidencija analitike '
   create table puanal (;
                     sifra     c(5),;
                     datdok    d(8),;
                     valuta    d(8),;
                     brrac     c(20),;
                     dug       n(18,2),;
                     pot       n(18,2),;
                     brnal     c(6  ),;
                     zatvar    c(1  ),;
                     vanval    n(9),;
                     opis      c(20 ),;
                     saldo     n(18,2),;                     
                     grupa     n(2,0),;
                     oper      c(2  ),;
                     datum     d(8  ),;
                     vreme     c(8  ),;
                     arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                     )              
                use
             endif


if !file('aptro.dbf')
   create table aptro;
               (rbroj     c(9),;
                msif      c(5),;
                sifra     c(5),;
                brrac     c(20),;
                datpoc    d(08),;                
                datkraj   d(08),;                
                datdok    d(08),;
                valuta    d(08),;
                kol       n(18,6),;
                cena      n(18,2),;                
                pot       n(18,2),;
                dev       c(03),;
                kurs      n(18,6),;
                devpot    n(18,2),; 
                mtr       n(5)  ,;                              
                mp        c(2),;
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('aptro0.dbf')
   create table aptro0;
               (msif      c(5),;
                naziv     c(40),;
                jed       c(03),;                
                cena      n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('apfak.dbf')
   create table apfak;
               (rbroj     c(9),;
                msif      c(5),;
                sifra     c(5),;
                brrac     c(20),;
                datpoc    d(08),;                
                datkraj   d(08),;                
                datdok    d(08),;
                valuta    d(08),;
                kol       n(18,6),;
                cena      n(18,2),;                
                pot       n(18,2),;
                dev       c(03),;
                kurs      n(18,6),;
                devpot    n(18,2),; 
                mtr       n(5)  ,;                              
                mp        c(2),;
                arhiva    c(1),;
                arhiva2   c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('apfak0.dbf')
   create table apfak0;
               (msif      c(5),;
                naziv     c(40),;
                jed       c(03),;                
                cena      n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif
if !file('apizv.dbf')
   create table apizv;
               (datpoc    d(8),;
                datkraj   d(8),;
                datum     c(1),;                
                vrsta     c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('apizv01.dbf')
   create table apizv01;
               (rbroj     c(9),;
                msif      c(5),;
                sifra     c(5),;
                brrac     c(20),;
                datpoc    d(8),;
                datkraj   d(8),;
                datum     c(1),;                
                dug       n(18,2),;
                pot       n(18,2),;
                saldo     n(18,2),;
                devdug    n(18,2),;
                devpot    n(18,2),;
                devsaldo  n(18,2),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
   use
endif

if !file('nopazpar.dbf')
   create table nopazpar;
       (f_sifra     c(8), ;
        idbroj      c(10)    ,;
        sifra       c(5)     ,;
        f_naziv     c(30), ;
        naziv       c(40)    ,;              
        f_vlasnik   c(30), ;
        lice1       c(30)    ,;
        f_tel       c(30), ;
        telefon     c(25)    ,;
        f_adresa    c(40), ;
        ulica       c(35)    ,;
        f_mesto     c(40), ;
        mesto       c(35)    ,;    
        f_ziro      c(30), ;
        zirorac     c(25)    ,;
        napomena    c(50)    ,;
        f_delat     c(40), ;
        napomena2   c(50)    ,;
        f_datum     d(8), ;
        datum       d(8)     ,;
        f_email     c(20), ;
        email       c(40)    ,;
        f_fi        c(10), ;
        gibr        c(10)    ,;
        f_ugovor    c(8), ;
        ugovor      c(15)    ,;
        f_pib       c(15), ;
        pib         c(9)     ,; 
        f_matbr     c(15), ;
        maticni     c(13),;  
        f_pdvbr     c(20), ;
        f_ziro1     c(30), ;
        zirorac2    c(25)    ,;        
        f_ziro2     c(30), ;
        zirorac3    c(25)    ,;
        f_ziro3     c(30), ;
        zirorac4    c(25)    ,;
        f_ziro4     c(30), ;
        zirorac5    c(25)    ,;
        f_jmbg      c(15), ;
        jmbg        c(13),;   
        f_brlk      c(15) ,;
        lkbr        c(10),;
        preneto   c(1),;   
        idbr      n(11);
         )
        use
     endif   

if !file('nopazrob.dbf')
   create table nopazrob;
       (r_sifra     c(8), ;
        rsif        c(5)   ,;
        podnaziv    c(20),;
        r_naziv     c(30), ;
        naz         c(30),;
        r_tarifa    c(4), ;
        tarifa      c(6),;
        procpor     n(12,2), ;
        r_jm        c(3), ;
        jed         c(10),;
        r_cena      n(19,3), ;
        malcena     n(18,5),;
        r_minkol    n(10,2), ;
        minimum     n(14,3),;
        r_maxkol    n(10,2), ;
        maksimum    n(14,3),;
        r_nabavi    n(10,2), ;
        optimum     n(14,3),;
        r_tiprobe   n(1), ;
        r_mpp       n(1), ;
        r_mmp       n(10,3), ;
        r_mvp       n(10,3), ;
        r_ivp       n(10,3), ;
        r_uup       n(1), ;
        r_grupa     c(3), ;
        grupa       c(3),;
        r_barkod    c(30), ;
        barkod      c(20),;
        r_taksa     n(10,2), ;
        r_akciza    n(10,2), ;
        r_pak       n(10,3), ;
        unpak       n(14,4),;
        r_proiz     c(8) ,;
        proizv      c(5),;
        preneto   c(1),;   
        idbr      n(11);
        )
        use
     endif   


if ! file("nopazput.dbf")
   create table nopazput(;
                putanja      c(70),;
                preneto   c(1),;   
                idbr      n(11);                    
    )
   use
endif


if !file('nopazkon.dbf')
  * wait windows ' konto analiticki kontni plan '   
   create table nopazkon ;
              (konto     c(10),;              
               m_konto   c(8) ,;        
               naziv     c(70),;
               m_opis    c(50),;         
               m_ziro    c(50),;         
               k1        c(1),; 
               k2        c(2),; 
               k3        c(3),; 
               k4        c(4),; 
               k5        c(5),; 
               k6        c(6),; 
               preneto   c(1),;   
               idbr      n(11);
               )
   use
endif


if ! file("nopazos0.dbf")
   create table nopazos0;
     (osifra      c(4),;
      naz         c(40),;
      os_opis     c(30), ;
      os_stopa    n(5,2), ;
      stopaot     n(9,3),;
      os_dob      c(8), ;
      sifra       c(5),;
      os_dat      d(8), ;
      datnab      d(8),;
      os_vred     n(19,3), ;
      nab0        n(18,2),;
      os_kol      n(10,2), ;
      kom         n(12,2),;
      os_nb       c(10), ;
      os_kod      n(1), ;
      preneto     c(1),;   
      idbr        n(11);                    
      )
   use
endif

if ! file("nopazpro.dbf")
   create table nopazpro;
       (p_sifra     c(8), ;
        rsif        c(5)   ,;
        podnaziv    c(20),;
        jed         c(10),;
        p_jm        c(3), ;
        p_stopa     n(9,4), ;
        p_vpc       n(19,5), ;
        p_mpc       n(19,5), ;
        malcena     n(18,5),;
        p_konto     c(8), ;
        p_kol       n(18,3), ;
        kol         n(18,3), ;
        kolu        n(18,3), ;        
        koli        n(18,3),;
        preneto   c(1),;   
        idbr      n(11);
        )
   use
endif   

if !file('nopazgk.dbf')
   create table nopazgk ;
              (konto      c(10),;              
               opis       c(50),;         
               dug        n(18,2),;         
               pot        n(18,2),;         
               brnal      c(6),;         
               datdok     d(8),;         
               fst_kon    c(10),;              
               fst_opis   c(50),;         
               fst_dug    n(18,2),;         
               fst_pot    n(18,2),;         
               fst_nal    c(6),;         
               fst_datdok d(8),;       
        preneto   c(1),;   
        idbr      n(11);
               )
   use
endif

*-----------------boljevac----------------------------------------
if !file('bo.dbf')
   create table bo(;
      sifra     c(05) ,;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1) ,;      
      pcis      c(1) ,;                  
      pgre      c(1) ,;
      post1     c(1) ,;      
      post2     c(1) ,;            
      slep      c(1) ,;
      popproc   n(10,3) ,;
      popkan    n(10,3) ,;
      popsme    n(10,3) ,;      
      popcis    n(10,3) ,;            
      popgre    n(10,3) ,;            
      popsoc    n(10,3) ,;  
      pausal    c(1) ,; 
      mespausal n(10,2),;
      pov       n(12,2) ,;
      povne     n(12,2) ,;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  c(1),;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;      
      smece60   n(12,2) ,;      
      ciscenje  n(12,2) ,;                  
      grejanje  n(12,2) ,;                        
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      procvoda  n(09,2),;
      prockan   n(09,2),;      
      procsme   n(09,2),;
      procgre   n(09,2),;      
      proccis   n(09,2),;      
      procost1 n(09,2),;            
      procost2 n(12,2),;
      porvoda   n(12,2),;
      porkan    n(12,2),;      
      porsme    n(12,2),;
      porsme60  n(12,2),;      
      porgre    n(12,2),;
      porcis    n(12,2),;
      porost1   n(12,2),;
      porost2   n(12,2),; 
      porez20   n(12,2),;
      porez10   n(12,2),;      
      osnov20   n(12,2),;      
      osnov10   n(12,2),;            
      osnov0    n(12,2),; 
      porezuk   n(12,2),;           
      osnovuk   n(12,2),; 
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      nazost1   c(20),;      
      dinost1   n(12,2),;            
      nazost2   c(20),;      
      dinost2   n(12,2),;            
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      datpri    d(8) ,;
      datodj    d(8) ,;
      ugovor    c(20) ,;
      ugovork   c(20) ,;
      meseci    n(2)  ,; 
      precnik   c(10) ,;
      brojvodom c(15) ,;
      datugrad  d(8) ,;
      bazdar1   d(8) ,;
      radi      c(1) ,;
      napomena  c(50) ,;
      napomena2 c(50),;
      napomena3 c(50),;
      napomena4 c(50),;
      napomena5 c(50),;
      zbirni    n(5),;
      brrac     c(25),;
      model     c(20),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      posta     c(5),;
      mesto     c(25),;
      maticni0  c(13),;
      maticni1  c(13),;
      prethvlas c(40),;
      opis      c(50),;
      brnal     c(6),;
      broj      c(7),;
      popust    c(1),;
      saldo     n(12,2),;
      datcit    d(8),;
      utuziznos n(12,2),;
      utuzdat0  d(8),;
      utuzdat1  d(8),;
      sime_prez  c(30) ,;
      sulica     c(25) ,;
      smesto     c(25),;
      komdinar   n(12,2),;      
      radikam    n(06),;      
      ZAOKRUZ    n(12,2),;
      poclanu   n(12,2),;      
      POTP      n(9),;
      pov60     n(12,2),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('boupl.dbf')
   create table boupl(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       brnal     c(6) ,;
       grupa     c(3) ,;
       zatvar    c(1),;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       saldo     n(18,2),;
       sifra     c(9) ,;
       danas     d(8) ,;
       vreme     c(8) ,; 
       oper      c(2) ,;
       arhiva    c(1) ,; 
       stan      c(3),;
       dana      n(12,0),;
       nsporaz   n(18,2),;
       sprazlika n(18,2),;
       naz       c(35),;
       ime_prez  c(35),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boupld.dbf')
   create table boupld(;
      pib       c(13),;
      grupa     c(2),;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;      
      smece60   n(12,2) ,;      
      ciscenje  n(12,2) ,;                  
      grejanje  n(12,2) ,;                  
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1) ,;      
      pcis      c(1) ,;                  
      pgre      c(1) ,;
      post1     c(1) ,;
      post2     c(1) ,;      
      slep      c(1) ,;
      popproc   n(10,3) ,;
      popkan    n(10,3) ,;
      popsme    n(10,3) ,;      
      popcis    n(10,3) ,;            
      popGRE    n(10,3) ,;            
      popsoc    n(10.3) ,;  
      pausal    c(1) ,; 
      mespausal n(10,3),;
      pov       n(12,2) ,;
      povne     n(12,2) ,;
      osnov     n(12,2) ,;
      procvoda  n(09,2),;
      prockan   n(09,2),;      
      procsme   n(09,2),;
      procgre   n(09,2),;      
      proccis  n(09,2),;      
      procost1 n(09,2),;            
      procost2 n(12,2),;
      porvoda   n(12,2),;
      porkan    n(12,2),;      
      porsme    n(12,2),;
      porsme60  n(12,2),;
      porgre    n(12,2),;
      porcis    n(12,2),;
      porost1   n(12,2),;
      porost2   n(12,2),; 
      porez20   n(12,2),;
      porez10   n(12,2),;      
      osnov20   n(12,2),;      
      osnov10   n(12,2),;            
      osnov0    n(12,2),; 
      porezuk   n(12,2),;           
      osnovuk   n(12,2),; 
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      rabat     n(12,2) ,;
      ostalo    n(12,2),;
      nazost1   c(20),;      
      dinost1   n(12,2),;            
      nazost2   c(20),;      
      dinost2   n(12,2),;            
      sporazum  n(12,2),;
      brrac     c(25),;
      model     c(20),;
      pot       n(9) ,;
      pots      n(9) ,;
      akont     n(12,2) ,;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      csmece    n(10,3) ,;      
      csmece60  n(10,3) ,;            
      csmece60P n(10,3) ,;      
      ccis      n(10,3) ,;            
      cgre      n(10,3) ,;                  
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      cdkomdin  n(10,3) ,;      
      procakont n(10,3) ,;
      mesec     n(2),; 
      brnal     c(6), ;
      ime_prez  c(30) ,;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      broj      c(7) ,;
      zona      n(3)   ,;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      poclanu   n(12,2) ,;
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      aprez     c(20)      ,;
      aime      c(20)     ,;                                
      aotac     c(20)     ,;                                
      aposta0   c(5)     ,; 
      amesto0   c(25)     ,;
      asiful0   c(3)     ,;
      aulica0   c(25)     ,;
      aulbroj0  c(10)     ,;
      astan0    c(05),;
      apib      c(09),;
      amaticni0 c(13),;
      amaticni1 c(13),;
      saldo     n(12,2),;
      datcit    d(8),;
      sifra     c(5),;
      nfirma    n(12,0),; 
      nredni    n(18,0),;      
      sime_prez  c(30) ,;
      samesto0   c(25) ,;
      komdinar  n(14,2),;
      posta     c(5) ,; 
      mesto     c(25) ,;
      ZAOKRUZ    n(12,2),;      
      pov60      n(12,2),;     
      anaziv    c(40),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('bocene.dbf')
   create table BOCene(;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      csmece    n(10,3) ,;      
      ccis      n(10,3) ,;            
      cgre      n(10,3) ,;                  
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      cvodau    n(10,3) ,;
      ckanalu   n(10,3) ,;
      csmeceu   n(10,3) ,;
      cgreu      n(10,3) ,;                              
      cvodap    n(10,3) ,;
      ckanalp   n(10,3) ,;
      csmecep   n(10,3) ,;
      cgrep     n(10,3) ,;                              
      csmece60  n(10,3) ,;      
      csmece60p n(10,3) ,;      
      csmecek   n(10,3) ,;            
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      procvoda  n(09,2),;
      prockan   n(09,2),;
      procsme   n(09,2),;
      procgre   n(09,2),;
      proccis   n(09,2),;
      rabproc   n(09,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boulice.dbf')
   create table BOulice(;
   siful      c(3) ,;
   ulica      c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boobrac.dbf')
   create table boobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('boractxt.dbf')
   create table boractxt(;
     txt1     c(70),;
     txt2     c(70),;
     txt3     c(70),;
     txt4     c(70),;
     txt5     c(70),;
     txt6     c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boractx2.dbf')
   create table boractx2(;
     txt1     c(70),;
     txt2     c(70),;
     txt3     c(70),;
     txt4     c(70),;
     txt5     c(70),;
     txt6     c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boractxf.dbf')
   create table boractxf(;
     txt1     c(50),;
     txt2     c(50),;
     txt3     c(50),;
     txt4     c(50),;
     txt5     c(50),;
     txt6     c(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bounp.dbf')
   create table bounp ;
               (poc       n(2)     ,;
                kraj      n(2)     ,;
                datcit    d(8)   ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bogrupa.dbf')
   create table bogrupa(;
      grupa     c(2),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bogrupak.dbf')
   create table bogrupak(;
      grupa     c(3),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boprenos.dbf')
   create table boprenos(;
      putanja   c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boprv.dbf')
   create table boprv(;
      vrsta     c(4),; 
      opis      c(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bopr.dbf')
   create table bopr(;
      redbroj   n(6),;
      poziv     n(6),;
      radnal    n(6),; 
      pib       c(13),;
      ime_prez  c(30),;
      adresa    c(30),;
      telefon   c(20),;      
      vrsta     c(4),; 
      datnal    d(8),;
      vremenal  c(10),;
      datpoc    d(8),;
      vremepoc  c(10),;
      datkraj   d(8),;
      vremekraj c(10),;
      datobav   d(8),;
      vremeobav c(10),;
      opis1     c(70),;
      opis2     c(70),;
      opis3     c(70),;
      opis4     c(70),;
      uradjenrn n(6),;  
      odgovor   n(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boprrad.dbf')
   create table boprrad(;
       radnal    n(6),; 
       broj      n(4),;
       ime_prez  c(30),;
       startbod  n(10,3),;      
       dana      n(6),;
       sati      n(6),;
       minuti    n(6),;
       iznos     n(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boprmat.dbf')
   create table boprmat(;
       radnal    n(6),; 
       rsif      c(5),;
       naz       c(30),;
       koli      n(18,3),;      
       velcena   n(18,3),;
       velvred   n(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boprvoz.dbf')
   create table boprvoz(;
       radnal    n(6),; 
       vsifra    c(4),;
       naz       c(30),;
       koli      n(18,3),;      
       vozcena   n(18,3),;
       vozvred   n(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bok.dbf')
   create table bok(;
   brnal      c(6) ,;
   branal     n(2) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bonalz.dbf')
   create table bonalz(;
   brnal1     c(6) ,;
   brnal2     c(6) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('bospis.dbf')
   create table bospis(;
   grupa      c(2),;   
   siful      c(3),; 
   brnal      c(6),;
   kssifra    c(9),;  
   pvoda      c(1) ,;
   pkanal     c(1) ,;
   slep       c(1) ,;
   pausal     c(1) ,; 
   bazdar1    d(8) ,;
   radi       c(1) ,;
   dat0       d(8),;
   dat1       d(8),;
   din0       n(18,2),;
   din1       n(18,2),; 
   dinmin     n(18,2),; 
   ulica      c(25) ,;   
   bezuplate  c(1) ,;   
   abeceda    c(1) ,;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif




if !file('boracd.dbf')
   create table boracd(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(40) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1),;
      pcis      c(1) ,;                  
      pgre      c(1) ,;                        
      post1     c(1) ,;                        
      post2     c(1) ,;                                    
      slep      c(1) ,;
      popproc   n(10,3) ,;
      popkan    n(10,3) ,;
      popsoc    n(10,3) ,;  
      popcis    n(10,3) ,;            
      popgre    n(10,3) ,;            
      pausal    c(1) ,; 
      mespausal n(10,2),;
      pov       n(12,2),;
      povne     n(12,2),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      ukpot     n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;      
      smece60   n(12,2) ,;      
      ciscenje  n(12,2) ,;                  
      grejanje  n(12,2) ,;                        
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      komdinar  n(12,2) ,;      
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      nazost1   c(20),;      
      dinost1   n(12,2),;            
      nazost2   c(20),;      
      dinost2   n(12,2),;            
      sifra     c(5) ,;
      vsifra    c(9),; 
      vrsta     c(1),; 
      pstanje   n(12) ,;
      zstanje   n(12) ,;
      datum     d(8) ,;
      datdok     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      csmece    n(10,3) ,;      
      csmece60   n(10,3) ,;            
      csmece60P   n(10,3) ,;      
      ccis      n(10,3) ,;            
      cgre      n(10,3) ,;                  
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      sporazum  n(12,2),;       
      broj      c(7),;
      asifra    c(5),;
      anaziv    c(40),;
      amesto    c(25),;
      aulica    c(30),;
      aulbroj   c(10),;
      apib      c(13),; 
      brrac     c(25),;  
      model     c(20),;  
      pib2      c(5),;        
      procvoda  n(09,2),;
      prockan   n(09,2),;      
      procsme   n(09,2),;
      procgre   n(09,2),;      
      proccis  n(09,2),;      
      procost1 n(09,2),;            
      procost2 n(12,2),;
      porvoda   n(12,2),;
      porkan    n(12,2),;      
      porsme    n(12,2),;
      porsme60  n(12,2),;
      porgre    n(12,2),;
      porcis    n(12,2),;
      porost1   n(12,2),;
      porost2   n(12,2),; 
      porez20   n(12,2),;
      porez10   n(12,2),;      
      osnov20   n(12,2),;      
      osnov10   n(12,2),;            
      osnov0    n(12,2),; 
      porezuk   n(12,2),;           
      osnovuk   n(12,2),; 
      poc       n(9),;
      kraj      n(9),;
      kssifra   c(9),;       
      ssifra    c(6),;
      prez     c(20)      ,;
      ime      c(20)     ,;                                
      otac     c(20)     ,;                                
      posta   c(05)     ,; 
      mesto   c(25)     ,;
      posta0   c(05)     ,; 
      mesto0   c(25)     ,;
      siful0   c(3)     ,;
      ulica0   c(25)     ,;
      ulbroj0    c(10)     ,;
      stan0      c(05),;
      maticni0   c(13),;
      maticni1   c(13),;
      maticnibr  c(13),;
      datcit     d(8),;
      ZAOKRUZ    n(12,2),;      
      pov60      n(12,2),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('boracu.dbf')
   create table boracu(;
       d1           d(8) ,;
       din1         n(10,2) ,;
       d2           d(8) ,;
       din2         n(10,2) ,;
       d3           d(8) ,;
       din3         n(10,2) ,;
       d4           d(8) ,;
       din4         n(10,2) ,;
       d5           d(8) ,;
       din5         n(10,2) ,;
       d6           d(8) ,;
       din6         n(10,2) ,;
       d7           d(8) ,;
       din7         n(10,2) ,;
       d8           d(8) ,;
       din8         n(10,2) ,;
       d9           d(8) ,;
       din9         n(10,2) ,;
       d10          d(8) ,;
       din10        n(10,2) ,;
       d11          d(8) ,;
       din11        n(10,2) ,;
       d12          d(8) ,;
       din12        n(10,2) ,;
       d13          d(8) ,;
       din13        n(10,2) ,;
       d14          d(8) ,;
       din14        n(10,2) ,;
       d15          d(8) ,;
       din15        n(10,2) ,;
       d16          d(8) ,;
       din16        n(10,2) ,;
       d17          d(8) ,;
       din17        n(10,2) ,;
       d18          d(8) ,;
       din18        n(10,2) ,;
       d19          d(8) ,;
       din19        n(10,2) ,;
       d20          d(8) ,;
       din20        n(10,2) ,;
       d21          d(8) ,;
       din21        n(10,2) ,;
       d22          d(8) ,;
       din22        n(10,2) ,;
       d23          d(8) ,;
       din23        n(10,2) ,;
       d24          d(8) ,;
       din24        n(10,2) ,;
       pib          c(13) ,;
       uplaceno     n(10,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('boobrac.dbf')
   create table boobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



if !file('borac.dbf')
   create table borac(;
      pib       c(13),;
      grupa     c(2),;
      siful     c(3),; 
      brnal     c(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('bokart.dbf')
   create table bokart(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       saldo     n(18,2),;
       brnal     c(6) ,;
       grupa     c(3) ,;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       ime_prez  c(30),;
       siful     c(3) ,; 
       ulica     c(25),;
       ulbroj    c(7) ,;
       zatvar    c(1) ,; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bosud0.dbf')
   create table bosud0(;
      redbr     c(6),;        
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bosud.dbf')
   create table bosud(;
      redbr     c(6),;             
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      brrac     c(25),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('boeks.dbf')
   create table boeks(;
      tdatcit   c(10),;   
      datcit    d(8),; 
      poc1      c(10),;             
      pib       c(9),;
      poc2      c(55),;
      tpot      c(15),;
      napomena  c(60),;
      pot       n(15,0),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('boeput.dbf')
   create table boeput(;
      putanja   c(70),; 
      stanje    c(2),; 
      stpoc     c(2),; 
      stkraj    c(2),; 
      stunos    c(2),; 
      stmesdod  c(2),; 
      brmes     n(2),; 
      brmeso    n(2),; 
      grupa     c(2),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('bouvoz.dbf')
   create table bouvoz(;
      redbr     c(6),;             
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      brrac     c(25),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



if !file('bosporaz.dbf')
   create table bosporaz(;
      sifra      c(05) ,;
      pib        c(13),;
      grupa      c(2),;
      ime_prez   c(30) ,;
      brrac      c(25),;
      datums     d(8),;
      datum      d(8),;
      iznos      n(12,2),;
      brojrata   n(09,0),;
      dana       n(09,0),;
      mesiznos   n(12,2),;
      dok       c(5),;                   
      pr1       n(3),;
      pv1       d(8),;
      prdin1    n(14,2),;
      pr2       n(3),;
      pv2       d(8),;
      prdin2    n(14,2),;
      pr3       n(3),;
      pv3       d(8),;
      prdin3    n(14,2),;
      pr4       n(3),;
      pv4       d(8),;
      prdin4    n(14,2),;
      pr5       n(3),;
      pv5       d(8),;
      prdin5    n(14,2),;
      pr6       n(3),;
      pv6       d(8),;
      prdin6    n(14,2),;
      pr7       n(3),;
      pv7       d(8),;
      prdin7    n(14,2),;
      pr8       n(3),;
      pv8       d(8),;
      prdin8    n(14,2),;
      pr9       n(3),;
      pv9       d(8),;
      prdin9    n(14,2),;
      pr10      n(3),;
      pv10      d(8),;
      prdin10   n(14,2),;
      pr11      n(3),;
      pv11      d(8),;
      prdin11   n(14,2),;
      pr12      n(3),;
      pv12      d(8),;
      prdin12   n(14,2),;
      pr13      n(3),;
      pv13      d(8),;
      prdin13   n(14,2),;
      pr14      n(3),;
      pv14      d(8),;
      prdin14   n(14,2),;
      pr15      n(3),;
      pv15      d(8),;
      prdin15   n(14,2),;
      pr16      n(3),;
      pv16      d(8),;
      prdin16   n(14,2),;
      pr17      n(3),;
      pv17      d(8),;
      prdin17   n(14,2),;
      pr18      n(3),;
      pv18      d(8),;
      prdin18   n(14,2),;
      uplata     n(12,2),;
      zatvoreno  c(1),;
      arhiva     c(1),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('BOtuzbe.dbf')
   create table BOtuzbe ; 
  ( ;
        pib         C(13), ;        
        DATUM       D, ;
        brrac       c(20), ;  
        DUG         N(12,2), ;
        pot         N(12,2), ;
        grupa       c(3), ;                
        brnal       c(6), ;        
        OPIS        C(25), ;
        saldo       N(12,2),;         
        valuta    d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

*--------------bojnik
IF !FILE('jb.DBF')
   CREATE TABLE jb(;
      SIFRA      C(05) ,;
      PIB        C(13),;
      GRUPA      C(2),;
      IME_PREZ   C(30) ,;
      PVODA      C(1) ,;
      PKANAL     C(1) ,;
      PSMECE     C(1) ,;
      PODRZ      C(1) ,;
      SLEP       C(1) ,;
      POPVODA    N(7,3) ,;
      POPKAN     N(7,3) ,;
      POPSMECE   N(7,3) ,;
      POPODRZ    N(7,3) ,;
      POPSOC     N(4) ,;  
      PAUSAL     C(1) ,; 
      MESPAUSAL  N(9),;
      BRSTAN     N(10) ,;
      UKSTAN     N(10)  ,;
      POV        N(10,2) ,;
      POVNE      N(10,2)  ,;
      DOMAC      N(10) ,;
      CENOVNIK   N(10),;
      SIFUL      C(3),; 
      ULICA      C(25) ,;
      ULBROJ     C(7) ,;
      ST0        N(9) ,;
      ST1        N(9) ,;
      ST2        N(9) ,;
      ST3        N(9) ,;
      ST4        N(9) ,;
      ST5        N(9) ,;
      ST6        N(9) ,;
      ST7        N(9) ,;
      ST8        N(9) ,;
      ST9        N(9) ,;
      ST10       N(9) ,;
      ST11       N(9) ,;
      ST12       N(9) ,;
      POT        N(9) ,;
      POTS       N(9) ,;
      VODA       N(12,2) ,;
      KANAL      N(12,2) ,;
      DOPV       N(12,2) ,;
      DOPK       N(12,2) ,;
      SMECE      N(12,2) ,;
      ODRZ       N(12,2) ,;
      UKUPNO     N(12,2) ,;
      PROCPOR    N(09,2),;
      POREZ      N(12,2),;
      DUG        N(12,2) ,;
      UPLAC      N(12,2) ,;
      KAMATA     N(12,2) ,;
      SOC        N(12,2),;  
      SVEGA      N(12,2) ,;
      AKONT      N(12,2) ,;
      ODUG       N(12,2) ,;
      OPOT       N(12,2) ,;
      OSALDO     N(12,2) ,;
      RABAT      N(12,2) ,;
      SDUG       N(12,2) ,;
      OSTALO     N(12,2),;
      KS         C(1),; 
      KSSIFRA    C(9),; 
      VRSTA      C(1),; 
      DATPRI     D(8) ,;
      DATODJ     D(8) ,;
      UGOVOR     C(20) ,;
      UGOVORK    C(20) ,;
      MESECI     N(2)  ,; 
      PRECNIK    C(10) ,;
      BROJVODOM  C(15) ,;
      DATUGRAD   D(8) ,;
      BAZDAR1    D(8) ,;
      RADI       C(1) ,;
      NAPOMENA   C(50) ,;
      NAPOMENA2  C(50),;
      NAPOMENA3  C(50),;
      NAPOMENA4  C(50),;
      NAPOMENA5  C(50),;
      SPORAZUM   N(12,2),;   
      DATSPORAZ  D(8),;
      ZBIRNI     N(5),;
      BRRAC      C(25),;
      MODEL      C(20),;
      DATdok      D(8),;
      DATUM      D(8),;
      VALUTA     D(8),;
      DATOD      D(8),;
      DATDO      D(8),;
      MES        N(2),;
      UKPOT      N(9),;
      POC        N(9),;
      KRAJ       N(9),;
      MESTO      C(25),;
      MATICNI0   C(13),;
      MATICNI1   C(13),;
      PRETHVLAS  C(40),;
      OPIS       C(50),;
      BRNAL      C(6),;
      BROJ       C(7),;
      POPUST     C(1),;
      SALDO      N(12,2),;
      DATCIT     D(8),;
      utuziznos  n(12,2),;
      utuzDAT0   D(8),;
      utuzDAT1   D(8),;
      SIME_PREZ  C(30) ,;
      SULICA     C(25) ,;
      SMESTO     C(25),;
      PPOVODA    N(10,2),;
      PPOKANAL   N(10,2),;
      PPOSMECE   N(10,2),;
      PPOODrz    N(10,2),;
      PORVODA    N(10,2),;
      PORKANAL   N(10,2),;
      PORSMECE   N(10,2),;
      PORODrz    N(10,2),;
      OSN0       N(12,2),;
      OSN8       N(12,2),;
      OSN18      N(12,2),;
      POR8       N(12,2),;
      POR18      N(12,2),; 
      CVODA      N(12,2) ,;
      CKANAL     N(12,2) ,;
      CDOPV      N(12,3) ,;
      CDOPK      N(12,3) ,;
      CSMECE     N(12,2) ,;
      CODRZ      N(12,3),;
      ZAOKRUZ    N(12,2),;
      PREZ       C(20),;
      IME        C(20),;               
      POSTA      C(5),; 
      ULICA0     C(25) ,;
      ULBROJ0    C(7) ,;
      radikam    N(06),;    
      PAUSALDO   N(10,0) ,;      
      PAUSALCENA N(12,3) ,;            
      PAUSALDIN  N(12,3),;            
      PAUSALkan  N(12,3),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbUPL.DBF')
   CREATE TABLE jbUPL(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       ZATVAR    C(1),;
       VALUTA    D(8) ,;
       BRRAC     C(25),;  
       OPIS      C(20),;
       SIFRA     C(9) ,;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       SALDO     N(18,2),;
       DANAS     D(8) ,;
       VREME     C(8) ,; 
       OPER      C(2) ,;
       ARHIVA    C(1) ,; 
       STAN      C(3),;
       DANA      N(12,0),;
       NSPORAZ   N(18,2),;
       SPRAZLIKA N(18,2),;
       NAZ       C(35),;
       IME_PREZ  C(35),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('jbCENE.DBF')
   CREATE TABLE jbCENE(;
      CENOVNIK  N(2) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CVODA      N(12,2) ,;
      CKANAL     N(12,2) ,;
      CDOPV      N(12,3) ,;
      CDOPK      N(12,3) ,;
      CSMECE     N(12,2) ,;
      CODRZ      N(12,2),;
      PPOVODA    N(10,2),;
      PPOKANAL   N(10,2),;
      PPOSMECE   N(10,2),;
      PPOODrz    N(10,2),;
      PROCAKONT  N(10,3) ,;
      PAUSALDO   N(10,0) ,;      
      PAUSALCENA N(12,3) ,;            
      PAUSALKAN  N(12,3) ,;      
      DATOD      D(8) ,;
      DATDO      D(8),;
      MESEC      N(2),; 
      RABPROC    N(09,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbULICE.DBF')
   CREATE TABLE jbULICE(;
   SIFUL      C(3) ,;
   ULICA      C(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbOBRAC.DBF')
   CREATE TABLE jbOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('jbRACTXT.DBF')
   CREATE TABLE jbRACTXT(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbRACTX2.DBF')
   CREATE TABLE jbRACTX2(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbRACTXF.DBF')
   CREATE TABLE jbRACTXF(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbUNP.DBF')
   CREATE TABLE jbunp ;
               (POC       N(2)     ,;
                KRAJ      N(2)     ,;
                DATCIT    D(8)  , ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbGRUPA.DBF')
   CREATE TABLE jbGRUPA(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbGRUPAK.DBF')
   CREATE TABLE jbGRUPAK(;
      GRUPA     C(3),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbPRENOS.DBF')
   CREATE TABLE jbPRENOS(;
      PUTANJA   C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbPRV.DBF')
   CREATE TABLE jbPRV(;
      VRSTA     C(4),; 
      OPIS      C(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbPR.DBF')
   CREATE TABLE jbPR(;
      REDBROJ   N(6),;
      POZIV     N(6),;
      RADNAL    N(6),; 
      PIB       C(13),;
      IME_PREZ  C(30),;
      ADRESA    C(30),;
      TELEFON   C(20),;      
      VRSTA     C(4),; 
      DATNAL    D(8),;
      VREMENAL  C(10),;
      DATPOC    D(8),;
      VREMEPOC  C(10),;
      DATKRAJ   D(8),;
      VREMEKRAJ C(10),;
      DATOBAV   D(8),;
      VREMEOBAV C(10),;
      OPIS1     C(70),;
      OPIS2     C(70),;
      OPIS3     C(70),;
      OPIS4     C(70),;
      URADJENRN N(6),;  
      ODGOVOR   N(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbPRRAD.DBF')
   CREATE TABLE jbPRRAD(;
       RADNAL    N(6),; 
       BROJ      N(4),;
       IME_PREZ  C(30),;
       STARTBOD  N(10,3),;      
       DANA      N(6),;
       SATI      N(6),;
       MINUTI    N(6),;
       IZNOS     N(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbPRMAT.DBF')
   CREATE TABLE jbPRMAT(;
       RADNAL    N(6),; 
       RSIF      C(5),;
       NAZ       C(30),;
       KOLI      N(18,3),;      
       VELCENA   N(18,3),;
       VELVRED   N(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbPRVOZ.DBF')
   CREATE TABLE jbPRVOZ(;
       RADNAL    N(6),; 
       VSIFRA    C(4),;
       NAZ       C(30),;
       KOLI      N(18,3),;      
       VOZCENA   N(18,3),;
       VOZVRED   N(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbK.DBF')
   CREATE TABLE jbK(;
   BRNAL      C(6) ,;
   BRANAL     N(2) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbNALZ.DBF')
   CREATE TABLE jbNALZ(;
   BRNAL1     C(6) ,;
   BRNAL2     C(6) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbSPIS.DBF')
   CREATE TABLE jbSPIS(;
   GRUPA      C(2),;   
   SIFUL      C(3),; 
   BRNAL      C(6),;
   KSSIFRA    C(9),;  
   PVODA      C(1) ,;
   PKANAL     C(1) ,;
   PSMECE     C(1) ,;
   PODRZ      C(1) ,;
   SLEP       C(1) ,;
   PAUSAL     C(1) ,; 
   BAZDAR1    D(8) ,;
   RADI       C(1) ,;
   DAT0       D(8),;
   DAT1       D(8),;
   DIN0       N(18,2),;
   DIN1       N(18,2),; 
   ULICA      C(25) ,;   
   BEZUPLATE  C(1) ,;   
   ABECEDA    C(1) ,;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('jbIZV02.DBF')
   CREATE TABLE jbIZV02(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      VODA      N(12,0),;
      VODAPROC  N(09,3),;
      VODAPRE   N(12,0),;
      VODAPROCP N(09,3),;
      ODNOS     N(18,2),;
      VODOMERA  N(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbIZV03.DBF')
   CREATE TABLE jbIZV03(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      VODASTAN  N(12,0),;
      PROCSVODA N(09,3),; 
      KANSTAN   N(12,0),;
      PROCSKAN  N(09,3),; 
      POTVODA   N(12,0),;
      PROCVODA  N(09,3),; 
      POTKAN    N(12,0),;
      PROCKAN   N(09,3),; 
      ODNOS     N(12,3),;
      MESECNO   N(12,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbIZV05.DBF')
   CREATE TABLE jbIZV05(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      POTV      N(12,0),;
      PROCPOTV  N(09,3),; 
      POTK      N(12,0),;
      PROCPOTK  N(09,3),; 
      VODA      N(12,0),;
      PROCVODA  N(09,3),; 
      KANAL     N(12,0),;
      PROCKAN   N(09,3),; 
      DOPV      N(12,0),;
      SVEGA     N(12,0),;
      SVEPROC   N(09,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbracd.DBF')
   CREATE TABLE jbracd(;
      SIFRA      C(05) ,;
      PIB        C(13),;
      GRUPA      C(2),;
      IME_PREZ   C(30) ,;
      PVODA      C(1) ,;
      PKANAL     C(1) ,;
      PSMECE     C(1) ,;
      PODRZ      C(1) ,;
      SLEP       C(1) ,;
      POPVODA    N(7,3) ,;
      POPKAN     N(7,3) ,;
      POPSMECE   N(7,3) ,;
      POPODRZ    N(7,3) ,;
      POPSOC     N(4) ,;  
      PAUSAL     C(1) ,; 
      MESPAUSAL  N(9),;
      BRSTAN     N(10) ,;
      UKSTAN     N(10)  ,;
      POV        N(10,2) ,;
      POVNE      N(10,2)  ,;
      DOMAC      N(10) ,;
      CENOVNIK   N(10),;
      SIFUL      C(3),; 
      ULICA      C(25) ,;
      ULBROJ     C(7) ,;
      ST0        N(9) ,;
      ST1        N(9) ,;
      ST2        N(9) ,;
      ST3        N(9) ,;
      ST4        N(9) ,;
      ST5        N(9) ,;
      ST6        N(9) ,;
      ST7        N(9) ,;
      ST8        N(9) ,;
      ST9        N(9) ,;
      ST10       N(9) ,;
      ST11       N(9) ,;
      ST12       N(9) ,;
      POT        N(9) ,;
      POTS       N(9) ,;
      VODA       N(12,2) ,;
      KANAL      N(12,2) ,;
      DOPV       N(12,2) ,;
      DOPK       N(12,2) ,;
      SMECE      N(12,2) ,;
      ODRZ       N(12,2) ,;
      UKUPNO     N(12,2) ,;
      PROCPOR    N(09,2),;
      POREZ      N(12,2),;
      DUG        N(12,2) ,;
      UPLAC      N(12,2) ,;
      KAMATA     N(12,2) ,;
      SOC        N(12,2),;  
      SVEGA      N(12,2) ,;
      AKONT      N(12,2) ,;
      ODUG       N(12,2) ,;
      OPOT       N(12,2) ,;
      OSALDO     N(12,2) ,;
      RABAT      N(12,2) ,;
      SDUG       N(12,2) ,;
      OSTALO     N(12,2),;
      KS         C(1),; 
      KSSIFRA    C(9),; 
      VRSTA      C(1),; 
      DATPRI     D(8) ,;
      DATODJ     D(8) ,;
      UGOVOR     C(20) ,;
      UGOVORK    C(20) ,;
      MESECI     N(2)  ,; 
      PRECNIK    C(10) ,;
      BROJVODOM  C(15) ,;
      DATUGRAD   D(8) ,;
      BAZDAR1    D(8) ,;
      RADI       C(1) ,;
      NAPOMENA   C(50) ,;
      NAPOMENA2  C(50),;
      NAPOMENA3  C(50),;
      NAPOMENA4  C(50),;
      NAPOMENA5  C(50),;
      SPORAZUM   N(12,2),;   
      DATSPORAZ  D(8),;
      ZBIRNI     N(5),;
      BRRAC      C(25),;
      MODEL      C(20),;
      DATdok      D(8),;
      DATUM      D(8),;
      VALUTA     D(8),;
      DATOD      D(8),;
      DATDO      D(8),;
      MES        N(2),;
      UKPOT      N(9),;
      POC        N(9),;
      KRAJ       N(9),;
      MESTO      C(25),;
      MATICNI0   C(13),;
      MATICNI1   C(13),;
      PRETHVLAS  C(40),;
      OPIS       C(50),;
      BRNAL      C(6),;
      BROJ       C(7),;
      POPUST     C(1),;
      SALDO      N(12,2),;
      DATCIT     D(8),;
      utuziznos  n(12,2),;
      utuzDAT0   D(8),;
      utuzDAT1   D(8),;
      SIME_PREZ  C(30) ,;
      SULICA     C(25) ,;
      SMESTO     C(25),;
      PPOVODA    N(10,2),;
      PPOKANAL   N(10,2),;
      PPOSMECE   N(10,2),;
      PPOODrz    N(10,2),;
      PORVODA    N(10,2),;
      PORKANAL   N(10,2),;
      PORSMECE   N(10,2),;
      PORODrz    N(10,2),;
      OSN0       N(12,2),;
      OSN8       N(12,2),;
      OSN18      N(12,2),;
      POR8       N(12,2),;
      POR18      N(12,2),; 
      CVODA      N(12,2) ,;
      CKANAL     N(12,2) ,;
      CDOPV      N(12,3) ,;
      CDOPK      N(12,3) ,;
      CSMECE     N(12,2) ,;
      CODRZ      N(12,3),;
      ZAOKRUZ    N(12,2),;
      PREZ       C(20),;
      IME        C(20),;               
      POSTA      C(5),; 
      ULICA0     C(25) ,;
      ULBROJ0    C(7) ,;
      radikam    N(06),;    
      PAUSALDO   N(10,0) ,;      
      PAUSALCENA N(12,3) ,;            
      PAUSALDIN  N(12,3),;            
      PAUSALKAN  N(12,3),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('jbRACU.DBF')
   CREATE TABLE jbRACU(;
       D1           D(8) ,;
       DIN1         N(10,2) ,;
       D2           D(8) ,;
       DIN2         N(10,2) ,;
       D3           D(8) ,;
       DIN3         N(10,2) ,;
       D4           D(8) ,;
       DIN4         N(10,2) ,;
       D5           D(8) ,;
       DIN5         N(10,2) ,;
       D6           D(8) ,;
       DIN6         N(10,2) ,;
       D7           D(8) ,;
       DIN7         N(10,2) ,;
       D8           D(8) ,;
       DIN8         N(10,2) ,;
       D9           D(8) ,;
       DIN9         N(10,2) ,;
       D10          D(8) ,;
       DIN10        N(10,2) ,;
       D11          D(8) ,;
       DIN11        N(10,2) ,;
       D12          D(8) ,;
       DIN12        N(10,2) ,;
       D13          D(8) ,;
       DIN13        N(10,2) ,;
       D14          D(8) ,;
       DIN14        N(10,2) ,;
       D15          D(8) ,;
       DIN15        N(10,2) ,;
       D16          D(8) ,;
       DIN16        N(10,2) ,;
       D17          D(8) ,;
       DIN17        N(10,2) ,;
       D18          D(8) ,;
       DIN18        N(10,2) ,;
       D19          D(8) ,;
       DIN19        N(10,2) ,;
       D20          D(8) ,;
       DIN20        N(10,2) ,;
       D21          D(8) ,;
       DIN21        N(10,2) ,;
       D22          D(8) ,;
       DIN22        N(10,2) ,;
       D23          D(8) ,;
       DIN23        N(10,2) ,;
       D24          D(8) ,;
       DIN24        N(10,2) ,;
       PIB          C(13) ,;
       UPLACENO     N(10,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbOBRAC.DBF')
   CREATE TABLE jbOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('MASINE.DBF')
   CREATE TABLE MASINE ;
               (MASSIF    C(4)     ,;
                REGBROJ   C(12)    ,;
                NAZIV     C(30)    ,;              
                NOSIVOST  N(12,2),; 
                MASCENA   N(12,2),;  
                GOD       C(4),;
                MTR       N(5),;    
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('AN00.DBF')
   CREATE TABLE AN00 ;
               (SIFRA    C(05)      ,;
                PREZ     C(20)      ,;
                IME      C(20)     ,;                                
                OTAC     C(20)     ,;                                
                POSTA0   C(5)     ,; 
                MESTO0   C(25)     ,;
                SIFUL0   C(3)     ,;
                ULICA0   C(25)     ,;
                ULBROJ0  C(10)     ,;
                STAN0    C(05),;
                PIB      C(09),;
                MATICNI0 C(13),;
                MATICNI1 C(13),;
                IME_PREZ C(30) ,;
                SIFUL    C(3),; 
                ULICA    C(25) ,;
                ULBROJ   C(7),;
                MESTO    C(25),;
                S_P      C(2),;
                NFIRMA    N(12,0),; 
                NREDNI    N(18,0),;      
                SPREZ     C(20)      ,;
                SIME      C(20)     ,;                                
                SOTAC     C(20)     ,;                                
                SPOSTA0   C(5)     ,; 
                SMESTO0   C(25)     ,;
                SSIFUL0   C(3)     ,;
                SULICA0   C(25)     ,;
                SULBROJ0  C(10)     ,;
                sIME_PREZ C(30) ,;
                sULICA    C(25) ,;
                sMESTO    C(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbRAC.DBF')
   CREATE TABLE jbRAC(;
      PIB       C(13),;
      GRUPA     C(2),;
      SIFUL     C(3),; 
      BRNAL     C(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbKART.DBF')
   CREATE TABLE jbKART(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       SALDO     N(18,2),;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       VALUTA    D(8) ,;
       BRRAC     C(25),;  
       OPIS      C(20),;
       IME_PREZ  C(30),;
       SIFUL     C(3) ,; 
       ULICA     C(25),;
       ULBROJ    C(7) ,;
       ZATVAR    C(1), ; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


*-----------------VODOVOD PARACIN-----------------------------
*-----------------GRAD----------------------------------------
IF !FILE('jbSUD0.DBF')
   CREATE TABLE jbSUD0(;
      REDBR     C(6),;        
      PIB       C(13),;
      IME_PREZ  C(30) ,;
      SVEGA     N(12,2), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbSUD.DBF')
   CREATE TABLE jbSUD(;
      REDBR     C(6),;             
      PIB       C(13),;
      IME_PREZ  C(30) ,;
      SVEGA     N(12,2) ,;
      BRRAC     C(25),;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('jbEKS.DBF')
   CREATE TABLE jbEKS(;
      TDATCIT   C(10),;   
      DATCIT    D(8),; 
      POC1      C(10),;             
      PIB       C(9),;
      POC2      C(55),;
      TPOT      C(15),;
      NAPOMENA  C(60),;
      POT       N(15,0),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbEPUT.DBF')
   CREATE TABLE jbEPUT(;
      PUTANJA   C(70),; 
      STANJE    C(2),; 
      STPOC     C(2),; 
      STkraj    C(2),; 
      STunos    C(2),; 
      stmesdod  C(2),; 
      brmes     N(2),; 
      brmeso    N(2),; 
      grupa     C(2),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('jbUVOZ.DBF')
   CREATE TABLE jbUVOZ(;
      REDBR     C(6),;             
      PIB       C(13),;
      IME_PREZ  C(30) ,;
      SVEGA     N(12,2) ,;
      BRRAC     C(25),;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('jbSPORAZ.DBF')
   CREATE TABLE jbSPORAZ(;
      SIFRA      C(05) ,;
      PIB        C(13),;
      GRUPA      C(2),;
      IME_PREZ   C(30) ,;
      BRRAC      C(25),;
      DATUMS     D(8),;
      DATUM      D(8),;
      IZNOS      N(12,2),;
      BROJRATA   N(09,0),;
      DANA       N(09,0),;
      MESIZNOS   N(12,2),;
      UPLATA     N(12,2),;
      ZATVORENO  C(1),;
      ARHIVA     C(1),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

*--------------usluga paracin------------------
IF !FILE('JP.DBF')
   CREATE TABLE JP(;
      SIFRA     C(5),;
      PIB       C(13),;
      GRUPA     C(2),;
      IME_PREZ  C(30) ,;
      SIFUL     C(3),; 
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      PSMECE    C(1) ,;
      POV       N(12),;
      POVNE     N(12),;
      ZBIRNI    N(5),;
      POPSOC    N(4) ,;  
      CENOVNIK  N(10),;
      SMECE     N(12,2) ,;
      SMECEN    N(12,2),;
      KANTADIN  N(12,2),;
      CLANOVA   N(12,0),;
      BRSTAN    N(12,0),;      
      SERKANTA1 C(20),;      
      SERKANTA2 C(20),;      
      SERKANTA3 C(20),;                  
      SERKANTA4 C(20),;      
      EKODINAR  N(12,2) ,;
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      RABAT     N(12,2) ,;
      SOC       N(12,2),;  
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      OSTALO    N(12,2) ,;      
      VSIF      C(9),; 
      VRSTA     C(1),; 
      DATPRI    D(8) ,;
      DATODJ    D(8) ,;
      MESECI    N(2)  ,; 
      NAPOMENA  C(50) ,;
      NAPOMENA2 C(50),;
      SPORAZUM  N(12,2),;   
      DATSPORAZ D(8),;
      broj      c(10),; 
      IDBROJ    C(10),;
      STSMECE   C(1),; 
      BRNAL     C(6) ,;      
      BRRAC     C(20) ,;      
      POZIVO    C(20) ,;      
      DATUM     D(8) ,;
      VALUTA    D(8) ,; 
      PIB2      C(5),;     
      MATICNIBR C(13),;     
      POSTA     C(5),;  
      MESTO     C(25),;  
      POREZ     N(14,2),;
      MODEL     C(20),;
      KANTABROJ N(4),;
      SMECEC1   N(12,2),;
      SMECEC2   N(12,2),;
      Pposmece  N(14,2),;
      Pposmecen N(14,2),;
      Porsmece  N(14,2),;
      Porsmecen N(14,2),;
      osn0      N(14,2),;
      osn8      N(14,2),;
      osn18     N(14,2),;
      por8      N(14,2),;
      por18     N(14,2),;
      saldo     N(14,2),;
      zaokruz   N(14,2),;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPUPL.DBF')
   CREATE TABLE JPUPL(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       BRRAC     C(20) ,;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       VALUTA    D(8) ,;
       ZATVAR    C(1),;
       OPIS      C(20),;
       SIFRA     C(9) ,;
       SALDO     N(18,2),;
       dana      n(12,0),;       
       DANAS     D(8) ,;
       VREME     C(8) ,; 
       NAZ       C(40) ,;        
       OPER      C(2) ,;
       ARHIVA    C(1),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPCENE.DBF')
   CREATE TABLE JPCENE(;
      CENOVNIK  N(2) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CSMECE    N(10,3) ,;
      CSMECEN   N(10,3) ,;   
      CEKO      N(10,2),;   
      CKANTA1   N(10,3) ,;
      CKANTA2   N(10,3) ,;      
      CKANTA3   N(10,3) ,;      
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      DATUOD    D(8) ,;
      DATUDO    D(8),;      
      MESEC     N(2),; 
      CS1       N(12,5),;
      CS2       N(12,5),;
      CS3       N(12,5),;
      CS4       N(12,5),;
      CS5       N(12,5),;
      CS6       N(12,5),;
      CS7       N(12,5),;
      CS8       N(12,5),;
      CS9       N(12,5),;
      CS10      N(12,5),;
      CS11      N(12,5),;
      CS12      N(12,5),;
      CS13      N(12,5),;
      CS14      N(12,5),;
      CS15      N(12,5),;
      CS16      N(12,5),;
      CS17      N(12,5),;
      CS18      N(12,5),;
      CS19      N(12,5),;
      CS20      N(12,5),;
      CS21      N(12,5),;
      CS22      N(12,5),;
      CS23      N(12,5),;
      CS24      N(12,5),;
      CS25      N(12,5),;
      CS26      N(12,5),;
      CS27      N(12,5),;
      CSN21     N(12,5),;      
      CSN22     N(12,5),;
      CSN23     N(12,5),;
      CSN24     N(12,5),;
      CSN25     N(12,5),;
      CSN26     N(12,5),;
      CSN27     N(12,5),;
      NCS1      C(25),;
      NCS2      C(25),;
      NCS3      C(25),;
      NCS4      C(25),;
      NCS5      C(25),;
      NCS6      C(25),;
      NCS7      C(25),;
      NCS8      C(25),;
      NCS9      C(25),;
      NCS10     C(25),;
      NCS11     C(25),;
      NCS12     C(25),;
      NCS13     C(25),;
      NCS14     C(25),;
      NCS15     C(25),;
      NCS16     C(25),;
      NCS17     C(25),;
      NCS18     C(25),;
      NCS19     C(25),;
      NCS20     C(25),;
      NCS21     C(25),;
      NCS22     C(25),;
      NCS23     C(25),;
      NCS24     C(25),;
      NCS25     C(25),;
      NCS26     C(25),;
      NCS27     C(25),;
      PROCPOR   N(10,2),;   
      Pposmece  N(14,2),;
      Pposmecen N(14,2),;
      Cclan1    N(10,3) ,;
      Cclan2    N(10,3),;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPULICE.DBF')
   CREATE TABLE JPULICE(;
   SIFUL      C(3) ,;
   ULICA      C(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPOBRAC.DBF')
   CREATE TABLE JPOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('JPRACTXT.DBF')
   CREATE TABLE JPRACTXT(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPRACTXF.DBF')
   CREATE TABLE JPRACTXF(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPUNP.DBF')
   CREATE TABLE JPunp ;
               (POC       N(2)     ,;
                KRAJ      N(2)    , ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPGRUPAK.DBF')
   CREATE TABLE JPGRUPAK(;
      GRUPA     C(3),;
      NAZIV     C(20),;
      DUG       N(12,2),;
      POT       N(12,2),;
      BRNAL     C(6),;
      DATUM     D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPGRUPA.DBF')
   CREATE TABLE JPGRUPA(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPFK.DBF')
   CREATE TABLE JPFK(;
   BRNAL      C(6) ,;
   BRANAL     N(2) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPRACD.DBF')
   CREATE TABLE JPRACD(;
      PIB       C(13),;
      GRUPA     C(2),;
      IME_PREZ  C(30) ,;
      SIFUL     C(3),; 
      PSMECE    C(1) ,;
      Pov       N(12),;
      PovNE     N(12),;      
      POPSOC    N(4) ,;  
      CENOVNIK  N(10),;
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      SMECE     N(12,2) ,;
      SMECEN    N(12,2) ,;
      SMECEc1   N(12,2) ,;
      SMECEc2   N(12,2) ,;
      KANTADIN  N(12,2) ,;
      EKODINAR  N(12,2) ,;
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SOC       N(12,2),;  
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      RABAT     N(12,2) ,;
      OSTALO    N(12,2),;
      SIFRA     C(9) ,;
      VSIFRA    C(9),; 
      VRSTA     C(1),; 
      PSTANJE   N(12) ,;
      ZSTANJE   N(12) ,;
      BRRAC     C(20) ,;      
      POZIVO    C(20) ,;      
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CSMECE    N(10,3) ,;
      CKANTA1   N(10,3) ,;
      CKANTA2   N(10,3) ,;      
      CKANTA3   N(10,3) ,;            
      Cclan1    N(10,3) ,;            
      Cclan2    N(10,3) ,;                  
      CSMECEN   N(10,3) ,;
      CEKO      N(10,3) ,;
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      MESEC     N(2),; 
      MESECI    N(2),;       
      SPORAZUM  N(12,2),;
      CS        N(12,4),;
      NCS       C(30),;      
      ANAZIV    C(30),;              
      AMESTO    C(25),;                
      AULICA    C(25),;     
      IDBROJ    C(10),;
      PIB2      C(5),;
      PROCPOR   N(10,2),;   
      POREZ     N(14,2),;
      model     C(20),;   
      KANTABROJ N(12,0) ,;         
      CLANOVA   N(12,0),;
      Pposmece  N(14,2),;
      Pposmecen N(14,2),;
      Porsmece  N(14,2),;
      Porsmecen N(14,2),;
      osn0      N(14,2),;
      osn8      N(14,2),;
      osn18     N(14,2),;
      por8      N(14,2),;
      por18     N(14,2),;
      saldo     N(14,2),;      
      zaokruz   N(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('JPRACU.DBF')
   CREATE TABLE JPRACU(;
       D1           D(8) ,;
       DIN1         N(10,2) ,;
       D2           D(8) ,;
       DIN2         N(10,2) ,;
       D3           D(8) ,;
       DIN3         N(10,2) ,;
       D4           D(8) ,;
       DIN4         N(10,2) ,;
       D5           D(8) ,;
       DIN5         N(10,2) ,;
       D6           D(8) ,;
       DIN6         N(10,2) ,;
       D7           D(8) ,;
       DIN7         N(10,2) ,;
       D8           D(8) ,;
       DIN8         N(10,2) ,;
       D9           D(8) ,;
       DIN9         N(10,2) ,;
       D10          D(8) ,;
       DIN10        N(10,2) ,;
       D11          D(8) ,;
       DIN11        N(10,2) ,;
       D12          D(8) ,;
       DIN12        N(10,2) ,;
       D13          D(8) ,;
       DIN13        N(10,2) ,;
       D14          D(8) ,;
       DIN14        N(10,2) ,;
       D15          D(8) ,;
       DIN15        N(10,2) ,;
       D16          D(8) ,;
       DIN16        N(10,2) ,;
       D17          D(8) ,;
       DIN17        N(10,2) ,;
       D18          D(8) ,;
       DIN18        N(10,2) ,;
       D19          D(8) ,;
       DIN19        N(10,2) ,;
       D20          D(8) ,;
       DIN20        N(10,2) ,;
       D21          D(8) ,;
       DIN21        N(10,2) ,;
       D22          D(8) ,;
       DIN22        N(10,2) ,;
       D23          D(8) ,;
       DIN23        N(10,2) ,;
       D24          D(8) ,;
       DIN24        N(10,2) ,;
       D25          D(8) ,;
       DIN25        N(10,2) ,;
       PIB          C(13) ,;
       UPLACENO     N(10,2),;
       UPLACPER     N(10,2),;
       POREZ        N(10,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('JPRACU.DBF')
   CREATE TABLE JPRACU(;
       PIB       C(13),;
       DATUM     D(8) ,;
       POT       N(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
*-----------------centar za socijalni rac-----------------------------
if !file('soc.dbf')
   create table soc(;
      sifra     c(05),;
      ime_prez  c(30),;
      matbroj   c(13),;
      datrodj   d(8),;
      posta     c(5),;
      mesto     c(25),;
      siful     c(3),; 
      ulica     c(25),;
      ulbroj    c(7),;
      telefon   c(12),;
      mobtel    c(12),;      
      grupa     c(3),;
      obrazov   c(20),;
      zanim     c(35),;
      zaposlenje c(25),;        
      kucasop   c(1),;      
      kucapods  c(1),;            
      kucarodit c(1),;            
      kucaost   c(1),;            
      zapdrz    c(1),;
      zappriv   c(1),;      
      zappenz   c(1),;            
      zappolj   c(1),;            
      zapost    c(1),; 
      zapdrzi   n(12,2),;
      zapprivi  n(12,2),;      
      zappenzi  n(12,2),;            
      zappolji  n(12,2),;            
      zaposti   n(12,2),; 
      kordec    c(1),;
      kornega   c(1),;
      kornega2  c(1),;
      kornsp    c(1),;      
      korost    c(1),;            
      samohotac c(1),;      
      samohmama c(1),;            
      detepos   c(1),;            
      invalid   c(1),;
      imovauto  c(1),;
      imovkam   c(1),;
      imovtrak  c(1),;
      imovstan  n(12,0),;
      imovpom   n(12,0),;      
      imovpoljo n(12,0),;
      imovpoljn n(12,0),;      
      merpoljo  c(10),;
      merpoljon c(10),;      
      napomena  c(70),;
      napomena2 c(70),;
      napomena3 c(70),;  
      trebasoc   c(1),;        
      trebasanac c(1),;              
      netrebasoc c(1),;              
      psifra     c(5),;
      pime_prez  c(30),;
      pmatbroj   c(13),;
      pdatrodj   d(8),;      
      psrodstvo  c(15),;      
      pobrazov   c(20),;
      pzanim     c(35),;
      pzaposlenj c(25),;        
      pzapdrz    c(1),;
      pzappriv   c(1),;      
      pzappenz   c(1),;            
      pzappolj   c(1),;            
      pzapost    c(1),; 
      pzapdrzi   n(12,2),;
      pzapprivi  n(12,2),;      
      pzappenzi  n(12,2),;            
      pzappolji  n(12,2),;            
      pzaposti   n(12,2),; 
      pkordec    c(1),;
      pkornega   c(1),;
      pkornega2  c(1),;
      pkornsp    c(1),;      
      pkorost    c(1),;      
      pdetepos   c(1),;            
      pinvalid  c(1),;
      redni      n(18),;
      vrsta      N(9),;    
      kordeci    n(12,2),;
      kornegai   n(12,2),;
      kornega2i  n(12,2),;
      kornspi    n(12,2),;      
      korosti    n(12,2),;            
      pkordeci    n(12,2),;
      pkornegai   n(12,2),;
      pkornega2i  n(12,2),;
      pkornspi    n(12,2),;      
      pkorosti    n(12,2),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('soculice.dbf')
   create table soculice(;
   siful      c(3) ,;
   ulica      c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('soci.dbf')
   create table soci(;
      sifra     c(05),;
      psifra     c(5),;
      pime_prez  c(30),;
      pmatbroj   c(13),;
      pdatrodj   d(8),;      
      psrodstvo  c(15),;      
      pobrazov   c(20),;
      pzanim     c(35),;
      pzaposlenj c(25),; 
      pzapdrz    c(1),;
      pzappriv   c(1),;      
      pzappenz   c(1),;            
      pzappolj   c(1),;            
      pzapost    c(1),; 
      pzapdrzi   n(12,2),;
      pzapprivi  n(12,2),;      
      pzappenzi  n(12,2),;            
      pzappolji  n(12,2),;            
      pzaposti   n(12,2),; 
      pkordec    c(1),;
      pkornega   c(1),;
      pkornega2  c(1),;
      pkornsp    c(1),;      
      pkorost    c(1),;            
      pdetepos   c(1),;            
      pinvalid  c(1),;
      ime_prez  c(30),;
      matbroj   c(13),;
      grupa     c(3),;
      redni      n(18),;
      vrsta      N(9),;      
      pkordeci    n(12,2),;
      pkornegai   n(12,2),;
      pkornega2i  n(12,2),;
      pkornspi    n(12,2),;      
      pkorosti    n(12,2),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

*------------TEHNICKI-------------------
if !file('otg.dbf')
   create table otg( ;
        sifra       c(6), ;
        datum       d, ;
        oznaka      c(20), ;
        razlog      c(20), ;
        tnaziv      c(30), ;
        vrspregl    c(2), ;
        godp        c(4), ;
        sasija      c(20), ;
        brmotor     c(30), ;
        osnboja     c(3), ;
        kilomet     c(7), ;
        ispravno    c(1), ;
        nap1        c(90), ;
        nap2        c(90), ;
        nap3        c(90), ;
        nap4        c(90), ;
        matbroj     c(13), ;
        prezime     c(50), ;
        ime         c(15), ;
        ocevo       c(15), ;
        opstina     c(4), ;
        mesto       c(20), ;
        posta       c(5), ;
        mest2       c(20), ;
        ulica       c(20), ;
        kucbr       c(5), ;
        sprat       c(2), ;
        stan        c(3), ;
        marnaziv    c(20), ;
        znaziv      c(20), ;
        nrazlog     c(30), ;
        ngorivo     c(30), ;
        snaga       c(5), ;
        zapr        c(5), ;
        doznos      c(20), ;
        vrstav      c(30), ;
        odnos       c(20), ;
        ndoznos     c(20), ;
        kontrola    c(25), ;
        sifraz      c(1),;
        nispravno   c(30),;
        BOnaziv     c(30) ,;
        OPSnaziv    c(30) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('otnos.dbf')
   create table otnos( ;
        nsifra      c(4), ;
        nos0        c(5), ;
        nos1        c(5), ;
        iznos       n(12,2),;
        tsnaga      c(4) ,;        
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otopst.dbf')
   create table otopst( ;
        opstina     c(4), ;
        naziv       c(30), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otosnbo.dbf')
   create table otosnbo( ;
        osnboja     c(3), ;
        naziv       c(30), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otposta.dbf')
   create table otposta( ;
        posta       c(5), ;
        mesto2      c(30),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('ottip.dbf')
   create table ottip( ;
        tnaziv      c(30), ;
        marnaziv    c(20), ;
        zemlja      c(3), ;
        znaziv      c(20), ;
        vrstav      c(3), ;
        vrnaziv     c(20), ;
        snaga       c(5), ;
        zapr        c(5), ;
        tezina      c(5), ;
        doznos      c(5), ;
        tehnos      c(5), ;
        semest      c(2), ;
        stmest      c(3), ;
        osov        c(1), ;
        ukosov      c(1), ;
        gorivo      c(1), ;
        gornaz      c(20), ;
        vrata       c(1), ;
        tockovi     c(2), ;
        decjus      c(14), ;
        oblikkar    c(20) ,;
        POGosov     c(1) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otvirm.dbf')
   create table otvirm( ;
        vsifra      c(4), ;
        fsifra      c(4), ;
        sifra       c(6), ;
        svrha       c(77), ;
        nazrac      c(70), ;
        zirorac     c(22), ;
        modelz      c(2), ;
        pozivz      c(20), ;
        sif1        c(3), ;
        modelo      c(2), ;
        pozivo      c(20), ;
        datdok      d, ;
        dug         n(18,2), ;
        procprov    n(10,2), ;
        provizija   n(12,2), ;
        stampa      c(1), ;
        prezime     c(20), ;
        ime         c(15), ;
        mesto       c(20), ;
        ulica       c(20), ;
        kucbr       c(5), ;
        oznaka      c(20), ;
        zsifra      c(4), ;
        grupa       c(1), ;
        operater    c(3), ;
        numera      c(6) ,;
        ziroracz    c(22),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otvirm0.dbf')
   create table otvirm0( ;
        vsifra      c(4), ;
        fsifra      c(4), ;
        svrha       c(77), ;
        nazrac      c(70), ;
        zirorac     c(22), ;
        modelz      c(2), ;
        pozivz      c(20), ;
        sif1        c(3), ;
        modelo      c(2), ;
        pozivo      c(20), ;
        datdok      d, ;
        dug         n(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otvrsta.dbf')
   create table otvrsta( ;
        vrstav      c(2), ;
        naziv       c(30) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otzapr.dbf')
   create table otzapr( ;
        zsifra      c(4), ;
        grad        c(25), ;
        zapr0       c(5), ;
        zapr1       c(5), ;
        iznos       n(12,2), ;
        nazz        c(25), ;
        zirorac     c(25), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otzemlj.dbf')
   create table otzemlj( ;
        zemlja      c(3), ;
        znaziv      c(30), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otrazlog.dbf')
   create table otrazlog( ;
        sifraz   c(1), ;
        razlog      c(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otgorivo.dbf')
   create table otgorivo( ;
        gorivo      c(1), ;
        gornaz      c(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otvrpreg.dbf')
   create table otvrpreg( ;
        vrspregl    c(2), ;
        nvrspregl   c(30),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otisprav.dbf')
   create table otisprav( ;
        ispravno    c(1), ;
        nispravno   c(30),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otgrad.dbf')
   create table otgrad( ;
        zsifra      c(4), ;
        grad        c(25),;
        pozivo      c(20),;        
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otvirS.dbf')
   create table otvirS( ;
        DAT0        D(8), ;
        DAT1        D(8), ;
        sifra       c(6), ;
        grupa       c(1), ;
        ZIRODA      C(22),;
        ZIRONE      C(22),;         
        POCBR       N(12,0),;         
        ZADBR       N(12,0),;   
        MSIFRA      C(4),;
        MVSIFRA     C(4),;             
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('ot0s.dbf')
   create table ot0s( ;
        godina      n(4), ;
        datum       d, ;
        oznaka      c(20), ;
        tnaziv      c(20), ;
        sasija      c(20), ;
        brmotor     c(20), ;
        matbroj     c(13), ;
        prezime     c(20), ;
        ime         c(15), ;
        ocevo       c(15), ;
        zanim       c(6), ;
        opstina     c(4), ;
        mesto       c(20), ;
        ulica       c(20), ;
        kucbr       c(5), ;
        sprat       c(2), ;
        stan        c(3), ;
        marnaziv    c(20), ;
        god6        n(4), ;
        god7        n(4), ;
        god8        n(4), ;
        god9        n(4), ;
        god0        n(4), ;
        god1        n(4), ;        
        god2        n(4), ;        
        god3        n(4), ;                
        god4        n(4), ;                        
        god5        n(4), ;                        
        redni       n(6), ;
        dat6        d, ;
        dat7        d, ;
        dat8        d, ;
        dat9        d, ;
        dat0        d, ;
        dat1        d, ;
        dat2        d, ;
        dat3        d, ;        
        dat4        d, ;                
        dat5        d, ;                
        ddat        c(5), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('otgtxt.dbf')
   create table otgtxt( ;
        ppolje1     c(240), ;
        ppolje2     c(240), ;        
        preneto     c(1),;
   	    idbr        n(11);
      )
   use
endif

*---------------BATOCINA-------------

if !file('vb.dbf')
   create table vb(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1) ,;
      ptoplana  c(1) ,;
      pgroblje  c(1) ,;
      pov       n(12,2) ,;
      povne     n(12,2) ,;
      povtop    n(12,2) ,;
      slep      c(1) ,;
      popproc   n(7,3) ,;
      popkan    n(7,3) ,;
      popsoc    n(4) ,;  
      pausal    c(1) ,; 
      mespausal n(9),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;
      toplana   n(12,2) ,;
      groblje   n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      procpor   n(09,2),;
      porez     n(12,2),;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(9) ,;
      vsifra    c(9),; 
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      datpri    d(8) ,;
      datodj    d(8) ,;
      ugovor    c(20) ,;
      ssifra    c(6) ,;
      meseci    n(2)  ,; 
      precnik   c(10) ,;
      brojvodom c(15) ,;
      datugrad  d(8) ,;
      bazdar1   d(8) ,;
      radi      c(1) ,;
      prijavak  c(20) ,;
      prijavak2 c(20) ,;
      prijavak3 c(20) ,;
      napomena  c(50) ,;
      napomena2 c(50),;
      sporazum  n(12,2),;   
      datsporaz d(8),;
      zbirni    n(5),;
      idbroj    c(10),; 
      broj      c(7),;
      stvoda    c(1),;
      stkan     c(1),; 
      stsmece   c(1),; 
      sttoplana c(1),; 
      stan      c(3),;
      vsif      c(6),; 
      pib2      c(5),;
      brrac     c(25),;
      model     c(20),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      maticnibr c(13),;
      rasturs   n(9) ,;
      rasturj   n(9) ,;
      korekcv   n(12,2),;
      posta     c(5)     ,; 
      mesto     c(25)     ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbupl.dbf')
   create table vbupl(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       brnal     c(6) ,;
       grupa     c(3) ,;
       zatvar    c(1),;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       saldo     n(18,2),;
       sifra     c(9) ,;
       danas     d(8) ,;
       vreme     c(8) ,; 
       oper      c(2) ,;
       arhiva    c(1) ,; 
       stan      c(3),;
       nsporaz   n(18,2),;
       sprazlika n(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbcene.dbf')
   create table vbcene(;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      csmece    n(10,3) ,;
      ctoplana  n(10,3) ,;
      cgroblje  n(10,3) ,;
      cs1       n(10,3) ,;
      cs2       n(10,3) ,;
      cs3       n(10,3) ,;
      cs4       n(10,3) ,;
      cs5       n(10,3) ,;
      cs6       n(10,3) ,;
      cs7       n(10,3) ,;
      cs8       n(10,3) ,;
      cs9       n(10,3) ,;
      cs10      n(10,3) ,;
      ncs1      c(25)   ,;
      ncs2      c(25)   ,;
      ncs3      c(25)   ,;
      ncs4      c(25)   ,;
      ncs5      c(25)   ,;
      ncs6      c(25)   ,;
      ncs7      c(25)   ,;
      ncs8      c(25)   ,;
      ncs9      c(25)   ,;
      ncs10     c(25)   ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      procpor   n(09,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbulice.dbf')
   create table vbulice(;
   siful      c(3) ,;
   ulica      c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbobrac.dbf')
   create table vbobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vbunp.dbf')
   create table vbunp ;
               (poc       n(2)     ,;
                kraj      n(2)     ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbgrupa.dbf')
   create table vbgrupa(;
      grupa     c(2),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbgrupak.dbf')
   create table vbgrupak(;
      grupa     c(3),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbprenos.dbf')
   create table vbprenos(;
      putanja   c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbprv.dbf')
   create table vbprv(;
      vrsta     c(4),; 
      opis      c(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbpr.dbf')
   create table vbpr(;
      redbroj   n(6),;
      poziv     n(6),;
      radnal    n(6),; 
      pib       c(13),;
      ime_prez  c(30),;
      adresa    c(30),;
      telefon   c(20),;      
      vrsta     c(4),; 
      datnal    d(8),;
      vremenal  c(10),;
      datpoc    d(8),;
      vremepoc  c(10),;
      datkraj   d(8),;
      vremekraj c(10),;
      datobav   d(8),;
      vremeobav c(10),;
      opis1     c(70),;
      opis2     c(70),;
      opis3     c(70),;
      opis4     c(70),;
      uradjenrn n(6),;  
      odgovor   n(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbk.dbf')
   create table vbk(;
   brnal      c(6) ,;
   branal     n(2) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbnalz.dbf')
   create table vbnalz(;
   brnal1     c(6) ,;
   brnal2     c(6) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vbspis.dbf')
   create table vbspis(;
   grupa      c(2),;   
   siful      c(3),; 
   kssifra    c(9),;  
   pvoda      c(1) ,;
   pkanal     c(1) ,;
   slep       c(1) ,;
   pausal     c(1) ,; 
   bazdar1    d(8) ,;
   radi       c(1) ,;
   dat0       d(8),;
   dat1       d(8),;
   din0       n(18,2),;
   din1       n(18,2),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vbizv02.dbf')
   create table vbizv02(;
      grupa     c(2),;
      naziv     c(20),;
      voda      n(12,0),;
      vodaproc  n(09,3),;
      vodapre   n(12,0),;
      vodaprocp n(09,3),;
      odnos     n(18,2),;
      vodomera  n(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vbizv03.dbf')
   create table vbizv03(;
      grupa     c(2),;
      naziv     c(20),;
      vodastan  n(12,0),;
      procsvoda n(09,3),; 
      kanstan   n(12,0),;
      procskan  n(09,3),; 
      potvoda   n(12,0),;
      procvoda  n(09,3),; 
      potkan    n(12,0),;
      prockan   n(09,3),; 
      odnos     n(12,3),;
      mesecno   n(12,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vbizv05.dbf')
   create table vbizv05(;
      grupa     c(2),;
      naziv     c(20),;
      potv      n(12,0),;
      procpotv  n(09,3),; 
      potk      n(12,0),;
      procpotk  n(09,3),; 
      voda      n(12,0),;
      procvoda  n(09,3),; 
      kan       n(12,0),;
      prockan   n(09,3),; 
      dopv      n(12,0),;
      svega     n(12,0),;
      sveproc   n(09,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbracd.dbf')
   create table vbracd(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1) ,;
      ptoplana  c(1) ,;
      pgroblje  c(1) ,;
      pov       n(12,2) ,;
      povne     n(12,2) ,;
      povtop    n(12,2) ,;
      cs1       n(10,3) ,;
      cs2       n(10,3) ,;
      cs3       n(10,3) ,;
      cs4       n(10,3) ,;
      cs5       n(10,3) ,;
      cs6       n(10,3) ,;
      cs7       n(10,3) ,;
      cs8       n(10,3) ,;
      cs9       n(10,3) ,;
      cs10      n(10,3) ,;
      ncs1      c(25)   ,;
      ncs2      c(25)   ,;
      ncs3      c(25)   ,;
      ncs4      c(25)   ,;
      ncs5      c(25)   ,;
      ncs6      c(25)   ,;
      ncs7      c(25)   ,;
      ncs8      c(25)   ,;
      ncs9      c(25)   ,;
      ncs10     c(25)   ,;
      slep      c(1) ,;
      popproc   n(4) ,;
      popkan    n(4) ,;
      popsoc    n(4) ,;  
      pausal    c(1) ,; 
      mespausal n(9),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      ukpot     n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      smece     n(12,2) ,;
      toplana   n(12,2) ,;
      groblje   n(12,2) ,;
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(9) ,;
      vsifra    c(9),; 
      vrsta     c(1),; 
      pstanje   n(12) ,;
      zstanje   n(12) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      csmece    n(10,3) ,;
      ctoplana  n(10,3) ,;
      cgroblje  n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      sporazum  n(12,2),;       
      broj      c(7),;
      asifra    c(5),;
      anaziv    c(40),;
      amesto    c(25),;
      aulica    c(30),;
      brrac     c(25),;  
      model     c(20),;  
      pib2      c(5),;         
      procpor   n(09,2),;
      porez     n(12,2),;
      poc       n(9),;
      kraj      n(9),;
      kssifra   c(9),;       
      ssifra    c(6),;  
      rasturs   n(9) ,;
      rasturj   n(9) ,;
      korekcv   n(12,2),;     
      posta     c(5)     ,; 
      mesto     c(25)     ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('vbracu.dbf')
   create table vbracu(;
       d1           d(8) ,;
       din1         n(10,2) ,;
       d2           d(8) ,;
       din2         n(10,2) ,;
       d3           d(8) ,;
       din3         n(10,2) ,;
       d4           d(8) ,;
       din4         n(10,2) ,;
       d5           d(8) ,;
       din5         n(10,2) ,;
       d6           d(8) ,;
       din6         n(10,2) ,;
       d7           d(8) ,;
       din7         n(10,2) ,;
       d8           d(8) ,;
       din8         n(10,2) ,;
       d9           d(8) ,;
       din9         n(10,2) ,;
       d10          d(8) ,;
       din10        n(10,2) ,;
       d11          d(8) ,;
       din11        n(10,2) ,;
       d12          d(8) ,;
       din12        n(10,2) ,;
       d13          d(8) ,;
       din13        n(10,2) ,;
       d14          d(8) ,;
       din14        n(10,2) ,;
       d15          d(8) ,;
       din15        n(10,2) ,;
       d16          d(8) ,;
       din16        n(10,2) ,;
       d17          d(8) ,;
       din17        n(10,2) ,;
       d18          d(8) ,;
       din18        n(10,2) ,;
       d19          d(8) ,;
       din19        n(10,2) ,;
       d20          d(8) ,;
       din20        n(10,2) ,;
       d21          d(8) ,;
       din21        n(10,2) ,;
       d22          d(8) ,;
       din22        n(10,2) ,;
       d23          d(8) ,;
       din23        n(10,2) ,;
       d24          d(8) ,;
       din24        n(10,2) ,;
       pib          c(13) ,;
       uplaceno     n(10,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbracu.dbf')
   create table vbracu(;
       pib       c(13),;
       datum     d(8) ,;
       pot       n(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vbobrac.dbf')
   create table vbobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

*-----------DESPOTOVAC-----------
IF !FILE('VD.DBF')
   CREAT TABLE VD(;
      SIFRA     C(05) ,;
      PIB       C(13),;
      GRUPA     C(4),;
      IME_PREZ  C(30) ,;
      mesto     C(20),; 
      SIFUL     C(6),; 
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      sifvodom  C(5) ,;
      VRSTA     C(1),; 
      VRSTAV    C(2),; 
      VODOMER   C(19), ;
      ssifra    c(21),;   
      PAUSAL    C(1) ,; 
      MESPAUSAL N(9),;
      BRSTAN    N(10) ,;
      UKSTAN    N(10)  ,;
      DOMAC     N(10) ,;
      SIFCEN    C(2), ;
      sifmesta  C(2) ,;
      sifzgra   C(9) ,;
      sifsavet  C(11) ,;
      sifvert   C(13) ,;
      sifstan   C(15) ,;
      sifvrstev C(1) ,;    
      sifredni  C(5) ,;
      ST0       N(9) ,;
      ST1       N(9) ,;
      ST2       N(9) ,;
      ST3       N(9) ,;
      ST4       N(9) ,;
      ST5       N(9) ,;
      ST6       N(9) ,;
      ST7       N(9) ,;
      ST8       N(9) ,;
      ST9       N(9) ,;
      ST10      N(9) ,;
      ST11      N(9) ,;
      ST12      N(9) ,;
      POT       N(12,2) ,;
      POT1      N(12,2) ,;
      POT2      N(12,2) ,;
      POT3      N(12,2) ,;
      POTS      N(12,2) ,;
      POTk      N(12,2) ,;
      POTSk     N(12,2) ,;
      POTP      N(12,2) ,;
      POTSP     N(12,2) ,;
      VODA      N(12,2) ,;
      KAN       N(12,2) ,;
      sistem    N(12,2) ,;
      DOPV      N(12,2) ,;
      DOPK      N(12,2) ,;
      VODA1     N(12,2) ,;
      KAN1      N(12,2) ,;
      sistem1   N(12,2) ,;
      VODA2     N(12,2) ,;
      KAN2      N(12,2) ,;
      sistem2   N(12,2) ,;
      VODA3     N(12,2) ,;
      KAN3      N(12,2) ,;
      sistem3   N(12,2) ,;
      POREZvoda N(12,2),;
      POREZkan  N(12,2),;
      POREZsis  N(12,2),;
      POREZvoda1 N(12,2),;
      POREZkan1  N(12,2),;
      POREZsis1  N(12,2),;
      POREZvoda2 N(12,2),;
      POREZkan2  N(12,2),;
      POREZsis2  N(12,2),;
      POREZvoda3 N(12,2),;
      POREZkan3  N(12,2),;
      POREZsis3  N(12,2),;
      ukupnoVODA N(12,2) ,;
      ukupnoKAN  N(12,2) ,;
      ukupnosis  N(12,2) ,;
      UKUPNO    N(12,2) ,;
      PROCPOR   N(09,2),;
      POREZ     N(12,2),;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      SDUG      N(12,2) ,;
      OSTALO    N(12,2),;
      DATPRI    D(8) ,;
      DATODJ    D(8) ,;
      UGOVOR    C(20) ,;
      UGOVORK   C(20) ,;
      MESECI    N(2)  ,; 
      PRECNIK   C(10) ,;
      BROJVODOM C(15) ,;
      DATUGRAD  D(8) ,;
      BAZDAR1   D(8) ,;
      RADI      C(1) ,;
      NAPOMENA  C(50) ,;
      NAPOMENA2 C(50),;
      NAPOMENA3 C(50),;
      NAPOMENA4 C(50),;
      NAPOMENA5 C(50),;
      SPORAZUM  N(12,2),;   
      DATSPORAZ D(8),;
      ZBIRNI    N(5),;
      BRRAC     C(25),;
      MODEL     C(20),;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      MES       N(2),;
      UKPOT     N(12,2),;
      POC       N(9),;
      KRAJ      N(9),;
      POCK      N(9),;
      KRAJK     N(9),;
      POCP      N(9),;
      KRAJP     N(9),;
      MATICNI0  C(13),;
      MATICNI1  C(13),;
      PRETHVLAS C(40),;
      OPIS      C(50),;
      BRNAL     C(6),;
      BROJ      C(7),;
      POPUST    C(1),;
      SALDO     N(12,2),;
      DATCIT    D(8),;
      utuziznos n(12,2),;
      utuzDAT0  D(8),;
      utuzDAT1  D(8),;
      SIME_PREZ  C(30) ,;
      SULICA     C(25) ,;
      SMESTO     C(25),;
      PLATISA     C(25), ;
      REDNI       C(5), ;
      REDNI1      C(5), ;
      DATUM_OD    D, ;
      DATUM_DO    D, ;
      IZNOS       N(10,2), ;
      POSLOVNI    N(8,2), ;
      STAMBENI    N(8,2), ;
      KAN_TIP     C(1), ;
      SIS_TIP     C(1), ;
      CLANOVA     N(2), ;
      BRISAN      C(2), ;
      SIF_CEN     C(2), ;
      MATBRFIR    C(13), ;
      REGBR       C(20), ;
      PUNNAZIV1   C(50), ;
      PUNNAZIV2   C(50), ;
      PUNNAZIV3   C(50), ;
      SPISAK      C(1), ;
      TIP         C(13), ;
      POMESTIMA   C(1),;      
      reon        C(20),;
      zgrada      C(30),;
      savet       C(30),;
      vertikala   C(30),; 
      stan        C(30),; 
      PLACA_NA    C(50), ;
      nazivcen    C(30), ;
      idbroj      C(20),;  
      DUGkamata   N(12,2) ,;
      uplackam    N(12,2),;      
      spib        C(13),;      
      radikam     N(06),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDUPL.DBF')
   CREAT TABLE VDUPL(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       ZATVAR    C(1),;
       VALUTA    D(8) ,;
       BRRAC     C(25),;  
       OPIS      C(20),;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       SALDO     N(18,2),;
       SIFRA     C(9) ,;
       STAN      C(3),;
       DANA      N(12,0),;
       NSPORAZ   N(18,2),;
       SPRAZLIKA N(18,2),;
       NAZ       C(35),;
       IME_PREZ  C(35),;
       sSIFRA    C(21) ,;
       DANAS     D(8) ,;
       VREME     C(8) ,; 
       OPER      C(2) ,;
       ARHIVA    C(1) ,; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDUPLD.DBF')
   CREAT TABLE VDUPLD(;
      PIB       C(13),;
      GRUPA     C(4),;
      VODA      N(12,2) ,;
      KAN       N(12,2) ,;
      sistem    n(12,2) ,;
      VODA1     N(12,2) ,;
      KAN1      N(12,2) ,;
      sistem1   n(12,2) ,;
      DOPV      N(12,2) ,;
      DOPK      N(12,2) ,;
      VODA2     N(12,2) ,;
      KAN2      N(12,2) ,;
      sistem2   n(12,2) ,;
      VODA3     N(12,2) ,;
      KAN3      N(12,2) ,;
      sistem3   n(12,2) ,;
      OSNOV     N(12,2) ,;
      POREZvoda N(12,2),;
      POREZkan  N(12,2),;
      POREZsis  N(12,2),;
      POREZvoda1 N(12,2),;
      POREZkan1  N(12,2),;
      POREZsis1  N(12,2),;
      POREZvoda2 N(12,2),;
      POREZkan2  N(12,2),;
      POREZsis2  N(12,2),;
      POREZvoda3 N(12,2),;
      POREZkan3  N(12,2),;
      POREZsis3  N(12,2),;
      ukupnoVODA N(12,2) ,;
      ukupnoKAN  N(12,2) ,;
      ukupnosis  N(12,2) ,;
      PROCPOR   N(09,2),;
      POREZ     N(12,2),;
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      OSTALO    N(12,2),;
      SPORAZUM  N(12,2),;
      BRRAC     C(25),;
      MODEL     C(20),;
      POT       N(12,2) ,;
      POT1      N(12,2) ,;
      POT2      N(12,2) ,;
      POT3      N(12,2) ,;
      POTS      N(12,2) ,;
      POTk      N(12,2) ,;
      POTSk     N(12,2) ,;
      POTP      N(12,2) ,;
      POTSP     N(12,2) ,;
      AKONT     N(12,2) ,;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      MES       N(2),;
      UKPOT     N(12,2),;
      POC       N(9),;
      KRAJ      N(9),;
      POCK      N(9),;
      KRAJK     N(9),;
      POCP      N(9),;
      KRAJP     N(9),;
      SIFCEN    C(2) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      CVODA     N(10,3) ,;
      CKAN      N(10,3) ,;
      Csis      N(10,3) ,;
      vodaod    N(10,0) ,;
      vodado    N(10,0) ,;
      CVODA2    N(10,3) ,;
      CKAN2     N(10,3) ,;
      Csis2     N(10,3) ,;
      vodaod2   N(10,0) ,;
      vodado2   N(10,0) ,;
      CVODA3    N(10,3) ,;
      CKAN3     N(10,3) ,;
      Csis3     N(10,3) ,;
      vodaod3   N(10,0) ,;
      vodado3   N(10,0) ,;
      PROCAKONT N(10,3) ,;
      MESEC     N(2),; 
      BRNAL     C(6), ;
      IME_PREZ  C(30) ,;
      SIFUL     C(3),; 
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      BROJ      C(7) ,;
      BRSTAN    N(10) ,;
      UKSTAN    N(10)  ,;
      DOMAC     N(10) ,;
      KS        C(1),; 
      KSSIFRA   C(9),; 
      KSSIFRAV  C(9),; 
      VRSTA     C(1),; 
      APREZ     C(20)      ,;
      AIME      C(20)     ,;                                
      AOTAC     C(20)     ,;                                
      APOSTA0   C(5)     ,; 
      AMESTO0   C(25)     ,;
      ASIFUL0   C(3)     ,;
      AULICA0   C(25)     ,;
      AULBROJ0  C(10)     ,;
      ASTAN0    C(05),;
      APIB      C(09),;
      AMATICNI0 C(13),;
      AMATICNI1 C(13),;
      SALDO     N(12,2),;
      DATCIT    D(8),;
      SIFRA     C(5),;
      sIME_PREZ  C(30) ,;
      SAMESTO0   C(25) ,;
      Komdinar  N(14,2),;
      PAUSAL    C(1),; 
      MESPAUSAL N(9),;
      sifvodom  C(5),;
      DUGkamata N(12,2),;
      uplackam  N(12,2),;
      sifMESTA  C(2),;
      mesto     C(20),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDCENE.DBF')
   CREAT TABLE VDCENE(;
      SIFCEN    C(2) ,;
      naziv     C(30) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CVODA     N(10,3) ,;
      CKAN      N(10,3) ,;
      Csis      N(10,3) ,;
      vodaod    N(10,0) ,;
      vodado    N(10,0) ,;
      CVODA2    N(10,3) ,;
      CKAN2     N(10,3) ,;
      Csis2     N(10,3) ,;
      vodaod2   N(10,0) ,;
      vodado2   N(10,0) ,;
      CVODA3    N(10,3) ,;
      CKAN3     N(10,3) ,;
      Csis3     N(10,3) ,;
      vodaod3   N(10,0) ,;
      vodado3   N(10,0) ,;
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      MESEC     N(2),; 
      PROCPOR   N(09,2),;
      RABPROC   N(09,2),;
      Cen_vod   N(10,3) ,;
      Cen_KAN   N(10,3) ,;
      Cen_sis   N(10,3),;
      SIF_CEN   C(2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDGRUPA.DBF')
   CREAT TABLE VDGRUPA(;
      GRUPA     C(4),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDMESTA.dbf')
   create table VDMESTA ; 
       (;
        SIFMESTa    C(2),;
        mesto       C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDREON.dbf')
   create table VDREON ; 
       (;
        grupa       C(4), ;
        naziv       C(20), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDULICE.dbf')
   create table VDULICE ; 
       (;
        SIFul       C(6), ;
        ULICA       C(30),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDZGRA.dbf')
   create table VDZGRA ; 
       (;
        SIFzgra     C(9), ;
        ZGRADA      C(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDSAVET.dbf')
   create table VDSAVET ; 
       (;
        SIFsavet    C(11), ;
        SAVET       C(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('VDVERT.dbf')
   create table VDVERT ; 
       (;
        SIFvert     C(13), ;
        VERTIKALA   C(20) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDSTAN.dbf')
   create table VDSTAN ; 
       (;
        SIFstan     C(15), ;
        STAN        C(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('VDVRSTE.dbf')
   create table VDVRSTE ; 
       (;
        SIFvrstev   C(1), ;
        PLACA_NA    C(30),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('vdVODOM.dbf')
   create table vdVODOM ; 
       (;
        SIFvodom    C(5), ;
        PLACA_NA    C(50), ;
        TIP         C(13) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



if !file('VDvopot.dbf')
   create table VDvopot ; 
       (;
        VODOMER     C(19), ;
        STARO       N(10,2), ;
        NOVO        N(10,2), ;
        RAZL        N(10,2), ;
        RAZL_13     N(10,2), ;
        CLANA       N(10), ;
        PROSEK      N(15,8),;
        SIFvodom    C(5),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VDOBRAC.DBF')
   CREAT TABLE VDOBRAC(;
   SIFCEN     C(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(4) ,;
   BRAKONT    N(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDKAM.DBF')
   CREAT TABLE VDKAM(;
      RBR         C(4),;
      PIB         C(13),;
      SIFRA       C(9),;
      DATPOC      D(8),;
      DATKRA      D(8),;
      DANA        N(4),;
      STOPA       N(18,4),;
      PERIOD      N(3),;
      METODA    C(1) ,;                
      KOEF        N(18,8),;
      SOSNOVICA   N(18,4),;
      DUG         N(18,2),;
      POT         N(18,2),;
      OSNOVICA    N(18,4),;
      DATUM       D(8),;
      DATDOK      D(8),;
      VAZI        C(1),;
      BRRAC       C(25),;
      ANSIF       N(2),;
      KAMATA      N(18,4),;
      IME_PREZ    C(30),;
      ULICA       C(25),;
      ULBROJ      C(7),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDKastop.dbf')
   CREAT TABLE VDkastop;
         (;
          dat0      D(8) ,;
          dat1      D(8) ,;
          stopa     N(18,4) ,;
          koef      N(18,8) ,;
          period    N(3) ,;
          METODA    C(1) ,;                    
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
IF !FILE('VDkaKOEF.dbf')
   CREAT TABLE VDkaKOEF;
         (;
          datUM     D(8) ,;
          stopa     N(18,4) ,;
          koef      N(18,8) ,;
          period    N(3) ,;
          METODA    C(1), ;                    
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDRACTXT.DBF')
   CREAT TABLE VDRACTXT(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDRACTX2.DBF')
   CREAT TABLE VDRACTX2(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDRACTXF.DBF')
   CREAT TABLE VDRACTXF(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDUNP.DBF')
   CREAT TABLE VDunp ;
               (POC       N(2)     ,;
                KRAJ      N(2)     ,;
                DATCIT    D(8)   ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDGRUPAK.DBF')
   CREAT TABLE VDGRUPAK(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
IF !FILE('VDPRENOS.DBF')
   CREAT TABLE VDPRENOS(;
      PUTANJA   C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDPRV.DBF')
   CREAT TABLE VDPRV(;
      VRSTA     C(4),; 
      OPIS      C(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDPR.DBF')
   CREAT TABLE VDPR(;
      REDBROJ   N(6),;
      POZIV     N(6),;
      RADNAL    N(6),; 
      PIB       C(13),;
      IME_PREZ  C(30),;
      ADRESA    C(30),;
      TELEFON   C(20),;      
      VRSTA     C(4),; 
      DATNAL    D(8),;
      VREMENAL  C(10),;
      DATPOC    D(8),;
      VREMEPOC  C(10),;
      DATKRAJ   D(8),;
      VREMEKRAJ C(10),;
      DATOBAV   D(8),;
      VREMEOBAV C(10),;
      OPIS1     C(70),;
      OPIS2     C(70),;
      OPIS3     C(70),;
      OPIS4     C(70),;
      URADJENRN N(6),;  
      ODGOVOR   N(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDPRRAD.DBF')
   CREAT TABLE VDPRRAD(;
       RADNAL    N(6),; 
       BROJ      N(4),;
       IME_PREZ  C(30),;
       STARTBOD  N(10,3),;      
       DANA      N(6),;
       SATI      N(6),;
       MINUTI    N(6),;
       IZNOS     N(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDPRMAT.DBF')
   CREAT TABLE VDPRMAT(;
       RADNAL    N(6),; 
       RSIF      C(5),;
       NAZ       C(30),;
       KOLI      N(18,3),;      
       VELCENA   N(18,3),;
       VELVRED   N(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDPRVOZ.DBF')
   CREAT TABLE VDPRVOZ(;
       RADNAL    N(6),; 
       VSIFRA    C(4),;
       NAZ       C(30),;
       KOLI      N(18,3),;      
       VOZCENA   N(18,3),;
       VOZVRED   N(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDK.DBF')
   CREAT TABLE VDK(;
   BRNAL      C(6) ,;
   BRANAL     N(2) ,;
   GRUPA      C(4),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDNALZ.DBF')
   CREAT TABLE VDNALZ(;
   BRNAL1     C(6) ,;
   BRNAL2     C(6) ,;
   GRUPA      C(4),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDSPIS.DBF')
   CREAT TABLE VDSPIS(;
   GRUPA      C(4),;   
   SIFUL      C(6),; 
   BRNAL      C(6),;
   KSSIFRA    C(21),;  
   PAUSAL     C(1) ,; 
   BAZDAR1    D(8) ,;
   RADI       C(1) ,;
   DAT0       D(8),;
   DAT1       D(8),;
   DIN0       N(18,2),;
   DIN1       N(18,2),; 
   ULICA      C(25) ,;   
   BEZUPLATE  C(1) ,;   
   ABECEDA    C(1) ,;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VDIZV02.DBF')
   CREAT TABLE VDIZV02(;
      GRUPA     C(4),;
      NAZIV     C(20),;
      VODA      N(12,0),;
      VODAPROC  N(09,3),;
      VODAPRE   N(12,0),;
      VODAPROCP N(09,3),;
      ODNOS     N(18,2),;
      VODOMERA  N(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDIZV03.DBF')
   CREAT TABLE VDIZV03(;
      GRUPA     C(4),;
      NAZIV     C(20),;
      VODASTAN  N(12,0),;
      PROCSVODA N(09,3),; 
      KANSTAN   N(12,0),;
      PROCSKAN  N(09,3),; 
      POTVODA   N(12,0),;
      PROCVODA  N(09,3),; 
      POTKAN    N(12,0),;
      PROCKAN   N(09,3),; 
      ODNOS     N(12,3),;
      MESECNO   N(12,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDIZV05.DBF')
   CREAT TABLE VDIZV05(;
      GRUPA     C(3),;
      NAZIV     C(20),;
      POTV      N(12,0),;
      PROCPOTV  N(09,3),; 
      POTK      N(12,0),;
      PROCPOTK  N(09,3),; 
      VODA      N(12,0),;
      PROCVODA  N(09,3),; 
      KAN       N(12,0),;
      PROCKAN   N(09,3),; 
      DOPV      N(12,0),;
      SVEGA     N(12,0),;
      SVEPROC   N(09,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDRACD.DBF')
   CREAT TABLE VDRACD(;
      PIB       C(13),;
      GRUPA     C(4),;
      IME_PREZ  C(40) ,;
      SIFUL     C(6),; 
      PAUSAL    C(1) ,; 
      MESPAUSAL N(9),;
      NSPORAZ   N(12,2),;
      NSPDAT    D(8),;
      BRSTAN    N(10) ,;
      UKSTAN    N(10)  ,;
      DOMAC     N(10) ,;
      SIFCEN    C(2),;
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      ST0       N(9) ,;
      ST1       N(9) ,;
      ST2       N(9) ,;
      ST3       N(9) ,;
      ST4       N(9) ,;
      ST5       N(9) ,;
      ST6       N(9) ,;
      ST7       N(9) ,;
      ST8       N(9) ,;
      ST9       N(9) ,;
      ST10      N(9) ,;
      ST11      N(9) ,;
      ST12      N(9) ,;
      POT       N(9) ,;
      POT2      N(9) ,;
      POT3      N(9) ,;
      POTS      N(9) ,;
      UKPOT     N(9) ,;
      VODA      N(12,2) ,;
      KAN       N(12,2) ,;
      DOPV      N(12,2) ,;
      DOPK      N(12,2) ,;
      komdinar  N(12,2) ,;      
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SOC       N(12,2),;  
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      RABAT     N(12,2) ,;
      SDUG      N(12,2) ,;
      OSTALO    N(12,2),;
      SIFRA     C(5) ,;
      VSIFRA    C(9),; 
      VRSTA     C(1),; 
      PSTANJE   N(12) ,;
      ZSTANJE   N(12) ,;
      DATUM     D(8) ,;
      DATDOK     D(8) ,;
      VALUTA    D(8) ,;
      CVODA     N(10,3) ,;
      CKANAL    N(10,3) ,;
      Csistem   N(10,3) ,;
      CDVODA    N(10,3) ,;
      CDKANAL   N(10,3) ,;
      CVODA2    N(10,3) ,;
      CKANAL2   N(10,3) ,;
      Csistem2  N(10,3) ,;
      CDVODA2   N(10,3) ,;
      CDKANAL2  N(10,3) ,;
      CVODA3    N(10,3) ,;
      CKANAL3   N(10,3) ,;
      Csistem3  N(10,3) ,;
      CDVODA3   N(10,3) ,;
      CDKANAL3  N(10,3) ,;
      CDKomdin  N(10,3) ,;
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      MESEC     N(2),; 
      SPORAZUM  N(12,2),;       
      BROJ      C(7),;
      ASIFRA    C(5),;
      ANAZIV    C(40),;
      AMESTO    C(25),;
      AULICA    C(30),;
      AULBROJ   C(10),;
      APIB      C(13),; 
      BRRAC     C(25),;  
      MODEL     C(20),;  
      PIB2      C(5),;         
      PROCPOR   N(09,2),;
      POREZ     N(12,2),;
      POC       N(9),;
      KRAJ      N(9),;
      KSSIFRA   C(21),;       
      SSIFRA    C(21),;
      PREZ     C(20)      ,;
      IME      C(20)     ,;                                
      OTAC     C(20)     ,;                                
      POSTA0   C(05)     ,; 
      MESTO0   C(25)     ,;
      SIFUL0   C(3)     ,;
      ULICA0   C(25)     ,;
      ULBROJ0   C(10)     ,;
      STAN0    C(05),;
      MATICNI0 C(13),;
      MATICNI1 C(13),;
      MATICNIBR C(13),;
      DATCIT    D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDRACU.DBF')
   CREAT TABLE VDRACU(;
       D1           D(8) ,;
       DIN1         N(10,2) ,;
       D2           D(8) ,;
       DIN2         N(10,2) ,;
       D3           D(8) ,;
       DIN3         N(10,2) ,;
       D4           D(8) ,;
       DIN4         N(10,2) ,;
       D5           D(8) ,;
       DIN5         N(10,2) ,;
       D6           D(8) ,;
       DIN6         N(10,2) ,;
       D7           D(8) ,;
       DIN7         N(10,2) ,;
       D8           D(8) ,;
       DIN8         N(10,2) ,;
       D9           D(8) ,;
       DIN9         N(10,2) ,;
       D10          D(8) ,;
       DIN10        N(10,2) ,;
       D11          D(8) ,;
       DIN11        N(10,2) ,;
       D12          D(8) ,;
       DIN12        N(10,2) ,;
       D13          D(8) ,;
       DIN13        N(10,2) ,;
       D14          D(8) ,;
       DIN14        N(10,2) ,;
       D15          D(8) ,;
       DIN15        N(10,2) ,;
       D16          D(8) ,;
       DIN16        N(10,2) ,;
       D17          D(8) ,;
       DIN17        N(10,2) ,;
       D18          D(8) ,;
       DIN18        N(10,2) ,;
       D19          D(8) ,;
       DIN19        N(10,2) ,;
       D20          D(8) ,;
       DIN20        N(10,2) ,;
       D21          D(8) ,;
       DIN21        N(10,2) ,;
       D22          D(8) ,;
       DIN22        N(10,2) ,;
       D23          D(8) ,;
       DIN23        N(10,2) ,;
       D24          D(8) ,;
       DIN24        N(10,2) ,;
       PIB          C(13) ,;
       UPLACENO     N(10,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDOBRAC.DBF')
   CREAT TABLE VDOBRAC(;
   SIFCEN     C(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(3) ,;
   BRAKONT    N(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('MASINE.DBF')
   CREATE TABLE MASINE ;
               (MASSIF    C(4)     ,;
                REGBROJ   C(12)    ,;
                NAZIV     C(30)    ,;              
                NOSIVOST  N(12,2),; 
                MASCENA   N(12,2),;  
                GOD       C(4),;
                MTR       N(5),;    
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('AN00.DBF')
   CREATE TABLE AN00 ;
               (SIFRA    C(05)      ,;
                PREZ     C(20)      ,;
                IME      C(20)     ,;                                
                OTAC     C(20)     ,;                                
                POSTA0   C(5)     ,; 
                MESTO0   C(25)     ,;
                SIFUL0   C(3)     ,;
                ULICA0   C(25)     ,;
                ULBROJ0  C(10)     ,;
                STAN0    C(05),;
                PIB      C(09),;
                MATICNI0 C(13),;
                MATICNI1 C(13),;
                IME_PREZ C(30) ,;
                SIFUL    C(3),; 
                ULICA    C(25) ,;
                ULBROJ   C(7),;
                MESTO    C(25),;
                S_P      C(2),;
                NFIRMA    N(12,0),; 
                NREDNI    N(18,0),;      
                SPREZ     C(20)      ,;
                SIME      C(20)     ,;                                
                SOTAC     C(20)     ,;                                
                SPOSTA0   C(5)     ,; 
                SMESTO0   C(25)     ,;
                SSIFUL0   C(3)     ,;
                SULICA0   C(25)     ,;
                SULBROJ0  C(10)     ,;
                sIME_PREZ C(30) ,;
                sULICA    C(25) ,;
                sMESTO    C(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDRAC.DBF')
   CREAT TABLE VDRAC(;
      PIB       C(13),;
      GRUPA     C(4),;
      SIFUL     C(3),; 
      BRNAL     C(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDKART.DBF')
   CREAT TABLE VDKART(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       SALDO     N(18,2),;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       VALUTA    D(8) ,;
       BRRAC     C(25),;  
       OPIS      C(20),;
       IME_PREZ  C(30),;
       SIFUL     C(3) ,; 
       ULICA     C(25),;
       ULBROJ    C(7) ,;
       ZATVAR    C(1) ,; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDSUD0.DBF')
   CREAT TABLE VDSUD0(;
      REDBR     C(6),;        
      PIB       C(13),;
      IME_PREZ  C(30) ,;
      SVEGA     N(12,2), ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDSUD.DBF')
   CREAT TABLE VDSUD(;
      REDBR     C(6),;             
      PIB       C(13),;
      IME_PREZ  C(30) ,;
      SVEGA     N(12,2) ,;
      BRRAC     C(25),;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VDEKS.DBF')
   CREAT TABLE VDEKS(;
      TDATCIT   C(10),;   
      DATCIT    D(8),; 
      POC1      C(10),;             
      PIB       C(9),;
      POC2      C(55),;
      TPOT      C(15),;
      NAPOMENA  C(60),;
      POT       N(15,0),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDEPUT.DBF')
   CREAT TABLE VDEPUT(;
      PUTANJA   C(70),; 
      STANJE    C(2),; 
      STPOC     C(2),; 
      STkraj    C(2),; 
      STunos    C(2),; 
      stmesdod  C(2),; 
      brmes     N(2),; 
      brmeso    N(2),; 
      grupa     C(4),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VDUVOZ.DBF')
   CREAT TABLE VDUVOZ(;
      REDBR     C(6),;             
      PIB       C(13),;
      IME_PREZ  C(30) ,;
      SVEGA     N(12,2) ,;
      BRRAC     C(25),;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VDSPORAZ.DBF')
   CREAT TABLE VDSPORAZ(;
      SIFRA      C(05) ,;
      PIB        C(13),;
      GRUPA      C(4),;
      IME_PREZ   C(30) ,;
      BRRAC      C(25),;
      DATUMS     D(8),;
      DATUM      D(8),;
      IZNOS      N(12,2),;
      BROJRATA   N(09,0),;
      DANA       N(09,0),;
      MESIZNOS   N(12,2),;
      dok       c(5),;                   
      pr1       n(3),;
      pv1       d(8),;
      prdin1    n(14,2),;
      pr2       n(3),;
      pv2       d(8),;
      prdin2    n(14,2),;
      pr3       n(3),;
      pv3       d(8),;
      prdin3    n(14,2),;
      pr4       n(3),;
      pv4       d(8),;
      prdin4    n(14,2),;
      pr5       n(3),;
      pv5       d(8),;
      prdin5    n(14,2),;
      pr6       n(3),;
      pv6       d(8),;
      prdin6    n(14,2),;
      pr7       n(3),;
      pv7       d(8),;
      prdin7    n(14,2),;
      pr8       n(3),;
      pv8       d(8),;
      prdin8    n(14,2),;
      pr9       n(3),;
      pv9       d(8),;
      prdin9    n(14,2),;
      pr10      n(3),;
      pv10      d(8),;
      prdin10   n(14,2),;
      pr11      n(3),;
      pv11      d(8),;
      prdin11   n(14,2),;
      pr12      n(3),;
      pv12      d(8),;
      prdin12   n(14,2),;
      pr13      n(3),;
      pv13      d(8),;
      prdin13   n(14,2),;
      pr14      n(3),;
      pv14      d(8),;
      prdin14   n(14,2),;
      pr15      n(3),;
      pv15      d(8),;
      prdin15   n(14,2),;
      pr16      n(3),;
      pv16      d(8),;
      prdin16   n(14,2),;
      pr17      n(3),;
      pv17      d(8),;
      prdin17   n(14,2),;
      pr18      n(3),;
      pv18      d(8),;
      prdin18   n(14,2),;
      UPLATA     N(12,2),;
      ZATVORENO  C(1),;
      ARHIVA     C(1),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

*----------PROKUPLJE------------
IF !FILE('VK.DBF')
   CREATE TABLE VK(;
      SIFRA     C(05) ,;
      PIB       C(13),;
      GRUPA     C(2),;
      IME_PREZ  C(30) ,;
      PVODA     C(1) ,;
      PKANAL    C(1) ,;
      SLEP      C(1) ,;
      POPPROC   N(7,3) ,;
      POPKAN    N(7,3) ,;
      POPSOC    N(4) ,;  
      PAUSAL    C(1) ,; 
      MESPAUSAL N(9),;
      clanova   N(9),;
      CENOVNIK  N(10),;
      SIFUL     C(3),; 
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      ST0       N(9) ,;
      ST1       N(9) ,;
      ST2       N(9) ,;
      ST3       N(9) ,;
      ST4       N(9) ,;
      ST5       N(9) ,;
      ST6       N(9) ,;
      ST7       N(9) ,;
      ST8       N(9) ,;
      ST9       N(9) ,;
      ST10      N(9) ,;
      ST11      N(9) ,;
      ST12      N(9) ,;
      POT       N(9) ,;
      POTS      N(9) ,;
      ST0k      N(9) ,;
      ST1k      N(9) ,;
      ST2k      N(9) ,;
      ST3k      N(9) ,;
      ST4k      N(9) ,;
      ST5k      N(9) ,;
      ST6k      N(9) ,;
      ST7k      N(9) ,;
      ST8k      N(9) ,;
      ST9k      N(9) ,;
      ST10k     N(9) ,;
      ST11k     N(9) ,;
      ST12k     N(9) ,;
      POTk      N(9) ,;
      POTSk     N(9) ,;
      ST0P      N(9) ,;
      ST1P      N(9) ,;
      ST2P      N(9) ,;
      ST3P      N(9) ,;
      ST4P      N(9) ,;
      ST5P      N(9) ,;
      ST6P      N(9) ,;
      ST7P      N(9) ,;
      ST8P      N(9) ,;
      ST9P      N(9) ,;
      ST10P     N(9) ,;
      ST11P     N(9) ,;
      ST12P     N(9) ,;
      POTP      N(9) ,;
      POTSP     N(9) ,;
      VODA      N(12,2) ,;
      KAN       N(12,2) ,;
      DOPV      N(12,2) ,;
      DOPK      N(12,2) ,;
      DPVODA    N(12,2),;
      DPKAN     N(12,2),;
      UKUPNO    N(12,2) ,;
      OSNOV     N(12,2) ,;
      PROCPOR   N(09,2),;
      POREZ     N(12,2),;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      RABAT     N(12,2) ,;
      SDUG      N(12,2) ,;
      OSTALO    N(12,2),;
      VRSTA     C(1),; 
      DATPRI    D(8) ,;
      DATODJ    D(8) ,;
      UGOVOR    C(20) ,;
      UGOVORK   C(20) ,;
      MESECI    N(2)  ,; 
      PRECNIK   C(10) ,;
      BROJVODOM C(15) ,;
      DATUGRAD  D(8) ,;
      BAZDAR1   D(8) ,;
      RADI      C(1) ,;
      NAPOMENA  C(50) ,;
      NAPOMENA2 C(50),;
      NAPOMENA3 C(50),;
      NAPOMENA4 C(50),;
      NAPOMENA5 C(50),;
      SPORAZUM  N(12,2),;   
      DATSPORAZ D(8),;
      ZBIRNI    N(5),;
      BRRAC     C(25),;
      MODEL     C(20),;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      MES       N(2),;
      UKPOT     N(9),;
      POC       N(9),;
      KRAJ      N(9),;
      POCK      N(9),;
      KRAJK     N(9),;
      POCP      N(9),;
      KRAJP     N(9),;
      MESTO     C(25),;
      MATICNI0  C(13),;
      MATICNI1  C(13),;
      PRETHVLAS C(40),;
      OPIS      C(50),;
      BRNAL     C(6),;
      BROJ      C(7),;
      POPUST    C(1),;
      SALDO     N(12,2),;
      DATCIT    D(8),;
      VSIFRA    C(05) ,;
      VPIB      C(13) ,;
      VIME_PREZ C(30) ,;                
      VULICA    C(30) ,;                
      VPOSTA    C(5)  ,; 
      VMESTO    C(30) ,; 
      KOMDINAR  N(12,2),;   
      PORvoda   N(12,2),;
      PORkan    N(12,2),;
      RABvoda   N(12,2),;
      RABkan    N(12,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKUPL.DBF')
   CREATE TABLE VKUPL(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       ZATVAR    C(1),;
       VALUTA    D(8) ,;
       INK       C(2) ,;
       BRRAC     C(25),;  
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       OPIS      C(20),;
       SIFRA     C(9) ,;
       SALDO     N(18,2),;
       DANAS     D(8) ,;
       VREME     C(8) ,; 
       OPER      C(2) ,;
       ARHIVA    C(1) ,; 
       STAN      C(3),;
       DANA      N(12,0),;
       NSPORAZ   N(18,2),;
       SPRAZLIKA N(18,2),;
       IME_PREZ  C(30) ,;
       SIFUL     C(3),; 
       ULICA     C(25) ,;
       ULBROJ    C(7) ,;
       BROJ      C(7) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKUPLD.DBF')
   CREATE TABLE VKUPLD(;
      PIB       C(13),;
      GRUPA     C(2),;
      VODA      N(12,2) ,;
      KAN       N(12,2) ,;
      DOPV      N(12,2) ,;
      DOPK      N(12,2) ,;
      DPVODA    N(12,2) ,;
      DPKAN     N(12,2) ,;
      MESPAUSAL N(12,2) ,;
      PAUSAL    C(1),;
      RABAT     N(12,2),;
      OSNOV     N(12,2) ,;
      PROCPOR   N(09,2),;
      POREZ     N(12,2),;
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      OSTALO    N(12,2),;
      BRRAC     C(20),;
      MODEL     C(20),;
      POT       N(9) ,;
      POTS      N(9) ,;
      POTk      N(9) ,;
      POTSk     N(9) ,;
      POTP      N(9) ,;
      POTSP     N(9) ,;
      POV       N(12,2) ,;
      POVNE     N(12,2) ,;
      DATUM     D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      MES       N(2),;
      UKPOT     N(9),;
      POC       N(9),;
      KRAJ      N(9),;
      POCK      N(9),;
      KRAJK     N(9),;
      POCP      N(9),;
      KRAJP     N(9),;
      CENOVNIK  N(2) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      CVODA     N(10,3) ,;
      CKANAL    N(10,3) ,;
      CDVODA    N(10,3) ,;
      CDKANAL   N(10,3) ,;
      MESEC     N(2),; 
      BRNAL     C(6), ;
      IME_PREZ  C(30) ,;
      SIFUL     C(3),; 
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      BROJ      C(7) ,;
      PVODA     C(1) ,;
      PKANAL    C(1) ,;
      ZONA      N(3)   ,;
      SLEP      C(1) ,;
      POPPROC   N(7,3) ,;
      POPKAN    N(7,3) ,;
      POPSOC    N(4) ,;  
      VRSTA     C(1),; 
      APREZ     C(20)      ,;
      AIME      C(20)     ,;                                
      AOTAC     C(20)     ,;                                
      APOSTA0   C(5)     ,; 
      AMESTO0   C(25)     ,;
      ASIFUL0   C(3)     ,;
      AULICA0   C(25)     ,;
      AULBROJ0  C(10)     ,;
      ASTAN0    C(05),;
      APIB      C(09),;
      AMATICNI0 C(13),;
      AMATICNI1 C(13),;
      SALDO     N(12,2),;
      DATCIT    D(8),;
      SIFRA     C(5),;
      STAMPA    C(1),;
      KOMDINAR  N(12,2),;      
      PORvoda   N(12,2),;
      PORkan    N(12,2),;
      RABvoda   N(12,2),;
      RABkan    N(12,2),;
      D1        D(8),;   
      din1      N(12,2),;         
      D2        D(8),;   
      din2      N(12,2),;         
      D3        D(8),;   
      din3      N(12,2),;         
      D4        D(8),;   
      din4      N(12,2),;         
      D5        D(8),;   
      din5      N(12,2),;         
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKCENE.DBF')
   CREATE TABLE VKCENE(;
      CENOVNIK  N(2) ,;
      PSTANJE   N(2) ,;
      ZSTANJE   N(2) ,;
      DATUM     D(8) ,;
      VALUTA    D(8) ,;
      CVODA     N(10,3) ,;
      CKANAL    N(10,3) ,;
      CDVODA    N(10,3) ,;
      CDKANAL   N(10,3) ,;
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      MESEC     N(2),; 
      PROCPOR   N(09,2),;
      RABPROC   N(09,2),;
      MINDUG    N(12,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKULICE.DBF')
   CREATE TABLE VKULICE(;
   SIFUL      C(3) ,;
   ULICA      C(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKOBRAC.DBF')
   CREATE TABLE VKOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VKRACTXT.DBF')
   CREATE TABLE VKRACTXT(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKRACTX2.DBF')
   CREATE TABLE VKRACTX2(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKRACTXF.DBF')
   CREATE TABLE VKRACTXF(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKUNP.DBF')
   CREATE TABLE VKunp ;
               (POC       N(2)     ,;
                KRAJ      N(2)     ,;
                DATCIT    D(8)  , ;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKGRUPA.DBF')
   CREATE TABLE VKGRUPA(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKGRUPAK.DBF')
   CREATE TABLE VKGRUPAK(;
      GRUPA     C(3),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKPRENOS.DBF')
   CREATE TABLE VKPRENOS(;
      PUTANJA   C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKPRV.DBF')
   CREATE TABLE VKPRV(;
      VRSTA     C(4),; 
      OPIS      C(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
IF !FILE('VKPR.DBF')
   CREATE TABLE VKPR(;
      REDBROJ   N(6),;
      POZIV     N(6),;
      RADNAL    N(6),; 
      PIB       C(13),;
      IME_PREZ  C(30),;
      ADRESA    C(30),;
      TELEFON   C(20),;      
      VRSTA     C(4),; 
      DATNAL    D(8),;
      VREMENAL  C(10),;
      DATPOC    D(8),;
      VREMEPOC  C(10),;
      DATKRAJ   D(8),;
      VREMEKRAJ C(10),;
      DATOBAV   D(8),;
      VREMEOBAV C(10),;
      OPIS1     C(70),;
      OPIS2     C(70),;
      OPIS3     C(70),;
      OPIS4     C(70),;
      URADJENRN N(6),;  
      ODGOVOR   N(6),;
      preneto   c(1),;
      idbr      n(11);
     )
   use
endif


IF !FILE('VKPRRAD.DBF')
   CREATE TABLE VKPRRAD(;
       RADNAL    N(6),; 
       BROJ      N(4),;
       IME_PREZ  C(30),;
       STARTBOD  N(10,3),;      
       DANA      N(6),;
       SATI      N(6),;
       MINUTI    N(6),;
       IZNOS     N(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKPRMAT.DBF')
   CREATE TABLE VKPRMAT(;
       RADNAL    N(6),; 
       RSIF      C(5),;
       NAZ       C(30),;
       KOLI      N(18,3),;      
       VELCENA   N(18,3),;
       VELVRED   N(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKPRVOZ.DBF')
   CREATE TABLE VKPRVOZ(;
       RADNAL    N(6),; 
       VSIFRA    C(4),;
       NAZ       C(30),;
       KOLI      N(18,3),;      
       VOZCENA   N(18,3),;
       VOZVRED   N(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKK.DBF')
   CREATE TABLE VKK(;
   BRNAL      C(6) ,;
   BRANAL     N(2) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VKNALZ.DBF')
   CREATE TABLE VKNALZ(;
   BRNAL1     C(6) ,;
   BRNAL2     C(6) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKSPIS.DBF')
   CREATE TABLE VKSPIS(;
   GRUPA      C(2),;   
   SIFUL      C(3),; 
   BRNAL      C(6),;
   KSSIFRA    C(9),;  
   PVODA      C(1) ,;
   PKANAL     C(1) ,;
   SLEP       C(1) ,;
   PAUSAL     C(1) ,; 
   BAZDAR1    D(8) ,;
   RADI       C(1) ,;
   DAT0       D(8),;
   DAT1       D(8),;
   DIN0       N(18,2),;
   DIN1       N(18,2),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VKIZV02.DBF')
   CREATE TABLE VKIZV02(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      VODA      N(12,0),;
      VODAPROC  N(09,3),;
      VODAPRE   N(12,0),;
      VODAPROCP N(09,3),;
      ODNOS     N(18,2),;
      VODOMERA  N(18,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKIZV03.DBF')
   CREATE TABLE VKIZV03(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      VODASTAN  N(12,0),;
      PROCSVODA N(09,3),; 
      KANSTAN   N(12,0),;
      PROCSKAN  N(09,3),; 
      POTVODA   N(12,0),;
      PROCVODA  N(09,3),; 
      POTKAN    N(12,0),;
      PROCKAN   N(09,3),; 
      ODNOS     N(12,3),;
      MESECNO   N(12,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKIZV05.DBF')
   CREATE TABLE VKIZV05(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      POTV      N(12,0),;
      PROCPOTV  N(09,3),; 
      POTK      N(12,0),;
      PROCPOTK  N(09,3),; 
      VODA      N(12,0),;
      PROCVODA  N(09,3),; 
      KAN       N(12,0),;
      PROCKAN   N(09,3),; 
      DOPV      N(12,0),;
      SVEGA     N(12,0),;
      SVEPROC   N(09,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKRACD.DBF')
   CREATE TABLE VKRACD(;
      PIB       C(13),;
      GRUPA     C(2),;
      IME_PREZ  C(40) ,;
      SIFUL     C(3),; 
      PVODA     C(1) ,;
      PKANAL    C(1) ,;
      PSMECE    C(1),;
      PKOMNAK   C(1),;
      PKOMNAKN  C(1),;
      SLEP      C(1) ,;
      POPPROC   N(4) ,;
      POPKAN    N(4) ,;
      POPSOC    N(4) ,;  
      PAUSAL    C(1) ,; 
      MESPAUSAL N(9),;
      POV       N(12,2),;
      POVNE     N(12,2),;
      NSPORAZ   N(12,2),;
      NSPDAT    D(8),;
      BRSTAN    N(10) ,;
      UKSTAN    N(10)  ,;
      DOMAC     N(10) ,;
      CENOVNIK  N(10),;
      ULICA     C(25) ,;
      ULBROJ    C(7) ,;
      ST0       N(9) ,;
      ST1       N(9) ,;
      ST2       N(9) ,;
      ST3       N(9) ,;
      ST4       N(9) ,;
      ST5       N(9) ,;
      ST6       N(9) ,;
      ST7       N(9) ,;
      ST8       N(9) ,;
      ST9       N(9) ,;
      ST10      N(9) ,;
      ST11      N(9) ,;
      ST12      N(9) ,;
      POT       N(9) ,;
      POTS      N(9) ,;
      UKPOT     N(9) ,;
      VODA      N(12,2) ,;
      KAN       N(12,2) ,;
      DOPV      N(12,2) ,;
      DOPK      N(12,2) ,;
      UKUPNO    N(12,2) ,;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SOC       N(12,2),;  
      SVEGA     N(12,2) ,;
      AKONT     N(12,2) ,;
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      RABAT     N(12,2) ,;
      SDUG      N(12,2) ,;
      OSTALO    N(12,2),;
      SIFRA     C(5) ,;
      VSIFRA    C(9),; 
      VRSTA     C(1),; 
      PSTANJE   N(12) ,;
      ZSTANJE   N(12) ,;
      DATUM     D(8) ,;
      DATDOK     D(8) ,;
      VALUTA    D(8) ,;
      CVODA     N(10,3) ,;
      CKANAL    N(10,3) ,;
      CDVODA    N(10,3) ,;
      CDKANAL   N(10,3) ,;
      PROCAKONT N(10,3) ,;
      DATOD     D(8) ,;
      DATDO     D(8),;
      MESEC     N(2),; 
      SPORAZUM  N(12,2),;       
      BROJ      C(7),;
      ASIFRA    C(5),;
      ANAZIV    C(40),;
      AMESTO    C(25),;
      AULICA    C(30),;
      AULBROJ   C(10),;
      APIB      C(13),; 
      BRRAC     C(20),;  
      MODEL     C(20),;  
      PIB2      C(5),;         
      PROCPOR   N(09,2),;
      POREZ     N(12,2),;
      POC       N(9),;
      KRAJ      N(9),;
      KSSIFRA   C(9),;       
      SSIFRA    C(6),;
      PREZ     C(20)      ,;
      IME      C(20)     ,;                                
      OTAC     C(20)     ,;                                
      POSTA0   C(05)     ,; 
      MESTO0   C(25)     ,;
      SIFUL0   C(3)     ,;
      ULICA0   C(25)     ,;
      ULBROJ0   C(10)     ,;
      STAN0    C(05),;
      MATICNI0 C(13),;
      MATICNI1 C(13),;
      MATICNIBR C(13),;
      DATCIT    D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKRACU.DBF')
   CREATE TABLE VKRACU(;
       D1           D(8) ,;
       DIN1         N(10,2) ,;
       D2           D(8) ,;
       DIN2         N(10,2) ,;
       D3           D(8) ,;
       DIN3         N(10,2) ,;
       D4           D(8) ,;
       DIN4         N(10,2) ,;
       D5           D(8) ,;
       DIN5         N(10,2) ,;
       D6           D(8) ,;
       DIN6         N(10,2) ,;
       D7           D(8) ,;
       DIN7         N(10,2) ,;
       D8           D(8) ,;
       DIN8         N(10,2) ,;
       D9           D(8) ,;
       DIN9         N(10,2) ,;
       D10          D(8) ,;
       DIN10        N(10,2) ,;
       D11          D(8) ,;
       DIN11        N(10,2) ,;
       D12          D(8) ,;
       DIN12        N(10,2) ,;
       D13          D(8) ,;
       DIN13        N(10,2) ,;
       D14          D(8) ,;
       DIN14        N(10,2) ,;
       D15          D(8) ,;
       DIN15        N(10,2) ,;
       D16          D(8) ,;
       DIN16        N(10,2) ,;
       D17          D(8) ,;
       DIN17        N(10,2) ,;
       D18          D(8) ,;
       DIN18        N(10,2) ,;
       D19          D(8) ,;
       DIN19        N(10,2) ,;
       D20          D(8) ,;
       DIN20        N(10,2) ,;
       D21          D(8) ,;
       DIN21        N(10,2) ,;
       D22          D(8) ,;
       DIN22        N(10,2) ,;
       D23          D(8) ,;
       DIN23        N(10,2) ,;
       D24          D(8) ,;
       DIN24        N(10,2) ,;
       PIB          C(13) ,;
       UPLACENO     N(10,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKOBRAC.DBF')
   CREATE TABLE VKOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKRAC.DBF')
   CREATE TABLE VKRAC(;
      PIB       C(13),;
      GRUPA     C(2),;
      SIFUL     C(3),; 
      BRNAL     C(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VKKART.DBF')
   CREATE TABLE VKKART(;
       PIB       C(13),;
       DATUM     D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       SALDO     N(18,2),;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       VALUTA    D(8) ,;
       BRRAC     C(20),;  
       OPIS      C(20),;
       IME_PREZ  C(30),;
       SIFUL     C(3) ,; 
       ULICA     C(25),;
       ULBROJ    C(7) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

*----------TOPLANA VP

IF !FILE('VT.DBF')
   CREATE TABLE VT(;
      PIB       C(10),;
      GRUPA     C(2),;
      PREZ      C(25) ,;
      IME       C(15),;
      PGRE      C(1) ,;
      POSTALO1  C(1) ,;
      POSTALO2  C(1) ,;
      POSTALO3  C(1) ,;
      POVOBJ    N(12,2),;
      sifmernom C(4),;
      POVZGRADE N(12,2),;
      POtmernom N(12,2),;
      PROCSTAN  N(12,2),;
      POTSTAN   N(12,2),;
      POSTA     C(05),;
      MESTO     C(25),;
      ULICA     C(35) ,;
      ULBROJ    C(7) ,;
      KATEG     C(1) ,;
      CENOVNIK  N(10),;
      GRE       N(12,2) ,;
      dinkw     N(12,2) ,;      
      OSTALO1   N(12,2),;
      OSTALO2   N(12,2),;
      OSTALO3   N(12,2),;
      UKUPNO    N(12,2) ,;
      PPOGRE    N(10,2),;
      PPOKW     N(10,2),;      
      PPOOSTA1  N(10,2),;
      PPOOSTA2  N(10,2),;
      PPOOSTA3  N(10,2),;
      PORGRE    N(10,2),;
      PORkw     N(10,2),;      
      POROSTA1  N(10,2),;
      POROSTA2  N(10,2),;
      POROSTA3  N(10,2),;
      POREZ     N(12,2),;
      DUG       N(12,2) ,;
      UPLAC     N(12,2) ,;
      KAMATA    N(12,2) ,;
      SVEGA     N(12,2) ,;
      SDUG      N(12,2) ,;
      OSTALO    N(12,2),;
      SALDO     N(12,2),;
      AKONT     N(12,2) ,;
      ODUG      N(12,2) ,;
      OPOT      N(12,2) ,;
      OSALDO    N(12,2) ,;
      RABPROC   N(12,2) ,;
      RABAT     N(12,2) ,;
      RABATPOR  N(12,2) ,;
      VRSTA     C(1),; 
      DATPRI    D(8) ,;
      DATODJ    D(8) ,;
      UGOVOR    C(20) ,;
      MESECI    N(2)  ,; 
      NAPOMENA  C(50) ,;
      NAPOMENA2 C(50),;
      NAPOMENA3 C(50),;
      ZBIRNI    N(5),;
      SIFRA     C(05) ,;
      NAZIV     C(40) ,;
      BRRAC     C(20),;
      MODEL     C(20),;
      DATDOK    D(8),;
      VALUTA    D(8),;
      DATOD     D(8),;
      DATDO     D(8),;
      MES       N(2),;
      MATICNI0  C(13),;
      OPIS      C(50),;
      BRNAL     C(6),;
      BROJ      C(7),;
      CGRE      N(12,2) ,;
      Ckw       N(12,2) ,;      
      COSTALO1   N(12,2),;
      COSTALO2   N(12,2),;
      COSTALO3   N(12,2),;
      TOSTALO1   C(25),;
      TOSTALO2   C(25),;
      TOSTALO3   C(25),;
      OSN0       N(12,2),;
      OSN8       N(12,2),;
      OSN18      N(12,2),;
      POR8       N(12,2),;
      POR18      N(12,2),; 
      ZAOKRUZ    N(09,2),;       
      APREZ      C(25),;
      AIME       C(15),;
      APOSTA     C(05),;
      AMESTO     C(20),;
      AADR       C(25),;      
      POCKW      N(12,2),; 
      ZADKW      N(12,2),;   
      danaobr    N(9,0),;      
      danames    N(9,0),;                       
      RABPROC2   N(12,2),;
      RABAT2     N(12,2),;
      RABATPOR2  N(12,2),;      
      cPREZ      C(25) ,;
      cIME       C(15),;
      cMESTO     C(25),;
      cULICA     C(35) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VTUPL.DBF')
   CREATE TABLE VTUPL(;
       PIB       C(10),;
       DATDOK    D(8) ,;
       VALUTA    D(8) ,;
       BRRAC     C(20),;  
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       BRNAL     C(6) ,;
       DANA      N(12,0) ,;
       ZATVAR    C(1),;
       GRUPA     C(3) ,;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       OPIS      C(20),;
       SIFRA     C(5) ,;
       SALDO     N(18,2),;
       DATUM     D(8) ,;
       VREME     C(8) ,; 
       OPER      C(2) ,;
       ARHIVA    C(1) ,; 
       NAZ       C(30),;
       POSTA     C(05),;
       MESTO     C(25),;
       ULICA     C(25),;       
       DNEV      N(10,0),;
       NALU      N(10,0),;
       NALI      N(10,0),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VTCENE.DBF')
   CREATE TABLE VTCENE(;
      CENOVNIK   N(2) ,;
      PSTANJE    N(2) ,;
      ZSTANJE    N(2) ,;
      DATUM      D(8) ,;
      VALUTA     D(8) ,;
      CGRE       N(12,2) ,;
      Ckw        N(12,2) ,;
      COSTALO1   N(12,2),;
      COSTALO2   N(12,2),;
      COSTALO3   N(12,2),;
      PPOGRE     N(10,2),;
      PPOkw      N(10,2),;
      PPOOSTA1   N(10,2),;
      PPOOSTA2   N(10,2),;
      PPOOSTA3   N(10,2),;
      DATOD      D(8) ,;
      DATDO      D(8),;
      MESEC      N(2),; 
      TOSTALO1   C(25),;
      TOSTALO2   C(25),;
      TOSTALO3   C(25),;
      RABPROC    N(12,2),;
      danaobr    N(9,0),;      
      danames    N(9,0),;            
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTULICE.DBF')
   CREATE TABLE VTULICE(;
   SIFUL      C(3) ,;
   ULICA      C(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTOBRAC.DBF')
   CREATE TABLE VTOBRAC(;
   CENOVNIK   N(2) ,;
   JEDANKOR   C(1) ,;
   SVIKOR     C(1) ,;
   BROBRAC    N(2) ,;
   SIFUL      C(3) ,;
   GRUPA      C(2) ,;
   BRAKONT    N(2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif



IF !FILE('VTRACTXT.DBF')
   CREATE TABLE VTRACTXT(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTRACTX2.DBF')
   CREATE TABLE VTRACTX2(;
     TXT1     C(70),;
     TXT2     C(70),;
     TXT3     C(70),;
     TXT4     C(70),;
     TXT5     C(70),;
     TXT6     C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTRACTXF.DBF')
   CREATE TABLE VTRACTXF(;
     TXT1     C(50),;
     TXT2     C(50),;
     TXT3     C(50),;
     TXT4     C(50),;
     TXT5     C(50),;
     TXT6     C(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VTGRUPA.DBF')
   CREATE TABLE VTGRUPA(;
      GRUPA     C(2),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTGRUPAK.DBF')
   CREATE TABLE VTGRUPAK(;
      GRUPA     C(3),;
      NAZIV     C(20),;
      POC       N(18,2),;
      DUG       N(18,2),;
      UKUPDUG   N(18,2),;
      POT       N(18,2),;
      SALDOUK   N(18,2),;
      SALDO     N(18,2),;
      PROCNAPUK N(10,4),;
      PROCNAP   N(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTPRENOS.DBF')
   CREATE TABLE VTPRENOS(;
      PUTANJA   C(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VTK.DBF')
   CREATE TABLE VTK(;
   BRNAL      C(6) ,;
   BRANAL     N(2) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTNALZ.DBF')
   CREATE TABLE VTNALZ(;
   BRNAL1     C(6) ,;
   BRNAL2     C(6) ,;
   GRUPA      C(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTRAC.DBF')
   CREATE TABLE VTRAC(;
      PIB       C(10),;
      GRUPA     C(2),;
      SIFUL     C(3),; 
      BRNAL     C(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VTKART.DBF')
   CREATE TABLE VTKART(;
       PIB       C(10),;
       DATDOK    D(8) ,;
       DUG       N(18,2) ,;
       POT       N(18,2) ,;
       SALDO     N(18,2),;
       BRNAL     C(6) ,;
       GRUPA     C(3) ,;
       VALUTA    D(8) ,;
       BRRAC     C(20),;  
       OPIS      C(20),;
       IME_PREZ  C(30),;
       SIFUL     C(3) ,; 
       ULICA     C(25),;
       ULBROJ    C(7) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

IF !FILE('VTSPIS.DBF')
   CREATE TABLE VTSPIS(;
   GRUPA      C(2),;   
   BRNAL      C(6),;
   DAT0       D(8),;
   DAT1       D(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VTGDE.DBF')
   CREATE TABLE VTGDE(;
      TPOLJE     N(12) ,;
      TMENI      N(1),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


IF !FILE('VTZGRADE.DBF')
   CREATE TABLE VTZGRADE(;
      sifmernom C(4),;
      NAZmernom C(30),;
      ADRmernom C(40),;            
      POVZGRADE N(12,2),;
      ST0       N(12,2),;
      ST1       N(12,2),;
      ST2       N(12,2),;
      ST3       N(12,2),;
      ST4       N(12,2),;
      ST5       N(12,2),;
      ST6       N(12,2),;
      ST7       N(12,2),;
      ST8       N(12,2),;
      ST9       N(12,2),;
      ST10      N(12,2),;
      ST11      N(12,2),;
      ST12      N(12,2),;
      POtmernom N(12,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
*------HACCAP-------------------

if !file('hc01.dbf')
  * wait windows ' kal  '
   create table hc01;
               (datdok    d(8),;
                rsif      c(5),;
                naz       c(40),;
                jed       c(10) ,;
                kol       n(18,3),;
                proizveo  c(20),;
                kontrola  c(20),;
                prethzal  n(18,3),;
                ukupno    n(18,3),;
                vecemanje n(18,3),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc02.dbf')
  * wait windows ' kal  '
   create table hc02;
               (datdok    d(8),;
                rsif      c(5),;
                naz       c(40),;
                jed       c(10) ,;
                izdato    n(18,2),;
                kol       n(18,2),;
                radman    n(18,3),;
                cena      n(18,2),;
                iznos     n(18,2),;
                mesec     n(2),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('hc02s.dbf')
  * wait windows ' kal  '
   create table hc02s;
               (datdok    d(8),;
                rsif      c(5),;
                naz       c(40),;
                jed       c(10) ,;
                kol       n(18,2),;
                cena      n(18,2),;
                iznos     n(18,2),;
                primedba  c(30),;
                mesec     n(2),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc03.dbf')
  * wait windows ' kal  '
   create table hc03;
               (datdok    d(8),;
                brkal     c(6),;
                rsif      c(5),;
                naz       c(40),;
                jed       c(10) ,;
                kol       n(18,2),;
                kvalitet  c(30),;
                nacinpak  c(20),;
                stanje    n(18,2),;
                opis1     c(30),;
                opis2     c(30),;
                opis3     c(30),;
                uugovor   n(18,2),;
                uisporuc  n(18,2),;
                uprimedbe c(30),;
                metoda    c(30),;
                kugovor   n(18,2),;
                kisporuc  n(18,2),;
                kprimedbe c(30),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('hc04.dbf')
  * wait windows ' kal  '
   create table hc04;
               (datdok    d(8),;
                rsif      c(5),;
                operacija c(30),;
                plansir   n(18,2),;
                kackavalj n(18,2),;
                kremsir   n(18,2),;
                sitansir  n(18,2),;
                urda      n(18,2),;
                komentar  c(30),;
                zbir      c(1),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc04k.dbf')
  * wait windows ' kal  '
   create table hc04k;
               (datdok    d(8),;
                rsif      c(5),;
                operacija c(30),;
                jogurt    n(18,2),;
                vita      n(18,2),;
                pavlaka   n(18,2),;
                komentar  c(30),;
                zbir      c(1),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc040.dbf')
  * wait windows ' kal  '
   create table hc040;
               (rsif      c(5),;
                operacija c(30),;
                zbir      c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc040k.dbf')
  * wait windows ' kal  '
   create table hc040k;
               (rsif      c(5),;
                operacija c(30),;
                zbir      c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('hc05.dbf')
  * wait windows ' kal  '
   create table hc05;
               (datdok    d(8),;
                linija    c(20),;
                koldost   n(18,2),;
                kolizmer  n(18,2),;
                kolraz    n(18,2),;
                procmm    n(12,2),;
                sh        c(20),;
                kolsvega  n(18,2),;
                kolzalihe n(18,2),;
                kolzaprer n(18,2),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc051.dbf')
  * wait windows ' kal  '
   create table hc051;
               (datdok    d(8),;
                proizvod  c(20),;
                kol       n(18,2),;
                kolzalihe n(18,2),;
                kolsvega  n(18,2),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


if !file('hc06.dbf')
  * wait windows ' fakg  '
   create table hc06;
               (brkal     c(6),;
                datdok    d(8),;
                brrac     c(20),;
                sifra     c(5),;
                naziv     c(40),; 
                rsif      c(5),;
                naz       c(30),;
                koli      n(18,2),;
                poruceno  n(18,2),;
                datnar    d(8),;
                predvred  n(18,2),;                     
                fakvred   n(18,2),;                     
                uplata    n(18,2),;                     
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
         use
      endif


if !file('hc07.dbf')
  * wait windows ' kal  '
   create table hc07;
               (datdok    d(8),;
                brkal     c(6),;
                rsif      c(5),;
                naz       c(40),;
                jed       c(10) ,;
                kol       n(18,2),;
                sifra     c(5),;
                naziv     c(30),;
                pratecad  c(30),;
                oper      c(2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif

if !file('hc08.dbf')
  * wait windows ' kal  '
   create table hc08;
               (datdok    d(8),;
                brkal     c(6),;
                rsif      c(5),;
                naz       c(40),;
                jed       c(10) ,;
                kol       n(18,2),;
                koli      n(18,2),;
                datizd    d(8),; 
                izdao     c(30),;
                primio    c(30),;
                stanje    n(18,2),;
                datum     d(8),;
                vreme     c(8),;
                arhiva    c(1),;
                preneto   c(1),;   
                idbr      n(11);                    
                )
             use
endif


*-------javna preduzeca******
if !file('bkobav.dbf')
   create table bkobav (;
      reDbr      n(12,0),;
      fvrsta    c(3),;
      fnaz      c(30),;
      brrac     c(20),;
      datdok    d(8),;
      sifzah    c(4),;
      nazzah    c(30),;
      brzah     c(20),;
      datzah    d(8),;
      datpri    d(8),;
      valuta    d(8),;
      pot       n(18,2),;
      potzah    n(18,2),;
      sifra     c(5),;
      naziv     c(40),;
      maticni   c(13),;
      pib       c(9),;
      datupl    d(8),;
      dinupl    n(18,2),;
      danazak   n(09),;
      brnal     C(6),;
      razlog1   C(75),;
      razlog2   C(75),;
      dat0      d(8),;
      dat1      d(8),;
      preneto   c(1),;   
      idbr      n(11);                    
      )              
   use
endif

if !file('BKBS.dbf')
   create table BKBS ;
              (aop      c(4)   ,;              
               konta    c(16)  ,;
               opis     c(57),;
               preth    n(12,0),;
               plan     n(12,0),;
               plankv   n(12,0),;
               realkv   n(12,0),;               
               indeks   n(12,2),;    
               skrac    c(1),;
               rlini    c(1),;
               NETO      n(12,0),;                              
               PRETHP    n(12,0),;                              
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif
              


if !file('BKTOK.dbf')
   create table BKTOK;
              (aop      c(4)   ,;              
               opis     c(67),;
               preth    n(12,0),;
               plan     n(12,0),;
               plankv   n(12,0),;
               realkv   n(12,0),;               
               indeks   n(12,2),;               
               rlini    c(1),;
               rednibr   C(2),;                              
               NETO      n(12,0),;                              
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif



if !file('BKtrza.dbf')
   create table BKTRZA ;
              (redbr    c(3)   ,;              
               opis     c(62),;
               preth    n(12,0),;
                plan     n(12,0),;
                plankv   n(12,0),;
               realkv   n(12,0),;               
               indeks   n(12,2),;               
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('BKDINZ.dbf')
   create table BKDINZ ;
              (redbr    c(3)   ,;              
               opis     c(62),;
               zapneod  n(12,0),;
               zapod    n(12,0),;               
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
ENDIF

if !file('BKNENA.dbf')
   create table BKNENA ;
              (redbr     c(3)   ,;              
               opis      c(62),;
               prethP    n(12,0),;
               prethD    n(12,0),;               
               TEKP      n(12,0),;
               TEKD      n(12,0),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('BKCENE.dbf')
   create table BKCENE ;
              (redbr     c(3)   ,;              
               opis      c(62),;
               decembar  n(12,3),;
               mes1      n(12,3),;
               mes2      n(12,3),;
               mes3      n(12,3),;
               mes4      n(12,3),;
               mes5      n(12,3),;
               mes6      n(12,3),;
               mes7      n(12,3),;
               mes8      n(12,3),;
               mes9      n(12,3),;
               mes10     n(12,3),;
               mes11     n(12,3),;
               mes12     n(12,3),;
               indeks    n(12,2),;
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('BKposn.dbf')
   create table BKposn ;
              (redbr    c(3)   ,;              
               opis     c(62),;
               preth    n(12,0),;
               plan     n(12,0),;
               plankv   n(12,0),;
               realkv   n(12,0),;               
               indeks   n(12,2),;               
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
ENDIF



if !file('BKsubv.dbf')
   create table BKsubv ;
              (redbr    c(3)   ,;              
               opis     c(62),;
               preth    n(12,0),;
               tekuca   n(12,0),;
               realkv   n(12,0),;               
               indeks   n(12,2),;               
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
ENDIF


if !file('BKkred.dbf')
   create table BKkred ;
              (kreditor  c(25),;
               nazkred   c(25),;
               domastra  c(1),;
               likvikapi c(1),;
               valuta    c(3),;
               stanjedev n(12,0),;
               stanjedin n(12,0),;               
               rok       d(8),;               
               pocek     n(12,0),;
               datprveo  d(8),;               
               kastopa   n(12,2),;               
               brotplata n(12,0),;               
               glav1     n(12,0),;               
               glav2     n(12,0),;               
               glav3     n(12,0),;               
               glav4     n(12,0),;               
               kamata1     n(12,0),;               
               kamata2     n(12,0),;               
               kamata3     n(12,0),;               
               kamata4     n(12,0),;               
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
ENDIF


if !file('BKjavn.dbf')
   create table BKjavn ;
              (redbr    c(3)   ,;              
               vrsta    c(3),;
               opis     c(62),;
               preth    n(12,0),;
               plan     n(12,0),;
               plankv   n(12,0),;
               realkv   n(12,0),;               
               indeks   n(12,2),;               
               rlini    c(1),;
               preneto   c(1),;   
               idbr      n(11);      
              )
   use
ENDIF

if !file('bkperiod.dbf')
   create table bkperiod ;
              (mesec     c(2)   ,;              
               kvartal   c(1),;
               pregod    c(4),;
               tekgod    c(4),;
               plankurs  n(12,3),;                
               datpre    d(8),;
               datkraj   d(8),;
               datper    d(8),;
               datpoc    d(8),;
               datper0   d(8),;
               preneto   c(1),;   
               idbr      n(11);      
              )
   use
endif

if !file('BKGOTOV.dbf')
   create table BKGOTOV ;
              (redbr     c(3)   ,;              
               stanjenad d(8),;
               aop       c(3),;
               vrsta     c(60),;               
               nazbanke  c(60),;               
               dindev    n(14,2),;
               dindin    n(14,2),;
               rlini     c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif


if !file('BKFININ.dbf')
   create table BKFININ ;
              (redbr     c(4),;              
               aop       c(3),;
               opis      c(65),;               
               konta     c(20),;               
               stanje    n(14,2),;
               rlini     c(1),;
               preneto   c(1),;   
               idbr      n(11);                    
              )
   use
endif

if !file('socvoda.dbf')
   create table socvoda ;
       ( ;
        prezime     c(24), ;
        ime         c(18), ;
        ime_prez    c(30) ,;
        ulicasoc    c(25), ;
        broj        c(10), ;
        ulica       c(25) ,;
        ulbroj      c(7) ,;
        vodovod     c(20), ;
        pib         c(13),;
        dupsif      c(1),; 
        brc         n(10,0), ;
        brstan      n(10) ,;
        popsoc      n(10,2) ,;  
        procenat    n(10,2), ;
        sifra       c(05) ,;
        siful       c(3),; 
        grupa       c(2),;        
        preneto     c(1),;   
        idbr        n(11);
        )
        use
endif

if !file('setekgr.dbf')
   create table setekgr(;
      pib       c(13),;
      grupa     c(2),;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      porez     n(12,2),;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      ostalo    n(12,2),;
      sporazum  n(12,2),;
      faktura   n(12,2) ,;
      uplacper  n(12,2) ,;
      procnapl  n(12,2) ,;
      brrac     c(25),;
      pot       n(9) ,;
      potk      n(9) ,;      
      datum     d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      mesec     n(2),; 
      brnal     c(6), ;
      ime_prez  c(30) ,;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      korvoda   n(12) ,;
      korkanal  n(12) ,;
      brojfak   n(12) ,;
      brojupl   n(12) ,;      
      popsoc    n(4) ,;  
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      nredni    n(18,0),;      
      pausal    c(1),; 
      mespausal n(9),;
      sifra     c(5),;      
      def1      c(1),;
      radikam   n(06),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jnopsti.dbf')
   create table jnopsti ;
               (sifrao     c(10)     ,;
                nazivo      c(40)    ,;              
                sifrad     c(10)    ,;              
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
endif

if !file('jndopun.dbf')
   create table jndopun ;
               (sifrad     c(10)    ,;              
                nazivd     c(40)    ,;              
                preneto    c(1),;   
                idbr       n(11);                    
                )
   use
endif


if !file('jnplan.dbf')
   create table jnplan ;
                    (sifrao    c(10),;
                     rsif       c(5),;                     
                     kol        n(18,2),;
                     cena       n(18,2),;                     
                     dug        n(18,2),;
                     arhiva    c(1),;                        
                     preneto    c(1),;   
                     idbr       n(11);                    
                     )              
                use
             endif

if !file('jnreal.dbf')
   create table jnreal ;
                     (sifra     c(5),;   
                     sifrao    c(10),;
                     datdok    d(8),;                                         
                     valuta    d(8),;
                     brrac     c(20),;                     
                     dug       n(18,2),;
                     pot       n(18,2),;                     
                     brnal     c(6),;
                     rsif      c(5),; 
                     kol       n(18,2),;
                     cena      n(18,2),;                     
                     arhiva    c(1),;                                             
                     preneto   c(1),;   
                     idbr      n(11);                    
                     )              
                use
             endif


if !file('vdtuzbe.dbf')
   create table vdtuzbe ; 
  ( ;
        pib         C(13), ;        
        DATUM       D, ;
        brrac       c(20), ;  
        DUG         N(12,2), ;
        pot         N(12,2), ;
        grupa       c(3), ;                
        brnal       c(6), ;        
        OPIS        C(25), ;
        saldo       N(12,2),;         
        valuta    d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


*---------------razanj--------------------------

if !file('ra.dbf')
   create table ra(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      p1smece   c(1) ,;
      p2smece   c(1) ,;
      povs1     n(12,2) ,;
      povs2     n(12,2) ,;
      popproc   n(7,3) ,;
      popkan    n(7,3) ,;
      popsoc    n(4) ,;  
      pausal    c(1) ,; 
      mespausal n(9),;
      m3spausal n(9),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      voda      n(12,2) ,;
      voda2     n(12,2) ,;
      kan       n(12,2) ,;
      smece1    n(12,2) ,;
      smece2    n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      procpor   n(09,2),;
      porez     n(12,2),;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(9) ,;
      vsifra    c(9),; 
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      datpri    d(8) ,;
      datodj    d(8) ,;
      ugovor    c(20) ,;
      ssifra    c(6) ,;
      meseci    n(2)  ,; 
      precnik   c(10) ,;
      brojvodom c(15) ,;
      datugrad  d(8) ,;
      bazdar1   d(8) ,;
      radi      c(1) ,;
      prijavak  c(20) ,;
      prijavak2 c(20) ,;
      prijavak3 c(20) ,;
      napomena  c(50) ,;
      napomena2 c(50),;
      sporazum  n(12,2),;   
      datsporaz d(8),;
      zbirni    n(5),;
      idbroj    c(10),; 
      broj      c(7),;
      vsif      c(6),; 
      pib2      c(5),;
      brrac     c(20),;
      model     c(20),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      maticnibr c(13);
      )                                                                                                                                                                         
   use
endif


if !file('racene.dbf')
   create table racene(;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      cvoda2    n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      csme1     n(10,3) ,;
      csme2     n(10,3) ,;
      cs1       n(10,3) ,;
      cs2       n(10,3) ,;
      cs3       n(10,3) ,;
      cs4       n(10,3) ,;
      cs5       n(10,3) ,;
      cs6       n(10,3) ,;
      cs7       n(10,3) ,;
      cs8       n(10,3) ,;
      cs9       n(10,3) ,;
      cs10      n(10,3) ,;
      ncs1      c(25)   ,;
      ncs2      c(25)   ,;
      ncs3      c(25)   ,;
      ncs4      c(25)   ,;
      ncs5      c(25)   ,;
      ncs6      c(25)   ,;
      ncs7      c(25)   ,;
      ncs8      c(25)   ,;
      ncs9      c(25)   ,;
      ncs10     c(25)   ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      procpor   n(09,2);
      )                                                                                                                                                                         
   use
endif

if !file('raprenos.dbf')
   create table raprenos(;
      putanja   c(70);
      )                                                                                                                                                                         
   use
endif




if !file('raspis.dbf')
   create table raspis(;
   grupa      c(2),;   
   siful      c(3),; 
   kssifra    c(9),;  
   pvoda      c(1) ,;
   pkanal     c(1) ,;
   slep       c(1) ,;
   pausal     c(1) ,; 
   bazdar1    d(8) ,;
   radi       c(1) ,;
   dat0       d(8),;
   dat1       d(8),;
   din0       n(18,2),;
   din1       n(18,2); 
   )
   use
endif


if !file('raracd.dbf')
   create table raracd(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      p1smece   c(1) ,;
      p2smece   c(1) ,;
      povs1     n(12,2) ,;
      povs2     n(12,2) ,;
      cs1       n(10,3) ,;
      cs2       n(10,3) ,;
      cs3       n(10,3) ,;
      cs4       n(10,3) ,;
      cs5       n(10,3) ,;
      cs6       n(10,3) ,;
      cs7       n(10,3) ,;
      cs8       n(10,3) ,;
      cs9       n(10,3) ,;
      cs10      n(10,3) ,;
      ncs1      c(25)   ,;
      ncs2      c(25)   ,;
      ncs3      c(25)   ,;
      ncs4      c(25)   ,;
      ncs5      c(25)   ,;
      ncs6      c(25)   ,;
      ncs7      c(25)   ,;
      ncs8      c(25)   ,;
      ncs9      c(25)   ,;
      ncs10     c(25)   ,;
      slep      c(1) ,;
      popproc   n(4) ,;
      popkan    n(4) ,;
      popsoc    n(4) ,;  
      pausal    c(1) ,; 
      mespausal n(9),;
      m3spausal n(9),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      ukpot     n(9) ,;
      voda      n(12,2) ,;
      voda2     n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      smece1    n(12,2) ,;
      smece2    n(12,2) ,;
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(9) ,;
      vsifra    c(9),; 
      vrsta     c(1),; 
      pstanje   n(12) ,;
      zstanje   n(12) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      cvoda2    n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      csme1     n(10,3) ,;
      csme2     n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      sporazum  n(12,2),;       
      broj      c(7),;
      asifra    c(5),;
      anaziv    c(40),;
      amesto    c(25),;
      aulica    c(30),;
      brrac     c(20),;  
      model     c(20),;  
      pib2      c(5),;         
      procpor   n(09,2),;
      porez     n(12,2),;
      poc       n(9),;
      kraj      n(9),;
      kssifra   c(9),;       
      ssifra    c(6);  
      )                                                                                                                                                                         
   use
endif


if !file('raracu.dbf')
   create table raracu(;
       pib       c(13),;
       datum     d(8) ,;
       pot       n(18,2);
       )
   use
endif


if !file('vr.dbf')
   create table vr(;
      pib       c(13),;
      kod1      c(5),;
      kod2      c(2),; 
      grupa     c(2),;
      ime_prez  c(30) ,;
      stampa    c(1),;      
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      slep      c(1) ,;
      popproc   n(7,3) ,;
      popkan    n(7,3) ,;
      popsoc    n(4) ,;  
      pausal    c(1) ,; 
      mespausal n(9),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      st0k      n(9) ,;
      st1k      n(9) ,;
      st2k      n(9) ,;
      st3k      n(9) ,;
      st4k      n(9) ,;
      st5k      n(9) ,;
      st6k      n(9) ,;
      st7k      n(9) ,;
      st8k      n(9) ,;
      st9k      n(9) ,;
      st10k     n(9) ,;
      st11k     n(9) ,;
      st12k     n(9) ,;
      potk      n(9) ,;
      potsk     n(9) ,;
      st0p      n(9) ,;
      st1p      n(9) ,;
      st2p      n(9) ,;
      st3p      n(9) ,;
      st4p      n(9) ,;
      st5p      n(9) ,;
      st6p      n(9) ,;
      st7p      n(9) ,;
      st8p      n(9) ,;
      st9p      n(9) ,;
      st10p     n(9) ,;
      st11p     n(9) ,;
      st12p     n(9) ,;
      potp      n(9) ,;
      potsp     n(9) ,;
      voda      n(12,2) ,;
      voda2     n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      procpor   n(09,2),;
      porez     n(12,2),;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(9) ,;
      vsifra    c(9),; 
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      datpri    d(8) ,;
      datodj    d(8) ,;
      ugovor    c(20) ,;
      ssifra    c(6) ,;
      meseci    n(2)  ,; 
      precnik   c(10) ,;
      brojvodom c(15) ,;
      datugrad  d(8) ,;
      bazdar1   d(8) ,;
      radi      c(1) ,;
      prijavak  c(20) ,;
      prijavak2 c(20) ,;
      prijavak3 c(20) ,;
      napomena  c(50) ,;
      napomena2 c(50),;
      sporazum  n(12,2),;   
      datsporaz d(8),;
      zbirni    n(5),;
      idbroj    c(10),; 
      broj      c(7),;
      stvoda    c(1),;
      stkan     c(1),; 
      stan      c(3),;
      vsif      c(6),; 
      pib2      c(5),;
      brrac     c(20),;
      model     c(20),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      pock      n(9),;
      krajk     n(9),;
      pocp      n(9),;
      krajp     n(9),;
      mesto     c(25),;
      maticnibr c(13);
      )                                                                                                                                                                         
   use
endif

if !file('vrracd.dbf')
   create table vrracd(;
      pib       c(13),;
      kod1      c(5),;
      kod2      c(2),;       
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      slep      c(1) ,;
      popproc   n(4) ,;
      popkan    n(4) ,;
      popsoc    n(4) ,;  
      pausal    c(1) ,; 
      mespausal n(9),;
      nsporaz   n(12,2),;
      nspdat    d(8),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      st0k      n(9) ,;
      st1k      n(9) ,;
      st2k      n(9) ,;
      st3k      n(9) ,;
      st4k      n(9) ,;
      st5k      n(9) ,;
      st6k      n(9) ,;
      st7k      n(9) ,;
      st8k      n(9) ,;
      st9k      n(9) ,;
      st10k     n(9) ,;
      st11k     n(9) ,;
      st12k     n(9) ,;
      potk      n(9) ,;
      potsk     n(9) ,;
      st0p      n(9) ,;
      st1p      n(9) ,;
      st2p      n(9) ,;
      st3p      n(9) ,;
      st4p      n(9) ,;
      st5p      n(9) ,;
      st6p      n(9) ,;
      st7p      n(9) ,;
      st8p      n(9) ,;
      st9p      n(9) ,;
      st10p     n(9) ,;
      st11p     n(9) ,;
      st12p     n(9) ,;
      potp      n(9) ,;
      potsp     n(9) ,;
      ukpot     n(9) ,;
      voda      n(12,2) ,;
      voda2     n(12,2) ,;
      kan       n(12,2) ,;
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      sifra     c(9) ,;
      vsifra    c(9),; 
      vrsta     c(1),; 
      pstanje   n(12) ,;
      zstanje   n(12) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      cvoda2    n(10,3) ,;
      ckanal    n(10,3) ,;
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      sporazum  n(12,2),;       
      broj      c(7),;
      asifra    c(5),;
      anaziv    c(40),;
      amesto    c(25),;
      aulica    c(30),;
      brrac     c(20),;  
      model     c(20),;  
      pib2      c(5),;         
      procpor   n(09,2),;
      porez     n(12,2),;
      poc       n(9),;
      kraj      n(9),;
      pock      n(9),;
      krajk     n(9),;
      pocp      n(9),;
      krajp     n(9),;
      kssifra   c(9),;       
      ssifra    c(6);  
      )                                                                                                                                                                         
   use
endif

if !file('vrupl.dbf')
   create table vrupl(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       brnal     c(6) ,;
       grupa     c(3) ,;
       zatvar    c(1),;
       valuta    d(8) ,;
       brrac     c(20),;  
       opis      c(20),;
       sifra     c(9) ,;
       saldo     n(18,2),;
       danas     d(8) ,;
       vreme     c(8) ,; 
       oper      c(2) ,;
       arhiva    c(1) ,; 
       stan      c(3),;
       nsporaz   n(18,2),;
       sprazlika n(18,2);
       )
   use
endif

IF !FILE('RAGRO.DBF')
   CREATE TABLE RAGRO(;
       SIFRA     C(05),;
       IME_PREZ  C(30),; 
       KOL       N(18,0),;
       CENA      N(18,2),;
       IZNOS     N(18,2),;
       PROCPOR   N(09,2),;
       POREZ     N(12,2),;
       SVEGA     N(12,2),; 
       MESTO     C(25) ,;
       ULICA     C(25) ,;
       BROJ      C(10) ,;
       DUG       N(18,2);
       )

use
ENDIF


*----------PROKUPLJE------------
IF !FILE('VKPOST.DBF')
   CREATE TABLE VKPOST(;
      F1         C(80),;
      F2         C(80),;
      F3         C(80),;      
      F4         C(80),;            
      F5         C(80),;                  
      F6         C(80),;                 
      D1         C(220),;      
      D2         C(220),;
      B01        C(80),;
      B02        C(80),;
      B11        C(80),;           
      B12        C(80),;     
      B21        C(80),;           
      B22        C(80),;
      B31        C(80),;      
      B32        C(80),;
      B41        C(80),;      
      B42        C(80),;
      B51        C(80),;      
      B52        C(80),;
      B61        C(80),;
      B62        C(80),;      
      B71        C(80),;
      B72        C(80),;      
      B81        C(80),;
      B82        C(80),;      
      B91        C(80),;
      B92        C(80),;      
      UNAZIV     C(30),;      
      UULICA     C(40),;
      UBROJ      C(20),;
      UMESTO     C(40),;                       
      UPOSTA     C(10),;                                                   
      Unazivpost C(10),;                                                         
      uREON      C(10),;      
      Upak       C(10),;      
      K11        C(220),;            
      K12        C(220),;                  
      K13        C(220),;            
      K14        C(220),;                  
      K15        C(220),;                  
      K16        C(220),;                  
      K17        C(220),;                              
      K21        C(220),;            
      K22        C(220),;                  
      K23        C(220),;            
      K24        C(220),;                  
      K25        C(220),;                  
      K26        C(220),;                  
      K27        C(220),;                  
      K31        C(220),;            
      K32        C(220),;                  
      K33        C(220),;            
      K34        C(220),;                  
      K35        C(220),;                  
      K36        C(220),;                  
      K37        C(220),;                  
      K41        C(220),;            
      K42        C(220),;                  
      K43        C(220),;            
      K44        C(220),;                  
      K45        C(220),;                  
      K46        C(220),;                  
      K47        C(220),;                  
      K51        C(220),;            
      K52        C(220),;                  
      K53        C(220),;            
      K54        C(220),;                  
      K55        C(220),;                  
      K56        C(220),;                  
      K57        C(220),;                  
      K61        C(220),;            
      K62        C(220),;                  
      K63        C(220),;            
      K64        C(220),;                  
      K65        C(220),;                  
      K66        C(220),;                  
      K67        C(220),;                  
      K71        C(220),;            
      K72        C(220),;                  
      K73        C(220),;            
      K74        C(220),;                  
      K75        C(220),;                  
      K76        C(220),;                  
      K77        C(220),;                  
      K81        C(220),;            
      K82        C(220),;                  
      K83        C(220),;            
      K84        C(220),;                  
      K85        C(220),;                  
      K86        C(220),;                  
      K87        C(220),;                  
      K91        C(220),;            
      K92        C(220),;                  
      K93        C(220),;            
      K94        C(220),;                  
      K95        C(220),;                  
      K96        C(220),;                  
      K97        C(220),;                  
      KA1        C(220),;            
      KA2        C(220),;                  
      KA3        C(220),;            
      KA4        C(220),;                  
      KA5        C(220),;                  
      KA6        C(220),;                  
      KA7        C(220),;                  
      KB1        C(220),;            
      KB2        C(220),;                  
      KB3        C(220),;            
      KB4        C(220),;                  
      KB5        C(220),;                  
      KB6        C(220),;                  
      KB7        C(220),;                  
      KC1        C(220),;            
      KC2        C(220),;                  
      KC3        C(220),;            
      KC4        C(220),;                  
      KC5        C(220),;                  
      KC6        C(220),;                  
      KC7        C(220),;                  
      U11        C(220),;            
      U12        C(30),;                  
      U13        C(30),;            
      U14        C(30),;                  
      U15        C(30),;                  
      U16        C(30),;                        
      U17        C(30),;                        
      T0         C(220),;      
      T1         C(220),;            
      T2         C(220),;                  
      T3         C(220),;            
      T4         C(220),;                  
      T5         C(220),;                  
      DATUMDOSP  C(10),;                  
      SVRHAUPL   C(60),;      
      IZNOSPLAC  C(20),;                      
      TR         C(30),;            
      PNB        C(20),;            
      SIFU       C(10),;      
      IZNOSOCR   C(20),;             
      DUPLIKAT   C(20),;
      ZAPRETRAGU C(20),;
      GRAD       C(60),;
      I1         C(60),;
      I2         C(60);
       )
   use
endif

IF !FILE('VKPOSTD.DBF')
   CREATE TABLE VKPOSTD(;
      POLJE      C(10),;
      VREDNOST   C(80),;
      TABELA     C(10),;      
      TEKST      C(220),;       
      FOLDER     C(20);                 
      )
   use
endif

IF !FILE('VKPOSTT.DBF')
   CREATE TABLE VKPOSTT(;
      POLJE      C(10),;
      VREDNOST   C(220),;
      TABELA     C(10),;      
      TEKST      C(220),;                            
      FOLDER     C(20);        
      )
   use
endif

*////////////////CICEVAC//


*-----------------boljevac----------------------------------------
if !file('jc.dbf')
   create table jc(;
      sifra     c(05) ,;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(30) ,;
      siful     c(3),; 
      ulica     c(25) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1) ,;      
      pgro      c(1) ,;                  
      post1     c(1) ,;      
      post2     c(1) ,;            
      kateg     N(10,2) ,;
      kategsme  N(10,2) ,;      
      vrst      c(6),;       
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  c(1),;
      pausal    c(1) ,; 
      mespausal n(10,2),;
      pov       n(12,2) ,;
      pov1      n(12,2) ,;      
      popvoda   n(10,3) ,;
      popkan    n(10,3) ,;
      popsme    n(10,3) ,;      
      popgro    n(10,3) ,;            
      popsoc    n(10,3) ,;  
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;      
      smece2    n(12,2) ,;      
      gro       n(12,2) ,;                  
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      procvoda  n(09,2),;
      prockan   n(09,2),;      
      procsme   n(09,2),;
      procgre   n(09,2),;      
      procgro   n(09,2),;      
      procost1  n(09,2),;            
      procost2  n(12,2),;
      porvoda   n(12,2),;
      porkan    n(12,2),;      
      porsme    n(12,2),;
      porsme2   n(12,2),;      
      porgro    n(12,2),;
      porost1   n(12,2),;
      porost2   n(12,2),; 
      porez20   n(12,2),;
      porez10   n(12,2),;      
      osnov20   n(12,2),;      
      osnov10   n(12,2),;            
      osnov0    n(12,2),; 
      porezuk   n(12,2),;           
      osnovuk   n(12,2),; 
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      nazost1   c(20),;      
      dinost1   n(12,2),;            
      nazost2   c(20),;      
      dinost2   n(12,2),;            
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      datpri    d(8) ,;
      datodj    d(8) ,;
      ugovor    c(20) ,;
      ugovork   c(20) ,;
      meseci    n(2)  ,; 
      precnik   c(10) ,;
      brojvodom c(15) ,;
      datugrad  d(8) ,;
      bazdar1   d(8) ,;
      radi      c(1) ,;
      napomena  c(50) ,;
      napomena2 c(50),;
      napomena3 c(50),;
      napomena4 c(50),;
      napomena5 c(50),;
      zbirni    n(5),;
      brrac     c(25),;
      model     c(20),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      posta     c(5),;
      mesto     c(25),;
      maticni0  c(13),;
      maticni1  c(13),;
      prethvlas c(40),;
      opis      c(50),;
      brnal     c(6),;
      broj      c(7),;
      popust    c(1),;
      saldo     n(12,2),;
      datcit    d(8),;
      utuziznos n(12,2),;
      utuzdat0  d(8),;
      utuzdat1  d(8),;
      radikam    n(06),;      
      ZAOKRUZ    n(12,2),;
      KONTO     c(10),;
      TEL       c(20),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jcupl.dbf')
   create table jcupl(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       brnal     c(6) ,;
       grupa     c(3) ,;
       zatvar    c(1),;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       osndug    n(18,2) ,;       
       kamata    n(18,2) ,;              
       saldo     n(18,2),;
       sifra     c(9) ,;
       danas     d(8) ,;
       vreme     c(8) ,; 
       oper      c(2) ,;
       arhiva    c(1) ,; 
       stan      c(3),;
       dana      n(12,0),;
       ime_prez  c(35),;
       preneto   c(1),;
       idbr      n(11);
      )
   use
endif

if !file('jcupld.dbf')
   create table jcupld(;
      pib       c(13),;
      grupa     c(2),;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;      
      smece2    n(12,2) ,;      
      gro       n(12,2) ,;                  
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1) ,;      
      pgro      c(1) ,;
      post1     c(1) ,;
      post2     c(1) ,;      
      popVODA   n(10,3) ,;
      popkan    n(10,3) ,;
      popsme    n(10,3) ,;      
      popGRo    n(10,3) ,;            
      popsoc    n(10.3) ,;  
      pausal    c(1) ,; 
      mespausal n(10,3),;
      pov       n(12,2) ,;
      povne     n(12,2) ,;
      osnov     n(12,2) ,;
      procvoda  n(09,2),;
      prockan   n(09,2),;      
      procsme   n(09,2),;
      procgro   n(09,2),;      
      procost1 n(09,2),;            
      procost2 n(12,2),;
      porvoda   n(12,2),;
      porkan    n(12,2),;      
      porsme    n(12,2),;
      porsme2  n(12,2),;
      porgro    n(12,2),;
      porost1   n(12,2),;
      porost2   n(12,2),; 
      porez20   n(12,2),;
      porez10   n(12,2),;      
      osnov20   n(12,2),;      
      osnov10   n(12,2),;            
      osnov0    n(12,2),; 
      porezuk   n(12,2),;           
      osnovuk   n(12,2),; 
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      rabat     n(12,2) ,;
      ostalo    n(12,2),;
      nazost1   c(20),;      
      dinost1   n(12,2),;            
      nazost2   c(20),;      
      dinost2   n(12,2),;            
      sporazum  n(12,2),;
      brrac     c(25),;
      model     c(20),;
      pot       n(9) ,;
      pots      n(9) ,;
      akont     n(12,2) ,;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      mes       n(2),;
      ukpot     n(9),;
      poc       n(9),;
      kraj      n(9),;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      csmece    n(10,3) ,;      
      csmece2   n(10,3) ,;            
      cgro      n(10,3) ,;                  
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      procakont n(10,3) ,;
      mesec     n(2),; 
      brnal     c(6), ;
      ime_prez  c(30) ,;
      siful     c(3),; 
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      broj      c(7) ,;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      poclanu   n(12,2) ,;
      ks        c(1),; 
      kssifra   c(9),; 
      vrsta     c(1),; 
      saldo     n(12,2),;
      datcit    d(8),;
      sifra     c(5),;
      posta     c(5) ,; 
      mesto     c(25) ,;
      ZAOKRUZ    n(12,2),;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jccene.dbf')
   create table jccene(;
      cenovnik  n(2) ,;
      pstanje   n(2) ,;
      zstanje   n(2) ,;
      datum     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      csmece    n(10,3) ,;      
      cgro      n(10,3) ,;                  
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      procvoda  n(09,2),;
      prockan   n(09,2),;
      procsme   n(09,2),;
      procgro   n(09,2),;
      procost1  n(09,2),;
      procost2  n(09,2),;      
      rabproc   n(09,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jculice.dbf')
   create table jculice(;
   siful      c(3) ,;
   ulica      c(25),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcobrac.dbf')
   create table jcobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
   preneto   c(1),;
   idbr      n(11);
      )
   use
endif


if !file('jcractxt.dbf')
   create table jcractxt(;
     txt1     c(70),;
     txt2     c(70),;
     txt3     c(70),;
     txt4     c(70),;
     txt5     c(70),;
     txt6     c(70),;
     preneto   c(1),;
     idbr      n(11);
      )
   use
endif

if !file('jcractx2.dbf')
   create table jcractx2(;
     txt1     c(70),;
     txt2     c(70),;
     txt3     c(70),;
     txt4     c(70),;
     txt5     c(70),;
     txt6     c(70),;
     preneto   c(1),;
     idbr      n(11);
      )
   use
endif

if !file('jcractxf.dbf')
   create table jcractxf(;
     txt1     c(50),;
     txt2     c(50),;
     txt3     c(50),;
     txt4     c(50),;
     txt5     c(50),;
     txt6     c(50),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcunp.dbf')
   create table jcunp ;
               (poc       n(2)     ,;
                kraj      n(2)     ,;
                datcit    d(8)   ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcgrupa.dbf')
   create table jcgrupa(;
      grupa     c(2),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcgrupak.dbf')
   create table jcgrupak(;
      grupa     c(3),;
      naziv     c(20),;
      poc       n(18,2),;
      dug       n(18,2),;
      ukupdug   n(18,2),;
      pot       n(18,2),;
      saldouk   n(18,2),;
      saldo     n(18,2),;
      procnapuk n(10,4),;
      procnap   n(10,4),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcprenos.dbf')
   create table jcprenos(;
      putanja   c(70),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcprv.dbf')
   create table jcprv(;
      vrsta     c(4),; 
      opis      c(60),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcpr.dbf')
   create table jcpr(;
      redbroj   n(6),;
      poziv     n(6),;
      radnal    n(6),; 
      pib       c(13),;
      ime_prez  c(30),;
      adresa    c(30),;
      telefon   c(20),;      
      vrsta     c(4),; 
      datnal    d(8),;
      vremenal  c(10),;
      datpoc    d(8),;
      vremepoc  c(10),;
      datkraj   d(8),;
      vremekraj c(10),;
      datobav   d(8),;
      vremeobav c(10),;
      opis1     c(70),;
      opis2     c(70),;
      opis3     c(70),;
      opis4     c(70),;
      uradjenrn n(6),;  
      odgovor   n(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcprrad.dbf')
   create table jcprrad(;
       radnal    n(6),; 
       broj      n(4),;
       ime_prez  c(30),;
       startbod  n(10,3),;      
       dana      n(6),;
       sati      n(6),;
       minuti    n(6),;
       iznos     n(14,2),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcprmat.dbf')
   create table jcprmat(;
       radnal    n(6),; 
       rsif      c(5),;
       naz       c(30),;
       koli      n(18,3),;      
       velcena   n(18,3),;
       velvred   n(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcprvoz.dbf')
   create table jcprvoz(;
       radnal    n(6),; 
       vsifra    c(4),;
       naz       c(30),;
       koli      n(18,3),;      
       vozcena   n(18,3),;
       vozvred   n(18,3),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jck.dbf')
   create table jck(;
   brnal      c(6) ,;
   branal     n(2) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcnalz.dbf')
   create table jcnalz(;
   brnal1     c(6) ,;
   brnal2     c(6) ,;
   grupa      c(2),;   
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jcspis.dbf')
   create table jcspis(;
   grupa      c(2),;   
   siful      c(3),; 
   brnal      c(6),;
   kssifra    c(9),;  
   pvoda      c(1) ,;
   pkanal     c(1) ,;
   slep       c(1) ,;
   pausal     c(1) ,; 
   bazdar1    d(8) ,;
   radi       c(1) ,;
   dat0       d(8),;
   dat1       d(8),;
   din0       n(18,2),;
   din1       n(18,2),; 
   dinmin     n(18,2),; 
   ulica      c(25) ,;   
   bezuplate  c(1) ,;   
   abeceda    c(1) ,;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif




if !file('jcracd.dbf')
   create table jcracd(;
      pib       c(13),;
      grupa     c(2),;
      ime_prez  c(40) ,;
      siful     c(3),; 
      pvoda     c(1) ,;
      pkanal    c(1) ,;
      psmece    c(1),;
      pgro      c(1) ,;                        
      post1     c(1) ,;                        
      post2     c(1) ,;                                    
      popVODA   n(10,3) ,;
      popkan    n(10,3) ,;
      popsoc    n(10,3) ,;  
      popgro    n(10,3) ,;            
      popsme    n(10,3) ,;                  
      pausal    c(1) ,; 
      mespausal n(10,2),;
      pov       n(12,2),;
      brstan    n(10) ,;
      ukstan    n(10)  ,;
      domac     n(10) ,;
      cenovnik  n(10),;
      ulica     c(25) ,;
      ulbroj    c(7) ,;
      st0       n(9) ,;
      st1       n(9) ,;
      st2       n(9) ,;
      st3       n(9) ,;
      st4       n(9) ,;
      st5       n(9) ,;
      st6       n(9) ,;
      st7       n(9) ,;
      st8       n(9) ,;
      st9       n(9) ,;
      st10      n(9) ,;
      st11      n(9) ,;
      st12      n(9) ,;
      pot       n(9) ,;
      pots      n(9) ,;
      ukpot     n(9) ,;
      voda      n(12,2) ,;
      kan       n(12,2) ,;
      smece     n(12,2) ,;      
      smece2    n(12,2) ,;      
      gro       n(12,2) ,;                        
      dopv      n(12,2) ,;
      dopk      n(12,2) ,;
      ukupno    n(12,2) ,;
      dug       n(12,2) ,;
      uplac     n(12,2) ,;
      kamata    n(12,2) ,;
      soc       n(12,2),;  
      svega     n(12,2) ,;
      akont     n(12,2) ,;
      odug      n(12,2) ,;
      opot      n(12,2) ,;
      osaldo    n(12,2) ,;
      rabat     n(12,2) ,;
      sdug      n(12,2) ,;
      ostalo    n(12,2),;
      nazost1   c(20),;      
      dinost1   n(12,2),;            
      nazost2   c(20),;      
      dinost2   n(12,2),;            
      sifra     c(5) ,;
      vsifra    c(9),; 
      vrsta     c(1),; 
      pstanje   n(12) ,;
      zstanje   n(12) ,;
      datum     d(8) ,;
      datdok     d(8) ,;
      valuta    d(8) ,;
      cvoda     n(10,3) ,;
      ckanal    n(10,3) ,;
      csmece    n(10,3) ,;      
      csmece2   n(10,3) ,;            
      cgro      n(10,3) ,;                  
      cdvoda    n(10,3) ,;
      cdkanal   n(10,3) ,;
      procakont n(10,3) ,;
      datod     d(8) ,;
      datdo     d(8),;
      mesec     n(2),; 
      sporazum  n(12,2),;       
      broj      c(7),;
      brrac     c(25),;  
      model     c(20),;  
      procvoda  n(09,2),;
      prockan   n(09,2),;      
      procsme   n(09,2),;
      procgro   n(09,2),;      
      proccis  n(09,2),;      
      procost1 n(09,2),;            
      procost2 n(12,2),;
      porvoda   n(12,2),;
      porkan    n(12,2),;      
      porsme    n(12,2),;
      porsme2   n(12,2),;
      porgro    n(12,2),;
      porost1   n(12,2),;
      porost2   n(12,2),; 
      porez20   n(12,2),;
      porez10   n(12,2),;      
      osnov20   n(12,2),;      
      osnov10   n(12,2),;            
      osnov0    n(12,2),; 
      porezuk   n(12,2),;           
      osnovuk   n(12,2),; 
      poc       n(9),;
      kraj      n(9),;
      kssifra   c(9),;       
      posta     c(05)     ,; 
      mesto     c(25)     ,;
      ZAOKRUZ   n(12,2),;      
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jcracu.dbf')
   create table jcracu(;
       d1           d(8) ,;
       din1         n(10,2) ,;
       d2           d(8) ,;
       din2         n(10,2) ,;
       d3           d(8) ,;
       din3         n(10,2) ,;
       d4           d(8) ,;
       din4         n(10,2) ,;
       d5           d(8) ,;
       din5         n(10,2) ,;
       d6           d(8) ,;
       din6         n(10,2) ,;
       d7           d(8) ,;
       din7         n(10,2) ,;
       d8           d(8) ,;
       din8         n(10,2) ,;
       d9           d(8) ,;
       din9         n(10,2) ,;
       d10          d(8) ,;
       din10        n(10,2) ,;
       d11          d(8) ,;
       din11        n(10,2) ,;
       d12          d(8) ,;
       din12        n(10,2) ,;
       d13          d(8) ,;
       din13        n(10,2) ,;
       d14          d(8) ,;
       din14        n(10,2) ,;
       d15          d(8) ,;
       din15        n(10,2) ,;
       d16          d(8) ,;
       din16        n(10,2) ,;
       d17          d(8) ,;
       din17        n(10,2) ,;
       d18          d(8) ,;
       din18        n(10,2) ,;
       d19          d(8) ,;
       din19        n(10,2) ,;
       d20          d(8) ,;
       din20        n(10,2) ,;
       d21          d(8) ,;
       din21        n(10,2) ,;
       d22          d(8) ,;
       din22        n(10,2) ,;
       d23          d(8) ,;
       din23        n(10,2) ,;
       d24          d(8) ,;
       din24        n(10,2) ,;
       pib          c(13) ,;
       uplaceno     n(10,2),;
       preneto   c(1),;
       idbr      n(11);
      )
   use
endif


if !file('jcobrac.dbf')
   create table jcobrac(;
   cenovnik   n(2) ,;
   jedankor   c(1) ,;
   svikor     c(1) ,;
   brobrac    n(2) ,;
   siful      c(3) ,;
   grupa      c(2) ,;
   brakont    n(2) ,;
   preneto   c(1),;
   idbr      n(11);
   )
   use
endif



if !file('jcrac.dbf')
   create table jcrac(;
      pib       c(13),;
      grupa     c(2),;
      siful     c(3),; 
      brnal     c(6),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jckart.dbf')
   create table jckart(;
       pib       c(13),;
       datum     d(8) ,;
       dug       n(18,2) ,;
       pot       n(18,2) ,;
       saldo     n(18,2),;
       brnal     c(6) ,;
       grupa     c(3) ,;
       valuta    d(8) ,;
       brrac     c(25),;  
       opis      c(20),;
       ime_prez  c(30),;
       siful     c(3) ,; 
       ulica     c(25),;
       ulbroj    c(7) ,;
       zatvar    c(1) ,; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcsud0.dbf')
   create table jcsud0(;
      redbr     c(6),;        
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcsud.dbf')
   create table jcsud(;
      redbr     c(6),;             
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      brrac     c(25),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif


if !file('jceks.dbf')
   create table jceks(;
      tdatcit   c(10),;   
      datcit    d(8),; 
      poc1      c(10),;             
      pib       c(9),;
      poc2      c(55),;
      tpot      c(15),;
      napomena  c(60),;
      pot       n(15,0),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jceput.dbf')
   create table jceput(;
      putanja   c(70),; 
      stanje    c(2),; 
      stpoc     c(2),; 
      stkraj    c(2),; 
      stunos    c(2),; 
      stmesdod  c(2),; 
      brmes     n(2),; 
      brmeso    n(2),; 
      grupa     c(2),; 
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif

if !file('jcuvoz.dbf')
   create table jcuvoz(;
      redbr     c(6),;             
      pib       c(13),;
      ime_prez  c(30) ,;
      svega     n(12,2) ,;
      brrac     c(25),;
      datum     d(8),;
      valuta    d(8),;
      datod     d(8),;
      datdo     d(8),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif





if !file('jctuzbe.dbf')
   create table jctuzbe ; 
  ( ;
        pib         C(13), ;        
        DATUM       D, ;
        brrac       c(20), ;  
        DUG         N(12,2), ;
        pot         N(12,2), ;
        grupa       c(3), ;                
        brnal       c(6), ;        
        OPIS        C(25), ;
        saldo       N(12,2),;         
        valuta    d(8),;
        preneto   c(1),;
        idbr      n(11);
      )
   use
endif


if !file('vpreklam.dbf')
   create table vpreklam(;
      sifra      c(05) ,;
      pib        c(13),;
      grupa      c(2),;
      ime_prez   c(30) ,;
      siful      c(3),; 
      ulica      c(25) ,;
      ulbroj     c(7) ,;
      posta      c(5) ,;      
      mesto      c(25) ,;            
      napomena   c(80),;
      napomena2  c(80),;
      napomena3  c(80),;
      napomena4  c(80),;
      napomena5  c(80),;
      odgovor     c(80),;
      odgovor2    c(80),;
      odgovor3    c(80),;      
      odgovor4    c(80),;
      odgovor5    c(80),;            
      vrednost   n(12,2),;   
      datreklam  d(8),;
      datodgovor d(8),;      
      odgfile    c(80),;
      preneto   c(1),;
      idbr      n(11);
      )
   use
endif
      
if !file('vpOTPISI.dbf')
   create table vpotpisi(;
      sifra      c(05) ,;
      pib        c(13),;
      grupa      c(2),;
      ime_prez   c(30) ,;
      vrednost   n(14,2),;         
      zaotpis    n(14,2),;
      zauplatu   n(14,2),;      
      razlika    n(14,2),;
      siful      c(3),; 
      ulica      c(25) ,;
      ulbroj     c(7) ,;
      posta      c(5) ,;      
      mesto      c(25) ,;            
      napomena   c(80),;
      napomena2  c(80),;
      napomena3  c(80),;
      napomena4  c(80),;
      napomena5  c(80),;
      datreklam   d(8),;
      datodgovor  d(8),;      
      odgfile    c(80),;
      preneto    c(1),;
      idbr       n(11);
      )
   use
endif

close all tables
set default to 
set default to &mbazni
pop key



