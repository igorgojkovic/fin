push key CLEAR  
set path to &mdata02
set default to &mdata02
do ibaze with 'an0'

*php ibaze('an0','1');

do ibaze with 'ankomp'
*php ibaze('ankomp','1');

do ibaze with 'ankomp2'
*php ibaze('ankomp2','1');

do ibaze with 'anzast'
*php ibaze('anzast','1');

do ibaze with 'kuf'
*php ibaze('kuf','1');

do ibaze with 'kif','kuf'
*php ibaze('kif','kuf');

do ibaze with 'kufdi','kuf'
*php ibaze('kufdi','kuf');

do ibaze with 'kifdi','kuf'
*php ibaze('kifdi','kuf');

do ibaze with 'anodob'
*php ibaze('anodob','1');

do ibaze with 'anput'
*php ibaze('anput','1');

do ibaze with 'anodob00'  
*php ibaze('anodob00','1');

do ibaze with 'an0mi'
*php ibaze('an0mi','1');

do ibaze with 'an0mag'
*php ibaze('an0mag','1');

do ibaze with 'ankast'
*php ibaze('ankast','1');

do ibaze with 'andospe'
*php ibaze('andospe','1');

do ibaze with 'annap'
*php ibaze('annap','1');

do ibaze with 'analko'
*php ibaze('analko','1');

do ibaze with 'analkot'
*php ibaze('analkot','1');

do ibaze with 'analupor'
*php ibaze('analupor','1');

do ibaze with 'anrasp'
*php ibaze('anrasp','1');

do ibaze with 'anputo'
*php ibaze('anputo','1');

do ibaze with 'anprovz'
*php ibaze('anprovz','1');

do ibaze with 'anodpro'
*php ibaze('anodpro','1');

do ibaze with 'anodtac'
*php ibaze('anodtac','1');

do ibaze with 'anodgru0'
*php ibaze('anodgru0','1');

do ibaze with 'anodgr'
*php ibaze('anodgr','1');

do ibaze with 'anputg0'
*php ibaze('anputg0','1');


do iind with 'an0','sifra','naziv','zirorac','mesto','ulica','telefon','fax','pib','pib2','mbr'
*php iind('an0','sifra','naziv','zirorac','mesto','ulica','telefon','fax','pib','pib2','mbr');

do iind with 'anputo','sifra','dtos(datdok)','sifra+brrac','grupa','brrac'
*php iind('anputo','sifra','datdok','sifra,brrac','grupa','brrac');

do iind with 'andospe','sifra','naziv'
*php iind('andospe','sifra','naziv');

do iind with 'an0mi','misifra','sifra','mesto','ulica','telefon'
*php iind('an0mi','misifra','sifra','mesto','ulica','telefon');

do iind with 'an0mag','magsifra','magnaz'
*php iind('an0mag','magsifra','magnaz');

do iind with 'anodob','redbr','sifra','brnal','dtos(datdok)'
*php iind('anodob','redbr','sifra','brnal','datdok');

do iind with 'kuf','datdok','sifra','izjava'
*php iind('kuf','datdok','sifra','izjava');

do iind with 'kif','datdok','sifra','izjava'
*php iind('kif','datdok','sifra','izjava');

do iind with 'kufdi','datdok','sifra','izjava'
*php iind('kufdi','datdok','sifra','izjava');

do iind with 'kifdi','datdok','sifra','izjava'
*php iind('kifdi','datdok','sifra','izjava');

do iind with 'analupor','sifra+dtos(datdok)'
*php iind('analupor','sifra,datdok');

do iind with 'ankomp','broj','sifra'
*php iind('ankomp','broj','sifra');

do iind with 'anodgr','redbr','sifra','brnal','dtos(datdok)'
*php iind('anodgr','redbr','sifra','brnal','datdok');

do iind with 'anodgru0','grupa5'
*php iind('anodgru0','grupa5');

do iind with 'anputg0','grupa'
*php iind('anputg0','grupa');

do iind with 'anprovz','konto+sifra+brrac','sifra','sifra+brrac','brnal','brrac+dtos(datdok)','sifra+dtos(datdok)','brrac'
*php iind('anprovz','konto,sifra,brrac','sifra','sifra,brrac','brnal','brrac,datdok','sifra,datdok','brrac');



*----------blagajna--------------------
do ibaze with 'blpopis'
*php ibaze('blpopis','1');


*------------------------------email
do ibaze with 'emailpar'
*php ibaze('emailpar','1');

do ibaze with 'emailpor'
*php ibaze('emailpor','1');

do ibaze with 'emailatt'
*php ibaze('emailatt','1');

do ibaze with 'email0'
*php ibaze('email0','1');

do iind with 'emailpor','sifmail'
*php iind('emailpor','sifmail');

do iind with 'emailatt','sifmail'
*php iind('emailatt','sifmail');

do iind with 'email0','sifmail'
*php iind('email0','sifmail');

*---------------------glavna knjiga
do ibaze with 'nalap','nalp'
*php ibaze('nalap','nalp');

do ibaze with 'nalpn','nalp'
*php ibaze('nalpn','nalp');

do ibaze with 'nal','nalp'
*php ibaze('nal','nalp');

do ibaze with 'nalnovi','nalp'
*php ibaze('nalnovi','nalp');

do ibaze with 'racio'
*php ibaze('racio','1');

do ibaze with 'nalmtr'
*php ibaze('nalmtr','1');

do ibaze with 'nalmtrk'
*php ibaze('nalmtrk','1');

do ibaze with 'kon1'
*php ibaze('kon1','1');

do ibaze with 'kon2'
*php ibaze('kon2','1');

do ibaze with 'kon3'
*php ibaze('kon3','1');

do ibaze with 'kon4'
*php ibaze('kon4','1');

do ibaze with 'kon5'
*php ibaze('kon5','1');

do ibaze with 'kon6'
*php ibaze('kon5','1');

do ibaze with 'konto'
*php ibaze('konto','1');

do ibaze with 'kon1n'
*php ibaze('kon1n','1');

do ibaze with 'kon2n'
*php ibaze('kon2n','1');

do ibaze with 'kon3n'
*php ibaze('kon3n','1');

do ibaze with 'kon4n'
*php ibaze('kon4n','1');

do ibaze with 'kon5n'
*php ibaze('kon5n','1');

do ibaze with 'kon6n'
*php ibaze('kon6n','1');

do ibaze with 'konton'
*php ibaze('konton','1');

do ibaze with 'konto10'
*php ibaze('konto10','1');

do ibaze with 'konplan'
*php ibaze('konplan','1');

do ibaze with 'nalpep','nalpep'
*php ibaze('nalpep','nalpep');

do ibaze with 'nalpep00','nalpep00'
*php ibaze('nalpep00','nalpep00');

do ibaze with 'nalpep01','nalpep01'
*php ibaze('nalpep01','nalpep01');

do ibaze with 'nalpep02','nalpep02'
*php ibaze('nalpep02','nalpep02');

do ibaze with 'nalpep03','nalpep03'
*php ibaze('nalpep03','nalpep03');

do ibaze with 'nalpixml','nalpixml'
*php ibaze('nalpixml','nalpixml');

do ibaze with 'nalrasp'
*php ibaze('nalrasp','1');

do ibaze with 'nalraspu'
*php ibaze('nalraspu','1');

do ibaze with 'nalmat'
*php ibaze('nalmat','1');

do ibaze with 'konupor'
*php ibaze('konupor','1');

do ibaze with 'konzam'
*php ibaze('konzam','1');

do ibaze with 'nalgk10'
*php ibaze('nalgk10','1');

do ibaze with 'izpromet'
*php ibaze('izpromet','1');

do ibaze with 'izobrt'
*php ibaze('izobrt','1');

do ibaze with 'izgot'
*php ibaze('izgot','1');

do ibaze with 'aizgot'
*php ibaze('aizgot','1');

do ibaze with 'izplan'
*php ibaze('izplan','1');

do ibaze with 'izplan1'
*php ibaze('izplan1','1');

do ibaze with 'nalprnal'
*php ibaze('nalprnal','1');

do ibaze with 'nalprkon'
*php ibaze('nalprkon','1');

do ibaze with 'unior'
*php ibaze('unior','1');

do ibaze with 'unior0','unior'
*php ibaze('unior0','unior');

do ibaze with 'uniorkon'
*php ibaze('uniorkon','1');


do iind with 'nalap','konto+dtos(datdok)','brnal','dtos(datdok)'
*php iind('nalap','konto,datdok','brnal','datdok');

do iind with 'nalpn','konto+dtos(datdok)','brnal','dtos(datdok)'
*php iind('nalpn','konto,datdok','brnal','datdok');

do iind with 'nal','konto+dtos(datdok)','brnal','dtos(datdok)','konto' 
*php iind('nal','konto,datdok','brnal','datdok','konto' );

do iind with 'nalnovi','konto+dtos(datdok)','brnal','dtos(datdok)','konto' 
*php iind('nalnovi','konto,datdok','brnal','datdok','konto' );


do iind with 'nalmtr','konto+dtos(datdok)','brnal','dtos(datdok)' 
*php iind('nalmtr','konto,datdok','brnal','datdok' );

do iind with 'nalmtrk','kontotr','naziv' 
*php iind('nalmtrk','kontotr','naziv' );

do iind with 'nalmat','konto+dtos(datdok)','brnal','dtos(datdok)'
*php iind('nalmat','konto,datdok','brnal','datdok');

do iind  with 'nalgk10','konto+dtos(datdok)','brnal','dtos(datdok)'
*php iind('nalgk10','konto,datdok','brnal','datdok');

do iind with 'kon1','k1','naziv'
*php iind('kon1','k1','naziv');

do iind with 'kon2','k2','naziv'
*php iind('kon2','k2','naziv');

do iind with 'kon3','k3','naziv'
*php iind('kon3','k3','naziv');

do iind with 'kon4','k4','naziv'
*php iind('kon4','k4','naziv');

do iind with 'kon5','k5','naziv'
*php iind('kon5','k5','naziv');

do iind with 'kon6','k6','naziv'
*php iind('kon6','k6','naziv');

do iind with 'konto','konto','naziv'
*php iind('konto','konto','naziv');

do iind with 'konto10','konto','naziv'
*php iind('konto10','konto','naziv');

do iind with 'konplan','konto'
*php iind('konplan','konto');

do iind with 'izpromet','konto+dok' 
*php iind('izpromet','konto,dok' );

do iind with 'izobrt','konto' 
*php iind('izobrt','konto');

do iind with 'izgot','konto','k1','k2','k3' 
*php iind('izgot','konto','k1','k2','k3' );

do iind with 'izplan','konto+vrsta' 
*php iind('izplan','konto,vrsta');

do iind with 'izpromet','konto+dok' 
*php iind('izpromet','konto,dok');

do iind with 'nalpep','konto+dtos(datdok)','brnal','dtos(datdok)'
*php iind('nalpep','konto,datdok','brnal','datdok');

do iind with 'nalprnal','brnal','dtos(datdok)','dok','mp','mtr','vrnal'
*php iind('nalprnal','brnal','datdok','dok','mp','mtr','vrnal');

do iind with 'nalprkon','konto','naziv'
*php iind('nalprkon','konto','naziv');

do iind with 'unior','brnal','dtos(datdok)','dtos(datpdv)','arhiva'
*php iind('unior','brnal','datdok','datpdv','arhiva');

do iind with 'konupor','skonto'
*php iind('konupor','skonto');

*--------------investicije------------------
do ibaze with 'invest0'
*php ibaze('invest0','1');

do ibaze with 'invest'
*php ibaze('invest','1');

do ibaze with 'investp'
*php ibaze('investp','1');


do iind with 'invest0','osifra','naz'
*php iind('invest0','osifra','naz');

do iind with 'invest','osifra','datdok','sifra','sifra+brrac','brnal','brrac+dtos(datdok)','sifra+dtos(datdok)','brrac'
*php iind('invest','osifra','datdok','sifra','sifra,brrac','brnal','brrac,datdok','sifra,datdok','brrac');

do iind with 'investp','osifra','datdok','sifra','sifra+brrac','brnal','brrac+dtos(datdok)','sifra+dtos(datdok)','brrac'
*php iind('investp','osifra','datdok','sifra','sifra,brrac','brnal','brrac,datdok','sifra,datdok','brrac');

*----------------kamate------------
do ibaze with 'kastop'
*php ibaze('kastop','1');

do ibaze with 'kakoef'
*php ibaze('kakoef','1');

do ibaze with 'kamate'
*php ibaze('kamate','1');

do ibaze with 'kamobrac'
*php ibaze('kamobrac','1');

do ibaze with 'kamkn'
*php ibaze('kamkn','1');


do iind with 'kastop','dtos(dat0)'
*php iind('kastop','dat0');

do iind with 'kakoef','dtos(datum)'
*php iind('kakoef','datum');

do iind with 'kamate','rbr+dtos(datpoc)+dtos(datkra)','sifra'
*php iind('kamate','rbr,datpoc,datkra','sifra');


*------------------kl---------------

do ibaze with 'klzap'
*php ibaze('klzap','1');

do ibaze with 'klsto'
*php ibaze('klsto','1');

do ibaze with 'klpro'
*php ibaze('klpro','1');

do ibaze with 'klpolu'
*php ibaze('klpolu','1');

do ibaze with 'klrsif'
*php ibaze('klrsif','1');

do ibaze with 'klnorma'
*php ibaze('klnorma','1');

do ibaze with 'klrsife'
*php ibaze('klrsife','1');

do ibaze with 'klpolue'
*php ibaze('klpolue','1');

do ibaze with 'klpro0'
*php ibaze('klpro0','1');


do iind with 'klzap','redni','dtos(datdok)','vrsto'
*php iind('klzap','redni','datdok','vrsto');

do iind with 'klsto','vrsto','naz'
*php iind('klsto','vrsto','naz');

do iind with 'klpro','rbr','redni','redni+psif','brnal','vrsto','psif'
*php iind('klpro','rbr','redni','redni,psif','brnal','vrsto','psif');

do iind with 'klpolu','psif'
*php iind('klpolu','psif');

do iind with 'klrsif','rsif'
*php iind('klrsif','rsif');

do iind with 'klnorma','rsif'
*php iind('klnorma','rsif');

do iind with 'klrsife','rsif','brpri'
*php iind('klrsife','rsif','brpri');

do iind with 'klpolue','psif','brpri','brnal'
*php iind('klpolue','psif','brpri','brnal');

*---------------------zarade

do ibaze with 'ldrad'
*php ibaze('ldrad','1');

do ibaze with 'ld'
*php ibaze('ld','1');

do ibaze with 'ldakont','ld'
*php ibaze('ldakont','ld');

do ibaze with 'ld00','ld'
*php ibaze('ld00','ld');

do ibaze with 'ldsamod'
*php ibaze('ldsamod','1');

do ibaze with 'ldpod'
*php ibaze('ldpod','1');

do ibaze with 'ldpod00','ldpod'
*php ibaze('ldpod00','ldpod');

do ibaze with 'ldopj'
*php ibaze('ldopj','1');

do ibaze with 'ldopjn'
*php ibaze('ldopjn','1');

do ibaze with 'ldopj1n'
*php ibaze('ldopj1n','1');

do ibaze with 'ldopj1n0'
*php ibaze('ldopj1n0','1');

do ibaze with 'ldod'
*php ibaze('ldod','1');

do ibaze with 'ldrek'
*php ibaze('ldrek','1');

do ibaze with 'ldod1'
*php ibaze('ldod1','1');

do ibaze with 'ldopj2'
*php ibaze('ldopj2','1');

do ibaze with 'ldopj3'
*php ibaze('ldopj3','1');

do ibaze with 'ldopj4'
*php ibaze('ldopj4','1');

do ibaze with 'ldopj5'
*php ibaze('ldopj5','1');

do ibaze with 'ldppodp'
*php ibaze('ldppodp','1');

do ibaze with 'ldppodo'
*php ibaze('ldppodo','1');

do ibaze with 'ldppoDSO'
*php ibaze('ldppoDSO','1');

do ibaze with 'ldopj6'
*php ibaze('ldopj6','1');

do ibaze with 'ldopj7'
*php ibaze('ldopj7','1');

do ibaze with 'ldopj8'
*php ibaze('ldopj8','1');

do ibaze with 'ldod1n'
*php ibaze('ldod1n','1');

do ibaze with 'ldodn'
*php ibaze('ldodn','1');

do ibaze with 'ldspis'
*php ibaze('ldspis','1');

do ibaze with 'ldkolona'
*php ibaze('ldkolona','1');

do ibaze with 'ldkred'
*php ibaze('ldkred','1');

do ibaze with 'ldkredr'
*php ibaze('ldkredr','1');

do ibaze with 'ldvirm'
*php ibaze('ldvirm','1');

do ibaze with 'l2virm'
*php ibaze('l2virm','1');

do ibaze with 'ldnz1'
*php ibaze('ldnz1','1');

do ibaze with 'ldinv'
*php ibaze('ldinv','1');

do ibaze with 'ldinv2'
*php ibaze('ldinv2','1');

do ibaze with 'ldinv3'
*php ibaze('ldinv3','1');

do ibaze with 'ldiosi'
*php ibaze('ldiosi','1');

do ibaze with 'ldz1'
*php ibaze('ldz1','1');

do ibaze with 'ldbol'
*php ibaze('ldbol','1');

do ibaze with 'ldboln'
*php ibaze('ldboln','1');

do ibaze with 'ldinzs'
*php ibaze('ldinzs','1');

do ibaze with 'ldpotvr'
*php ibaze('ldpotvr','1');

do ibaze with 'dkrediti'
*php ibaze('dkrediti','1');

do ibaze with 'ldslobs'
*php ibaze('ldslobs','1');

do ibaze with 'ldrad0'
*php ibaze('ldrad0','1');

do ibaze with 'ldvirm6'
*php ibaze('ldvirm6','1');

do ibaze with 'ldopj6p1'
*php ibaze('ldopj6p1','1');

do ibaze with 'ldopj6p2','ldopj6p1'
*php ibaze('ldopj6p2','ldopj6p1');

do ibaze with 'ldopj6p3'
*php ibaze('ldopj6p3','1');

do ibaze with 'lddunk'
*php ibaze('lddunk','1');

do ibaze with 'ldosnov'
*php ibaze('ldosnov','1');

do ibaze with 'ldkateg'
*php ibaze('ldkateg','1');

do ibaze with 'ldsp01'
*php ibaze('ldsp01','1');

do ibaze with 'ldpotv'
*php ibaze('ldpotv','1');

do ibaze with 'ldpotv2'
*php ibaze('ldpotv2','1');

do ibaze with 'ldm4pod'
*php ibaze('ldm4pod','1');

do ibaze with 'ldizvn'
*php ibaze('ldizvn','1');

do ibaze with 'ldosn'
*php ibaze('ldosn','1');

do ibaze with 'ldm4dat'
*php ibaze('ldm4dat','1');

do ibaze with 'ldarhiva','ld'
*php ibaze('ldarhiva','ld');

do ibaze with 'ldppp','ldppp'
*php ibaze('ldppp','ldppp');

do ibaze with 'ldtop'
*php ibaze('ldtop','1');

do ibaze with 'ldopnr'
*php ibaze('ldopnr','1');

do ibaze with 'ldzo22'
*php ibaze('ldzo22','1');

do ibaze with 'ldzo24'
*php ibaze('ldzo24','1');


do ibaze with 'ldzospec'
*php ibaze('ldzospec','1');

do ibaze with 'ldkon00'
*php ibaze('ldkon00','1');

do ibaze with 'ldkon'
*php ibaze('ldkon','1');

do ibaze with 'ldradvre'
*php ibaze('ldradvre','1');

do ibaze with 'ldprosz'
*php ibaze('ldprosz','1');

do ibaze with 'ldalati'
*php ibaze('ldalati','1');

do ibaze with 'ldakput'
*php ibaze('ldakput','1');

do ibaze with 'ldoz07'
*php ibaze('ldoz07','1');

do ibaze with 'ldoz08'
*php ibaze('ldoz08','1');

do ibaze with 'ldoz09'
*php ibaze('ldoz09','1');

do ibaze with 'ldoz10'
*php ibaze('ldoz10','1');

do ibaze with 'ld0'
*php ibaze('ld0','1');

do ibaze with 'ld0p'
*php ibaze('ld0p','1');

do ibaze with 'lddd0'
*php ibaze('lddd0','1');

do ibaze with 'lddd'
*php ibaze('lddd','1');

do ibaze with 'ldizjdop'
*php ibaze('ldizjdop','1');

do ibaze with 'ldporpot'
*php ibaze('ldporpot','1');

do ibaze with 'ldporp12'
*php ibaze('ldporp12','1');

do ibaze with 'ldporsta'
*php ibaze('ldporsta','1');

do ibaze with 'ldradcl'
*php ibaze('ldradcl','1');

do ibaze with 'ldzzo01'
*php ibaze('ldzzo01','1');

do ibaze with 'ldzzo02'
*php ibaze('ldzzo02','1');

do ibaze with 'ldarhpar'
*php ibaze('ldarhpar','1');

do ibaze with 'ldizrvre'
*php ibaze('ldizrvre','1');

do ibaze with 'ldprip'
*php ibaze('ldprip','1');

do ibaze with 'ldzah','ldrek'
*php ibaze('ldzah','ldrek');


do ibaze with 'ldgod0'
*php ibaze('ldgod0','1');

do ibaze with 'putar'
*php ibaze('putar','1');

do ibaze with 'putar0'
*php ibaze('putar0','1');

do ibaze with 'ldzsp'
*php ibaze('ldzsp','1');

do ibaze with 'ldzsd'
*php ibaze('ldzsd','1');

do ibaze with 'ldos'
*php ibaze('ldos','1');

do ibaze with 'ldos1'
*php ibaze('ldos1','1');

do ibaze with 'ldizvjp'
*php ibaze('ldizvjp','1');

do ibaze with 'ldprev'
*php ibaze('ldprev','1');

do ibaze with 'ldprevP'
*php ibaze('ldprevP','1');

do ibaze with 'ldprev00','ldprev'
*php ibaze('ldprev00','ldprev','1');

do ibaze with 'lmes','mesta'
*php ibaze('lmes','mesta','1');

do ibaze with 'lmes00','mesta'
*php ibaze('lmes00','mesta');



do iind with 'ldod1n','kod'
*php iind('ldod1n','kod');

do iind with 'ldkred','kredit','broj','sifra','evidbroj','grupa'
*php iind('ldkred','kredit','broj','sifra','evidbroj','grupa');

do iind with 'ldspis','broj','sifra'
*php iind('ldspis','broj','sifra');

do iind with 'ldkolona','broj'
*php iind('ldkolona','broj');

 
do iind with 'ldsamod','samsif'
*php iind('ldsamod','samsif');

do iind with 'ldkredr','kredit','broj','sifra','dtos(datdok)'
*php iind('ldkredr','kredit','broj','sifra','datdok');

do iind with 'dkrediti','brrac','dtos(datdok)','sifra','ime_prez'
*php iind('dkrediti','brrac','datdok','sifra','ime_prez');


do iind with 'ldarhiva','broj','ime_prez','evidbroj','mesec','m4grad'
*php iind('ldarhiva','broj','ime_prez','evidbroj','mesec','m4grad');

do iind with 'ldppp','broj','ime_prez','maticnibr'
*php iind('ldppp','broj','ime_prez','maticnibr');

do iind with 'ldradvre','broj','ime_prez'
*php iind('ldradvre','broj','ime_prez');


do iind with 'ldvirm','vrsta','zirorac'
*php iind('ldvirm','vrsta','zirorac');

do iind with 'ldod','kod'
*php iind('ldod','kod');

do iind with 'ldrek','kod'
*php iind('ldrek','kod');

do iind with 'ldpod','kod'
*php iind('ldpod','kod');

do iind with 'ldpod00','kod'
*php iind('ldpod00','kod');

do iind with 'ldrad','broj','ime_prez','evidbroj','maticnibr'
*php iind('ldrad','broj','ime_prez','evidbroj','maticnibr');

do iind with 'ldodn','kod'
*php iind('ldodn','kod');

do iind with 'ldizvn','broj','datum','maticnibr'
*php iind('ldizvn','broj','datum','maticnibr');

do iind with 'ldrad0','broj','ime_prez','maticnibr'
*php iind('ldrad0','broj','ime_prez','maticnibr');

do iind with 'ldvirm6','grupavirm'
*php iind('ldvirm6','grupavirm');

do iind with 'ldopj6p1','grupavirm','ziroracz'
*php iind('ldopj6p1','grupavirm','ziroracz');

do iind with 'ldopj6p2','grupavirm','ziroracz'
*php iind('ldopj6p2','grupavirm','ziroracz');

do iind with 'lddunk','grupa','ime_prez','maticnibr'
*php iind('lddunk','grupa','ime_prez','maticnibr');

do iind with 'ldosnov','sifosnov','osnov'
*php iind('ldosnov','sifosnov','osnov');

do iind with 'ldopj2','grupa'
*php iind('ldopj2','grupa');

do iind with 'ldopj3','grupa'
*php iind('ldopj3','grupa');

do iind with 'ldopj4','grupa'
*php iind('ldopj4','grupa');

do iind with 'ldopj6','grupa'
*php iind('ldopj6','grupa');

do iind with 'ldopj7','grupa'
*php iind('ldopj7','grupa');

do iind with 'ldopj8','grupa'
*php iind('ldopj8','grupa');

do iind with 'ldkateg','kategor'
*php iind('ldkateg','kategor');

do iind with 'ldopj1n','redbr','broj','grupa','dtos(datdok)'
*php iind('ldopj1n','redbr','broj','grupa','datdok');

do iind with 'ldopj1n0','sifopis'
*php iind('ldopj1n0','sifopis');

do iind with 'ldradcl','broj','cbroj'
*php iind('ldradcl','broj','cbroj');

do iind with 'ld0','mesec','nazmes','vrsta','godina+str(mesec,2,0)'
*php iind('ld0','mesec','nazmes','vrsta','godina,mesec');

do iind with 'ld0p','broj','ime_prez','maticnibr','mesec','nazmes','vrsta','godina+str(mesec,2,0)'
*php iind('ld0p','broj','ime_prez','maticnibr','mesec','nazmes','vrsta','godina,mesec');

do iind with 'ldprip','broj','ime_prez'
*php iind('ldprip','broj','ime_prez');

do iind with 'ldiosi','mesec'
*php iind('ldiosi','mesec');

do iind with 'putar','redbr','putnal','dtoc(datdok)','sifrel','relacija'
*php iind('putar','redbr','putnal','datdok','sifrel','relacija');

do iind with 'putar0','sifrel','relacija'
*php iind('putar0','sifrel','relacija');

do iind with  'lmes','mp' 
*php iind('lmes','mp' );

do iind with  'lmes00','mp' 
*php iind('lmes00','mp' );

do iind with  'lddd','broj','ime_prez','grupa'
*php iind('lddd','broj','ime_prez','grupa');

do iind with  'ldprev','broj','ime_prez','grupa'
*php iind('ldprev','broj','ime_prez','grupa');

do iind with  'ldprev00','broj','ime_prez','grupa'
*php iind('ldprev00','broj','ime_prez','grupa');

do iind with 'ld','broj','ime_prez','evidbroj','mtr','grupa','samsif'
*php iind('ld','broj','ime_prez','evidbroj','mtr','grupa','samsif');

do iind with 'ld00','broj','ime_prez','evidbroj','mtr','grupa','samsif'
*php iind('ld00','broj','ime_prez','evidbroj','mtr','grupa','samsif');


*--------------obrasci--------------------------------------


do ibaze with 'obrbu'
*php ibaze('obrbu','1');

do ibaze with 'pb1'
*php ibaze('pb1','1');

do ibaze with 'pb1a'
*php ibaze('pb1a','1');

do ibaze with 'pb1a1'
*php ibaze('pb1a1','1');

do ibaze with 'obrpk'
*php ibaze('obrpk','1');

do ibaze with 'obrpk1'
*php ibaze('obrpk1','1');

do ibaze with 'obrsu'
*php ibaze('obrsu','1');

do ibaze with 'obrsi'   
*php ibaze('obrsi','1');

do ibaze with 'obripd'
*php ibaze('obripd','1');

do ibaze with 'obripd1'
*php ibaze('obripd1','1');

do ibaze with 'obrpk2'
*php ibaze('obrpk2','1');

do ibaze with 'obrpk3'
*php ibaze('obrpk3','1');

do ibaze with 'obrsu1'
*php ibaze('obrsu1','1');

do ibaze with 'obrsu3'
*php ibaze('obrsu3','1');

do ibaze with 'pb2'
*php ibaze('pb2','1');

do ibaze with 'pdpn'
*php ibaze('pdpn','1');

do ibaze with 'pdp14'
*php ibaze('pdp14','1');

do ibaze with 'obrok'
*php ibaze('obrok','1');

do ibaze with 'obrkons'
*php ibaze('obrkons','1');

do ibaze with 'ppdg1s'
*php ibaze('ppdg1s','1');

do ibaze with 'ppdg1p'
*php ibaze('ppdg1p','1');


*----------------------osnovna sredstva----

do ibaze with 'os0'   
*php ibaze('os0','1');

do ibaze with 'os'   
*php ibaze('os','1');

do ibaze with 'osarh','os'   
*php ibaze('osarh','os','1');

do ibaze with 'ospodaci'   
*php ibaze('ospodaci','1');

do ibaze with 'ospopis'   
*php ibaze('ospopis','1');

do ibaze with 'osoa'   
*php ibaze('osoa','1');

do ibaze with 'osvrsta'
*php ibaze('osvrsta','1');

do ibaze with 'ososnk'
*php ibaze('ososnk','1');

do ibaze with 'osizvorf'
*php ibaze('osizvorf','1');



do iind with 'os0','osifra','naz','mtr','konto','mesto','invbroj','ag','ag+agpod'
*php iind('os0','osifra','naz','mtr','konto','mesto','invbroj','ag','ag,agpod');

do iind with 'os','osifra','mtr','konto','konto+mesto','mesto+konto','invbroj','ag','ag+agpod'
*php iind('os','osifra','mtr','konto','konto,mesto','mesto,konto','invbroj','ag','ag,agpod');

do iind with 'osarh','osifra','mtr','konto','konto+mesto','mesto+konto','invbroj','ag','ag+agpod'
*php iind('osarh','osifra','mtr','konto','konto,mesto','mesto,konto','invbroj','ag','ag,agpod');

do iind with 'osvrsta','vrsta','naziv'
*php iind('osvrsta','vrsta','naziv');

do iind with 'ososnk','osnovkor','naziv'
*php iind('ososnk','osnovkor','naziv');

do iind with 'osizvorf','izvor','naziv'
*php iind('osizvorf','izvor','naziv');

*----------------------pc------

do ibaze with 'pcdef0'
*php ibaze('pcdef0','1');

do ibaze with 'pcprofc'
*php ibaze('pcprofc','1');

do ibaze with 'pcsektor'
*php ibaze('pcsektor','1');

do ibaze with 'pcpodsek'
*php ibaze('pcpodsek','1');

do ibaze with 'pclokac'
*php ibaze('pclokac','1');

do ibaze with 'pclokacP'
*php ibaze('pclokacP','1');

do ibaze with 'pcev'
*php ibaze('pcev','1');

do ibaze with 'pcevg'
*php ibaze('pcevg','1');

do ibaze with 'pcevgk'
*php ibaze('pcevgk','1');

do ibaze with 'pcevput'
*php ibaze('pcevput','1');

do ibaze with 'pcevo','pcev'
*php ibaze('pcevo','pcev');

do ibaze with 'pcevog','pcevg'
*php ibaze('pcevog','pcevg');

do ibaze with 'pcevme','pcev'
*php ibaze('pcevme','pcev');

do ibaze with 'pcevmeg','pcevg'
*php ibaze('pcevmeg','pcevg');

do ibaze with 'pcevod','pcev'
*php ibaze('pcevod','pcev');

do ibaze with 'pcevodg','pcevg'
*php ibaze('pcevodg','pcevg');

do ibaze with 'pcevtr','pcev'
*php ibaze('pcevtr','pcev');

do ibaze with 'pcevtrg','pcevg'
*php ibaze('pcevtrg','pcevg');

do ibaze with 'pcevrd','pcev'
*php ibaze('pcevrd','pcev');

do ibaze with 'pcevrdg','pcevg'
*php ibaze('pcevrdg','pcevg');

do ibaze with 'pcevtz','pcev'
*php ibaze('pcevtz','pcev');

do ibaze with 'pcevtzg','pcevg'
*php ibaze('pcevtzg','pcevg');

do ibaze with 'pcprenf'
*php ibaze('pcprenf','1');

do ibaze with 'pcprenpu'
*php ibaze('pcprenpu','1');


do iind with 'pcdef0','idbroj','idprofc+idsektor+idpodsek+idlokac','idprofc','idsektor','idpodsek','idlokac'
*php iind('pcdef0','idbroj','idprofc,idsektor,idpodsek,idlokac','idprofc','idsektor','idpodsek','idlokac');

do iind with 'pcprofc','idprofc','profcent'
*php iind('pcprofc','idprofc','profcent');

do iind with 'pcsektor','idsektor','sektor'
*php iind('pcsektor','idsektor','sektor');

do iind with 'pcpodsek','idpodsek','podsektor'
*php iind('pcpodsek','idpodsek','podsektor');

do iind with 'pclokac','idlokac','lokacija'
*php iind('pclokac','idlokac','lokacija');

do iind with 'pclokacP','idlokacP','lokacijaP'
*php iind('pclokacP','idlokacP','lokacijaP');

do iind with 'pcev','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcev','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevg','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevg','brkal','datdok','idbroj','sifra');

do iind with 'pcevgk','brkal','dtos(datdok)','idbroj'
*php iind('pcevgk','brkal','datdok','idbroj');

do iind with 'pcevo','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcevo','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevog','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevog','brkal','datdok','idbroj','sifra');

do iind with 'pcevme','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcevme','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevmeg','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevmeg','brkal','datdok','idbroj','sifra');

do iind with 'pcevod','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcevod','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevodg','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevodg','brkal','datdok','idbroj','sifra');

do iind with 'pcevtr','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcevtr','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevtrg','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevtrg','brkal','datdok','idbroj','sifra');

do iind with 'pcevtz','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcevtz','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevtzg','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevtzg','brkal','datdok','idbroj','sifra');

do iind with 'pcevrd','brkal','rsif+dtos(datdok)+trebov','idbroj'
*php iind('pcevrd','brkal','rsif,datdok,trebov','idbroj');

do iind with 'pcevrdg','brkal','dtos(datdok)','idbroj','sifra'
*php iind('pcevrdg','brkal','datdok','idbroj','sifra');

*-------------------proizvodnja

do ibaze with 'aapr'
*php ibaze('aapr','1');

do ibaze with 'pronorma'
*php ibaze('pronorma','1');

do ibaze with 'propar'
*php ibaze('propar','1');

do ibaze with 'pronal'
*php ibaze('pronal','1');

do ibaze with 'pronaln'
*php ibaze('pronaln','1');

do ibaze with 'pronalbr'
*php ibaze('pronalbr','1');

do ibaze with 'pronalnp'
*php ibaze('pronalnp','1');

do ibaze with 'proplan'
*php ibaze('proplan','1');


do ibaze with 'pronrop'
*php ibaze('pronrop','1');

do ibaze with 'pronropp'
*php ibaze('pronropp','1');


do ibaze with 'pronlop'
*php ibaze('pronlop','1');

do ibaze with 'pronlopp'
*php ibaze('pronlopp','1');


do ibaze with 'prock'
*php ibaze('prock','1');

do ibaze with 'prock0'
*php ibaze('prock0','1');

do ibaze with 'procktr'
*php ibaze('procktr','1');

do ibaze with 'provmat'
*php ibaze('provmat','1');


do ibaze with 'procknal'
*php ibaze('procknal','1');

do ibaze with 'prockna0','procknal'
*php ibaze('prockna0','procknal');

do ibaze with 'procknan','procknal'
*php ibaze('procknan','procknal');

do ibaze with 'procknaz','procknal'
*php ibaze('procknaz','procknal');

do ibaze with 'procknr'
*php ibaze('procknr','1');

do ibaze with 'procknr2','procknr'
*php ibaze('procknr2','procknr');

do ibaze with 'procknr3','procknr'
*php ibaze('procknr3','procknr');

do ibaze with 'procknr4','procknr'
*php ibaze('procknr4','procknr');

do ibaze with 'pronora'
*php ibaze('pronora','1');

do ibaze with 'prorad'
*php ibaze('prorad','1');

do ibaze with 'proradop'
*php ibaze('proradop','1');

do ibaze with 'prodir'
*php ibaze('prodir','1');

do ibaze with 'proops'
*php ibaze('proops','1');

do ibaze with 'propar2'
*php ibaze('propar2','1');


do ibaze with 'pronormp'
*php ibaze('pronormp','1');

do ibaze with 'pronalp'
*php ibaze('pronalp','1');

do ibaze with 'prorun0','prorun'
*php ibaze('prorun0','prorun');

do ibaze with 'prorun00'
*php ibaze('prorun00','1');

do ibaze with 'pronalv'
*php ibaze('pronalv','1');

do ibaze with 'pronalvc'
*php ibaze('pronalvc','1');

do ibaze with 'pronalm'
*php ibaze('pronalm','1');

do ibaze with 'pronalm0'
*php ibaze('pronalm0','1');

do ibaze with 'prozah'
*php ibaze('prozah','1');

do ibaze with 'pomat'
*php ibaze('pomat','1');

do ibaze with 'pomatg'
*php ibaze('pomatg','1');

do ibaze with 'popma','pomat'
*php ibaze('popma','pomat');

do ibaze with 'popmag','pomatg'
*php ibaze('popmag','pomatg');

do ibaze with 'poamb','pomat'
*php ibaze('poamb','pomat');

do ibaze with 'poambg','pomatg'
*php ibaze('poambg','pomatg');

do ibaze with 'popol','pomat'
*php ibaze('popol','pomat');

do ibaze with 'popolg','pomatg'
*php ibaze('popolg','pomatg');



do iind with 'pomat','brkal','rsif+dtos(datdok)'
*php iind('pomat','brkal','rsif,datdok');

do iind with 'pomatg','brkal','datdok','rnal'
*php iind('pomatg','brkal','datdok','rnal');

do iind with 'popma','brkal','rsif+dtos(datdok)'
*php iind('popma','brkal','rsif,datdok');

do iind with 'popmag','brkal','datdok','rnal'
*php iind('popmag','brkal','datdok','rnal');

do iind with 'poamb','brkal','rsif+dtos(datdok)'
*php iind('poamb','brkal','rsif,datdok');

do iind with 'poambg','brkal','datdok','rnal'
*php iind('poambg','brkal','datdok','rnal');

do iind with 'popol','brkal','rsif+dtos(datdok)'
*php iind('popol','brkal','rsif,datdok');

do iind with 'popolg','brkal','datdok','rnal'
*php iind('popolg','brkal','datdok','rnal');

do iind with 'prorun0','rnal','dtos(dat1)','broj','ldsif'
*php iind('prorun0','rnal','dat1','broj','ldsif');

do iind with 'prodir','dirsif','naz'
*php iind('prodir','dirsif','naz');

do iind with 'proops','opssif','naz'
*php iind('proops','opssif','naz');

do iind with 'pronorma','rsif+grupa','rsif','normativ','normativ+grupa'
*php iind('pronorma','rsif,grupa','rsif','normativ','normativ,grupa');

do iind with 'pronal','rnal','rnal+grupa','normativ'
*php iind('pronal','rnal','rnal,grupa','normativ');

do iind with 'pronalbr','rnal'
*php iind('pronalbr','rnal');

do iind with 'pronora','rsif','normativ'
*php iind('pronora','rsif','normativ');

do iind with 'prorad','ldsif','naz'
*php iind('prorad','ldsif','naz');

do iind with 'proradop','ldsif'
*php iind('proradop','ldsif');

do iind with 'pronaln','rnal','rsif','normativ','dtos(dat0)'
*php iind('pronaln','rnal','rsif','normativ','dat0');

do iind with 'pronormp','psif+grupa','psif','normativ','normativ+grupa'
*php iind('pronormp','psif,grupa','psif','normativ','normativ,grupa');

do iind with 'pronalp','rnal','rnal+grupa','normativ'
*php iind('pronalp','rnal','rnal,grupa','normativ');

do iind with 'pronalnp','rnal','psif','normativ','dtos(dat0)'
*php iind('pronalnp','rnal','psif','normativ','dat0');

do iind with 'proplan','rsif','normativ','rnal'
*php iind('proplan','rsif','normativ','rnal');

do iind with 'pronrop','normativ'
*php iind('pronrop','normativ');

do iind with 'pronropp','normativ'
*php iind('pronropp','normativ');

do iind with 'pronlop','rnal'
*php iind('pronlop','rnal');

do iind with 'pronlopp','rnal'
*php iind('pronlopp','rnal');

do iind with 'prock','rsif','naz'
*php iind('prock','rsif','naz');

do iind with 'prock0','rsif'
*php iind('prock0','rsif');

do iind with 'pronalv','rnal','dtos(datdok)','broj','ime_prez'
*php iind('pronalv','rnal','datdok','broj','ime_prez');

do iind with 'pronalm','rnal','dtos(datdok)','broj','naz'
*php iind('pronalm','rnal','datdok','broj','naz');

do iind with 'pronalm0','broj','naz'
*php iind('pronalm0','broj','naz');

do iind with 'prozah','brkal','datzah','rsif','sifra','rnal'
*php iind('prozah','brkal','datzah','rsif','sifra','rnal');

do iind with 'procknal','rnal','rsif','naz','konto'
*php iind('procknal','rnal','rsif','naz','konto');

do iind with 'prockna0','rnal','rsif','naz','konto'
*php iind('prockna0','rnal','rsif','naz','konto');

do iind with 'procknan','rnal','rsif','naz','konto'
*php iind('procknan','rnal','rsif','naz','konto');

do iind with 'procknaz','rnal','rsif','naz','konto'
*php iind('procknaz','rnal','rsif','naz','konto');

do iind with 'provmat','rnal','rsif','msif'
*php iind('provmat','rnal','rsif','msif');

do ibaze with 'mleko'
*php ibaze('mleko','1');

do ibaze with 'mlekor'
*php ibaze('mlekor','1');

do ibaze with 'ml0'
*php ibaze('ml0','1');

do ibaze with 'mlmesta'
*php ibaze('mlmesta','1');

do ibaze with 'mlomes'
*php ibaze('mlomes','1');

do ibaze with 'mlopm'
*php ibaze('mlopm','1');

do ibaze with 'mlgazd'
*php ibaze('mlgazd','1');

do ibaze with 'mlcene'
*php ibaze('mlcene','1');


do iind with 'ml0','sifra','naziv','maticnibr','mesto','omsif'
*php iind('ml0','sifra','naziv','maticnibr','mesto','omsif');

do iind with 'mleko','sifra','datdok'
*php iind('mleko','sifra','datdok');

do iind with 'mlekor','omsif','datdok'
*php iind('mlekor','omsif','datdok');

do iind with 'mlmesta','posta','mesto'
*php iind('mlmesta','posta','mesto');

do iind with 'mlomes','omsif','ommes'
*php iind('mlomes','omsif','ommes');

do iind with 'mlgazd','mesto','substr(ulica,1,3)','mesto+redbr'
*php iind('mlgazd','mesto','ulica','mesto,redbr');

do iind with 'mlcene','cenovnik'
*php iind('mlcene','cenovnik');
   

*-----recepcija
do ibaze with  'recsobe'
*php ibaze('recsobe','1');

do ibaze with  'recrez'
*php ibaze('recrez','1');

do ibaze with  'recrez1'
*php ibaze('recrez1','1');

do ibaze with  'recvrsta'
*php ibaze('recvrsta','1');

do ibaze with  'reccene'
*php ibaze('reccene','1');

do ibaze with  'recan0'
*php ibaze('recan0','1');

do iind with  'recsobe','recsif'
*php iind('recsobe','recsif');

do iind with  'recrez','recsif','rsifra','dtos(datum)','sifra'
*php iind('recrez','recsif','rsifra','datum','sifra');

do iind with  'recrez1','recsif','rsifra','dtos(datumod)','sifra'
*php iind('recrez1','recsif','rsifra','datumod','sifra');

do iind with  'recvrsta','vrsta','opis'
*php iind('recvrsta','vrsta','opis');

do iind with  'reccene','rsif','naz'
*php iind('reccene','rsif','naz');

do iind with  'recan0','rsifra','ime'
*php iind('recan0','rsifra','ime');

*---------------------maloprodaja

do ibaze with 'aflput'                  
*php ibaze('aflput','1');

do ibaze with 'kasafs'                  
*php ibaze('kasafs','1');

do ibaze with 'tmanal'                  
*php ibaze('tmanal','1');




*-----------------veleprodaja
do ibaze with 'rob'
*php ibaze('rob','1');

do ibaze with 'robhem'
*php ibaze('robhem','1');

do ibaze with 'robhem0'
*php ibaze('robhem0','1');

do ibaze with 'robvrst'
*php ibaze('robvrst','1');

do ibaze with 'robproi'
*php ibaze('robproi','1');

do ibaze with 'tovarni'
*php ibaze('tovarni','1');

do ibaze with 'robnar'
*php ibaze('robnar','1');


do ibaze with 'hepon'
*php ibaze('hepon','1');

do ibaze with 'hepong'
*php ibaze('hepong','1');

do ibaze with 'heponc'
*php ibaze('heponc','1');


do ibaze with 'robgru'
*php ibaze('robgru','1');

do ibaze with 'robgru1'
*php ibaze('robgru1','1');

do ibaze with 'robgru2'
*php ibaze('robgru2','1');

do ibaze with 'robgru3'
*php ibaze('robgru3','1');

do ibaze with 'robgru4'
*php ibaze('robgru4','1');

do ibaze with 'robgru5'
*php ibaze('robgru5','1');

do ibaze with 'robgru0'
*php ibaze('robgru0','1');

do ibaze with 'robgrum0'
*php ibaze('robgrum0','1');


do ibaze with 'aatvprof'
*php ibaze('aatvprof','1');

do ibaze with 'aatvpor'
*php ibaze('aatvpor','1');

do ibaze with 'aatvotp'
*php ibaze('aatvotp','1');

do ibaze with 'aatvpl'
*php ibaze('aatvpl','1');

do ibaze with 'aatvpl0'
*php ibaze('aatvpl0','1');

do ibaze with 'robnarp','ronar'
*php ibaze('robnarp','ronar');

do ibaze with 'fakko'
*php ibaze('fakko','1');

do ibaze with 'esmotor'
*php ibaze('esmotor','1');

do ibaze with 'faktu'
*php ibaze('faktu','1');


do ibaze with 'fakt','fak' 
*php ibaze('fakt','fak' ,'1');

do ibaze with 'faktg','fakg' 
*php ibaze('faktg','fakg');

do ibaze with 'fakuni'
*php ibaze('fakuni','1');

do ibaze with 'robmas'
*php ibaze('robmas','1');


do iind with 'rob','rsif','naz+podnaziv','tarifa','barkod','sifra','podnaziv','rsif+podnaziv','proizv','podrob','grupa+naz'
*php iind('rob','rsif','naz,podnaziv','tarifa','barkod','sifra','podnaziv','rsif,podnaziv','proizv','podrob','grupa,naz');

do iind with 'robhem','rsif','naz'
*php iind('robhem','rsif','naz');

do iind with 'robhem0','rsif','naz'
*php iind('robhem0','rsif','naz');


do iind with 'robvrst','rvrsta','naziv'
*php iind('robvrst','rvrsta','naziv');

do iind with 'robproi','proizv','naziv'
*php iind('robproi','proizv','naziv');

do iind with 'tovarni','rsif'
*php iind('tovarni','rsif');

do iind with 'aatvprof','dok'
*php iind('aatvprof','dok');

do iind with 'aatvpor','dok'
*php iind('aatvpor','dok');

do iind with 'aatvotp','dok','dok+grupa+grupa1','grupa+grupa1'
*php iind('aatvotp','dok','dok,grupa,grupa1','grupa,grupa1');

do iind with 'aatvpl','dok'
*php iind('aatvpl','dok');

do iind with 'aatvpl0','dok'
*php iind('aatvpl0','dok');

do iind with 'robnar','proizv+naz'
*php iind('robnar','proizv,naz');

do iind with 'fakko','brodob','sifra'
*php iind('fakko','brodob','sifra');

do iind with 'esmotor','motor','naz'
*php iind('esmotor','motor','naz');

do iind with 'robgru','grupa','grupan'
*php iind('robgru','grupa','grupan');

do iind with 'robgru1','grupa1','grupan1'
*php iind('robgru1','grupa1','grupan1');

do iind with 'robgru2','grupa2','grupan2'
*php iind('robgru2','grupa2','grupan2');

do iind with 'robgru3','grupa3','grupan3'
*php iind('robgru3','grupa3','grupan3');

do iind with 'robgru4','grupa4','grupan4'
*php iind('robgru4','grupa4','grupan4');

do iind with 'robgru5','grupa5','grupan5'
*php iind('robgru5','grupa5','grupan5');

do iind with 'robgru0','grupa+grupa1','grupan'
*php iind('robgru0','grupa,grupa1','grupan');

do iind with 'robgrum0','grupa+grupa1+grupa2+grupa3+grupa5+grupa5'
*php iind('robgrum0','grupa,grupa1,grupa2,grupa3,grupa4,grupa5');

do iind with 'hepon','brkal','rsif'
*php iind('hepon','brkal','rsif');

do iind with 'hepong','brkal','datdok','sifra','sifra+brrac'
*php iind('hepong','brkal','datdok','sifra','sifra,brrac');

do iind with 'heponc','brcen'
*php iind('heponc','brcen');

do iind with 'robnarp','rsif','naz','sifra+naz','grupa'
*php iind('robnarp','rsif','naz','sifra,naz','grupa');

do iind with 'faktu','brkal','sifra','rsif'
*php iind('faktu','brkal','sifra','rsif');

do iind with 'fakt','brkal+alltrim(str(magacin))','rsif+dtos(datdok)','magacin'
*php iind('fakt','brkal,magacin','rsif,datdok','magacin');

do iind with 'faktg','brkal','datdok','brnal+brkal','sifra','sifra+brrac','rnal','tovarni','otpbr'
*php iind('faktg','brkal','datdok','brnal,brkal','sifra','sifra,brrac','rnal','tovarni','otpbr');

do iind with 'fakuni','rsif+dtos(datdok)','naz','brpri','brtre','dtos(datdok)'
*php iind('fakuni','rsif,datdok','naz','brpri','brtre','datdok');

do iind with 'robmas','rsif+dtos(datdok)','naz','rnal'
*php iind('robmas','rsif,datdok','naz','rnal');

*--------------transport
do ibaze with 'vozila'
*php ibaze('vozila','1');

do ibaze with 'vozaci'
*php ibaze('vozaci','1');

do ibaze with 'voztr0'
*php ibaze('voztr0','1');

do ibaze with 'voznal'
*php ibaze('voznal','1');

do ibaze with 'voztros'
*php ibaze('voztros','1');

do ibaze with 'vozgor'
*php ibaze('vozgor','1');

do ibaze with 'vozizv'
*php ibaze('vozizv','1');

do ibaze with 'vozmapa'
*php ibaze('vozmapa','1');


do iind with 'vozila','vsifra','naziv'
*php iind('vozila','vsifra','naziv');

do iind with 'vozaci','ssifra','naziv','broj','ime_prez'
*php iind('vozaci','ssifra','naziv','broj','ime_prez');

do iind with 'voztr0','msifra','naziv'
*php iind('voztr0','msifra','naziv');

do iind with 'voznal','nsifra','sifra'
*php iind('voznal','nsifra','sifra');

do iind with 'voztros','msifra','dtos(datdok)','nsifra','vsifra','ssifra'
*php iind('voztros','msifra','datdok','nsifra','vsifra','ssifra');

do iind with 'vozgor','nalog+dtos(datdok)','dtos(datdok)','vsifra'
*php iind('vozgor','nalog,datdok','datdok','vsifra');

do iind with 'vozizv','msifra','dtos(datdok)','vsifra','ssifra','nsifra'
*php iind('vozizv','msifra','datdok','vsifra','ssifra','nsifra');

do iind with 'vozmapa','mesec','dosmesec'
*php iind('vozmapa','mesec','dosmesec');

*------------------------xml

do ibaze with 'xmlpzar'
*php ibaze('xmlpzar','1');

do ibaze with 'xmlszar'
*php ibaze('xmlszar','1');

do ibaze with 'xmlld'
*php ibaze('xmlld','1');

do ibaze with 'xmlsld'
*php ibaze('xmlsld','1');

do ibaze with 'xmlpreg'
*php ibaze('xmlpreg','1');

do ibaze with 'xmlsreg'
*php ibaze('xmlsreg','1');

do ibaze with 'xmlrAD'
*php ibaze('xmlrAD','1');

do ibaze with 'xmlzarpr'
*php ibaze('xmlzarpr','1');

do ibaze with 'xmlpdv1'
*php ibaze('xmlpdv1','1');

do ibaze with 'xmlpdv2'
*php ibaze('xmlpdv2','1');


do ibaze with 'xm2pzar'
*php ibaze('xm2pzar','1');

do ibaze with 'xm2ppodo'
*php ibaze('xm2ppodo','1');

do ibaze with 'xm2szar'
*php ibaze('xm2szar','1');

do ibaze with 'xm2ld'
*php ibaze('xm2ld','1');

do ibaze with 'xm2zarpr'
*php ibaze('xm2zarpr','1');

do ibaze with 'xm2ldsve','xm2ld'
*php ibaze('xm2ldsve','xm2ld');

do ibaze with 'xm2nal0'
*php ibaze('xm2nal0','1');

do ibaze with 'xm2nal'
*php ibaze('xm2nal','1');


do iind with 'xm2ld','deklarac','sifraprih','maticnibr','prezime'
*php iind('xm2ld','deklarac','sifraprih','maticnibr','prezime');

do iind with 'xm2ldsve','deklarac','sifraprih','maticnibr','prezime'
*php iind('xm2ldsve','deklarac','sifraprih','maticnibr','prezime');


do ibaze with 'xmlu'
*php ibaze('xmlu','1');

do ibaze with 'xmlu0'
*php ibaze('xmlu0','1');

do ibaze with 'xmlpdvp'
*php ibaze('xmlpdvp','1');

do ibaze with 'xmlbu'
*php ibaze('xmlbu','1');

do ibaze with 'xmlbs','xmlbu'
*php ibaze('xmlbs','xmlbu');

do ibaze with 'xmlsi','xmlbu'
*php ibaze('xmlsi','xmlbu');

do ibaze with 'xmlpos'
*php ibaze('xmlpos','1');

do ibaze with 'xmlkap','xmlbu'
*php ibaze('xmlsi','xmlbu');

do ibaze with 'xmlost','xmlbu'
*php ibaze('xmlsi','xmlbu');

do ibaze with 'xmltok','xmlbu'
*php ibaze('xmlsi','xmlbu');

do ibaze with 'xmlsve'
*php ibaze('xmlsve','1');

do ibaze with 'xmlpdp'
*php ibaze('xmlpdp','1');

do ibaze with 'xmlpPODO'
*php ibaze('xmlppodo','1');

*------------------zavrsrni


do ibaze with 'znbil'
*php ibaze('znbil','1');

do ibaze with 'znbil01'
*php ibaze('znbil01','1');

do ibaze with 'znbil02'
*php ibaze('znbil02','1');

do ibaze with 'znstat'
*php ibaze('znstat','1');

do ibaze with 'zntok'
*php ibaze('zntok','1');

do ibaze with 'znkap'
*php ibaze('znkap','1');

do ibaze with 'znkap4a'
*php ibaze('znkap4a','1');

do ibaze with 'znkplan'
*php ibaze('znkplan','1');

do ibaze with 'znk0'
*php ibaze('znk0','1');

do ibaze with 'znk0p'
*php ibaze('znk0p','1');

do ibaze with 'znlogkon'
*php ibaze('znlogkon','1');

do ibaze with 'znlogtab'
*php ibaze('znlogtab','1');

do ibaze with 'znxml'
*php ibaze('znxml','1');


do iind with 'znbil','aop'
*php iind('znbil','aop');

do iind with 'znbil01','aop'
*php iind('znbil01','aop');

do iind with 'znbil02','redni','grupa'
*php iind('znbil02','redni','grupa');

do iind with 'znstat','aop','grupa'
*php iind('znstat','aop','grupa');

do iind with 'zntok','aop'
*php iind('zntok','aop');

do iind with 'znkplan','skonto','nkonto'
*php iind('znkplan','skonto','nkonto');

do iind with 'znk0','konto'
*php iind('znk0','konto');

do iind with 'znk0p','konto'
*php iind('znk0p','konto');

do iind with 'znlogkon','aop'
*php iind('znlogkon','aop');

do iind with 'znlogtab','aop'
*php iind('znlogtab','aop');

do iind with 'znkap','aop1'
*php iind('znkap','aop1');

do ibaze with 'znbiln'
*php ibaze('znbiln','1');

do ibaze with 'znbilD'
*php ibaze('znbild','1');

do ibaze with 'znbil01n'
*php ibaze('znbil01n','1');

do ibaze with 'znbil02n'
*php ibaze('znbil02n','1');

do ibaze with 'znstatn'
*php ibaze('znstatn','1');

do ibaze with 'znstatd'
*php ibaze('znstatd','1');

do ibaze with 'zntokn'
*php ibaze('zntokn','1');

do ibaze with 'zntokngk'
*php ibaze('zntokngk','1');


do ibaze with 'znkap2'
*php ibaze('znkap2','1');

do ibaze with 'znkapn2'
*php ibaze('znkapn2','1');

do ibaze with 'znkap4an'
*php ibaze('znkap4an','1');

do ibaze with 'znkplann'
*php ibaze('znkplann','1');

do ibaze with 'znk0n'
*php ibaze('znk0n','1');

do ibaze with 'znk0pn'
*php ibaze('znk0pn','1');

do ibaze with 'znlogko2'
*php ibaze('znlogko2','1');

do ibaze with 'znlogta2'
*php ibaze('znlogta2','1');

do ibaze with 'znxmln'
*php ibaze('znxmln','1');

do ibaze with 'znostrez'
*php ibaze('znostrez','1');

do ibaze with 'znkapn'
*php ibaze('znkapn','1');

do ibaze with 'znkapn2'
*php ibaze('znkapn2','1');

do ibaze with 'znpospod'
*php ibaze('znpospod','1');


do iind with 'znbiln','aop'
*php iind('znbiln','aop');

do iind with 'znbild','aop'
*php iind('znbild','aop');

do iind with 'znbil01n','aop'
*php iind('znbil01n','aop');

do iind with 'znbil02n','redni','grupa'
*php iind('znbil02n','redni','grupa');

do iind with 'znstatn','aop','grupa'
*php iind('znstatn','aop','grupa');

do iind with 'znstatD','aop','grupa'
*php iind('znstatd','aop','grupa');

do iind with 'zntokn','aop'
*php iind('zntokn','aop');

do iind with 'znkplann','skonto','nkonto'
*php iind('znkplann','skonto','nkonto');

do iind with 'znk0n','konto'
*php iind('znk0n','konto');

do iind with 'znk0pn','konto'
*php iind('znk0pn','konto');

do iind with 'znlogko2','aop'
*php iind('znlogko2','aop');

do iind with 'znlogta2','aop'
*php iind('znlogta2','aop');

do iind with 'znkapn','aop03'
*php iind('znkapn','aop03');

do iind with 'znkapn2','aoP1'
*php iind('znkapn2','aop1');


do iind with 'znostrez','aop'
*php iind('znostrez','aop');

do iind with 'znpospod','aop'
*php iind('znpospod','aop');


*do dbdata04


close all tables
pop key