*****ovo je iz data01  
*php $mi=trim($ime_operatera);

set default to &mdata01
*set step on 
do ibazekom with 'vpracd'
*php ibazekom01('vpracd','1');

do ibazekom with 'vpracu'
*php ibazekom01('vpracu','1');

do ibazekom with 'vpobrac'
*php ibazekom01('vpobrac','1');

mvpracd=mdata01+'\'+'vpracd'+operater 
mvpracu=mdata01+'\'+'vpracu'+operater 
mvpobrac=mdata01+'\'+'vpobrac'+operater 

*php $mvpracd='vpracd'.$mi;
*php $mvpracu='vpracu'.$mi;
*php $mvpobrac='vpobrac'.$mi;

do ibazekom with mvpracd,'vpracd'
*php ibazekom01($mvpracd,'vpracd');

do ibazekom with mvpracu,'vpracu'
*php ibazekom01($mvpracu,'vpracu');

do iind with mvpracu,'pib'
*php iind($mvpracu,'pib');

do ibazekom with mvpobrac,'vpobrac'
*php ibazekom01($mvpobrac,'vpobrac');


set default to &mdata01
*set step on 
do ibazekom with 'boracd'
*php ibazekom01('boracd','1');

do ibazekom with 'boracu'
*php ibazekom01('boracu','1');

do ibazekom with 'boobrac'
*php ibazekom01('boobrac','1');


mvpracd=mdata01+'\'+'boracd'+operater 
mvpracu=mdata01+'\'+'boracu'+operater 
mvpobrac=mdata01+'\'+'boobrac'+operater 


*php $mvpracd='boracd'.$mi;
*php $mvpracu='boracu'.$mi;
*php $mvpobrac='boobrac'.$mi;



do ibazekom with mvpracd,'boracd'
*php ibazekom01($mvpracd,'boracd');

do ibazekom with mvpracu,'boracu'
*php ibazekom01($mvpracu,'boracu');

do ibazekom with mvpobrac,'boobrac'
*php ibazekom01($mvpobrac,'boobrac');


do iind with mvpracu,'pib'
*php iind($mvpracu,'pib');


set default to &mdata01
*set step on 
do ibazekom with 'jbracd'
*php ibazekom01('jbracd','1');

do ibazekom with 'jbracu'
*php ibazekom01('jbracu','1');

do ibazekom with 'jbobrac'
*php ibazekom01('jbobrac','1');


mjbracd=mdata01+'\'+'jbracd'+operater 
mjbracu=mdata01+'\'+'jbracu'+operater 
mjbobrac=mdata01+'\'+'jbobrac'+operater 


*php $mjbracd='jbracd'.$mi;
*php $mjbracu='jbracu'.$mi;
*php $mjbobrac='jbobrac'.$mi;

do ibazekom with mjbracd,'jbracd'
*php ibazekom01($mjbracd,'jbracd');

do ibazekom with mjbracu,'jbracu'
*php ibazekom01($mjbracu,'jbracu');


do ibazekom with mjbobrac,'jbobrac'
*php ibazekom01($mjbobrac,'jbobrac');


do iind with mjbracu,'pib'
*php iind($mjbracu,'pib');

********************************************
********************************************
********************************************

set default to &mdata01

do ibazekom  with 'jpracd'
*php ibazekom01('jpracd','1');

do ibazekom  with 'jpracu'
*php ibazekom01('jpracu','1');


mjpracd=mdata01+'\'+'jpracd'+operater 
mjpracu=mdata01+'\'+'jpracu'+operater 
kvunp=mdata01+'\'+'jpunp'+operater 
kvupl=mdata01+'\'+'jpupl'+operater 

*php $mjpracd='jpracd'.$mi; 
*php $mjpracu='jpracu'.$mi; 
*php $kvunp='jpunp'.$mi; 
*php $kvupl='jpupl'.$mi; 

do ibazekom  with kvunp,'jpunp'
*php ibazekom01($kvunp,'jpunp');

do ibazekom  with kvupl,'jpupl'
*php ibazekom01($kvupl,'jpupl');

do ibazekom  with mjpracd,'jpracd'
*php ibazekom01($mjpracd,'jpracd');

do ibazekom  with mjpracu,'jpracu'
*php ibazekom01($mjpracu,'jpracu');


do iind with mjpracu,'pib'
*php iind($mjpracu,'pib');

set default to &mdata01

do ibazekom with 'vbracd'
*php ibazekom01('vbracd','1');

do ibazekom with 'vbracu'
*php ibazekom01('vbracu','1');

do ibazekom with 'vbobrac'
*php ibazekom01('vbobrac','1');



mvbracd=mdata01+'\'+'vbracd'+operater 
mvbracu=mdata01+'\'+'vbracu'+operater 
mvbobrac=mdata01+'\'+'vbobrac'+operater 

*php $mvbracd='vbracd'.$mi; 
*php $mvbracu='vbracu'.$mi; 
*php $mvbobrac='vbobrac'.$mi; 


do ibazekom with mvbracd,'vbracd'
*php ibazekom01($mvbracd,'vbracd');

do ibazekom with mvbracu,'vbracu'
*php ibazekom01($mvbracu,'vbracu');

do iind with mvbracu,'pib'
*php iind($mvbracu,'pib');


do ibazekom with mvbobrac,'vbobrac'
*php ibazekom01($mvbobrac,'vbobrac');

set default to &mdata01
*set step on 
do ibazekom with 'vdracd'
*php ibazekom01('vdracd','1');

do ibazekom with 'vdracu'
*php ibazekom01('vdracu','1');

do ibazekom with 'vdobrac'
*php ibazekom01('vdobrac','1');


mvpracd=mdata01+'\'+'vdracd'+operater 
mvpracu=mdata01+'\'+'vdracu'+operater 
mvpobrac=mdata01+'\'+'vdobrac'+operater 

*php $mvpracd='vdracd'.$mi; 
*php $mvpracu='vdracu'.$mi; 
*php $kvpobrac='vdobrac'.$mi; 


do ibazekom with mvpracd,'vdracd'
*php ibazekom01($mvpracd,'vdracd');

do ibazekom with mvpracu,'vdracu'
*php ibazekom01($mvpracu,'vdracu');

do iind with mvpracu,'pib'
*php iind($mvpracu,'pib');

do ibazekom with mvpobrac,'vdobrac'
*php ibazekom01($mvpobrac,'vdobrac');


set default to &mdata01

do ibazekom with 'vkracd','vkracd'
*php ibazekom01('vkracd','vkracd');

do ibazekom with 'vkracu','vkracu'
*php ibazekom01('vkracu','vkracu');

do ibazekom with 'vkobrac','vkobrac'
*php ibazekom01('vkobrac','vkobrac');


mvpracd=mdata01+'\'+'vkracd'+operater 
mvpracu=mdata01+'\'+'vkracu'+operater 
mvpobrac=mdata01+'\'+'vkobrac'+operater 

*php $mvpracd='vkracd'.$mi; 
*php $mvpracu='vkracu'.$mi; 
*php $mvpobrac='vkobrac'.$mi; 

do ibazekom with mvpracd,'vkracd'
*php ibazekom01($mvpracd,'vkracd');

do ibazekom with mvpracu,'vkracu'
*php ibazekom01($mvpracu,'vkracu');

do iind with mvpracu,'pib'
*php iind($mvpracu,'pib');

do ibazekom with mvpobrac,'vkobrac'
*php ibazekom01($mvpobrac,'vkobrac');

set default to &mdata01

do ibazekom  with 'vtobrac'
*php ibazekom01('vtobrac','1');


mvtobrac=mdata01+'\'+'vtobrac'+operater 
mvtgde=mdata01+'\'+'vtgde'+operater 

*php $mvtobrac='vtobrac'.$mi; 
*php $mvtgde='vtgde'.$mi; 

do ibazekom with mvtobrac,'vtobrac'
*php ibazekom01($mvtobrac,'vtobrac');

do ibazekom with mvtgde,'vtgde'
*php ibazekom01($mvtgde,'vtgde');

kvupl=mdata01+'\'+'vtupl'+operater 
mvtgrupa=mdata01+'\'+'vtgrupa'+operater 
mvtgrupak=mdata01+'\'+'vtgrupak'+operater 

*php $kvupl='vtupl'.$mi; 
*php $mvtgrupa='vtgrupa'.$mi; 
*php $mvtgrupak='vtgrupak'.$mi; 


do ibazekom with kvupl,'vtupl'
*php ibazekom01($kvupl,'vtupl');

do ibazekom with mvtgrupa,'vtgrupa'
*php ibazekom01($mvtgrupa,'vtgrupa');

do ibazekom with mvtgrupak,'vtgrupak'
*php ibazekom01($mvtgrupak,'vtgrupak');



kvunp=mdata01+'\'+'vkunp'+operater 
kvupl=mdata01+'\'+'vkupl'+operater 
mvpgrupa=mdata01+'\'+'vkgrupa'+operater 
mvpgrupak=mdata01+'\'+'vkgrupak'+operater 

*php $kvunp='vkunp'.$mi; 
*php $kvupl='vkupl'.$mi; 
*php $mvpgrupa='vkgrupa'.$mi; 
*php $mvpgrupak='vkgrupak'.$mi; 

do ibazekom with kvunp,'vkunp'
*php ibazekom01($kvunp,'vkunp');

do ibazekom with kvupl,'vkupl'
*php ibazekom01($kvupl,'vkupl');

do ibazekom with mvpgrupa,'vkgrupa'
*php ibazekom01($mvpgrupa,'vkgrupa');

do ibazekom with mvpgrupak,'vkgrupak'
*php ibazekom01($mvpgrupak,'vkgrupak');


******************************************
kvunp=mdata01+'\'+'vpunp'+operater 
kvupl=mdata01+'\'+'vpupl'+operater 
mvpgrupa=mdata01+'\'+'vpgrupa'+operater 
mvpgrupak=mdata01+'\'+'vpgrupak'+operater 
kotvirm=  mdata01+'\'+'otvirm'+operater
krac=mdata01+'\'+'vprac'+operater
kjbrac=mdata01+'\'+'jbrac'+operater
kvpspis=mdata01+'\'+'vpspis'+operater
kvpkart=mdata01+'\'+'vpkart'+operater
kjbspis=mdata01+'\'+'jbspis'+operater
kjbkart=mdata01+'\'+'jbkart'+operater

*php $kvunp='vpunp'.$mi;
*php $kvupl='vpupl'.$mi;
*php $mvpgrupa='vpgrupa'.$mi;
*php $mvpgrupak='vpgrupak'.$mi;
*php $kotvirm='otvirm'.$mi;
*php $krac='vprac'.$mi;
*php $kjbrac='jbrac'.$mi;
*php $kvpspis='vpspis'.$mi;
*php $kvpkart='vpkart'.$mi;
*php $kjbspis='jbspis'.$mi;
*php $kjbkart='jbkart'.$mi;

do ibazekom with kvunp,'vpunp'
*php ibazekom01($kvunp,'vpunp');

do ibazekom with kvupl,'vpupl'
*php ibazekom01($kvupl,'vpupl');

do ibazekom with mvpgrupa,'vpgrupa'
*php ibazekom01($mvpgrupa,'vpgrupa');


do ibazekom with mvpgrupak,'vpgrupak'
*php ibazekom01($mvpgrupak,'vpgrupak');

do ibazekom with kotvirm,'otvirm'
*php ibazekom01($kotvirm,'otvirm');
*----------komunalije----------
do ibazekom with kjbrac,'jbrac'
*php ibazekom01($kjbrac,'jbrac');

do ibazekom with kvpspis,'vpspis'
*php ibazekom01($kvpspis,'vpspis');

do ibazekom with kjbspis,'jbspis'
*php ibazekom01($kjbspis,'jbspis');

do ibazekom with krac,'vprac'
*php ibazekom01($krac,'vprac');

do ibazekom with kvpkart,'vpkart'
*php ibazekom01($kvpkart,'vpkart');

do ibazekom with kjbkart,'jbkart'
*php ibazekom01($kjbkart,'jbkart');

do iind with kvpkart,'redosled+dtos(datum)'
*php iind($kvpkart,'redosled,datum');

do iind with kjbkart,'dtos(datum)'
*php iind($kjbkart,'datum');


kvunp=mdata01+'\'+'bounp'+operater 
kvupl=mdata01+'\'+'boupl'+operater 
mvpgrupa=mdata01+'\'+'bogrupa'+operater 
mvpgrupak=mdata01+'\'+'bogrupak'+operater 

*php $kvunp='bounp'.$mi;
*php $kvupl='boupl'.$mi;
*php $mvpgrupa='bogrupa'.$mi;
*php $mvpgrupak='bogrupak'.$mi;

do ibazekom with kvunp,'bounp'
*php ibazekom01($kvunp,'bounp');

do ibazekom with kvupl,'boupl'
*php ibazekom01($kvupl,'boupl');

do ibazekom with mvpgrupa,'bogrupa'
*php ibazekom01($mvpgrupa,'bogrupa');

do ibazekom with mvpgrupak,'bogrupak'
*php ibazekom01($mvpgrupak,'bogrupak');

kvunp=mdata01+'\'+'jbunp'+operater 
kvupl=mdata01+'\'+'jbupl'+operater 
mjbgrupa=mdata01+'\'+'jbgrupa'+operater 
mjbgrupak=mdata01+'\'+'jbgrupak'+operater 

*php $kvunp='jbunp'.$mi; 
*php $kvupl='jbupl'.$mi; 
*php $mjbgrupa='jbgrupa'.$mi ;
*php $mjbgrupak='jbgrupak'.$mi; 


do ibazekom with kvunp,'jbunp'
*php ibazekom01($kvunp,'jbunp');

do ibazekom with kvupl,'jbupl'
*php ibazekom01($kvupl,'jbupl');

do ibazekom with mjbgrupa,'jbgrupa'
*php ibazekom01($mjbgrupa,'jbgrupa');

do ibazekom with mjbgrupak,'jbgrupak'
*php ibazekom01($mjbgrupak,'jbgrupak');


kvunp=mdata01+'\'+'vbunp'+operater 
kvupl=mdata01+'\'+'vbupl'+operater 
mvpgrupa=mdata01+'\'+'vbgrupa'+operater 
mvpgrupak=mdata01+'\'+'vbgrupak'+operater 

*php $kvunp='vbunp'.$mi; 
*php $kvupl='vbupl'.$mi; 
*php $mvpgrupa='vbgrupa'.$mi; 
*php $mvpgrupak='vbgrupak'.$mi; 


do ibazekom with kvunp,'vbunp'
*php ibazekom01($kvunp,'vbunp');

do ibazekom with kvupl,'vbupl'
*php ibazekom01($kvupl,'vbupl');

do ibazekom with mvpgrupa,'vbgrupa'
*php ibazekom01($mvpgrupa,'vbgrupa');

do ibazekom with mvpgrupak,'vbgrupak'
*php ibazekom01($mvpgrupak,'vbgrupak');

kvunp=mdata01+'\'+'vdunp'+operater 
kvupl=mdata01+'\'+'vdupl'+operater 
mvpgrupa=mdata01+'\'+'vdgrupa'+operater 
mvpgrupak=mdata01+'\'+'vdgrupak'+operater 

*php $kvunp='vdunp'.$mi; 
*php $kvupl='vdupl'.$mi; 
*php $kvpgrupa='vdgrupa'.$mi; 
*php $kvpgrupak='vdgrupak'.$mi; 



do ibazekom with kvunp,'vdunp'
*php ibazekom01($kvunp,'vdunp');

do ibazekom with kvupl,'vdupl'
*php ibazekom01($kvupl,'vdupl');

do ibazekom with mvpgrupa,'vdgrupa'
*php ibazekom01($mvpgrupa,'vdgrupa');

do ibazekom with mvpgrupak,'vdgrupak'
*php ibazekom01($mvpgrupak,'vdgrupak');


kvunp=mdata01+'\'+'vbunp'+operater 
kvupl=mdata01+'\'+'vbupl'+operater 
mvpgrupa=mdata01+'\'+'vbgrupa'+operater 
mvpgrupak=mdata01+'\'+'vbgrupak'+operater 

do ibazekom with kvunp,'vbunp'
do ibazekom with kvupl,'vbupl'
do ibazekom with mvpgrupa,'vbgrupa'
do ibazekom with mvpgrupak,'vbgrupak'


mvbracd=mdata01+'\'+'raracd'+operater 
mvbracu=mdata01+'\'+'vbracu'+operater 
mvbobrac=mdata01+'\'+'vbobrac'+operater 

do ibazeKOM with mvbracd,'raracd'
do ibazekom with mvbracu,'vbracu'
do iind with mvbracu,'pib'
do ibazekom with mvbobrac,'vbobrac'





kvunp=mdata01+'\'+'jcunp'+operater 
kvupl=mdata01+'\'+'jcupl'+operater 
mvpgrupa=mdata01+'\'+'jcgrupa'+operater 
mvpgrupak=mdata01+'\'+'jcgrupak'+operater 

*php $kvunp='jcunp'.$mi;
*php $kvupl='jcupl'.$mi;
*php $mvpgrupa='jcgrupa'.$mi;
*php $mvpgrupak='jcgrupak'.$mi;

do ibazekom with kvunp,'jcunp'
*php ibazekom01($kvunp,'jcunp');

do ibazekom with kvupl,'jcupl'
*php ibazekom01($kvupl,'jcupl');

do ibazekom with mvpgrupa,'jcgrupa'
*php ibazekom01($mvpgrupa,'jcgrupa');

do ibazekom with mvpgrupak,'jcgrupak'
*php ibazekom01($mvpgrupak,'jcgrupak');

set default to &mdata01
*set step on 
do ibazekom with 'jcracd'
*php ibazekom01('jcracd','1');

do ibazekom with 'jcracu'
*php ibazekom01('jcracu','1');

do ibazekom with 'jcobrac'
*php ibazekom01('jcobrac','1');


mvpracd=mdata01+'\'+'jcracd'+operater 
mvpracu=mdata01+'\'+'jcracu'+operater 
mvpobrac=mdata01+'\'+'jcobrac'+operater 


*php $mvpracd='jcracd'.$mi;
*php $mvpracu='jcracu'.$mi;
*php $mvpobrac='jcobrac'.$mi;



do ibazekom with mvpracd,'jcracd'
*php ibazekom01($mvpracd,'jcracd');

do ibazekom with mvpracu,'jcracu'
*php ibazekom01($mvpracu,'jcracu');

do ibazekom with mvpobrac,'jcobrac'
*php ibazekom01($mvpobrac,'jcobrac');


do iind with mvpracu,'pib'
*php iind($mvpracu,'pib');



close all tables





set default to &mdata02

