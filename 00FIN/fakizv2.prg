   do idel with (kkockax9)
   do idel with (kkockax2)
select  fak.brkal,fak.rsif,fak.koli,fak.izni,fak.velvred,fak.marza,fak.rabat,;
        fak.rabat2,fak.tarifa,fak.porez,fak.malvred,fak.akcvred,fak.datdok,;
        fakg.brnal,fakg.fvrsta,fakg.sifra,fakg.interna,fakg.prenos,fakg.putnik,fakg.mtr,;
        rob.grupa,rob.grupa1,rob.grupa2,rob.grupa3,rob.grupa4,rob.grupa5,rob.magacin,rob.podrsif,rob.bruto,rob.neto,;
        an0.naziv,an0.mesto,an0.pib,rob.vrsta,fakg.rnal,fakg.kurs,fakg.ddug,fakg.misifra,;
        fakg.kasa,fakg.kes,fakg.cek,fakg.kartica,fakg.virman,fakg.brrac,FAKG.FLSIFRA,;
        fakg.usluge,fakg.porusl,fakg.iznos,fakg.osn18,fakg.pdv18,fakg.osn8,fakg.pdv8,fakg.osn0,fakg.placpor,fakg.trdob,fakg.nabvred ,;
        fakg.pr1,fakg.pv1,fakg.prdin1,;
        fakg.pr2,fakg.pv2,fakg.prdin2,;
        fakg.pr3,fakg.pv3,fakg.prdin3,;        
        fakg.pr4,fakg.pv4,fakg.prdin4,;        
        fakg.pr5,fakg.pv5,fakg.prdin5,;        
        fakg.pr6,fakg.pv6,fakg.prdin6,;        
        fakg.pr7,fakg.pv7,fakg.prdin7,;        
        fakg.pr8,fakg.pv8,fakg.prdin8,;        
        fakg.pr9,fakg.pv9,fakg.prdin9,;        
        fakg.pr10,fakg.pv10,fakg.prdin10,;                                                                
        fakg.pr11,fakg.pv11,fakg.prdin11,;        
        fakg.pr12,fakg.pv12,fakg.prdin12;        
        from &kfak as fak;
        LEFT join &kfakg as fakg on fak.brkal=fakg.brkal ;
        LEFT join &krob as rob on fak.rsif=rob.rsif ;
        LEFT join an0 on fakg.sifra=an0.sifra ;        
        into table &kkocka9  ;
           where ;
           (fakg.datdok>=mdat0.and.fakg.datdok<=mdat1).and.;
           (fakg.fvrsta=mfvrsta.or.mfvrsta=space(3)).and.;
           (fakg.mtr=mmtr.or.mmtr=0).and.;
           (fakg.sifra=msifra.or.msifra=space(5)).and.;
           (fakg.putnik=mputnik.or.mputnik='   ').and.;
           (fakg.rnal=mrnal.or.mrnal='      ').and.;
           (rob.grupa=mgrupa.or.mgrupa=space(3)).and.;
           (rob.grupa1=mgrupa1.or.mgrupa1=space(3)).and.;                  
           (rob.grupa2=mgrupa2.or.mgrupa2=space(3)).and.;
           (rob.grupa3=mgrupa3.or.mgrupa3=space(3)).and.;
           (rob.grupa4=mgrupa4.or.mgrupa4=space(3)).and.;
           (rob.grupa5=mgrupa5.or.mgrupa5=space(3)).and.;
           (rob.podrsif=mpodrsif.or.mpodrsif=space(5)).and.;           
           (an0.grupa1=mgrupap.or.mgrupap=space(3)).and.;
           (rob.magacin=mmagacin.or.mmagacin=0).and.;
           (fak.tarifa=mtarifa.or.mtarifa=space(6)).and.;                        
           (rob.vrsta=mvrsta.or.mvrsta=space(1))
         *  use
*alter table &kkocka9 add column usluge n(12,2)
*alter table &kkocka9 add column porusl n(12,2)
*alter table &kkocka9 add column iznos n(12,2)
*alter table &kkocka9 add column osn18 n(12,2)
*alter table &kkocka9 add column pdv18 n(12,2)
*alter table &kkocka9 add column osn8 n(12,2)
*alter table &kkocka9 add column pdv8 n(12,2)
*alter table &kkocka9 add column osn0 n(12,2)
*alter table &kkocka9 add column placpor n(12,2)
*alter table &kkocka9 add column trdob n(12,2)
*alter table &kkocka9 add column nabvred n(12,2)
close all tables
