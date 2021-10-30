EXTEND_BOTTOM PPGUY02 1 // This is the first pool.
IF ~~ THEN DO ~SetGlobal("T#SourceState","LOCALS",1)~ GOTO Raise1
END

EXTEND_BOTTOM PPGUY02 2 // This is the second pool.
IF ~~ THEN DO ~SetGlobal("T#SourceState","LOCALS",2)~ GOTO Raise1
END

EXTEND_BOTTOM PPGUY02 3 // This is the third pool.
IF ~~ THEN DO ~SetGlobal("T#SourceState","LOCALS",3)~ GOTO Raise1
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

APPEND PPGUY02

IF ~~ THEN BEGIN Raise1
SAY @0
= @1
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseAlianna","GLOBAL",0)~ THEN REPLY @2 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Alianna1
IF ~Global("T#RaiseDynaheir","GLOBAL",0)~ THEN REPLY @3 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Dynaheir1
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseGorion","GLOBAL",0)~ THEN REPLY @4 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Gorion1
IF ~OR(2) Dead("L#KHALID") Global("L#SPAWNKHALID","GLOBAL",0)
Global("T#RaiseKhalid","GLOBAL",0)~ THEN REPLY @5 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Khalid1
IF ~Global("T#RaiseTiax","GLOBAL",0)~ THEN REPLY @6 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Tiax1
IF ~Global("T#RaiseXzar","GLOBAL",0) !Global("D0Harpers","GLOBAL",10)~ THEN REPLY @7 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Xzar1
IF ~Global("T#RaiseYoshimo","GLOBAL",0)~ THEN REPLY @8 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Yoshimo1
IF ~~ THEN REPLY @9 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Nobody1
END

IF ~~ THEN BEGIN Raise2
SAY @10
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseAlianna","GLOBAL",0)~ THEN REPLY @2 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Alianna1
IF ~Global("T#RaiseDynaheir","GLOBAL",0)~ THEN REPLY @3 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Dynaheir1
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseGorion","GLOBAL",0)~ THEN REPLY @4 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Gorion1
IF ~OR(2) Dead("L#KHALID") Global("L#SPAWNKHALID","GLOBAL",0) Global("T#RaiseKhalid","GLOBAL",0)~ THEN REPLY @5 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Khalid1
IF ~Global("T#RaiseTiax","GLOBAL",0)~ THEN REPLY @6 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Tiax1
IF ~Global("T#RaiseXzar","GLOBAL",0) !Global("D0Harpers","GLOBAL",10)~ THEN REPLY @7 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Xzar1
IF ~Global("T#RaiseYoshimo","GLOBAL",0)~ THEN REPLY @8 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Yoshimo1
IF ~~ THEN REPLY @9 DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Nobody1
END

IF ~~ THEN BEGIN Nobody1
SAY @11
//SAY ~Okay, not resurrecting anyone. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Nobody2
SAY @11
//SAY ~Okay, not resurrecting anyone. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Nobody3
SAY @11
//SAY ~Okay, not resurrecting anyone. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Alianna1
SAY ~You want Alianna?~
IF ~Race(Player1,HUMAN)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HUMAN) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Alia",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HUMAN) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Alia",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,ELF)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali2",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali2",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali2",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,HALF_ELF)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali3",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALF_ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali3",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HALF_ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali3",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,DWARF)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali4",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,DWARF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali4",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,DWARF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali4",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFLING)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali5",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFLING) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali5",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HALFLING) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali5",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,GNOME)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali6",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,GNOME) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali6",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,GNOME) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali6",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFORC)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali7",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFORC) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali7",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HALFORC) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali7",[2031.387],2)~ GOTO Alianna2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ THEN BEGIN Alianna2a
SAY @12
//SAY ~Alianna coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Alianna2b
SAY @12
//SAY ~Alianna coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Alianna2c
SAY @12
//SAY ~Alianna coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Dynaheir1
SAY @94
IF ~~ THEN REPLY @15 DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Dyna",[529.1487],9)~ GOTO Dynaheir2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Dyna",[2064.1470],5)~ GOTO Dynaheir2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Dyna",[2031.387],2)~ GOTO Dynaheir2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ THEN BEGIN Dynaheir2a
SAY @12
// SAY ~Dynaheir coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Dynaheir2b
SAY @12
// SAY ~Dynaheir coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Dynaheir2c
SAY @12
// SAY ~Dynaheir coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*

IF ~~ THEN BEGIN Gorion1
SAY ~You want Gorion?~
IF ~~ THEN REPLY @15 DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Gori",[529.1487],9)~ GOTO Gorion2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Gori",[2064.1470],5)~ GOTO Gorion2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Gori",[2031.387],2)~ GOTO Gorion2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ THEN BEGIN Gorion2a
SAY @12
//SAY ~Gorion coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Gorion2b
SAY @12
//SAY ~Gorion coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Gorion2c
SAY @12
//SAY ~Gorion coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Khalid1
SAY ~You want Khalid?~
IF ~~ THEN REPLY @15 DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Khal",[529.1487],9)~ GOTO Khalid2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Khal",[2064.1470],5)~ GOTO Khalid2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Khal",[2031.387],2)~ GOTO Khalid2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ THEN BEGIN Khalid2a
SAY @12
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Khalid2b
SAY @12
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Khalid2c
SAY @12
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Tiax1
SAY ~You want Tiax?~
IF ~~ THEN REPLY @15 DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Tiax",[529.1487],9)~ GOTO Tiax2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Tiax",[2064.1470],5)~ GOTO Tiax2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Tiax",[2031.387],2)~ GOTO Tiax2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ THEN BEGIN Tiax2a
SAY @12
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Tiax2b
SAY @12
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Tiax2c
SAY @12
COPY_TRANS PPGUY02 3
END

///
/*
IF ~~ THEN BEGIN Xzar1
SAY ~You want Xzar?~
IF ~~ THEN REPLY @15 DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Xzar",[529.1487],9)~ GOTO Xzar2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Xzar",[2064.1470],5)~ GOTO Xzar2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Xzar",[2031.387],2)~ GOTO Xzar2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ BEGIN Xzar1
SAY @13
IF ~~ GOTO Xzar11a
IF ~InParty("Jaheira") !Dead("Jaheira") G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J xzar
IF ~InParty("Viconia") !Dead("Viconia") G("ViconiaRomanceActive",2)~ EXTERN VICON25J xzar
IF ~InParty("Aerie") !Dead("Aerie") G("AerieRomanceActive",2)~ EXTERN AERIE25J xzar
END

IF ~~ Xzar11a
SAY @14
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1288.1152]) Wait(1) CreateCreature("D0T#Xzar",[1288.1152],0)~ GOTO Xzar2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1288.1152]) Wait(1) CreateCreature("D0T#Xzar",[1288.1152],0)~ GOTO Xzar2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1288.1152]) Wait(1) CreateCreature("D0T#Xzar",[1288.1152],0)~ GOTO Xzar2c
IF ~~ THEN REPLY @16 GOTO Raise2
END


IF ~~ THEN BEGIN Xzar2a
SAY @12
//SAY ~Xzar coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Xzar2b
SAY @12
//SAY ~Xzar coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Xzar2c
SAY @12
//SAY ~Xzar coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Yoshimo1
SAY ~You want Yoshimo?~
IF ~~ THEN REPLY @15 DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Yosh",[529.1487],9)~ GOTO Yoshimo2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Yosh",[2064.1470],5)~ GOTO Yoshimo2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Yosh",[2031.387],2)~ GOTO Yoshimo2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
*/

IF ~~ THEN BEGIN Yoshimo2a
SAY @12
//SAY ~Yoshimo coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Yoshimo2b
SAY @12
//SAY ~Yoshimo coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Yoshimo2c
SAY @12
//SAY ~Yoshimo coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

END

CHAIN PPGUY02 Alianna1
@13
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @17
END
IF ~~ GOTO Alianna11a
IF ~InParty("Sarevok") !Dead("Sarevok") Alignment("Sarevok", CHAOTIC_GOOD)~ EXTERN SAREV25J alianna1
IF ~InParty("Sarevok") !Dead("Sarevok") !Alignment("Sarevok", CHAOTIC_GOOD)~ EXTERN SAREV25J alianna2

APPEND SAREV25J
IF ~~ alianna1
SAY @18
= @19
++ @20 + BewareOfMommy
++ @21 + BewareOfMommy
++ @22 + BewareOfMommy
++ @23 EXTERN PPGUY02 Alianna11a
END

IF ~~ THEN BEGIN BewareOfMommy
SAY @24
IF ~~ EXTERN PPGUY02 Alianna11a
END

IF ~~ alianna2
SAY @25
= @26
IF ~~ EXTERN PPGUY02 Alianna11a
END
END

APPEND PPGUY02
IF ~~ Alianna11a
SAY @27
IF ~Race(Player1,HUMAN) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HUMAN) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HUMAN) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,ELF) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,ELF) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,ELF) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,HALF_ELF) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALF_ELF) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HALF_ELF) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,DWARF) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,DWARF) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,DWARF) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFLING) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFLING) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HALFLING) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,GNOME) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,GNOME) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,GNOME) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFORC) Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFORC) Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HALFORC) Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
END


APPEND JAHEI25J
IF ~~ xzar
SAY @28
++ @29 + xzar2
++ @30 + xzar3
+ ~Global("T#RaiseDynaheir","GLOBAL",0) Global("T#RaiseKhalid","GLOBAL",0)~ + @31 + xzar4
+ ~OR(2) !Global("T#RaiseDynaheir","GLOBAL",0) !Global("T#RaiseKhalid","GLOBAL",0)~ + @32 + xzar4
++ @33 + shush
END

IF ~~ shush
SAY @34
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar2
SAY @35
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar3
SAY @36
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar4
SAY @37
IF ~~ EXTERN PPGUY02 Xzar11a
END
END

APPEND VICON25J
IF ~~ xzar
SAY @38
++ @39 + xzar6
++ @40 + xzar7
++ @41 + xzar8
END

IF ~~ xzar6
SAY @42
= @43
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar7
SAY @44
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar8
SAY @45
IF ~~ EXTERN PPGUY02 Xzar11a
END

END

APPEND AERIE25J
IF ~~ xzar
SAY @46
++ @47 + xzar10
++ @48 + xzar11
++ @49 + xzar12
END

IF ~~ xzar10
SAY @50
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar11
SAY @51
= @52
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar12
SAY @53
IF ~~ EXTERN PPGUY02 Xzar11a
END

END

CHAIN PPGUY02 Yoshimo1
@13
== MAZZY25J IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN @54
== KORGA25J IF ~InParty("Korgan") !Dead("Korgan")~ THEN @55
== HAERD25J IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN @56
== HAERD25J IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN @57
END
IF ~~ GOTO Yoshimo11a
IF ~InParty("Anomen") !Dead("Anomen")~ EXTERN ANOME25J yoshimo

APPEND ANOME25J
IF ~~ yoshimo
SAY @58
++ @59 + Ano1
++ @60 + Ano2
+ ~G("AnomenRomanceActive",2)~ + @61 + Ano3
++ @62 + quiteright
END

IF ~~ quiteright
SAY @63
IF ~~ EXTERN PPGUY02 Yoshimo11a
END

IF ~~ Ano1
SAY @64
= @65
IF ~~ EXTERN PPGUY02 Yoshimo11a
END

IF ~~ Ano2
SAY @66
IF ~~ EXTERN PPGUY02 Yoshimo11a
END

IF ~~ Ano3
SAY @67
IF ~~ EXTERN PPGUY02 Yoshimo11a
END
END

APPEND PPGUY02
IF ~~ Yoshimo11a
SAY @68
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1177.1235]) Wait(1) CreateCreature("D0T#Yosh",[1177.1235],4)~ GOTO Yoshimo2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1177.1235]) Wait(1) CreateCreature("D0T#Yosh",[1177.1235],4)~ GOTO Yoshimo2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1177.1235]) Wait(1) CreateCreature("D0T#Yosh",[1177.1235],4)~ GOTO Yoshimo2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
END


CHAIN PPGUY02 Gorion1
@13
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @69
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @70
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok") Alignment("Sarevok",CHAOTIC_GOOD)~ THEN @71
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok") !Alignment("Sarevok",CHAOTIC_GOOD)~ THEN @72
== PPGUY02 @73
END
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1218.1292]) Wait(1) CreateCreature("D0T#Gori",[1218.1292],6)~ GOTO Gorion2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1218.1292]) Wait(1) CreateCreature("D0T#Gori",[1218.1292],6)~ GOTO Gorion2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1218.1292]) Wait(1) CreateCreature("D0T#Gori",[1218.1292],6)~ GOTO Gorion2c
IF ~~ THEN REPLY @16 GOTO Raise2


CHAIN PPGUY02 Tiax1
@13
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN @74
== KELDO25J IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN @75
END
IF ~~ GOTO Tiax11a
IF ~InParty("Viconia") !Dead("Viconia")~ EXTERN VICON25J tiaxtalk

APPEND VICON25J
IF ~~ tiaxtalk
SAY @76
= @77
++ @78 + Vic2
++ @79 + Vic3
+ ~G("ViconiaRomanceActive",2)~ + @80 + Vic4
++ @81 + Vic6
++ @82 + Vic5
END

IF ~~ Vic2
SAY @83
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic3
SAY @84
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic4
SAY @85
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic5
SAY @86
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic6
SAY @87
IF ~~ EXTERN PPGUY02 Tiax11a
END
END

APPEND PPGUY02
IF ~~ Tiax11a
SAY @88
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1362.1290]) Wait(1) CreateCreature("D0T#Tiax",[1362.1290],10)~ GOTO Tiax2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1362.1290]) Wait(1) CreateCreature("D0T#Tiax",[1362.1290],10)~ GOTO Tiax2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1362.1290]) Wait(1) CreateCreature("D0T#Tiax",[1362.1290],10)~ GOTO Tiax2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
END


CHAIN PPGUY02 Dynaheir1
@13
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @89
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN @90
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc")~ THEN @91
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc") OR(2) !InParty("Aerie") !Global("MinscWitch","GLOBAL",1)~ THEN @92
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc") InParty("Aerie") Global("MinscWitch","GLOBAL",1)~ THEN @93
== PPGUY02 @94
END
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1402.1238]) Wait(1) CreateCreature("D0T#Dyna",[1402.1238],12)~ GOTO Dynaheir2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1402.1238]) Wait(1) CreateCreature("D0T#Dyna",[1402.1238],12)~ GOTO Dynaheir2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1402.1238]) Wait(1) CreateCreature("D0T#Dyna",[1402.1238],12)~ GOTO Dynaheir2c
IF ~~ THEN REPLY @16 GOTO Raise2


CHAIN PPGUY02 Khalid1
@13
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @95
END
IF ~~ EXTERN PPGUY02 Khalid11a
IF ~InParty("Jaheira") !Dead("Jaheira") G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J jkromance
IF ~InParty("Jaheira") !Dead("Jaheira") !G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J jknon

APPEND PPGUY02
IF ~~ Khalid11a
SAY @96
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1367.1181]) Wait(1) CreateCreature("D0T#Khal",[1367.1181],14)~ GOTO Khalid2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1367.1181]) Wait(1) CreateCreature("D0T#Khal",[1367.1181],14)~ GOTO Khalid2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY @15 DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1367.1181]) Wait(1) CreateCreature("D0T#Khal",[1367.1181],14)~ GOTO Khalid2c
IF ~~ THEN REPLY @16 GOTO Raise2
END
END

APPEND JAHEI25J
IF ~~ jknon
SAY @97
++ @98 + abom
++ @99 + abom
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @100 + restore
++ @101 + protect
END

IF ~~ abom
SAY @102
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @103 + restore
++ @104 + trust
++ @105 EXTERN PPGUY02 Khalid11a
END

IF ~~ trust
SAY @106
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ protect
SAY @107
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @103 + restore
++ @104 + trust
++ @105 EXTERN PPGUY02 Khalid11a
END

IF ~~ restore
SAY @108
= @109
++ @110 + trust
++ @111 + trust
++ @105 EXTERN PPGUY02 Khalid11a
END

IF ~~ jkromance
SAY @112
= @113
++ @114 + loyal
++ @99 + service
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @100 + restorerom
++ @115 + protectrom
END

IF ~~ loyal
SAY @116
++ @117 + ghost
++ @118 + ghost
++ @119 EXTERN PPGUY02 Khalid11a
END

IF ~~ ghost
SAY @120
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ service
SAY @121
++ @117 + ghost
++ @118 + ghost
++ @119 EXTERN PPGUY02 Khalid11a
END

IF ~~ protectrom
SAY @107
= @122
++ @117 + ghost
++ @118 + ghost
++ @119 EXTERN PPGUY02 Khalid11a
END

IF ~~ restorerom
SAY @123
++ @124 + alone
++ @125 + pretender
++ @126 + power
++ @127 + pleased
END

IF ~~ alone
SAY @128
= @129
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ pretender
SAY @130
IF ~~ GOTO isee
END

IF ~~ isee
SAY @131
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ power
SAY @132
= @133
IF ~~ GOTO isee
END

IF ~~ pleased
SAY @134
= @135
IF ~~ GOTO power
END

END


// FINSOL01 RESURRECTY BITS

EXTEND_BOTTOM FINSOL01 4
IF ~!Dead("D0T#Alia") OR(2) Global("T#AliaPromised","GLOBAL",1) Global("T#AliaMaybe","GLOBAL",1) Global("T#AliaRaise","LOCALS",0)~ DO ~SetGlobal("T#AliaRaise","LOCALS",1)~ EXTERN D0T#Alia raiseme
IF ~!Dead("D0T#Dyna") OR(2) Global("T#DynaPromised","GLOBAL",1) Global("T#DynaDeceived","GLOBAL",1) Global("T#DynaRaise","LOCALS",0)~ DO ~SetGlobal("T#DynaRaise","LOCALS",1)~ EXTERN D0T#Dyna raiseme
IF ~!Dead("D0T#Tiax") OR(2) Global("T#TiaxPromised","GLOBAL",1) Global("T#TiaxDeceived","GLOBAL",1) Global("T#TiaxRaise","LOCALS",0)~ DO ~SetGlobal("T#TiaxRaise","LOCALS",1)~ EXTERN D0T#Tiax raiseme
IF ~!Dead("D0T#Khal") Global("T#KhalPromised","GLOBAL",1) Global("T#KhalRaise","LOCALS",0)~ DO ~SetGlobal("T#KhalRaise","LOCALS",1)~ EXTERN FINSOL01 raisekhal
IF ~!Dead("D0T#Xzar") Global("T#XzarPromised","GLOBAL",1) Global("T#XzarRaise","LOCALS",0)~ DO ~SetGlobal("T#XzarRaise","LOCALS",1)~ EXTERN D0T#XZAR raisexzar
IF ~!Dead("D0T#Yosh") Global("T#YoshPromised","GLOBAL",1) Global("T#YoshRaise","LOCALS",0)~ DO ~SetGlobal("T#YoshRaise","LOCALS",1)~ EXTERN FINSOL01 raiseyosh
END

APPEND D0T#Alia
IF ~~ raiseme
SAY @136
+ ~Global("T#AliaPromised","GLOBAL",1)~ + @137 + liar
+ ~!Global("T#AliaPromised","GLOBAL",1)~ + @137 + meanie
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @138 + awesome
+ ~!Global("T#AliaPromised","GLOBAL",1)~ + @139 + meanie
END

IF ~~ meanie
SAY @140
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Al02")~ EXIT
END
END

CHAIN D0T#ALIA awesome
@141
== FINSOL01 @142
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Al01")~ EXIT

CHAIN D0T#ALIA liar
@143
== FINSOL01 @144
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Al01")~ EXIT

CHAIN FINSOL01 raiseyosh
@145
== D0T#YOSH @146
= @147
= @148
END
++ @149 EXTERN FINSOL01 yesyoshimo
++ @150 EXTERN FINSOL01 rezyoshimo
++ @151 EXTERN FINSOL01 rezyoshimo

APPEND FINSOL01
IF ~~ yesyoshimo
SAY @144
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Yo01")~ EXIT
END

IF ~~ rezyoshimo
SAY @142
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Yo01")~ EXIT
END
END


APPEND D0T#XZAR
IF ~~ raisexzar
SAY @152
+ ~Global("T#XzarLich","GLOBAL",1)~ + @153 EXTERN FINSOL01 xzar28
+ ~Global("T#XzarLich","GLOBAL",1)~ + @154 EXTERN FINSOL01 xzar28
++ @155 + block29
++ @156 + nofair
END
END

CHAIN FINSOL01 xzar28
@157
== D0T#XZAR @158
= @159
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz02")~ EXIT

CHAIN D0T#XZAR block29
@160
== FINSOL01 @142 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz01")~ EXIT

APPEND FINSOL01
IF ~~ gottaxzar
SAY @142
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz01")~ EXIT
END
END


CHAIN D0T#XZAR nofair
@161
= @162
= @163
= @164
END
IF ~~ EXTERN FINSOL01 sorrylich
IF ~Global("T#XzarPromised","GLOBAL",1) !Global("T#XzarLich","GLOBAL",1)~ EXTERN FINSOL01 xzarlife

CHAIN FINSOL01 sorrylich
@165
== D0T#XZAR @158
= @159
END
IF ~Global("T#XzarLich","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz02")~ EXIT

CHAIN FINSOL01 xzarlife
@165
= @166
== D0T#XZAR @158
= @159
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz01")~
EXIT


CHAIN FINSOL01 raisekhal
@145
== D0T#KHAL @167
END
IF ~!InParty("Jaheira")~ EXTERN D0T#KHAL nojaheira
IF ~InParty("Jaheira") !G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J nonrom
IF ~InParty("Jaheira") G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J inrom

CHAIN JAHEI25J nonrom
@168
== D0T#KHAL @169
== JAHEI25J @170
== D0T#KHAL @171
END
++ @172 EXTERN FINSOL01 yesyoudidkhal
++ @173 EXTERN FINSOL01 okaykhal
++ @174 EXTERN FINSOL01 okaykhal

CHAIN JAHEI25J inrom
@168
= @175
= @176
END
++ @177 + givefreely
++ @178 + dealoffrom
++ @179 + happiest
++ @180 + jaheirathinks

APPEND JAHEI25J
IF ~~ givefreely
SAY @181
IF ~~ GOTO jaheirathinks
END

IF ~~ happiest
SAY @182
IF ~~ GOTO jaheirathinks
END

IF ~~ jaheirathinks
SAY @183
= @184
IF ~~ EXTERN D0T#KHAL main-khalidleaves
END

END

CHAIN JAHEI25J dealoffrom
@185
== FINSOL01 @186
== D0T#KHAL @187
END D0T#KHAL main-khalidleaves

CHAIN D0T#KHAL main-khalidleaves
@188
= @189
== JAHEI25J @190
== D0T#KHAL @191
= @192
= @193
= @194
= @195
== JAHEI25J @196
== D0T#KHAL @197
= @198
== JAHEI25J @199
= @200
== D0T#KHAL @201
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Kh02")~ EXIT

APPEND D0T#KHAL
IF ~~ nojaheira
SAY @202
= @203
++ @204 EXTERN FINSOL01 yesyoudidkhal
++ @205 EXTERN FINSOL01 okaykhal
++ @206 EXTERN FINSOL01 okaykhal
END
END


APPEND D0T#TIAX
IF ~~ raiseme
SAY @207
+ ~Global("T#TiaxPromised","GLOBAL",1)~ + @208 EXTERN FINSOL01 yesyoudidtiax
+ ~Global("T#TiaxDeceived","GLOBAL",1)~ + @208 + youbastard
++ @209 + okayfine
++ @210 + okayfine
END

IF ~~ youbastard
SAY @211
= @212
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Ti02")~ EXIT
END

END




CHAIN D0T#TIAX okayfine
@213
= @214
== FINSOL01 @142 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Ti01")~
EXIT

APPEND D0T#Dyna
IF ~~ raiseme
SAY @215
+ ~Global("T#DynaPromised","GLOBAL",1)~ + @208 EXTERN FINSOL01 yesyoudiddyna
+ ~Global("T#DynaDeceived","GLOBAL",1)~ + @208 + youbastard
++ @209 + okayfine
++ @210 + okayfine
END
END

CHAIN D0T#Dyna youbastard
@216
== MINSC25J IF ~InParty("Minsc")~ THEN @217
== D0T#Dyna @218 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Dy02")~ EXIT

CHAIN D0T#Dyna okayfine
@219
== D0T#Dyna IF ~InParty("Minsc")~ THEN @220
== MINSC25J IF ~InParty("Minsc")~ THEN @221
== D0T#Dyna @222
== FINSOL01 @142 DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Dy01")~ EXIT

APPEND FINSOL01
IF ~~ yesyoudiddyna
SAY @144
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Dy01")~ EXIT
END

IF ~~ yesyoudidtiax
SAY @144
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Ti01")~ EXIT
END

IF ~~ yesyoudidkhal
SAY @144
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Kh01")~ EXIT
END

IF ~~ okaykhal
SAY @142
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Kh01")~ EXIT
END

END


