push key CLEAR                                  
set path to &mdata02
set default to &mdata02
do ibaze with 'boje'
*php ibaze('boje','1');

do ibaze with 'dev'
*php ibaze('dev','1');

do ibaze with 'znlogkon'
*php ibaze('znlogkon','1');

do ibaze with 'znlogn'
*php ibaze('znlogn','1');

do ibaze with 'znlogtan'
*php ibaze('znlogtan','1');

do ibaze with 'zor'
*php ibaze('zor','1');

do ibaze with 'zot','zor'
*php ibaze('zot','zor');

do ibaze with 'zpra','zor'
*php ibaze('zpra','zor');

do ibaze with 'zuod','zor'
*php ibaze('zuod','zor');

do ibaze with 'zpravkal','zor'
*php ibaze('zpravkal','zor');

do ibaze with 'zugovori','zor'
*php ibaze('zugovori','zor');

do ibaze with 'prolog','zor'
*php ibaze('prolog','zor');

do ibaze with 'aktuelno','zor'
*php ibaze('aktuelno','zor');

do ibaze with 'lozinke'
*php ibaze('lozinke','1');

do ibaze with 'lozinkea'
*php ibaze('lozinkea','1');

do ibaze with 'kurs'
*php ibaze('kurs','1');

do ibaze with 'snimiput'
*php ibaze('snimiput','1');

do ibaze with 'valute'
*php ibaze('valute','1');

do ibaze with 'ldkon00'
*php ibaze('ldkon00','1');

do ibaze with 'helpn'
*php ibaze('helpn','1');

do ibaze with 'statuput','zor'
*php ibaze('statuput','zor');

do ibaze with 'pduput','zor'
*php ibaze('pduput','zor');

do ibaze with 'komande'
*php ibaze('komande','1');

do ibaze with 'konplan'
*php ibaze('konplan','1');

do ibaze with 'putanje'
*php ibaze('putanje','1');

do ibaze with 'prenpod'
*php ibaze('prenpod','1');

do ibaze with 'pdvkon'
*php ibaze('pdvkon','1');

do iind with 'pdvkon','vpdv'
*php iind('pdvkon','vpdv');

do ibaze with 'osag'
*php ibaze('osag','1');

do ibaze with 'osagpod'
*php ibaze('osagpod','1');

do ibaze with 'recnik'
*php ibaze('recnik','1');

do ibaze with 'ldradvr'
*php ibaze('ldradvr','1');

do ibaze with 'l2virm0'
*php ibaze('l2virm0','1');

do ibaze with 'ldnovir'
*php ibaze('ldnovir','1');

do ibaze with 'ldnovirz'
*php ibaze('ldnovirz','1');

do ibaze with 'pdvus'
*php ibaze('pdvus','1');

do ibaze with 'ldzzo01'
*php ibaze('ldzzo01','1');

do ibaze with 'ldzzo02'
*php ibaze('ldzzo02','1');

do ibaze with 'kalprn'
*php ibaze('kalprn','1');

do ibaze with 'fakprn'
*php ibaze('fakprn','1');

do ibaze with 'ksema'
*php ibaze('ksema','1');

do ibaze with 'tarifa'
*php ibaze('tarifa','1');

do ibaze with 'fakpodn'
*php ibaze('fakpodn','1');

do ibaze with 'fakpodn2'   
*php ibaze('fakpodn2','1');

do ibaze with 'fakpoti'
*php ibaze('fakpoti','1');

do ibaze with 'konto'
*php ibaze('konto','1');

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
*php ibaze('kon6','1');

do ibaze with 'nalvrsta'
*php ibaze('nalvrsta','1');

do ibaze with 'mesta'
*php ibaze('mesta','1');

do ibaze with 'start'
*php ibaze('start','1');

do iind with 'boje','bkod'
*php iind('boje','bkod');

do iind with 'kalprn','fvrsta'
*php iind('kalprn','fvrsta');

do iind with 'fakprn','fvrsta'
*php iind('fakprn','fvrsta');
 
do iind with 'ksema','sema'
*php iind('ksema','sema');
 
do iind with 'fakpodn','fpsifra'
*php iind('fakpodn','fpsifra');
 
do iind with 'fakpodn2','fpsifra2'   
*php iind('fakpodn2','fpsifra2');
 
do iind with 'tarifa','tarifa'
*php iind('tarifa','tarifa');

do iind with 'konto','konto','naziv'
*php iind('konto','konto','naziv');
 
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

do iind with 'nalvrsta','vrnal','naziv'
*php iind('nalvrsta','vrnal','naziv');

do iind with 'mesta','mp','mesto'
*php iind('mesta','mp','mesto');

do iind with 'valute','dev','devnaz'
*php iind('valute','dev','devnaz');

do iind with 'helpn','fname'
*php iind('helpn','fname');

*--------------------------------------------------------------

do iind with 'konplan','konto'
*php iind('konplan','konto');

do iind with 'putanje','firma'
*php iind('putanje','firma');

do iind with 'dev','dev+DTOS(datdok)','dtos(datdok)'
*php iind('dev','dev,datdok','datdok');

do iind with 'lozinke','korisnik'
*php iind('lozinke','korisnik');

do iind with 'lozinkea','korisnik'
*php iind('lozinkea','korisnik');

do iind with 'kurs','dtos(datdok)'
*php iind('kurs','datdok');

do iind with 'osag','ag','opis'
*php iind('osag','ag','opis');

do iind with 'osagpod','ag+agpod','opis','agpod'
*php iind('osagpod','ag,agpod','opis','agpod');

do iind with 'znlogkon','aop'
*php iind('znlogkon','aop');

do iind with 'znlogn','aop'
*php iind('znlogn','aop');

 do iind with 'ldradvr','maticnibr','broj','dtos(datpoc)','alltrim(str(broj,4,0))+dtos(datpoc)'
*php iind('ldradvr','maticnibr','broj','datpoc','broj,datpoc');

do ibaze with 'genpar'
*php ibaze('genpar','1');

do ibaze with 'imenik'
*php ibaze('imenik','1');

do ibaze with 'imenpor'
*php ibaze('imenpor','1');

do ibaze with 'putnal'
*php ibaze('putnal','1');

do ibaze with 'firma'
*php ibaze('firma','1');

do ibaze with 'firma3','firma'
*php ibaze('firma3','firma');

do ibaze with 'virm'
*php ibaze('virm','1');

do ibaze with 'uplatni'
*php ibaze('uplatni','1');

do ibaze with 'mtr'
*php ibaze('mtr','1');

do ibaze with 'ldgrupa'
*php ibaze('ldgrupa','1');

do ibaze with 'nalbroj'
*php ibaze('nalbroj','1');

do ibaze with 'aanal'
*php ibaze('aanal','1');

do ibaze with 'aaplan'
*php ibaze('aaplan','1');

do ibaze with 'prenos'
*php ibaze('prenos','1');

do ibaze with 'placpor'
*php ibaze('placpor','1');


do ibaze with 'aatv'
*php ibaze('aatv','1');

do ibaze with 'ldparam'
*php ibaze('ldparam','1');

do ibaze with 'cekovi'
*php ibaze('cekovi','1');

do ibaze with 'aabl'
*php ibaze('aabl','1');

do ibaze with 'aaan'
*php ibaze('aaan','1');

do ibaze with 'aarc'
*php ibaze('aarc','1');

do ibaze with 'aarc0'
*php ibaze('aarc0','1');

do ibaze with 'alinije'
*php ibaze('alinije','1');

Do ibaze with 'aaka'
*php ibaze('aaka','1');

do ibaze with 'aatm','aatv'
*php ibaze('aatm','aatv');

do ibaze with 'pdv00'
*php ibaze('pdv00','1');

do ibaze with 'pdvu'
*php ibaze('pdvu','1');

do ibaze with 'pdvi'
*php ibaze('pdvi','1');

do ibaze with 'pdVsn'
*php ibaze('pdvsn','1');

do ibaze with 'pdvigk'
*php ibaze('pdvigk','1');

do ibaze with 'pdvgkkon'
*php ibaze('pdvgkkon','1');

do ibaze with 'pdvgkdug'
*php ibaze('pdvgkdug','1');

do ibaze with 'ispisgk'
*php ibaze('ispisgk','1');

do ibaze with 'ispispu'
*php ibaze('ispispu','1');

do ibaze with 'ispispi'
*php ibaze('ispispi','1');

do ibaze with 'pdvper'
*php ibaze('pdvper','1');

do ibaze with 'pdvsve'
*php ibaze('pdvsve','1');

do ibaze with 'banke'
*php ibaze('banke','1');

do ibaze with 'carev'
*php ibaze('carev','1');

do ibaze with 'carev3'
*php ibaze('carev3','1');

do ibaze with 'carrob'
*php ibaze('carrob','1');

do ibaze with 'putnici'
*php ibaze('putnici','1');

do ibaze with 'putbonus'
*php ibaze('putbonus','1');

do ibaze with 'putbonGR'
*php ibaze('putbongr','1');

Do ibaze with 'putn2'
   *php ibaze('putn2','1');

do ibaze with 'putngr'
*php ibaze('putngr','1');

do ibaze with 'putn2PO'
*php ibaze('putn2po','1');

do ibaze with 'putnob'
*php ibaze('putnob','1');

do ibaze with 'putno3'
*php ibaze('putno3','1');

do ibaze with 'putnobrs'
*php ibaze('putnobrs','1');

do ibaze with 'putnobra'
*php ibaze('putnobra','1');

do ibaze with 'prorj'
*php ibaze('prorj','1');

do ibaze with 'prorn'
*php ibaze('prorn','1');

do ibaze with 'prorob'
*php ibaze('prorob','1');

do ibaze with 'tekst'
*php ibaze('tekst','1');

do ibaze with 'ankursr'
*php ibaze('ankursr','1');

do ibaze with 'asnal'
*php ibaze('asnal','1');

do ibaze with 'asnalg'
*php ibaze('asnalg','1');

do ibaze with 'asvozila'
*php ibaze('asvozila','1');

do ibaze with 'asneisp'
*php ibaze('asneisp','1');

do ibaze with 'senal'
*php ibaze('senal','1');

do ibaze with 'senalg'
*php ibaze('senalg','1');

do ibaze with 'separam'
*php ibaze('separam','1');

do ibaze with 'serad'
*php ibaze('serad','1');

do ibaze with 'deklarac'
*php ibaze('deklarac','1');

do ibaze with 'planme'
*php ibaze('planme','1');

do ibaze with 'plangru'
*php ibaze('plangru','1');

do ibaze with 'plangru0'
*php ibaze('plangru0','1');

do ibaze with 'plandat'
*php ibaze('plandat','1');

do ibaze with 'planmei'
*php ibaze('planmei','1');

do ibaze with 'plangrui'
*php ibaze('plangrui','1');

do ibaze with 'plandati'
*php ibaze('plandati','1');

do ibaze with 'nalplobr'
*php ibaze('nalplobr','1');

do ibaze with 'nalpldat'
*php ibaze('nalpldat','1');

do ibaze with 'plangru2','plangru'
*php ibaze('plangru2','plangru');

do ibaze with 'planodlp'
*php ibaze('planodlp','1');

do ibaze with 'robfre'
*php ibaze('robfre','1');

do ibaze with 'kasaput'
*php ibaze('kasaput','1');

do ibaze with 'putput','kasaput'
*php ibaze('putput','kasaput');

do ibaze with 'putputk','kasaput'
*php ibaze('putputk','kasaput');

do ibaze with 'tmp0','tmp'
*php ibaze('tmp0','tmp');

do ibaze with 'kabkon'
*php ibaze('kabkon','1');

do ibaze with 'kabvrsta'
*php ibaze('kabvrsta','1');

do ibaze with 'kabdob0'
*php ibaze('kabdob0','1');

do ibaze with 'kabdob'
*php ibaze('kabdob','1');

do ibaze with 'kabvrpos'
*php ibaze('kabvrpos','1');

do ibaze with 'nalpril'
*php ibaze('nalpril','1');

do ibaze with 'nalpril0'
*php ibaze('nalpril0','1');

do ibaze with 'vir0'
*php ibaze('vir0','1');

do ibaze with 'vir0e'
*php ibaze('vir0e','1');

do ibaze with 'robcene0'
*php ibaze('robcene0','1');

do ibaze with 'robcene'
*php ibaze('robcene','1');

do ibaze with 'robpcene'
*php ibaze('robpcene','1');

do ibaze with 'ci01'
*php ibaze('ci01','1');

do ibaze with 'ci02'
*php ibaze('ci02','1');

do ibaze with 'ci03'
*php ibaze('ci03','1');

do ibaze with 'tmppren'
*php ibaze('tmppren','1');

do ibaze with 'proscen'
*php ibaze('proscen','1');

do ibaze with 'kpo'
*php ibaze('kpo','1');

do ibaze with 'fakcmr'
*php ibaze('fakcmr','1');

do ibaze with 'fakcmr0'
*php ibaze('fakcmr0','1');

do ibaze with 'ronarpov'
*php ibaze('ronarpov','1');

do ibaze with 'ronarpv0'
*php ibaze('ronarpv0','1');

do ibaze with 'rokoktel'
*php ibaze('rokoktel','1');

do ibaze with 'preuzpod'
*php ibaze('preuzpod','1');

do ibaze with 'vizitke'
*php ibaze('vizitke','1');

do ilbaze with 'proverai'
*php ibaze('proverai','1');

do ibaze with 'nalpdefk'
*php ibaze('nalpdefk','1');

do ibaze with 'pcvozila'
*php ibaze('pcvozila','1');

do ibaze with 'pcvozaci'
*php ibaze('pcvozaci','1');

do ibaze with 'kasapl'
*php ibaze('kasapl','1');

do ibaze with 'reversi'
*php ibaze('reversi','1');

do ibaze with 'an0mis'
*php ibaze('an0mis','1');

do ibaze with 'prevev0'
*php ibaze('prevev0','1');

do ibaze with 'zatvper'
*php ibaze('zatvper','1');

do ibaze with 'kalpregu'
*php ibaze('kalpregu','1');

do ibaze with 'geneko'
*php ibaze('geneko','1');

do ibaze with 'pracenje'
*php ibaze('pracenje','1');

do ibaze with 'delov'
*php ibaze('delov','1');

do ibaze with 'delvrsta'
*php ibaze('delvrsta','1');

do ibaze with 'dellokac'
*php ibaze('dellokac','1');

do ibaze with 'delstat'
*php ibaze('delstat','1');

do ibaze with 'delorgan'
*php ibaze('delorgan','1');

do ibaze with 'deldok'
*php ibaze('deldok','1');

do ibaze with 'delprim'
*php ibaze('delprim','1');

do ibaze with 'tvprovpr'
*php ibaze('tvprovpr','1');

do ibaze with 'tvprovko'
*php ibaze('tvprovko','1');

do ibaze with 'tvprovna'
*php ibaze('tvprovna','1');

do ibaze with 'robfifo'
*php ibaze('robfifo','1');

do ibaze with 'robfifos'
*php ibaze('robfifos','1');

do ibaze with 'tvprovfa'
*php ibaze('tvprovfa','1');

do ibaze with 'fakteks'
*php ibaze('fakteks','1');

do ibaze with 'fakteks0'
*php ibaze('fakteks0','1');

do ibaze with 'faklica'
*php ibaze('faklica','1');

do ibaze with 'konsig'
*php ibaze('konsig','1');

do ibaze with 'konsigp'
*php ibaze('konsigp','1');

do ibaze with 'konsig0','konsig'
*php ibaze('konsig0','konsig');

do ibaze with 'putnic00'
*php ibaze('putnic00','1');

do ibaze with 'putsve'
*php ibaze('putsve','1');

do ibaze with 'aatvserv'
*php ibaze('aatvserv','1');

do ibaze with 'sveslag'
*php ibaze('sveslag','1');

do ibaze with 'sveslnal'
*php ibaze('sveslnal','1');

do ibaze with 'sveslagp','sveslag'
*php ibaze('sveslagp','sveslag');

do ibaze with 'tvprovmv'
*php ibaze('tvprovmv','1');

do ibaze with 'rnalsal'
*php ibaze('rnalsal','1');

do ibaze with 'linkput'
*php ibaze('linkput','1');

do ibaze with 'tvparrev'
*php ibaze('tvparrev','1');

do ibaze with 'pdvknji'
*php ibaze('pdvknji','1');

do ibaze with 'findtab'
*php ibaze('findtab','1');

do ibaze with 'aatvpak'
*php ibaze('aatvpak','1');

do ilbaze with 'novaput'
*php ibaze('novaput','1');

do ibaze with 'zlato' 
*php ibaze('zlato','1');

do ibaze with 'kasapar' 
*php ibaze('kasapar','1');

do ibaze with 'tmsve'
*php ibaze('tmsve','1');

do ibaze with 'tmsve0'
*php ibaze('tmsve0','1');

do ibaze with 'tmspren'
*php ibaze('tmspren','1');

do ibaze with 'robhtm'
*php ibaze('robhtm','1');

do ibaze with 'robprsve'
*php ibaze('robprsve','1');

do ibaze with 'kasasto'
*php ibaze('kasasto','1');

do ibaze with 'kasabroj'
*php ibaze('kasabroj','1');

do ibaze with 'kasarev','fak'
*php ibaze('kasarev','fak');

do ibaze with 'kasarevg','fakg'
*php ibaze('kasarevg','fakg');

do ibaze with 'vaga'
*php ibaze('vaga','1');

do ibaze with 'vagam','vaga'
*php ibaze('vagam','vaga');

do ibaze with 'kasapt','kasaput'
*php ibaze('kasapt','kasaput');

do ibaze with 'kasarf'
*php ibaze('kasarf','1');

do ibaze with 'komkir'
*php ibaze('komkir','1');

do ibaze with 'robpr' 
*php ibaze('robpr','1');

do ibaze with 'fpreng'
*php ibaze('fpreng','1');

do ibaze with 'fstorot'
*php ibaze('fstorot','1');

do iind with 'robpr','profil'
*php iind('robpr','profil');

do ibaze with 'artikli'
*php ibaze('artikli','1');

do ibaze with 'pazarbg'
*php ibaze('pazarbg','1');

do ilbaze with 'tmpkol'
*php ibaze('tmpkol','1');

do ilbaze with 'kaltrn'
*php ibaze('kaltrn','1');

do ilbaze with 'pravitab'
*php ibaze('pravitab','1');

do ilbaze with 'robpored'
*php ibaze('robpored','1');

*do ilbaze with 'robmemo'
**php ibaze('robmemo','1');

do ilbaze with 'ftppre'
*php ibaze('ftppre','1');

do ilbaze with 'ftpobj'
*php ibaze('ftpobj','1');

do ilbaze with 'ftppri'
*php ibaze('ftppri','1');

do ilbaze with 'ftpput'
*php ibaze('ftpput','1');

do ilbaze with 'ftptab','ftpput'
*php ibaze('ftptab','ftpput');

do ilbaze with 'ftpcitaj'
*php ibaze('ftpcitaj','1');

do ilbaze with 'an0fizli'
*php ibaze('an0fizli','1');

do ilbaze with 'ftpsalji'
*php ibaze('ftpsalji','1');

do ilbaze with 'ftpuzmi'
*php ibaze('ftpuzmi','1');

do ilbaze with 'podset'
*php ibaze('podset','1');

do ilbaze with 'kasatreb'
*php ibaze('kasatreb','1');

do ilbaze with 'kasadrop'
*php ibaze('kasadrop','1');

do ilbaze with 'sqlup'
*php ibaze('sqlup','1');


do ibaze with 'ppdg1'
*php ibaze('ppdg1','1');

do ibaze with 'ppdg1a'
*php ibaze('ppdg1a','1');

do ibaze with 'ppdg1b'
*php ibaze('ppdg1b','1');

do ibaze with 'ppdg1c'
*php ibaze('ppdg1c','1');

do ibaze with 'ppdg2'
*php ibaze('ppdg2','1');

do ibaze with 'ppdg3'
*php ibaze('ppdg3','1');

do ibaze with 'ppdg4'
*php ibaze('ppdg4','1');

do ibaze with 'ppdg5'
*php ibaze('ppdg5','1');

do ibaze with 'ppdg2r'
*php ibaze('ppdg2r','1');

do ibaze with 'eppdv'
*php ibaze('eppdv','1');

do ibaze with 'obrerp'
*php ibaze('obrerp','1');

do ibaze with 'tmput'
*php ibaze('tmput','1');

do ibaze with 'trgpar'
*php ibaze('trgpar','1');

do ibaze with 'ftabele'
*php ibaze('ftabele','1');

do ibaze with 'pregf'
*php ibaze('pregf','1');

do ibaze with 'pregf01'
*php ibaze('pregf01','1');

do ibaze with 'pregf02','pregf01'
*php ibaze('pregf02','pregf01');

do ibaze with 'pregf03','pregf01'
*php ibaze('pregf03','pregf01');

do ibaze with 'pregf04','pregf01'
*php ibaze('pregf04','pregf01');

do ibaze with 'stopapor'
*php ibaze('stopapor','1');


*---------------indeksi------------------

do iind with 'ftpsalji','dok'
*php iind('ftpsalji','dok');

do iind with 'artikli','bar_code'
*php iind('artikli','bar_code');

do iind with 'robhtm','rsif','naz+podnaziv','tarifa','barkod','sifra','podnaziv','rsif+podnaziv','proizv','podrob','grupa+naz'
*php iind('robhtm','rsif','naz,podnaziv','tarifa','barkod','sifra','podnaziv','rsif,podnaziv','proizv','podrob','grupa,naz');

do iind with 'robprsve','rsif','naz','proizv','podrob','grupa+naz','proizv+naz','dok','grupa1+naz','mesec+grupa1+proizv+naz'
*php iind('robprsve','rsif','naz','proizv','podrob','grupa,naz','proizv,naz','dok','grupa1,naz','mesec,grupa1,proizv,naz');

do iind with 'zlato','datdok','brkal'
*php iind('zlato','datdok','brkal');

do iind with 'kasarev','brkal','rsif+dtos(datdok)'
*php iind('kasarev','brkal','rsif,datdok');

do iind with 'kasarevg','brkal','datdok','brnal+brkal','sifra','sifra+brrac'
*php iind('kasarevg','brkal','datdok','brnal,brkal','sifra','sifra,brrac');

do iind with 'rnalsal','rnal','naz'
*php iind('rnalsal','rnal','naz');

do iind with 'pcvozila','vsifra','regbroj','vnaz'
*php iind('pcvozila','vsifra','regbroj','vnaz');

do iind with 'pcvozaci','vozsifra','ime_prez','maticnib','lkbroj'
*php iind('pcvozaci','vozsifra','ime_prez','maticnib','lkbroj');

do iind with 'faklica','olsifra','olime'
*php iind('faklica','olsifra','olime');

do iind with 'prevev0','brkal','dtos(datdok)','sifra','sifra+brrac'
*php iind('prevev0','brkal','datdok','sifra','sifra,brrac');

do iind with 'kpo','datdok','brnal'
*php iind('kpo','datdok','brnal');

do iind with 'prorj','rjsifra','naziv'
*php iind('prorj','rjsifra','naziv');

do iind with 'prorob','rsif','naz'
*php iind('prorob','rsif','naz');

do iind with 'prorn','radnal','ugovor','sifra','datdok','rjsifra','rsif'
*php iind('prorn','radnal','ugovor','sifra','datdok','rjsifra','rsif');

do iind with 'tekst','sifra'
*php iind('tekst','sifra');

do iind with 'ankursr','konto'
*php iind('ankursr','konto');

do iind with 'asnalg','brkal','sifra','datdok'
*php iind('asnalg','brkal','sifra','datdok');

do iind with 'asnal','brkal','rsif','barkod','datdok','rsif+dtos(datdok)','sifneisp'
*php iind('asnal','brkal','rsif','barkod','datdok','rsif,datdok','sifneisp');

do iind with 'asvozila','sifravoz','marka','tip','sasija','motor','dtos(datdok)'
*php iind('asvozila','sifravoz','marka','tip','sasija','motor','datdok');

do iind with 'asneisp','sifneisp','opisneisp'
*php iind('asneisp','sifneisp','opisneisp');

do iind with 'senalg','brkal','sifra','datdok'
*php iind('senalg','brkal','sifra','datdok');

do iind with 'senal','brkal','rsif','datdok','rsif+dtos(datdok)'
*php iind('senal','brkal','rsif','datdok','rsif,datdok');

do iind with 'serad','brkal','rsif','datdok','sifrad'
*php iind('serad','brkal','rsif','datdok','sifrad');

do iind with 'imenik','sifra','ime','firma','mesto','tel1'
*php iind('imenik','sifra','ime','firma','mesto','tel1');

do iind with 'imenpor','sifra','dtos(datum)+vreme','dtos(datum)+vrsta','vrsta+dtos(datum)'
*php iind('imenpor','sifra','datum,vreme','datum,vrsta','vrsta,datum');

do iind with 'mtr','mtr','naziv'
*php iind('mtr','mtr','naziv');

do iind with 'ldgrupa','grupa','naziv'
*php iind('ldgrupa','grupa','naziv');

do iind with 'nalbroj','brnal','vrnal'
*php iind('nalbroj','brnal','vrnal');

do iind with 'aabl','sifprod'
*php iind('aabl','sifprod');

do iind with 'aaan','konto'
*php iind('aaan','konto');

do iind with 'aaka','sifprod'
*php iind('aaka','sifprod');

do iind with 'placpor','datdok','tarifa','brnal','zir+mp','mp+zir','mp+tarifa+dtos(datdok)'
*php iind('placpor','datdok','tarifa','brnal','zir,mp','mp,zir','mp,tarifa,datdok');

do iind with 'cekovi','brspec','sifra+dtos(datdok)'
*php iind('cekovi','brspec','sifra,datdok');

do iind with 'pdvu','vpdv','datdok','sifra','brrac','brnal','grupa','dtos(datpri)','dtos(datpdv)','dok','konto'
*php iind('pdvu','vpdv','datdok','sifra','brrac','brnal','grupa','datpri','datpdv','dok','konto');

do iind with 'pdvi','vpdv','datdok','sifra','brrac','brnal','grupa','dtos(datpri)','dtos(datpdv)','dok','konto'
*php iind('pdvi','vpdv','datdok','sifra','brrac','brnal','grupa','datpri','datpdv','dok','konto');

do iind with 'pdvper','pocmes'
*php iind('pdvper','pocmes');

do iind with 'pdvigk','vpdv','datdok','brnal','dok','konto','brnal+konto'
*php iind('pdvigk','vpdv','datdok','brnal','dok','konto','brnal,konto');

do iind with 'pdvsve','period'
*php iind('pdvsve','period');

do iind with 'carev','brkal','datdok','prsif'
*php iind('carev','brkal','datdok','prsif');

do iind with 'carev3','brkal','datdok'
*php iind('carev3','brkal','datdok');

do iind with 'carrob','prsif','naziv'
*php iind('carrob','prsif','naziv');

do iind with 'putnici','putnik','ime'
*php iind('putnici','putnik','ime');

do iind with 'putn2','putnik','ime'
*php iind('putn2','putnik','ime');

do iind with 'putnob','putnik+dtos(valuta)','ime','brrac','dtos(datdok)','dtos(valuta)','dtos(datupl)','sifra','putnik+dtos(datdok)'
*php iind('putnob','putnik,valuta','ime','brrac','datdok','valuta','datupl','sifra','putnik,datdok');

do iind with 'putnobrs','putnik+dtos(valuta)','ime','brrac','dtos(datdok)','dtos(valuta)','dtos(datupl)','sifra','putnik+dtos(datdok)'
*php iind('putnobrs','putnik,valuta','ime','brrac','datdok','valuta','datupl','sifra','putnik,datdok');

do iind with 'putnobra','putnik','ime'
*php iind('putnobra','putnik','ime');

do iind with 'putsve','putnik','ime','redbr','dtos(dat0)'
*php iind('putsve','putnik','ime','redbr','dat0');

do iind with 'planme','konto','grupa'
*php iind('planme','konto','grupa');

do iind with 'plangru','konto','gnaz','grupa'
*php iind('plangru','konto','gnaz','grupa');

do iind with 'plangru0','konto','gnaz','grupa'
*php iind('plangru0','konto','gnaz','grupa');

do iind with 'plangru2','konto','gnaz','dugpot','grupa'
*php iind('plangru2','konto','gnaz','dugpot','grupa');

do iind with 'robfre','rsif','naz'
*php iind('robfre','rsif','naz');

do iind with 'nalplobr','k2'
*php iind('nalplobr','k2');

do iind with 'planmei','konto','grupa'
*php iind('planmei','konto','grupa');

do iind with 'plangrui','grupa','gnaz'
*php iind('plangrui','grupa','gnaz');

do iind with 'robpcene','rsif+dtos(datdok)','naz+dtos(datdok)'
*php iind('robpcene','rsif,datdok','naz,datdok');

do iind with 'kabkon','sifra','datdok','vrsta','ime'
*php iind('kabkon','sifra','datdok','vrsta','ime');

do iind with 'kabvrsta','vrsta','nazvrsta'
*php iind('kabvrsta','vrsta','nazvrsta');

do iind with 'kabdob0','dobsif'
*php iind('kabdob0','dobsif');

do iind with 'kabdob','brkal','brdok','vrpos','datdok','dobsif','rsif'
*php iind('kabdob','brkal','brdok','vrpos','datdok','dobsif','rsif');

do iind with 'kabvrpos','vrpos','vrnaz'
*php iind('kabvrpos','vrpos','vrnaz');

do iind with 'tmp0','datdok','brkal','brnal','brfak','dok'
*php iind('tmp0','datdok','brkal','brnal','brfak','dok');

do iind with 'vir0','redbroj'
*php iind('vir0','redbroj');

do iind with 'vir0e','redbroj'
*php iind('vir0e','redbroj');

do iind with 'virm','nazrac','sifra'
*php iind('virm','nazrac','sifra');

do iind with 'ci03','cigoznaka'
*php iind('ci03','cigoznaka');

do iind with 'tmppren','konto'
*php iind('tmppren','konto');

do iind with 'fakcmr','brrac','dtos(datdok)','sifra','cmr'
*php iind('fakcmr','brrac','datdok','sifra','cmr');

do iind  with 'ronarpov','grupa+naz','naz','rsif','podnaziv'
*php iind('ronarpov','grupa,naz','naz','rsif','podnaziv');

do iind  with 'rokoktel','rsif','naz','podrob'
*php iind('rokoktel','rsif','naz','podrob');

do iind  with 'an0mis','sifra+misifra','sifra+misifra+rsif'
*php iind('an0mis','sifra,misifra','sifra,misifra,rsif');

do iind  with 'delov','broj','dtos(datpri)','brrac','dtos(datdok)','vrsta','dok','sifra','sifra+brrac'
*php iind('delov','broj','datpri','brrac','datdok','vrsta','dok','sifra','sifra,brrac');

do iind  with 'delvrsta','vrsta','naziv'
*php iind('delvrsta','vrsta','naziv');

do iind  with 'dellokac','siflokac','naziv'
*php iind('dellokac','siflokac','naziv');

do iind  with 'delstat','sifstatus','naziv'
*php iind('delstat','sifstatus','naziv');

do iind  with 'delorgan','siforgan','naziv'
*php iind('delorgan','siforgan','naziv');

do iind  with 'deldok','dok','naziv'
*php iind('deldok','dok','naziv');

do iind  with 'delprim','sifprim','naziv'
*php iind('delprim','sifprim','naziv');

do iind  with 'tvprovko','brkal'
*php iind('tvprovko','brkal');

do iind  with 'robfifo','rsif+dtos(datdok)','naz','podnaziv','vrsta'
*php iind('robfifo','rsif,datdok','naz','podnaziv','vrsta');

do iind  with 'robfifos','rsif','naz','podnaziv'
*php iind('robfifos','rsif','naz','podnaziv');

do iind  with 'sveslag','brnal','brnal+brkal+konto'
*php iind('sveslag','brnal','brnal,brkal,konto');

do iind  with 'sveslnal','brnal'
*php iind('sveslnal','brnal');

do iind  with 'sveslagp','brnal'
*php iind('sveslagp','brnal');

do iind  with 'tvprovmv','rsif+dtos(datdok)'
*php iind('tvprovmv','rsif,datdok');

do iind with 'podset','datdok'
*php iind('podset','datdok');

do iind with 'kalprn','fvrsta'
*php iind('kalprn','fvrsta');

do iind with 'fakprn','fvrsta'
*php iind('fakprn','fvrsta');

do iind with 'ksema','sema'
*php iind('ksema','sema');

do iind with 'tarifa','tarifa'
*php iind('tarifa','tarifa');

do iind with 'fakpodn','fpsifra'
*php iind('fakpodn','fpsifra');

do iind with 'fakpodn2','fpsifra2'
*php iind('fakpodn2','fpsifra2');

do iind with 'konto','konto','naziv'
*php iind('konto','konto','naziv');

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

do iind with 'nalvrsta','vrnal','naziv'
*php iind('nalvrsta','vrnal','naziv');

do iind with 'mesta','mp','mesto'
*php iind('mesta','mp','mesto');

do iind with 'kalpregu','rsif'
*php iind('kalpregu','rsif');

do iind with 'fakteks','redbr','rsif','imetxt'
*php iind('fakteks','redbr','rsif','imetxt');

do iind with 'fakteks0','imetxt'
*php iind('fakteks0','imetxt');

do iind with 'konsig','sifra','brrac','dtos(datdok)','rednibr','brkal'
*php iind('konsig','sifra','brrac','datdok','rednibr','brkal');

do iind with 'konsig0','sifra','brrac','dtos(datdok)','rednibr'
*php iind('konsig0','sifra','brrac','datdok','rednibr');

do iind with 'tvprovpr','razlika','dtos(datdok)'
*php iind('tvprovpr','razlika','datdok');

do iind with 'putnal','dtos(datdok)'
*php iind('putnal','datdok');

do iind with 'tmspren','dok','dtos(datdok)'
*php iind('tmspren','dok','datdok');

do iind with 'tmpkol','datdok','brnal'
*php iind('tmpkol','datdok','brnal');

do iind with 'pregf','ime'
*php iind('pregf','ime');

do iind  with 'an0fizli','flsifra','ime_prez','jmbg','pib2'
*php iind('an0fizli','flsifra','ime_prez','jmbg','pib2');

*-------------obracun putnika----------
mreca=0
if file('putnic00.dbf')
   use putnic00 in 0 
   select putnic00
   mreca=reccount()
   use
endif
if mreca>0
   for i=1 to mreca
      mi=alltrim(str(i,2,0))
      kputn2='putn2'+mi 
      kputn3='putn3'+mi 
      kputn4='putn4'+mi       
      kputnob='putnob'+mi 
      kputno3='putno3'+mi       
      do ibaze with kputn2,'putn2'
      do ibaze with kputn3,'putn3'
      do ibaze with kputn4,'putn4'
      do ibaze with kputnob,'putnob'
      do ibaze with kputno3,'putno3'      
      do iind with kputn2,'putnik','ime'
      do iind with kputn3,'putnik','ime'      
      do iind with kputn4,'putnik','ime'      
      do iind with kputnob,'putnik+dtos(valuta)','ime','brrac','dtos(datdok)','dtos(valuta)','sifra','putnik+dtos(datdok)'
      do iind with kputno3,'putnik+dtos(valuta)','ime','brrac','dtos(datdok)','dtos(valuta)','sifra','putnik+dtos(datdok)'      
   next
endif
*-----------php
*php  $mreca=0;
*php  $kputnic00='putnic00';
*php  $upit = "SELECT * FROM $kputnic00 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php  $mreca=mysql_num_rows($rez);      
*php  if ($mreca<>0)
*php   {
*php     for ($i=0;$i<=$mreca;$i+=1)
*php     {
*php       $mii=trim(strval($i));
*php       $kputn2='putn2'.$mii;
*php       $kputn3='putn3'.$mii ;
*php       $kputn4='putn4'.$mii;
*php       $kputnob='putnob'.$mii;
*php       $kputno3='putno3'.$mii;
*php       ibaze($kputn2,'putn2');
*php       ibaze($kputn3,'putn3');
*php       ibaze($kputn4,'putn4');
*php       ibaze($kputnob,'putnob');
*php       ibaze($kputno3,'putno3');      
*php       iind($kputn2,'putnik','ime');
*php       iind($kputn3,'putnik','ime');      
*php       iind($kputn4,'putnik','ime');      
*php       iind($kputnob,'putnik,valuta','ime','brrac','datdok','valuta','sifra','putnik,datdok');
*php       iind($kputno3,'putnik,valuta','ime','brrac','datdok','valuta','sifra','putnik,datdok');
*php      } 
*php   }


for i=1 to 12
   mpdvu='pdvu'+alltrim(str(i,2,0))
   mpdvi='pdvi'+alltrim(str(i,2,0))
   do ibaze with mpdvu,'pdvu'
   do ibaze with mpdvi,'pdvi'
   do iind with mpdvu,'vpdv','datdok','sifra','brrac','brnal','grupa','dtos(datpri)','dtos(datpdv)','dok','sifra+brrac'
   do iind with mpdvi,'vpdv','datdok','sifra','brrac','brnal','grupa','dtos(datpri)','dtos(datpdv)','dok','sifra+brrac'
next

*---------------php pdvu i pdvi 
*php  for ($i=0;$i<=12;$i+=1)
*php  {
*php    $mii=trim(strval($i));
*php    $mpdvu='pdvu'.$mii;
*php    $mpdvi='pdvi'.$mii;
*php    ibaze($mpdvu,'pdvu');
*php    ibaze($mpdvi,'pdvi');
*php    iind($mpdvu,'vpdv','datdok','sifra','brrac','brnal','grupa','datpri','datpdv','dok','sifra,brrac');
*php    iind($mpdvi,'vpdv','datdok','sifra','brrac','brnal','grupa','datpri','datpdv','dok','sifra,brrac');
*php  }
*-----------------provera----------
close all tables
use proverai in 0
   select proverai
   if reccount()<1
      append blank
   endif
USE
*php   $mreca=0;
*php   $upit = "SELECT * FROM proverai ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php      $upit =" insert into proverai () values ()";
*php      $rez=mysql_query($upit);
*php      if (!$rez){txtsnimi('db_sifarnici greska=proverai '.mysql_error()."\r\n");}
*php  }

*-------------fakprn-------------------------------------------
   use fakprn in 0
   select fakprn
   if reccount()<1
      for maa=1 to 8
         set procedure to kalprn
            do fakprnpr with maa
         set procedure to
      next
   endif
   use

*php   $mreca=0;
*php   $upit = "SELECT * FROM fakprn ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       for ($maa=1;$maa<=8;$maa+=1)
*php      {
*php          fakprnpr($maa);
*php      }
*php   }

*----------KALPRN-------------------------------------------------
   use kalprn in 0
   select kalprn
   if reccount()<1
      set procedure to kalprn
      DO KALPRNPR WITH '   1','KALKULACIJA VP       ','KALKULACIJA CENA ROBE VP  ',' ',' ','UN0'
      DO KALPRNPR WITH '   2','KALKULACIJA MP       ','KALKULACIJA CENA ROBE VP  ',' ',' ','UN0'
      DO KALPRNPR WITH '   3','PRIMOPREDAJNICA VP   ','ULAZ ROBE IZ MAGACINA     ','*',' ','   '
      DO KALPRNPR WITH '   4','PRIMOPREDAJNICA MP   ','ULAZ ROBE IZ RADNJE       ','*',' ','UBP'
      DO KALPRNPR WITH '   1','POVRAÆAJ DOBAVLJACU  ','POVRAÆAJ ROBE             ',' ',' ','UN0'
      DO KALPRNPR WITH '   3','PRENOS U RADNJU      ','PRENOS IZ RADNJE U RADNJU ','*',' ','   '
      DO KALPRNPR WITH '   3','PRENOS U MAGACIN     ','PRENOS IZ RADNJE U MAGACIN','*',' ','UBP'
      DO KALPRNPR WITH '   4','POPIS ROBE           ','POPIS ROBE -POCETNO STANJE','*','*','UBP'
      DO KALPRNPR WITH '   1','KALKULACIJA VP PDV NE','KALK.VP DOBAVLJAÈ NIJE OBV',' ',' ','UBP'
      DO KALPRNPR WITH '   2','KALKULACIJA MP PDV NE','KALK.MP DOBAVLJAÈ NIJE OBV',' ',' ','UBP'
      set procedure to
   endif
   use

*php  $mreca=0;
*php   $upit = "SELECT * FROM kalprn ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       kalprnpr('   1','kalkulacija vp       ','kalkulacija cena robe vp  ',' ',' ','UN0');
*php       kalprnpr('   2','kalkulacija mp       ','kalkulacija cena robe vp  ',' ',' ','UN0');
*php       kalprnpr('   3','primopredajnica vp   ','ulaz robe iz magacina     ','*',' ','   ');
*php       kalprnpr('   4','primopredajnica mp   ','ulaz robe iz radnje       ','*',' ','UBP');
*php       kalprnpr('   1','povracaj dobavljacu  ','povracaj robe             ',' ',' ','UN0');
*php       kalprnpr('   3','prenos u radnju      ','prenos iz radnje u radnju ','*',' ','   ');
*php       kalprnpr('   3','prenos u magacin     ','prenos iz radnje u magacin','*',' ','UBP');
*php       kalprnpr('   4','popis robe           ','popis robe -pocetno stanje','*','*','UBP');
*php       kalprnpr('   1','kalkulacija vp pdv ne','kalk.vp dobavljac nije obv',' ',' ','UBP');
*php       kalprnpr('   2','kalkulacija mp pdv ne','kalk.mp dobavljac nije obv',' ',' ','UBP');
*php   }


*-----------------FAKPODN---------------------------
   use fakpodn in 0
   select fakpodn
   if reccount()<1
      append blank
      replace fpsifra with '  1'
      replace txt1 with 'u sluèaju kašnjenja sa plaæanjem zaraèunavamo zakonsku, zateznu kamatu '
      replace      txt2 with 'reklamacije se prihvataju pri preuzimanju robe.'
      append blank
      replace fpsifra with '  2'
      replace txt1 with 'izvoznik proizvoda koji su obuhvaæeni ovom ispravom izjavljuje '
      replace      txt2 with 'da su osim ako nije drugaèije navedeno ovi proizvodi srpsko-crnogorsko perfekcionalnog'
      replace txt3 with 'porekla na paritetu fco paraæin  '
   endif
   use

*php  $mreca=0;
*php   $upit = "SELECT * FROM fakpodn ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php   
*php       $fpsifra='  1';
*php       $txt1='u slucaju kašnjenja sa placanjem zaracunavamo zakonsku, zateznu kamatu ';
*php       $txt2='reklamacije se prihvataju pri preuzimanju robe.';
*php 
*php          $upit =" insert into fakpodn
*php          (fpsifra,txt1,txt2)
*php           values('$fpsifra','$txt1','$txt2') ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php       $fpsifra='  2';
*php       $txt1='izvoznik proizvoda koji su obuhvaceni ovom ispravom izjavljuje ';
*php       $txt2='da su osim ako nije drugacije navedeno ovi proizvodi srpsko-crnogorsko perfekcionalnog';
*php       $txt3='porekla na paritetu fco paracin  ';
*php       $upit =" insert into fakpodn
*php      (fpsifra,txt1,txt2,txt3)
*php      values('$fpsifra','$txt1','$txt2','$txt3') ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    }

*-------------------------------FAKPODN2

   use fakpodn2 in 0
   select fakpodn2
   if reccount()<1
      append blank
      replace fpsifra with '  1'
      replace fpsifra2 with '  1'      
      replace txt1 with 'na osnovu odredaba zakona o bezbednosti hrane èl.31 i èl.55 (sl.glasnik rs br.41/09) u laboratorijama instituta za higijenu i tehnologiju mesa beograd, specijalistièkog '
      replace txt2 with 'veterinarskog instituta u šapcu i zavoda za javno zdravlje valjevo, redovno se vrši kontrola svežeg mesa,sirovina,aditiva,zaèina,poluproizvoda,vode i gotovih proizvoda.'
      replace txt3 with 'u proizvodnom kompleksu je implementiran i sertifikovan sistem bezbednosti haccp i standard kvaliteta iso 9001-2000. postupajuæi po zakonu o izmenama i dopunama '
      replace txt4 with 'zakona o vetrrinarstvu sl.glasnik rs br.30 od 07.05.2010. godine izdajemo sledeæi. '      
      replace txt5 with '                                     a t e s t  '
      replace txt6 with 'kojim se potvrdjuje da proizvodi-namirnice otpremljene po ovom dokumentu odgovaraju propisima pravilnika o opštim i posebnim uslovima higijene u bilo kojoj fazi'                        
      replace txt7 with 'proizvodnje,prerade i prometa (sl.glasnik rs br.72/10)i pravilnika o kvalitetu usitnjenog mesa, poluproizvoda od mesa i proizvoda od mesa (sl.glasnik rs br.31/12) i pravilnikom o '
      replace txt8 with 'upotrebi aditiva i namirnicama i drugim zahtevima za aditive i njihove mešavine(sl.list srj br.56/03).'      
      replace txt9 with 'napomena: naše preduzeæe ima uveden sistem bezbednosti haccp.'      
   endif
   use

*php   $mreca=0;
*php   $upit = "SELECT * FROM fakpodn2 ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $fpsifra='  1';
*php       $txt1='na osnovu odredaba zakona o bezbednosti hrane cl.31 i cl.55 (sl.glasnik rs br.41/09) u laboratorijama instituta za higijenu i tehnologiju mesa beograd, specijalistickog ';
*php       $txt2='veterinarskog instituta u šapcu i zavoda za javno zdravlje valjevo, redovno se vrši kontrola svežeg mesa,sirovina,$aditiva,zacina,poluproizvoda,vode i gotovih proizvoda.';
*php       $txt3='u proizvodnom kompleksu je implementiran i sertifikovan sistem bezbednosti haccp i standard kvaliteta iso 9001-2000. postupajuci po zakonu o izmenama i dopunama ';
*php       $txt4='zakona o vetrrinarstvu sl.glasnik rs br.30 od 07.05.2010. godine izdajemo sledeci. ';      
*php       $txt5='                                     a t e s t  ';
*php       $txt6='kojim se potvrdjuje da proizvodi-namirnice otpremljene po ovom dokumentu odgovaraju propisima pravilnika o opštim i posebnim uslovima higijene u bilo kojoj fazi';                        
*php       $txt7='proizvodnje,prerade i prometa (sl.glasnik rs br.72/10)i pravilnika o kvalitetu usitnjenog mesa, poluproizvoda od mesa i proizvoda od mesa (sl.glasnik rs br.31/12) i pravilnikom o ';
*php       $txt8='upotrebi aditiva i namirnicama i drugim zahtevima za aditive i njihove mešavine(sl.list srj br.56/03).';      
*php       $txt9='napomena: naše preduzece ima uveden sistem bezbednosti haccp.';      
*php       $upit =" insert into fakpodn2
*php      (fpsifra,txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9)
*php    values('$fpsifra','$txt1','$txt2','$txt3','$txt4','$txt5','$txt6','$txt7','$txt8','$txt9') ";
*php           $rez=mysql_query($upit);
*php           if (!$rez){txtsnimi('db_sifarnici greska= '.mysql_error()."\r\n");}
*php    }


*-------------------FAKPOTI-----------------------------
   use fakpoti in 0
   select fakpoti
   if reccount()<1
      append blank
      replace fpsifra with '  1'
      replace txt1 with 'na osnovu èlana 10 zakona o zdravstvenoj ispravnosti životnih namirnica i predmeta opšte upotrebe '
      replace txt2 with 'službeni list sfrj br 53/91 29/94 i 28/96 preduzeæe  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
      replace txt3 with 'kao proizvodjaè životnih namirnica izdaje:'
      replace txt4 with '                                  p o t v r d u'
      replace txt5 with 'o zdravstvenoj ispravnosti životnih namirnica kojom se od strane proizvodjaèa potvrdjuje i garantuje da su'
      replace txt6 with 'dole navedene životne namirnice zdravstveno ispravne i to:'
      replace txt7 with 'potvrda o zdravsvenoj ispranosti navedenih namirnica izdaje se na osnovu laboratorijskih ispitivanja'
      replace txt8 with 'doma zdravlja paraæin '
      replace txt9 with 'kupac se obavezuje da se pridržava uputstva proizvodjaèa o èuvanju životnoh namirnica.'
      replace txt10 with 'prilikom skladištenja i èuvanja u neodgovarajuæim uslovima može doæi do kvara robe za koje proizvodjaè ne odgovara.'
   endif
   use

*php   $mreca=0;
*php   $upit = "SELECT * FROM fakpoti ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $fpsifra='  1';
*php       $txt1='na osnovu clana 10 zakona o zdravstvenoj ispravnosti životnoh namirnica i predmeta opšte upotrebe ';
*php       $txt2='službeni list sfrj br 53/91 29/94 i 28/96 preduzece  xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';
*php       $txt3='kao proizvodjac životnih namirnica izdaje:';
*php       $txt4='                                  p o t v r d u';
*php       $txt5='o zdravstvenoj ispravnosti životnih namirnica kojom se od strane proizvodjaca potvrdjuje i garantuje da su';
*php       $txt6='dole navedene životne namirnice zdravstveno ispravne i to:';
*php       $txt7='potvrda o zdravsvenoj ispranosti navedenih namirnica izdaje se na osnovu laboratorijskih ispitivanja';
*php       $txt8='doma zdravlja paracin ';
*php       $txt9='kupac se obavezuje da se pridržava uputstva proizvodjaca o cuvanju životnoh namirnica.';
*php       $txt10='prilikom skladištenja i cuvanja u neodgovarajucim uslovima može doci do kvara robe za koje proizvodjac ne odgovara.';
*php     
*php   $upit =" insert into fakpoti
*php     (fpsifra,txt1,txt2,txt3,txt4,txt5,txt6,txt7,txt8,txt9,txt10)
*php    values('$fpsifra','$txt1','$txt2','$txt3','$txt4','$txt5','$txt6','$txt7','$txt8','$txt9','$txt10') ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    }

*----------------NALVRSTA-----------------------------

   use nalvrsta in 0
   select nalvrsta   
   set procedure to nalproc
      if reccount()<1
         DO PVRNAL WITH '  1','IZVOD BANKE 1       ',0,'I','   ','  ','*',3,'100','*','2410'
         DO PVRNAL WITH '  2','IZVOD BANKE 2       ',0,'I','   ','  ','*',3,'200','*','2412'
         DO PVRNAL WITH '  3','IZVOD BANKE 3       ',0,'I','   ','  ','*',3,'300','*','2413'
         DO PVRNAL WITH '  4','IZVOD BANKE 4       ',0,'I','   ','  ','*',3,'400','*','2414'
         DO PVRNAL WITH '  5','IZVOD BANKE 5       ',0,'I','   ','  ','*',3,'500','*','2415'
         DO PVRNAL WITH '  6','IZVOD BANKE 6       ',0,'I','   ','  ','*',3,'600','*','2416'
         DO PVRNAL WITH '  7','KALKULACIJE VP1     ',0,'K','V1 ','  ','*',2,'V1 ','*',''
         DO PVRNAL WITH '  8','RAÈUNI VP1          ',0,'R','V1 ','  ','*',2,'F1 ','*',''
         DO PVRNAL WITH '  9','NIVELACIJE  VP1     ',0,'N','V1 ','  ','*',2,'N1 ','*',''
         DO PVRNAL WITH ' 10','KALKULACIJE MP1     ',0,'K','M1 ','  ','*',2,'M1 ','*',''
         DO PVRNAL WITH ' 11','RAÈUNI MP1          ',0,'R','M1 ','  ','*',2,'R1 ','*',''
         DO PVRNAL WITH ' 12','NIVELACIJE  MP1     ',0,'N','M1 ','  ','*',2,'L1 ','*',''
         DO PVRNAL WITH ' 13','BLAGAJNA 1          ',0,'B','B1 ','  ','*',3,'243','*',''
         DO PVRNAL WITH ' 14','ULAZNI RAÈUNI       ',0,'T','   ','  ','*',2,'TR ','*',''
         DO PVRNAL WITH ' 15','OSTALO              ',0,'O','   ','  ','*',2,'O1 ','*',''
         DO PVRNAL WITH ' 16','POÈETNO STANJE      ',0,'A','   ','  ','*',2,'PS ','*',''
         DO PVRNAL WITH ' 17','ZAKLJUÈNA KNJIŽENJA ',0,'Z','   ','  ','*',2,'ZK ','*',''
      ENDIF
   set procedure to
   use

*php   $mreca=0;
*php   $upit = "SELECT * FROM nalvrsta ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php          pvrnal( '  1','izvod banke 1       ',0,'i','   ','  ','*',3,'100','*','2410');
*php          pvrnal( '  2','izvod banke 2       ',0,'i','   ','  ','*',3,'200','*','2412');
*php          pvrnal( '  3','izvod banke 3       ',0,'i','   ','  ','*',3,'300','*','2413');
*php          pvrnal( '  4','izvod banke 4       ',0,'i','   ','  ','*',3,'400','*','2414');
*php          pvrnal( '  5','izvod banke 5       ',0,'i','   ','  ','*',3,'500','*','2415');
*php          pvrnal( '  6','izvod banke 6       ',0,'i','   ','  ','*',3,'600','*','2416');
*php          pvrnal( '  7','kalkulacije vp1     ',0,'k','V1 ','  ','*',2,'V1 ','*','');
*php          pvrnal( '  8','racuni vp1          ',0,'r','V1 ','  ','*',2,'F1 ','*','');
*php          pvrnal( '  9','nivelacije  vp1     ',0,'N','V1 ','  ','*',2,'N1 ','*','');
*php          pvrnal( ' 10','kalkulacije mp1     ',0,'k','M1 ','  ','*',2,'M1 ','*','');
*php          pvrnal( ' 11','racuni mp1          ',0,'r','M1 ','  ','*',2,'R1 ','*','');
*php          pvrnal( ' 12','nivelacije  mp1     ',0,'N','M1 ','  ','*',2,'L1 ','*','');
*php          pvrnal( ' 13','blagajna 1          ',0,'b','B1 ','  ','*',3,'243','*','');
*php          pvrnal( ' 14','ulazni racuni       ',0,'t','   ','  ','*',2,'TR ','*','');
*php          pvrnal( ' 15','ostalo              ',0,'o','   ','  ','*',2,'O1 ','*','');
*php          pvrnal( ' 16','pocetno stanje      ',0,'a','   ','  ','*',2,'PS ','*','');
*php          pvrnal( ' 17','zakljucna knjiženja ',0,'z','   ','  ','*',2,'ZK ','*','');
*php    }



*---------------------SEME KNJIZENJA-------------------------------
   use ksema in 0
   select ksema
   if reccount()<1
      set procedure to semek
      for maa=1 to 4
         do case maa
         case maa=1
         do semeun with '4330',;
                        '1100',;
                        '8900',;
                        '4940',;
                        '1324',;
                        '1329',;
                        '1109',;
                        '8809',;
                        '2700',;
                        '2710',;
                        '2780',;
                        '1320',;
                        '1200',;
                        '8800',;
                        '2020',;
                        '6020',;
                        '6210',;
                        '8900',;
                        '6029',;
                        '6219',;
                        '8909',;
                        '5010',;
                        '5110',;
                        '8800',;
                        '4700',;
                        '4710',;
                        '1329',;
                        '1109',;
                        '8809',;
                        '6110',;
                        'veleprodaja '

         case maa=2
         do semeun with '4330',;
                        '1100',;
                        '8900',;
                        '4940',;
                        '1344',;
                        '1349',;
                        '1109',;
                        '8809',;
                        '2700',;
                        '2710',;
                        '2780',;
                        '1340',;
                        '1200',;
                        '8800',;
                        '2020',;
                        '6020',;
                        '6210',;
                        '8900',;
                        '6029',;
                        '6219',;
                        '8909',;
                        '5010',;
                        '5110',;
                        '8800',;
                        '4700',;
                        '4710',;
                        '1329',;
                        '1109',;
                        '8809',;
                        '6110',;
                        'maloprodaja '
         case maa=3
         do semeun with '7400',;
                        '7400',;
                        '7400',;
                        '4940',;
                        '1324',;
                        '1329',;
                        '1109',;
                        '8809',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '1320',;
                        '1200',;
                        '8800',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '1329',;
                        '1109',;
                        '8809',;
                        '        ',;
                        'vp prenos '

         case maa=4
         do semeun with '7400',;
                        '7400',;
                        '7400',;
                        '4940',;
                        '1344',;
                        '1349',;
                        '1109',;
                        '8809',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '1340',;
                        '1200',;
                        '8800',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '    ',;
                        '1349',;
                        '1109',;
                        '8809',;
                        '        ',;
                        'mp prenos '
         endcase   
      next   
      set procedure to
   endif   
   use

*php   $mreca=0;
*php   $upit = "SELECT * FROM ksema ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php        for ($maa=1;$maa<=8;$maa+=1)
*php   {
*php          IF ($maa==1)
*php  {
*php             semeun( '4330','1100','8900','4940','1324','1329','1109','8809','2700','2710','2780','1320','1200','8800','2020','6020','6210',
*php                         '8900','6029','6219','8909','5010','5110','8800','4700','4710','1329','1109','8809','6110','veleprodaja ');
*php          }
*php          ELSEIF ($maa==2)
*php  {
*php             semeun( '4330','1100','8900','4940','1344','1349','1109','8809','2700','2710','2780','1340','1200','8800','2020','6020','6210',
*php                         '8900','6029','6219','8909','5010','5110','8800','4700','4710','1329','1109','8809','6110','maloprodaja ');
*php      }
*php          ELSEIF ($maa==3)
*php  {
*php             semeun( '7400','7400','7400','4940','1324','1329','1109','8809','   ','    ','    ','1320','1200','8800','    ','    ','    ',
*php                         '    ','    ','    ','    ','    ','    ','    ','    ','    ','1329','1109','8809','        ','vp prenos ');
*php  }
*php          ELSEIF  ($maa==4)
*php  {
*php             semeun( '7400','7400','7400','4940','1344','1349','1109','8809','    ','    ','    ','1340','1200','8800','    ','    ','    ',
*php                         '    ','    ','    ','    ','    ','    ','    ','    ','    ','1349','1109','8809','        ','mp prenos ');
*php          }
*php       }
*php    }


*--------------------FIRMA-----------------
   use firma in 0
   select firma

   if reccount()<1
      append blank
      m0dat0='01.01.'+str(year(date()),4,0)
      m0dat1='31.12.'+str(year(date()),4,0)
      replace fdat0 with ctod(m0dat0)
      replace fdat1 with ctod(m0dat1)
      replace fime with 'nova firma'
   endif
   use   

*php   $mreca=0;
*php   $upit = "SELECT * FROM firma ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $fdat0='2013-01-01';
*php       $fdat1='2013-12-31';
*php       $fime='nova firma';
*php 
*php   $upit =" insert into firma (fdat0,fdat1,fime)
*php    values('$fdat0','$fdat1','$fime') ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    }


*----------------------------
   use firma3 in 0
   select firma3
   
   if reccount()<1
      append blank
   endif
   use   




*-------------------AATV-----------------------   
   use aatv in 0
   select aatv
   select aatv   
   if reccount()<1
      append blank
      replace sifprod with str(recno(),2,0)
      replace pnaziv with 'glavni magacin'
      replace konto with '1320      '
      replace kontou with '6120      '
      replace kontopaz with '2419      '
      replace kontok with '8800'
      replace pordn with 'D'
      replace prencen with 'D'
      replace nabcena with 'N'
      replace pracenje with 'D'
      replace unkol with 'N'
      replace tnivel with 'N'
      replace azuriraj with 'N'
      replace korigujmc with 'N'
      replace mcmarza with 'N'
      replace promkol with 'D'
      replace prikaz with 'D'
      replace verifikac with 'N'
      replace kukalkp with 'N'
      replace keukalkp with 'N'
      replace flager with 'D'
      replace ftputnik with 'N'   
      replace dok with 'V1'
      replace kepuvp with 'N'
      replace tmpporez with 'N'
      
      scatter name polja
      use trgpar in 0 exclu
      select trgpar
      zap
      append blank
      gather name polja
       replace pkgk with 'D'
            replace pkan with 'D'
            replace pktm with 'D'
            replace pkkp with 'D'
            replace pkpdv with 'D'
            replace pngk with 'D'
            replace pntm with 'D'
            replace pnkp with 'D'
            replace pfgk with 'D'
            replace pfan with 'D'
            replace pftm with 'D'
            replace pfkp with 'D'
            replace pfpdv with 'D'
            replace pfkpo with 'D'               
      use
      select aatv
   endif   
   use   

*php   $mreca=0;
*php   $upit = "SELECT * FROM aatv ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $sifprod='1';
*php       $pnaziv='glavni magacin';
*php       $konto='1320      ';
*php       $kontou='6120      ';
*php       $kontopaz='2419      ';
*php       $kontok='8800';
*php       $pordn='D';
*php       $prencen='D';
*php       $nabcena='N';
*php       $pracenje='D';
*php       $unkol='N';
*php       $tnivel='N';
*php       $azuriraj='N';
*php       $korigujmc='N';
*php       $mcmarza='N';
*php       $promkol='D';
*php       $prikaz='D';
*php       $verifikac='N';
*php       $kukalkp='N';
*php       $keukalkp='N';
*php       $flager='D';
*php       $ftputnik='N'   ;
*php       $dok='V1';
*php       $kepuvp='N';
*php       $tmpporez='N';
*php       
*php    $upit =" insert into aatv 
*php    (
*php       sifprod,
*php       pnaziv,
*php       konto,
*php       kontou,
*php       kontopaz,
*php       kontok,
*php       pordn,
*php       prencen,
*php       nabcena,
*php       pracenje,
*php       unkol,
*php       tnivel,
*php       azuriraj,
*php       korigujmc,
*php       mcmarza,
*php       promkol,
*php       prikaz,
*php       verifikac,
*php       kukalkp,
*php       keukalkp,
*php       flager,
*php       ftputnik,
*php       dok,
*php       kepuvp,
*php       tmpporez)
*php   values
*php   (
*php       '$sifprod',
*php       '$pnaziv',
*php       '$konto',
*php       '$kontou',
*php       '$kontopaz',
*php       '$kontok',
*php       '$pordn',
*php       '$prencen',
*php       '$nabcena',
*php       '$pracenje',
*php       '$unkol',
*php       '$tnivel',
*php       '$azuriraj',
*php       '$korigujmc',
*php       '$mcmarza',
*php       '$promkol',
*php       '$prikaz',
*php       '$verifikac',
*php       '$kukalkp',
*php       '$keukalkp',
*php       '$flager',
*php       '$ftputnik',
*php       '$dok',
*php       '$kepuvp',
*php       '$tmpporez'
*php   )";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php       $pkgk='D';
*php       $pkan='D';
*php       $pktm='D';
*php       $pkkp='D';
*php       $pkpdv='D';
*php       $pngk='D';
*php       $pntm='D';
*php       $pnkp='D';
*php       $pfgk='D';
*php       $pfan='D';
*php       $pftm='D';
*php       $pfkp='D';
*php       $pfpdv='D';
*php       $pfkpo='D';  
*php   $upit =" insert into trgpar 
*php   (
*php   pkgk,
*php       pkan,
*php       pktm,
*php       pkkp,
*php       pkpdv,
*php       pngk,
*php       pntm,
*php       pnkp,
*php       pfgk,
*php       pfan,
*php       pftm,
*php       pfkp,
*php       pfpdv,
*php       pfkpo
*php       )
*php   values
*php   (
*php   '$pkgk',
*php       '$pkan',
*php       '$pktm',
*php       '$pkkp',
*php       '$pkpdv',
*php       '$pngk',
*php       '$pntm',
*php       '$pnkp',
*php       '$pfgk',
*php       '$pfan',
*php       '$pftm',
*php       '$pfkp',
*php       '$pfpdv',
*php       '$pfkpo'
*php        ) ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    }

*-----------------------------AATM-------------   
   use aatm in 0
   select aatm
   if reccount()<1
      append blank
      replace sifprod with str(recno(),2,0)
      replace pnaziv with 'prodavnica 1'
      replace konto with '1340      '
      replace kontou with '6120      '
      replace kontopaz with '1340     '
      replace kontok with '8800      '
      replace pordn with 'D'
      replace prencen with 'D'
      replace nabcena with 'N'
      replace pracenje with 'D'
      replace unkol with 'N'
      replace tnivel with 'N'
      replace azuriraj with 'N'
      replace korigujmc with 'N'
      replace mcmarza with 'N'
      replace promkol with 'D'
      replace prikaz with 'D'
      replace verifikac with 'N'
      replace kukalkp with 'N'
      replace keukalkp with 'N'
      replace flager with 'D'
      replace ftputnik with 'N'   
      replace dok with 'M1'
      replace kepuvp with 'N'
      replace tmpporez with 'N'
      scatter name polja
      use trgpar in 0 
      select trgpar
      append blank
      gather name polja
       replace pkgk with 'D'
            replace pkan with 'D'
            replace pktm with 'D'
            replace pkkp with 'D'
            replace pkpdv with 'D'
            replace pngk with 'D'
            replace pntm with 'D'
            replace pnkp with 'D'
            replace pfgk with 'D'
            replace pfan with 'D'
            replace pftm with 'D'
            replace pfkp with 'D'
            replace pfpdv with 'D'
            replace pfkpo with 'D'               
      use
      select aatm
   endif
   use   
*endif

*php   $mreca=0;
*php   $upit = "SELECT * FROM aatm ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {
*php       $sifprod='1';
*php       $pnaziv='prodavnica 1';
*php       $konto='1340      ';
*php       $kontou='6120      ';
*php       $kontopaz='1340     ';
*php       $kontok='8800      ';
*php       $pordn='D';
*php       $prencen='D';
*php       $nabcena='N';
*php       $pracenje='D';
*php       $unkol='N';
*php       $tnivel='N';
*php       $azuriraj='N';
*php       $korigujmc='N';
*php       $mcmarza='N';
*php       $promkol='D';
*php       $prikaz='D';
*php       $verifikac='N';
*php       $kukalkp='N';
*php       $keukalkp='N';
*php       $flager='D';
*php       $ftputnik='N';
*php       $dok='M1';
*php       $kepuvp='N';
*php       $tmpporez='N';
*php   
*php   $upit =" insert into aatm (
*php   sifprod,
*php       pnaziv,
*php       konto,
*php       kontou,
*php       kontopaz,
*php       kontok,
*php       pordn,
*php       prencen,
*php       nabcena,
*php       pracenje,
*php       unkol,
*php       tnivel,
*php       azuriraj,
*php       korigujmc,
*php       mcmarza,
*php       promkol,
*php       prikaz,
*php       verifikac,
*php       kukalkp,
*php       keukalkp,
*php       flager,
*php       ftputnik,
*php       dok,
*php       kepuvp,
*php       tmpporez
*php   )
*php   values
*php   (
*php       '$sifprod',
*php       '$pnaziv',
*php       '$konto',
*php       '$kontou',
*php       '$kontopaz',
*php       '$kontok',
*php       '$pordn',
*php       '$prencen',
*php       '$nabcena',
*php       '$pracenje',
*php       '$unkol',
*php       '$tnivel',
*php       '$azuriraj',
*php       '$korigujmc',
*php       '$mcmarza',
*php       '$promkol',
*php       '$prikaz',
*php       '$verifikac',
*php       '$kukalkp',
*php       '$keukalkp',
*php       '$flager',
*php       '$ftputnik',
*php       '$dok',
*php       '$kepuvp',
*php       '$tmpporez'
*php   )";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $upit =" insert into trgpar 
*php   (
*php   pkgk,
*php       pkan,
*php       pktm,
*php       pkkp,
*php       pkpdv,
*php       pngk,
*php       pntm,
*php       pnkp,
*php       pfgk,
*php       pfan,
*php       pftm,
*php       pfkp,
*php       pfpdv,
*php       pfkpo
*php       )
*php   values
*php   (
*php   '$pkgk',
*php       '$pkan',
*php       '$pktm',
*php       '$pkkp',
*php       '$pkpdv',
*php       '$pngk',
*php       '$pntm',
*php       '$pnkp',
*php       '$pfgk',
*php       '$pfan',
*php       '$pftm',
*php       '$pfkp',
*php       '$pfpdv',
*php       '$pfkpo'
*php        )";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php    }

*--------------TARIFA----------------
use tarifa in 0
select tarifa
if reccount()<1
   set procedure to kalprn
   for maa=1 to 10
      do tarifepr with  maa
   next   
   set procedure to   
endif
use

*php   $mreca=0;
*php   $upit = "SELECT * FROM tarifa ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {   
*php       for ($maa=1;$maa<=10;$maa+=1)
*php   {
*php          tarifepr($maa);
*php       }
*php    }


*----------PCVOZILA
if file('pcvozila.dbf')
   use pcvozila in 0
   select pcvozila
   if reccount()<1
      append blank
      replace vsifra with str(recno(),4,0)
   endif
   use
endif    

*php   $mreca=0;
*php   $upit = "SELECT * FROM pcvozila ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {   
*php   $upit =" insert into pcvozila (vsifra)
*php    values('   1') ";
*php       $rez=mysql_query($upit);
*php   }


*---------PCVOZACI
if file('pcvozaci.dbf')
   use pcvozaci in 0
   select pcvozaci
   if reccount()<1
      append blank
      replace vozsifra with str(recno(),4,0)
   endif
   use
endif    

*php   $mreca=0;
*php   $upit = "SELECT * FROM pcvozaci ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {   
*php   $upit =" insert into pcvozaci (vozsifra)
*php   values('   1') ";
*php       $rez=mysql_query($upit);
*php    }


*-------------FAKLICA-------------
if file('faklica.dbf')
   use faklica in 0
   select faklica
   if reccount()<1
      append blank
      replace olsifra with str(recno(),2,0)
   endif
   use
endif    

*php   $mreca=0;
*php   $upit = "SELECT * FROM faklica ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {   
*php     $upit =" insert into faklica (olsifra)
*php    values('   1') ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   }


*----------STOPAPOR---------
use stopapor in 0 
select stopapor
if reccount()<1
   append blank
   if dtos(date())<dtos(ctod('01-01-2014'))
      replace ostopa with '20'
      replace nstopa with '8'   
      replace pstopa with 8
      replace vaziod    with ctod('01-10-2012')      
   else
      replace ostopa with '20'
      replace nstopa with '10'   
      replace pstopa with 8
      replace vaziod    with ctod('01-01-2014')      
   endif   
endif   
use

*php   $mreca=0;
*php   $upit = "SELECT * FROM stopapor ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {   
*php          $ostopa='20';
*php          $nstopa='10'; 
*php          $pstopa=8;
*php          $vaziod='2014-01-01';      
*php        $upit =" insert into stopapor (ostopa,nstopa,pstopa,vaziod)
*php    values('$ostopa','$nstopa','$pstopa','$vaziod')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php  
*php    }


*----------------FTPOBJ--------------------
   use ftpobj in 0
   select ftpobj
   if reccount()<1
      append blank
      replace sifprod WITH ' 1'
      replace opis WITH ' ime objekta '
   ENDIF
   use
mrect=0
if file('ftpobj.dbf')
   use ftpobj in 0 
   select ftpobj
   mrect=reccount()
   use
endif

if mrect<>0
   use ftpobj in 0
   select ftpobj
   go top
   do while.not.eof()
      mii=alltrim(str(recno(),2,0))
      kftppre='ftppre'+mii
      kftppri='ftppri'+mii      
      kftpput='ftppuT'+mii            
      do ibaze with kftppre,'ftppre' 
      do ibaze with kftppri,'ftppri' 
      do ibaze with kftpput,'ftpput'       
      USE &kftpput IN 0 ALIAS ftpput
      SELECT ftpput
      IF RECCOUNT()<1
         APPEND BLANK
         msajtime='agencijakocka.co.rs'
         msajtput='proba'
         msajtkor='kocka@agencijakocka.co.rs'                              
         msajtloz='kocka157a'
         mimesla='centrala'
         mimepri='lokal'
         mdok='m1'
         mgdeide='c:\fin14\f1'
         mlokalput='c:\prijem'
         replace sajtime with msajtime
         replace sajtput with msajtput
         replace sajtkor with msajtkor
         replace sajtloz with msajtloz   
         REPLACE LOKALPUT WITH mlokalput
         replace imesla WITH mimesla
         replace imepri WITH mimepri
         replace gdeide WITH mgdeide
         replace dok WITH mdok
      endif   
      use
      select ftpobj
      skip
   enddo   
   select ftpobj
   use
endif   

*php FUNCTION kalprnpr($a1,$a2,$a3,$a4,$a5,$a6)
*php {
*php 
*php       $fvrsta=1;
*php       $sema=$a1;
*php       $fnaz=$a2;
*php       $opis=$a3;
*php       $prenos=$a4;
*php       $interna=$a5;
*php       $vpdv=$a6;
*php   $upit =" insert into kalprn (fvrsta,sema,fnaz,opis,prenos,interna,vpdv)
*php    values('$fvrsta','$sema','$fnaz','$opis','$prenos','$interna','$vpdv')";
*php    
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }
*php 
*php 
*php 
*php FUNCTION fakprnpr($aa)
*php {
*php                $minterna = ' ';
*php                $mprenos  = ' ';
*php                $mgrupa   = '   ';
*php                $mfkontr  = '05';
*php                $mfdpo    = 1;
*php                $mfvval   = 0;
*php                $mfval    = 1;
*php                $mfpor    = 1;
*php                $mfportxt = 'na osnovu porudzbenice ';
*php                $mfotp    = 1;
*php                $mfotptxt1= 'nasom otpremnicom broj ';
*php                $mfotptxt2= 'isporucili smo vam sledecu robu:';
*php                $mfkol    = 1;
*php                $mfcen    = 1;
*php                $mfnormal = 0;
*php                $mffakt   = 1;
*php                $mftfakt  ='fakturisao' ;
*php                $mfizdao  = 1;
*php                $mftizdao ='izdao';
*php                $mfdirektor=1;
*php                $mftdirektor='direktor';
*php                $mfprimio  =1;
*php                $mftprimio='primio';
*php                $mfsalda   =1;
*php                $mfamblem  =0;
*php                $mfzaglav  =1;
*php                $mirbr     =1;
*php                $mirsif    =1;
*php                $migrupa   =0;
*php                $minaz     =1;
*php                $mitranspak=0;
*php                $mijed     =1;
*php                $mikoli    =1;
*php                $micena    =1;
*php                $mivelvred =1;
*php                $mirabproc =1;
*php                $mirabat   =1;
*php                $miprocpor =1;
*php                $miporez   =1;
*php                $mivaldan  =0;
*php                $micensap  =1;
*php                $mibrkal   =1;
*php                $mikupac   =1;
*php                $misort    =1;
*php                $mislova   =0;
*php                $mfpsifra  ='  1';
*php                $mzagpomer =0;
*php                $mzag1     =1;
*php                $mzag2     =1;
*php                $mzag3     =1;
*php                $mzag4     =1;
*php                $mzag5     =1;
*php                $msema    ='   1';
*php                $mvpdv='un0';
*php 
*php                if ($aa==1)
*php    {
*php                   $mfnaz    ='racun';
*php                   $msema='   1';
*php                }
*php                if ($aa==2)
*php    {
*php                   $mfnaz    ='otpremnica';
*php                   $msema='   1';
*php                   $mfdpo    = 0;
*php                   $mfpor    = 1;
*php                   $mfportxt = 'na osnovu porudzbenice ';
*php                   $mfotptxt1= 'isporucujemo vam sledecu robu:  ';
*php                   $mfotptxt2= '                                ';
*php                } 
*php 
*php                if ($aa==3)
*php    {
*php                   $mfnaz    ='racun-otpremnica';
*php                   $msema='   1';
*php                }
*php                if ($aa==4)
*php    {
*php                   $mfnaz    ='racun po odjavi';
*php                   $mfotptxt1= 'na osnovu vaše odjave           ';
*php                   $mfotptxt2= 'fakturišemo vam sledecu robu:   ';
*php                   $msema='   1';
*php                }
*php                if ($aa==5)
*php    {
*php                   $mfnaz    ='otpremnica konsignantu';
*php                   $msema='   3';
*php                   $mfpor    = 0;
*php                   $mfportxt = ' ';
*php                   $mfotptxt1= 'na osnovu ugovora-dogovora      ';
*php                   $mfotptxt2= 'saljemo vam sledecu robu:   ';
*php                   $mvpdv='  ';
*php                }
*php                if ($aa==6)
*php    {
*php                   $mfnaz    ='otpremnica radnji     ';
*php                   $mprenos  = '*';
*php                   $mfkontr  = '  ';
*php                   $mfdpo    = 0;;
*php                   $mfval    = 0;
*php                   $mfpor    = 0;
*php                   $mfportxt = ' ';
*php                   $mfotp    = 1;
*php                   $mfotptxt1= 'internom otpremnicom   ';
*php                   $mfotptxt2= 'isporucujemo vam sledecu robu:';
*php                   $msema    ='   3';
*php                   $mvpdv='';
*php                 }
*php                if ($aa==7)
*php    {
*php                  $mfnaz    ='otpis robe ';
*php                  $minterna = '*';
*php                  $mfkontr  = '';
*php                  $mfdpo    = 0;
*php                  $mfvval   = 0;
*php                  $mfval    = 0;
*php                  $mfportxt = 'na osnovu zapisnika o otpisu ';
*php                  $mfotp    = 1;
*php                  $mfotptxt1= 'na osnovu zapisnika o otpisu ';
*php                  $mfotptxt2= 'otpisujemo sledeæu robu:';
*php                  $mffakt   = 0;
*php                  $mfizdao  = 0;
*php                  $mfdirektor=1;
*php                  $mfprimio  =0;
*php                  $mfsalda   =0;
*php                  $mfzaglav  =1;
*php                  $mirabproc =0;
*php                  $mirabat   =0;
*php                  $miprocpor =1;
*php                  $miporez   =1;
*php                  $micensap  =1;
*php                  $mikupac   =0;
*php                  $misort    =0;
*php                  $msema='   1';
*php                }
*php 
*php                if ($aa==8)
*php    {
*php                  $mfnaz    ='raèun za usluge';
*php                  $mfotptxt1= 'na osnovu ugovora-dogovora      ';
*php                  $mfotptxt2= 'fakturišemo vam sledeæe usluge: ';
*php                  $msema='   1';
*php                }
*php                
*php                   
*php            $fvrsta='1';
*php            $fnaz=$mfnaz;
*php            $interna =  $minterna;
*php            $prenos  =  $mprenos;
*php            $grupa   =  $mgrupa;
*php            $fvval   =  $mfvval;
*php            $fnormal =  $mfnormal;
*php            $ffakt   =  $mffakt;
*php            $fizdao  =  $mfizdao;
*php            $ftfakt=$mftfakt;
*php            $ftizdao=$mftizdao;
*php            $ftdirektor=$mftdirektor;
*php            $ftprimio=$mftprimio;
*php            $fdirektor= $mfdirektor;
*php            $fprimio =  $mfprimio;
*php            $fpsifra =  $mfpsifra;
*php            $vpdv='in0';
*php            $sema=$msema;
*php   
*php       $upit =" insert into fakprn
*php   (           
*php    fvrsta,
*php            fnaz,
*php            interna,
*php            prenos,
*php            grupa,
*php            fvval,
*php            fnormal,
*php            ffakt,
*php            fizdao,
*php            ftfakt,
*php            ftizdao,
*php            ftdirektor,
*php            ftprimio,
*php            fdirektor,
*php            fprimio,
*php            fpsifra,
*php            vpdv,
*php            sema
*php    )
*php    values
*php    (
*php    '$fvrsta',
*php            '$fnaz',
*php            '$interna',
*php            '$prenos',
*php            '$grupa',
*php            '$fvval',
*php            '$fnormal',
*php            '$ffakt',
*php            '$fizdao',
*php            '$ftfakt',
*php            '$ftizdao',
*php            '$ftdirektor',
*php            '$ftprimio',
*php            '$fdirektor',
*php            '$fprimio',
*php            '$fpsifra',
*php            '$vpdv',
*php            '$sema'
*php    )";
*php    
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }
*php 
*php function tarifepr($aa)
*php {
*php    if($aa==1)
*php    {
*php       dodtar('20',20,'2700      ','470020    ','opšta stopa ','840-714112843-10');
*php    } 
*php    elseif($aa==2)
*php    {
*php       dodtar('8',8,'2710      ','471008    ','posebna stopa ','');
*php    }  
*php    elseif($aa==3)
*php    {
*php       dodtar('0',0,'','','','840-714113843-17');
*php    }
*php }
*php function dodtar($a1,$a2,$a3,$a4,$a5,$a6)
*php {
*php       $tarifa=$a1;
*php       $procpor=$a2;
*php       $kon1d=$a3;
*php       $kon1p=$a4;
*php       $naz1=$a5;
*php       $zirorac=$a6;
*php    
*php   $upit =" insert into tarifa
*php   (      
*php      tarifa,
*php         procpor,
*php          kon1d,
*php          kon1p,
*php          naz1,
*php          zirorac
*php       )
*php   values
*php   (
*php       '$tarifa',
*php       '$procpor',
*php       '$kon1d',
*php       '$kon1p',
*php       '$naz1',
*php       '$zirorac'
*php   )
*php   ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }   
*php ///////////////////////////////////////////
*php 
*php 
*php 
*php function pvrnal($n1,$n2,$n3,$n4,$n5,$n6,$n7,$n8,$n9,$n10,$n11)
*php {  
*php      $vrnal=$n1;
*php      $naziv=$n2;
*php      $period=$n3;
*php      $obl=$n4;
*php      $dok=$n5;
*php      $mp=$n6;
*php      $naldok=$n7;
*php      $znakovi=$n8;
*php      $pocsif=$n9;
*php      $nauto=$n10;
*php      $konto=$n11;
*php      $upit =" insert into 
*php  nalvrsta 
*php  (vrnal,naziv,period,obl,dok,mp,naldok,znakovi,pocsif,nauto,konto) 
*php  values 
*php  ('$vrnal','$naziv','$period','$obl','$dok','$mp','$naldok','$znakovi','$pocsif','$nauto','$konto')";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php }
*php 
*php function semeun($a1,$a2,$a3,$a4,$a5,$a6,$a7,$a8,$a9,$a10,$a11,$a12,$a13,$a14,$a15,$a16,$a17,$a18,$a19,$a20,$a21,$a22,$a23,$a24,$a25,$a26,$a27,$a28,$a29,$a30,$a31)
*php {
*php   $mreca=0;
*php   $upit = "SELECT * FROM ksema ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   $mreca=mysql_num_rows($rez);      
*php   if ($mreca<1)
*php   {  
*php $upit =" insert into ksema () values ()";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   } 
*php      $upit = "SELECT * FROM ksema ";  
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php      $mreca=mysql_num_rows($rez);
*php    $i=$mreca;
*php    $sema=trim($i);
*php    $k_ulaz=$a1;
*php    $k_ulaz2=$a2;
*php    $k_ulaz3=$a3;
*php    $k_zav =$a4;
*php    $k_por =$a5;
*php    $k_mar =$a6;
*php    $k_mar2 =$a7;
*php    $k_mar3 =$a8;
*php    $k_plac=$a9;
*php    $k_plac8=$a10;
*php    $k_plac5=$a11;
*php    $k_mag =$a12;
*php    $k_mag2 =$a13;
*php    $k_mag3 =$a14;
*php    $k_fak =$a15;
*php    $k_prih=$a16;
*php    $k_prih2=$a17;
*php    $k_prih3=$a18;
*php    $k_rabat=$a19;
*php    $k_rabat2=$a20;
*php    $k_rabat3=$a21;
*php    $k_rash=$a22;
*php    $k_rash2=$a23;
*php    $k_rash3=$a24;
*php    $k_obpor=$a25;
*php    $k_obpor8=$a26;
*php    $k_rmar=$a27;
*php    $k_rmar2=$a28;
*php    $k_rmar3=$a29;
*php    $k_usluge=$a30;
*php    $k_opis=$a31;
*php 
*php  $upit =" update ksema set
*php 
*php    sema=trim($i),
*php    k_ulaz='$a1',
*php    k_ulaz2='$a2',
*php    k_ulaz3='$a3',
*php    k_zav ='$a4',
*php    k_por ='$a5',
*php    k_mar ='$a6',
*php    k_mar2 ='$a7',
*php    k_mar3 ='$a8',
*php    k_plac='$a9',
*php    k_plac8='$a10',
*php    k_plac5='$a11',
*php    k_mag ='$a12',
*php    k_mag2 ='$a13',
*php    k_mag3 ='$a14',
*php    k_fak ='$a15',
*php    k_prih='$a16',
*php    k_prih2='$a17',
*php    k_prih3='$a18',
*php    k_rabat='$a19',
*php    k_rabat2='$a20',
*php    k_rabat3='$a21',
*php    k_rash='$a22',
*php    k_rash2='$a23',
*php    k_rash3='$a24',
*php    k_obpor='$a25',
*php    k_obpor8='$a26',
*php    k_rmar='$a27',
*php    k_rmar2='$a28',
*php    k_rmar3='$a29',
*php    k_usluge='$a30',
*php    k_opis='$a31'
*php  ";
*php $rez=rezultatb($upit,__FILE__,__LINE__);    
*php   }


close all tables
pop key
