   do idel with (kkockax9)
   do idel with (kkockax2)
select ;
        kalg.brkal,kalprn.naziv,kalg.brrac,kalg.datdok,brnal,kalg.sifra,an0.naziv;
        from &kkalg as kalg;
        LEFT join &kkalprn as kalprn on kalf.fvrsta=kalprn.fvrsta ;
        LEFT join an0 on kalg.sifra=an0.sifra ;        
        into table &kkocka9  ;
           where ;
           (KALG.DATDOK>=MDAT0.AND.KALG.DATDOK<=MDAT1).and.;
           (KALG.FVRSTA=MFVRSTA.OR.MFVRSTA=SPACE(3)).and.;
           (KALG.SIFRA=MSIFRA.OR.MSIFRA=SPACE(5)).and.;
           use
*           alter table &kkocka9 add column grupa1 c(3) NULL
close all tables
