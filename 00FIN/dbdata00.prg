push key clear
*set path to &mbazni
*set default to &mbAZNI
set path to &mdata00
set default to &mdata00
set confirm off

do ibaze with 'boje'
do ibaze with 'dev'
do ibaze with 'znlogkon'
do ibaze with 'zor'
do ibaze with 'zot','zor'
do ibaze with 'zpra','zor'
do ibaze with 'zuod','zor'
do ibaze with 'zpravkal','zor'
do ibaze with 'zugovori','zor'
do ibaze with 'prolog','zor'
do ibaze with 'aktuelno','zor'
do ibaze with 'lozinke'
do ibaze with 'lozinkea'
do ibaze with 'kurs'
do ibaze with 'tarifa'
do ibaze with 'snimiput'
do ibaze with 'valute'
do ibaze with 'ldkon00'
do ibaze with 'helpn'
do ibaze with 'statuput','zor'
do ibaze with 'pduput','zor'
do ibaze with 'komande'
do ibaze with 'konplan'
do ibaze with 'putanje'
do ibaze with 'prenpod'
do ibaze with 'pdvkon'
do ibaze with 'osag'
do ibaze with 'osagpod'
do ibaze with 'recnik'
do ibaze with 'ldradvr'
do ibaze with 'l2virm0'
do ibaze with 'pdvus'
do ibaze with 'ldzzo01'
do ibaze with 'ldzzo02'
do iind with 'pdvkon','vpdv'
do iind with 'tarifa','tarifa'
do iind with 'boje','bkod'
*--------------zajednicke tabele--------------------
do ibaze with 'kalprn'
do ibaze with 'fakprn'
do ibaze with 'ksema'
do ibaze with 'fakpodn'
do ibaze with 'fakpodn2'
do ibaze with 'konto'
do ibaze with 'kon1'
do ibaze with 'kon2'
do ibaze with 'kon3'
do ibaze with 'kon4'
do ibaze with 'kon5'
do ibaze with 'kon6'
do ibaze with 'nalvrsta'
do ibaze with 'mesta'
do ibaze with 'start'
do iind with 'kalprn','fvrsta'
do iind with 'fakprn','fvrsta'
do iind with 'ksema','sema'
do iind with 'fakpodn','fpsifra'
do iind with 'fakpodn2','fpsifra2'
*set step on 
do iind with 'konto','konto','naziv'
do iind with 'kon1','k1','naziv'
do iind with 'kon2','k2','naziv'
do iind with 'kon3','k3','naziv'
do iind with 'kon4','k4','naziv'
do iind with 'kon5','k5','naziv'
do iind with 'kon6','k6','naziv'
do iind with 'nalvrsta','vrnal','naziv'
do iind with 'mesta','mp','mesto'
do iind with 'valute','dev','devnaz'
do iind with 'helpn','fname'
*--------------------------------------------------------------
do iind with 'konplan','konto'
do iind with 'putanje','firma'
do iind with 'dev','dev+dtos(datdok)','dtos(datdok)'
do iind with 'lozinkea','korisnik'
do iind with 'kurs','dtos(datdok)'
do iind with 'osag','ag','opis'
do iind with 'osagpod','ag+agpod','opis','agpod'
do iind with 'znlogkon','aop'
do iind with 'ldradvr','maticnibr','broj','dtos(datpoc)','alltrim(str(broj,4,0))+dtos(datpoc)'
do ibaze with 'start'
do ibaze with 'emailpar'
   use start in 0 
   select start
   if reccount()<1
      append blank
      replace datdok with date()
      replace datrok with date()+90
   endif
   use
   do data00punitab

set default to 
set default to &mtc0
do ilbaze with 'komandle'   
do ilbaze with 'komandde'   
do ilbaze with 'komander'  
do ilbaze with 'komanddl'  
do ilbaze with 'komanddd'  
use komander in 0
select komander
if reccount()<1
   APPEND BLANK
   replace aktdirle with mbazni
   replace aktdirde with mbazni   
   replace filterle WITH '*.*'   
   replace filterde WITH '*.*'      
   replace sortle WITH 'A'
   replace sortde WITH 'D'   
ENDIF
set default to &mbAZNI
do ibaze with 'licenca'   
pop key