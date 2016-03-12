   do idel with (kkockax9)
   do idel with (kkockax2)
select ;
        kal.brkal,KAL.rsif,kal.iznos,kal.velvred,kal.marza,kal.rabat,kal.zavisni,kal.ZAVISNIN,kal.ZAVISNIC,kal.ZAVISC2,kal.ZAVISC3,kal.trdob,;
        kal.TRDOBN,kal.CARPROC,kal.CARDIN,kal.nabvred,kal.tarifa,;
        kal.porez,kal.malvred,kal.akcvred,kal.plp,kal.placpor,kal.PLACPORZ,kal.PLACPORU,kal.PLACPORC,kal.PLACPORD,kal.POLJDIN,kal.datdok,;
        kalg.brnal,kalg.fvrsta,;
        kalg.sifra,kalg.interna,kalg.prenos,rob.grupa,rob.grupa1,rob.grupa2,ROB.GRUPA3,ROB.GRUPA4,ROB.GRUPA5,rob.podrsif,ROB.MAGACIN,an0.naziv,;
        KALG.BRRAC,KALG.DOKUM,KAL.KOL,AN0.GRUPA1 as grupaan,KAL.PORPOS;
        from &kkal as kal;
        LEFT join &kkalg as kalg on kal.brkal=kalg.brkal ;
        LEFT join &krob as rob on kal.rsif=rob.rsif ;
        LEFT join an0 on kalg.sifra=an0.sifra ;        
        into table &kkocka9  ;
           where ;
           (KALG.DATDOK>=MDAT0.AND.KALG.DATDOK<=MDAT1).and.;
           (KALG.FVRSTA=MFVRSTA.OR.MFVRSTA=SPACE(3)).and.;
           (KALG.SIFRA=MSIFRA.OR.MSIFRA=SPACE(5)).and.;
           (ROB.GRUPA=MGRUPA.OR.MGRUPA=SPACE(3)).and.;
           (ROB.GRUPA1=MGRUPA1.OR.MGRUPA1=SPACE(3)).and.;
           (ROB.GRUPA2=MGRUPA2.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.GRUPA3=MGRUPA3.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.GRUPA4=MGRUPA4.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.GRUPA5=MGRUPA5.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.podrsif=Mpodrsif.OR.Mpodrsif=SPACE(5)).and.;
           (AN0.GRUPA1=MGRUPAP.OR.MGRUPAP=SPACE(3)).and.;
           (ROB.MAGACIN=MMAGACIN.OR.MMAGACIN=0).and.;
           (KAL.tarifa=Mtarifa.OR.Mtarifa=SPACE(6)).AND.;                        
           (ROB.VRSTA=MVRSTA.OR.MVRSTA=SPACE(1))                        
           use
*           alter table &kkocka9 add column grupa1 c(3) NULL
close all tables
