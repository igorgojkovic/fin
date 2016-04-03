procedure ZNKAPpuni

PUSH KEY CLEAR

SET ORDER TO
GO TOP
IF RECCOUNT()<1
     DO PUNIKAP WITH '1.', ' Poèetno stanje na dan 01.01.                     ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)dugovni saldo raèuna                        ','4001','4019','4037','4055','4073','4091','4109','4127','4145','4163','4181','4199','4217','4235','4244','L','1a'
     DO PUNIKAP WITH '  ', '    b)potražni saldo raèuna                       ','4002','4020','4038','4056','4074','4092','4110','4128','4146','4164','4182','4200','4218','    ','    ','L','1a'
     DO PUNIKAP WITH '2.', '   Ispravka materijalno znaèajnih grešaka         ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '   i promena raèunovodstvenih politika            ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)ispravke na dugovnoj strani raèuna          ','4003','4021','4039','4057','4075','4093','4111','4129','4147','4165','4183','4201','4219','4236','4245','L','1a'
     DO PUNIKAP WITH '  ', '    b)ispravke na potražnoj strani raèuna         ','4004','4022','4040','4058','4076','4094','4112','4130','4148','4166','4184','4202','4220','    ','    ','L','1a'
     DO PUNIKAP WITH '3.', ' Korigovano poèetno stanje na dan 01.01.          ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '  a)korigovani dugovni saldo raèuna (1a+2a-2b)>=0 ','4005','4023','4041','4059','4077','4095','4113','4131','4149','4167','4185','4203','4221','4237','4246','L','1a'
     DO PUNIKAP WITH '  ', '  b)korigovani potražni saldo raèuna (1b-2a+2b)>=0','4006','4024','4042','4060','4078','4096','4114','4132','4150','4168','4186','4204','4222','    ','    ','L','1a'
     DO PUNIKAP WITH '4.', ' Promene u prethodnoj       godini                ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)promet na dugovnoj strani raèuna            ','4007','4025','4043','4061','4079','4097','4115','4133','4151','4169','4187','4205','4223','4238','4247','L','1a'
     DO PUNIKAP WITH '  ', '    b)promet na potražnoj strani raèuna           ','4008','4026','4044','4062','4080','4098','4116','4134','4152','4170','4188','4206','4224','    ','    ','L','1a'
     DO PUNIKAP WITH '5.', ' Stanje na kraju prethodne godine 31.12           ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)dugovni saldo raèuna (3a+4a-4b)>=0          ','4009','4027','4045','4063','4081','4099','4117','4135','4153','4171','4189','4207','4225','4239','4248','L','1a'
     DO PUNIKAP WITH '  ', '    b)potražni saldo raèuna (3b-4a+4b)>=0         ','4010','4028','4046','4064','4082','4100','4118','4136','4154','4172','4190','4208','4226','    ','    ','L','1a'
     DO PUNIKAP WITH '6.', ' Ispravka materijalno znaèajnih grešaka           ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '   i promena raèunovodstvenih politika            ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)ispravke na dugovnoj strani raèuna          ','4011','4029','4047','4065','4083','4101','4119','4137','4155','4173','4191','4209','4227','4240','4249','L','1a'
     DO PUNIKAP WITH '  ', '    b)ispravke na potražnoj strani raèuna         ','4012','4030','4048','4066','4084','4102','4120','4138','4156','4174','4192','4210','4228','    ','    ','L','1a'
     DO PUNIKAP WITH '7.', ' Korigovano poèetno stanje tekuæe godine          ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '      na dan 01.01.                               ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '  a)korigovani dugovni saldo raèuna (5a+6a-6b)>=0 ','4013','4031','4049','4067','4085','4103','4121','4139','4157','4175','4193','4211','4229','4241','4250','L','1a'
     DO PUNIKAP WITH '  ', '  b)korigovani potražni saldo raèuna (5b-6a+6b)>=0','4014','4032','4050','4068','4086','4104','4122','4140','4158','4176','4194','4212','4230','    ','    ','L','1a'
     DO PUNIKAP WITH '8.', ' Promene u tekuæoj    godini                      ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)promet na dugovnoj strani raèuna            ','4015','4033','4051','4069','4087','4105','4123','4141','4159','4177','4195','4213','4231','4242','4251','L','1a'
     DO PUNIKAP WITH '  ', '    b)promet na potražnoj strani raèuna           ','4016','4034','4052','4070','4088','4106','4124','4142','4160','4178','4196','4214','4232','    ','    ','L','1a'
     DO PUNIKAP WITH '9.', ' Stanje na kraju tekuæe godine 31.12              ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','    ','L','  '
     DO PUNIKAP WITH '  ', '    a)dugovni saldo raèuna (7a+8a-8b)>=0          ','4017','4035','4053','4071','4089','4107','4125','4143','4161','4179','4197','4215','4233','4243','4252','L','1a'
     DO PUNIKAP WITH '  ', '    a)potrazni saldo raèuna (7b-8a+8b)>=0         ','4018','4036','4054','4072','4090','4108','4126','4144','4162','4180','4198','4216','4234','    ','    ','L','1a'

    
ENDIF
POP KEY
endproc

procedure PUNIKAP 
PARAMETERS mredbr,mopis,MAOP03,MAOP04,MAOP05,MAOP06,MAOP07,MAOP08,MAOP09,MAOP10,MAOP11,MAOP12,MAOP13,MAOP14,MAOP15,MAOP16,MAOP17,MRLINI,mkod
PUSH KEY CLEAR

   appEND blank
      REPLACE RLINI WITH MRLINI
      replace opis with mopis
      REPLACE AOP03 WITH MAOP03
      REPLACE AOP04 WITH MAOP04
      REPLACE AOP05 WITH MAOP05
      REPLACE AOP06 WITH MAOP06      
      REPLACE AOP07 WITH MAOP07
      REPLACE AOP08 WITH MAOP08
      REPLACE AOP09 WITH MAOP09
      REPLACE AOP10 WITH MAOP10
      REPLACE AOP11 WITH MAOP11
      REPLACE AOP12 WITH MAOP12
      REPLACE AOP13 WITH MAOP13
      REPLACE AOP14 WITH MAOP14
      REPLACE AOP15 WITH MAOP15
      REPLACE AOP16 WITH MAOP16
      REPLACE AOP17 WITH MAOP17                                                                  
      replace redbr WITH mredbr
      replace kod WITH mkod
POP KEY      
   endproc


*-----------PREUZIMANJE PODATAKA ZA KAPITAL
PROCEDURE KAPPRE
   PARAMETERS MDDAT0,MDDAT1,MCIFRE
   PUSH KEY CLEAR

   SET EXACT OFF
         SELECT ZNKAP
         SET ORDER TO 1
   DO idel WITH (kkockax)
   DO idel WITH (kkockax2)
   DO idel WITH (kkockax3)

         IF MNOVAGK=0    
            USE NAL IN 0 ORDER 1
         ELSE
            USE NALNOVI IN 0 ORDER 1  ALIAS NAL          
         ENDIF   

         SELECT NAL 
         TOTAL ON KONTO TO &KKOCKA FIELDS DUG,POT FOR DATDOK=MDDAT0
         TOTAL ON KONTO TO &KKOCKA3 FIELDS DUG,POT FOR DATDOK>=MDDAT0.AND.DATDOK<=MDDAT1
         SELECT NAL
         USE
         USE &KKOCKA IN 0 ALIAS KOCKA exclu
         SELECT KOCKA
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         GO TOP
         USE &KKOCKA3 IN 0 ALIAS KOCKA3 exclu
         SELECT KOCKA3
         INDEX ON KONTO TAG KONTO
         SET ORDER TO 1
         *----------407----------------------
         SELECT KOCKA3
         GO TOP
         M4001=0
         M4001=M4001+BILKAPSAL2D('30')
         M4002=0
         M4002=M4002+BILKAPSAL2P('30')

         M4019=0
         M4019=M4019+BILKAPSAL2D('31')
         M4020=0
         M4020=M4020+BILKAPSAL2P('31')

         M4037=0
         M4037=M4037+BILKAPSAL2D('32')
         M4038=0
         M4038=M4038+BILKAPSAL2P('32')

         M4055=0
         M4055=M4055+BILKAPSAL2D('35')
         M4056=0
         M4056=M4055+BILKAPSAL2P('35')

          

         M4073=0
         M4073=M4073+BILKAPSAL3D('047')
         M4073=M4073+BILKAPSAL3D('237')         
         
         M4074=0
         M4074=M4074+BILKAPSAL2P('047')
         M4074=M4074+BILKAPSAL3P('237')         

         M4091=0
         M4091=M4091+BILKAPSAL2D('34')
         M4092=0
         M4092=M4092+BILKAPSAL2P('34')

         M4109=0
         M4109=M4109+BILKAPSAL3D('330')
         M4110=0
         M4110=M4110+BILKAPSAL3P('330')

         M4127=0
         M4127=M4127+BILKAPSAL3D('331')
         M4128=0
         M4128=M4128+BILKAPSAL3P('331')

         M4145=0
         M4145=M4145+BILKAPSAL3D('332')
         M4146=0
         M4146=M4146+BILKAPSAL3P('332')

         M4163=0
         M4163=M4163+BILKAPSAL3D('333')
         M4164=0
         M4164=M4164+BILKAPSAL3P('333')

         M4181=0
         M4181=M4181+BILKAPSAL3D('334')
         M4181=M4181+BILKAPSAL3D('335')


         M4182=0
         M4182=M4182+BILKAPSAL3P('334')
         M4182=M4182+BILKAPSAL3P('335')


         M4199=0
         M4199=M4199+BILKAPSAL3D('336')
         M4200=0
         M4200=M4200+BILKAPSAL3P('336')

         M4217=0
         M4217=M4217+BILKAPSAL3D('337')
         M4218=0
         M4218=M4218+BILKAPSAL3P('337')



           
         IF MCIFRE='H'
            M4001=ROUND(M4001/1000,0)
            M4002=ROUND(M4002/1000,0)
            M4019=ROUND(M4019/1000,0)
            M4020=ROUND(M4020/1000,0)
            M4037=ROUND(M4037/1000,0)
            M4038=ROUND(M4038/1000,0)
            M4055=ROUND(M4055/1000,0)
            M4056=ROUND(M4056/1000,0)
            M4073=ROUND(M4073/1000,0)
            M4074=ROUND(M4074/1000,0)
            M4091=ROUND(M4091/1000,0)
            M4092=ROUND(M4092/1000,0)
            M4109=ROUND(M4109/1000,0)
            M4110=ROUND(M4110/1000,0)
            M4127=ROUND(M4127/1000,0)
            M4128=ROUND(M4128/1000,0)
            M4145=ROUND(M4145/1000,0)
            M4146=ROUND(M4146/1000,0)
            M4163=ROUND(M4163/1000,0)
            M4164=ROUND(M4164/1000,0)
            M4181=ROUND(M4181/1000,0)
            M4182=ROUND(M4182/1000,0)
            M4199=ROUND(M4199/1000,0)
            M4200=ROUND(M4200/1000,0)
            M4217=ROUND(M4217/1000,0)
            M4218=ROUND(M4218/1000,0)

         ENDIF

         SELECT KOCKA
         USE
         SELECT KOCKA3
         USE
         SELECT ZNKAP
         LOCATE FOR AOP03='4001'
         IF FOUND()
            REPLACE K30 WITH M4001
            REPLACE K31 WITH M4019
            REPLACE K32 WITH M4037
            REPLACE K35 WITH M4055
            REPLACE K047 WITH M4073
            REPLACE K34 WITH M4091
            REPLACE K330 WITH M4109
            REPLACE K331 WITH M4127
            REPLACE K332 WITH M4145
            REPLACE K333 WITH M4163
            REPLACE K334 WITH M4181
            REPLACE K336 WITH M4199
            REPLACE K337 WITH M4217
         ENDIF   
         LOCATE FOR AOP03='4002'
         IF FOUND()
            REPLACE K30 WITH M4002
            REPLACE K31 WITH M4020
            REPLACE K32 WITH M4038
            REPLACE K35 WITH M4056
            REPLACE K047 WITH M4074
            REPLACE K34 WITH M4092
            REPLACE K330 WITH M4110
            REPLACE K331 WITH M4128
            REPLACE K332 WITH M4146
            REPLACE K333 WITH M4164
            REPLACE K334 WITH M4182
            REPLACE K336 WITH M4200
            REPLACE K337 WITH M4218
         ENDIF   
            
            
POP KEY
ENDPROC  

FUNCTION BILKAPSAL2
   PARAMETERS KKONTO
   PUSH KEY CLEAR

   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT-DUG
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILKAPSAL3
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT-DUG
         SKIP
      ENDDO   
   ENDIF
POP KEY
   RETURN(REZULTAT)
ENDFUNC

FUNCTION BILKAPSAL2P
   PARAMETERS KKONTO
PUSH KEY CLEAR
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT
         SKIP
      ENDDO   
   ENDIF
POP KEY
   RETURN(REZULTAT)
ENDFUNC

FUNCTION BILKAPSAL3P
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+POT
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC


FUNCTION BILKAPSAL2D
   PARAMETERS KKONTO
PUSH KEY CLEAR
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,2)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+DUG
         SKIP
      ENDDO   
   ENDIF
POP KEY
   RETURN(REZULTAT)
ENDFUNC

FUNCTION BILKAPSAL3D
   PARAMETERS KKONTO
PUSH KEY CLEAR
   
   SEEK KKONTO
   REZULTAT=0
   IF FOUND()
      DO WHILE.NOT.EOF()
         IF SUBSTR(KONTO,1,3)<>KKONTO
            EXIT
         ENDIF   
         REZULTAT=REZULTAT+DUG
         SKIP
      ENDDO   
   ENDIF
   POP KEY
   RETURN(REZULTAT)
ENDFUNC