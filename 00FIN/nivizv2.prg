   do idel with (kkockax9)
   do idel with (kkockax2)
select ;
        niv.brkal,niv.rsif,niv.siznos,niv.velvred,niv.marza,niv.tarifa,;
        niv.porez,niv.sporez,niv.razlpor,niv.malvred,niv.plp,niv.datdok,niv.brnal,;
        rob.grupa,rob.grupa1,rob.grupa2,ROB.GRUPA3,ROB.GRUPA4,ROB.GRUPA5,ROB.MAGACIN,;
        niv.kOL ;
        from &ktvniv as niv;
        LEFT join &krob as rob on niv.rsif=rob.rsif ;
        into table &kkocka9  ;
           where ;
           (niv.DATDOK>=MDAT0.AND.niv.DATDOK<=MDAT1).and.;
           (ROB.GRUPA=MGRUPA.OR.MGRUPA=SPACE(3)).and.;
           (ROB.GRUPA1=MGRUPA1.OR.MGRUPA1=SPACE(3)).and.;
           (ROB.GRUPA2=MGRUPA2.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.GRUPA3=MGRUPA3.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.GRUPA4=MGRUPA4.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.GRUPA5=MGRUPA5.OR.MGRUPA2=SPACE(3)).and.;
           (ROB.MAGACIN=MMAGACIN.OR.MMAGACIN=0).and.;
           (niv.tarifa=Mtarifa.OR.Mtarifa=SPACE(6))
           use
*           alter table &kkocka9 add column grupa1 c(3) NULL
close all tables
