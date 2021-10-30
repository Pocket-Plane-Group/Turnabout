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
SAY ~As you gaze deeper into the pool, you see strange patterns begin to form. Strands of fate, such as those the Pocket Plane gave you the power to access, float in ethereal space, daring you to touch one of them.~
= ~Tethered to each of the strands, you see a phantom image of someone who was once close to you. You may use the power granted to you by the pool to call one of these phantoms forth, if you wish.~
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseAlianna","GLOBAL",0)~ THEN REPLY ~Bring me Alianna, my mother.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Alianna1
IF ~Global("T#RaiseDynaheir","GLOBAL",0)~ THEN REPLY ~Bring me Dynaheir.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Dynaheir1
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseGorion","GLOBAL",0)~ THEN REPLY ~Bring me Gorion, my foster father.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Gorion1
IF ~Global("T#RaiseKhalid","GLOBAL",0)~ THEN REPLY ~Bring me Khalid.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Khalid1
IF ~Global("T#RaiseTiax","GLOBAL",0)~ THEN REPLY ~Bring me Tiax.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Tiax1
IF ~Global("T#RaiseXzar","GLOBAL",0) !Global("D0Harpers","GLOBAL",10)~ THEN REPLY ~Bring me Xzar.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Xzar1
IF ~Global("T#RaiseYoshimo","GLOBAL",0)~ THEN REPLY ~Bring me Yoshimo.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Yoshimo1
IF ~~ THEN REPLY ~Never mind. Do not raise a spirit.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Nobody1
END

IF ~~ THEN BEGIN Raise2
SAY ~You still have enough control over the pool to raise a fallen colleague, if you wish.~
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseAlianna","GLOBAL",0)~ THEN REPLY ~Bring me Alianna, my mother.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Alianna1
IF ~Global("T#RaiseDynaheir","GLOBAL",0)~ THEN REPLY ~Bring me Dynaheir.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Dynaheir1
IF ~GlobalGT("T#Round","GLOBAL",1) Global("T#RaiseGorion","GLOBAL",0)~ THEN REPLY ~Bring me Gorion, my foster father.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Gorion1
IF ~Global("T#RaiseKhalid","GLOBAL",0)~ THEN REPLY ~Bring me Khalid.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Khalid1
IF ~Global("T#RaiseTiax","GLOBAL",0)~ THEN REPLY ~Bring me Tiax.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Tiax1
IF ~Global("T#RaiseXzar","GLOBAL",0) !Global("D0Harpers","GLOBAL",10)~ THEN REPLY ~Bring me Xzar.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Xzar1
IF ~Global("T#RaiseYoshimo","GLOBAL",0)~ THEN REPLY ~Bring me Yoshimo.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Yoshimo1
IF ~~ THEN REPLY ~Never mind. Do not raise a spirit.~ DO ~IncrementGlobal("T#Round","GLOBAL",1)~ GOTO Nobody1
END

IF ~~ THEN BEGIN Nobody1
SAY ~So be it.~
//SAY ~Okay, not resurrecting anyone. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Nobody2
SAY ~So be it.~
//SAY ~Okay, not resurrecting anyone. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Nobody3
SAY ~So be it.~
//SAY ~Okay, not resurrecting anyone. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Alianna1
SAY ~You want Alianna?~
IF ~Race(Player1,HUMAN)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HUMAN) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Alia",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HUMAN) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Alia",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,ELF)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali2",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali2",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali2",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,HALF_ELF)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali3",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALF_ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali3",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HALF_ELF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali3",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,DWARF)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali4",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,DWARF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali4",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,DWARF) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali4",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFLING)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali5",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFLING) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali5",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HALFLING) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali5",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,GNOME)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali6",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,GNOME) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali6",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,GNOME) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali6",[2031.387],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFORC)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Ali7",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFORC) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Ali7",[2064.1470],5)~ GOTO Alianna2b
IF ~Race(Player1,HALFORC) Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Ali7",[2031.387],2)~ GOTO Alianna2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ THEN BEGIN Alianna2a
SAY ~It is done.~
//SAY ~Alianna coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Alianna2b
SAY ~It is done.~
//SAY ~Alianna coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Alianna2c
SAY ~It is done.~
//SAY ~Alianna coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Dynaheir1
SAY ~Will you call forth Dynaheir?~
IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Dyna",[529.1487],9)~ GOTO Dynaheir2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Dyna",[2064.1470],5)~ GOTO Dynaheir2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Dyna",[2031.387],2)~ GOTO Dynaheir2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ THEN BEGIN Dynaheir2a
SAY ~It is done.~
// SAY ~Dynaheir coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Dynaheir2b
SAY ~It is done.~
// SAY ~Dynaheir coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Dynaheir2c
SAY ~It is done.~
// SAY ~Dynaheir coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*

IF ~~ THEN BEGIN Gorion1
SAY ~You want Gorion?~
IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Gori",[529.1487],9)~ GOTO Gorion2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Gori",[2064.1470],5)~ GOTO Gorion2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Gori",[2031.387],2)~ GOTO Gorion2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ THEN BEGIN Gorion2a
SAY ~It is done.~
//SAY ~Gorion coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Gorion2b
SAY ~It is done.~
//SAY ~Gorion coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Gorion2c
SAY ~It is done.~
//SAY ~Gorion coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Khalid1
SAY ~You want Khalid?~
IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Khal",[529.1487],9)~ GOTO Khalid2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Khal",[2064.1470],5)~ GOTO Khalid2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Khal",[2031.387],2)~ GOTO Khalid2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ THEN BEGIN Khalid2a
SAY ~It is done.~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Khalid2b
SAY ~It is done.~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Khalid2c
SAY ~It is done.~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Tiax1
SAY ~You want Tiax?~
IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Tiax",[529.1487],9)~ GOTO Tiax2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Tiax",[2064.1470],5)~ GOTO Tiax2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Tiax",[2031.387],2)~ GOTO Tiax2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ THEN BEGIN Tiax2a
SAY ~It is done.~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Tiax2b
SAY ~It is done.~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Tiax2c
SAY ~It is done.~
COPY_TRANS PPGUY02 3
END

///
/*
IF ~~ THEN BEGIN Xzar1
SAY ~You want Xzar?~
IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Xzar",[529.1487],9)~ GOTO Xzar2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Xzar",[2064.1470],5)~ GOTO Xzar2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Xzar",[2031.387],2)~ GOTO Xzar2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ BEGIN Xzar1
SAY ~The pool begins to stir.~
IF ~~ GOTO Xzar11a
IF ~InParty("Jaheira") !Dead("Jaheira") G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J xzar
IF ~InParty("Viconia") !Dead("Viconia") G("ViconiaRomanceActive",2)~ EXTERN VICON25J xzar
IF ~InParty("Aerie") !Dead("Aerie") G("AerieRomanceActive",2)~ EXTERN AERIE25J xzar
END

IF ~~ Xzar11a
SAY ~Will you call forth Xzar?~
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1288.1152]) Wait(1) CreateCreature("D0T#Xzar",[1288.1152],0)~ GOTO Xzar2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1288.1152]) Wait(1) CreateCreature("D0T#Xzar",[1288.1152],0)~ GOTO Xzar2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseXzar","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1288.1152]) Wait(1) CreateCreature("D0T#Xzar",[1288.1152],0)~ GOTO Xzar2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END


IF ~~ THEN BEGIN Xzar2a
SAY ~It is done.~
//SAY ~Xzar coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Xzar2b
SAY ~It is done.~
//SAY ~Xzar coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Xzar2c
SAY ~It is done.~
//SAY ~Xzar coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

///

/*
IF ~~ THEN BEGIN Yoshimo1
SAY ~You want Yoshimo?~
IF ~~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[529.1487]) Wait(1) CreateCreature("D0T#Yosh",[529.1487],9)~ GOTO Yoshimo2a
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool3Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2064.1470]) Wait(1) CreateCreature("D0T#Yosh",[2064.1470],5)~ GOTO Yoshimo2b
IF ~Global("fin_pool_talker","AR6200",1) !Global("Pool1Active","AR6200",3) !Global("Pool2Active","AR6200",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[2031.387]) Wait(1) CreateCreature("D0T#Yosh",[2031.387],2)~ GOTO Yoshimo2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
*/

IF ~~ THEN BEGIN Yoshimo2a
SAY ~It is done.~
//SAY ~Yoshimo coming your way. You should be at pool 1 (bottom left).~
COPY_TRANS PPGUY02 1
END

IF ~~ THEN BEGIN Yoshimo2b
SAY ~It is done.~
//SAY ~Yoshimo coming your way. You should be at pool 2 (bottom right).~
COPY_TRANS PPGUY02 2
END

IF ~~ THEN BEGIN Yoshimo2c
SAY ~It is done.~
//SAY ~Yoshimo coming your way. You should be at pool 3 (top right).~
COPY_TRANS PPGUY02 3
END

END

CHAIN PPGUY02 Alianna1
~The pool begins to stir.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~What? You're choosing her over Gorion? Are you nuts?~
END
IF ~~ GOTO Alianna11a
IF ~InParty("Sarevok") !Dead("Sarevok") Alignment("Sarevok", CHAOTIC_GOOD)~ EXTERN SAREV25J alianna1
IF ~InParty("Sarevok") !Dead("Sarevok") !Alignment("Sarevok", CHAOTIC_GOOD)~ EXTERN SAREV25J alianna2

APPEND SAREV25J
IF ~~ alianna1
SAY ~Your mother, Alianna. I trust this choice was not spurred by foolish sentimentality.~
= ~She may have cradled you and called you her dearest babe, but when you were born she cut the cord with a bone knife, the same one she would have used to sacrifice you on an altar of blood.~
++ ~I have good reason for choosing my mother, and no sentimentality. I call her because of her devotion to Bhaal. She will want revenge for Melissan's betrayal, and that anger will work in our favor.~ + BewareOfMommy
++ ~Yes, she would have killed me had Gorion not intervened, but seeing her in the pocket plane made me curious to know more. I cannot pass up this chance. My mother will help me, I know it!~ + BewareOfMommy
++ ~Whomever I revive stands a good chance of becoming battle fodder. Now why, by all in the Abyss, would I choose someone I cared about to join the slaughter? If my mother falls, I will have lost nothing.~ + BewareOfMommy
++ ~You have a point. Perhaps I spoke too hastily.~ EXTERN PPGUY02 Alianna11a
END

IF ~~ THEN BEGIN BewareOfMommy
SAY ~I see. You are resolved, I take it? A pity. This woman was never meant to be your deliverance, <PRO_BROTHERSISTER>. Beware in how you deal with her.~
IF ~~ EXTERN PPGUY02 Alianna11a
END

IF ~~ alianna2
SAY ~Your mother, Alianna. A strategic choice, <PRO_BROTHERSISTER>. Yes, she would battle to the death for the throne of our father, much as she would have slaughtered you in your swaddling in Bhaal's name.~
= ~How fitting that the woman meant to be your genesis and destruction could also serve your deliverance... and rebirth.~
IF ~~ EXTERN PPGUY02 Alianna11a
END
END

APPEND PPGUY02
IF ~~ Alianna11a
SAY ~Will you call forth Alianna?~
IF ~Race(Player1,HUMAN) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HUMAN) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HUMAN) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,ELF) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,ELF) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,ELF) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,HALF_ELF) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALF_ELF) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HALF_ELF) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,DWARF) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,DWARF) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,DWARF) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFLING) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFLING) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HALFLING) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,GNOME) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,GNOME) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,GNOME) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~Race(Player1,HALFORC) Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2a
IF ~Race(Player1,HALFORC) Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2b
IF ~Race(Player1,HALFORC) Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseAlianna","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1205.1178]) Wait(1) CreateCreature("D0T#Alia",[1205.1178],2)~ GOTO Alianna2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
END


APPEND JAHEI25J
IF ~~ xzar
SAY ~No! Of all the allies you might have, you choose this abomination?~
++ ~He will make an effective distraction, drawing attention away from the rest of us.~ + xzar2
++ ~In this abominable place, I believe that his powers are what we need most.~ + xzar3
+ ~Global("T#RaiseDynaheir","GLOBAL",0) Global("T#RaiseKhalid","GLOBAL",0)~ + ~I choose not to disturb the eternal rest of anyone who deserves it. I do not care what fate befalls this necromancer.~ + xzar4
+ ~OR(2) !Global("T#RaiseDynaheir","GLOBAL",0) !Global("T#RaiseKhalid","GLOBAL",0)~ + ~I have already recalled one we called friend. I must have one pawn whose loss will cause no pain.~ + xzar4
++ ~It's all part of my plan. You just can't appreciate it. Shush.~ + shush
END

IF ~~ shush
SAY ~Hmph. That I do not comprehend your foolish impulses does not make them less so.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar2
SAY ~If he does not join our foes. I pray your wisdom in this is greater than mine.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar3
SAY ~Perhaps. But death means so little here that a deathmaster may serve very poorly in this place.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar4
SAY ~I see.  It is... comforting, in way, to know that your mortal feelings are not entirely dead.  Yet.~
IF ~~ EXTERN PPGUY02 Xzar11a
END
END

APPEND VICON25J
IF ~~ xzar
SAY ~This is a strange wisdom, <CHARNAME>. Of what use will a necromancer be at the throne of murder?~
++ ~Perhaps none in himself. But his wild, foolish manner will make a splendid decoy of him.~ + xzar6
++ ~I am hoping that his powers will be redoubled by the association. If not, well... he's dead already, isn't he?~ + xzar7
++ ~Pfah! The evil power of this place would unmake any of my other choices. Xzar, at least, will feel right at home here.~ + xzar8
END

IF ~~ xzar6
SAY ~Of course. The fool never could accept second place.~
= ~Very well. Let him be the first to die here.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar7
SAY ~Ah, a gambler to the last. Even with our mortal and immortal parts as the stake. I think that is why I have loved you, <CHARNAME>.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar8
SAY ~That is a reason... but I hope your reason applies in this place of your arising.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

END

APPEND AERIE25J
IF ~~ xzar
SAY ~My love! Couldn't you have called someone... anyone... less creepy?~
++ ~Darling, we face massed evil here. Any better person would be overwhelmed in an instant. I do not believe, however, that Xzar will notice any difference.~ + xzar10
++ ~I mean for his presence to distract our enemies from you... and our child.~ + xzar11
++ ~All whom I care for are already at risk here, Aerie. I... cannot make myself call another friend to this place.~ + xzar12
END

IF ~~ xzar10
SAY ~You... you may be right. But I hope the coldness of that reason has not entered your heart.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar11
SAY ~If... if he doesn't notice me... us.~
= ~But I'm being silly. E-even if he does notice, there wouldn't be time for him to... to do anything. Would there?~
IF ~~ EXTERN PPGUY02 Xzar11a
END

IF ~~ xzar12
SAY ~I... I see. No. I could not summon you here... if that choice were mine. Do as you must then, my dearest.~
IF ~~ EXTERN PPGUY02 Xzar11a
END

END

CHAIN PPGUY02 Yoshimo1
~The pool begins to stir.~
== MAZZY25J IF ~InParty("Mazzy") !Dead("Mazzy")~ THEN ~Your confidence must be great indeed in this place to risk such an encounter.~
== KORGA25J IF ~InParty("Korgan") !Dead("Korgan")~ THEN ~I canna say I would miss the chance to carve the traitorous cur a new blowhole, but it hardly seems the time. An' that's sayin' something.~
== HAERD25J IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN ~My raven, you do surprise me. Of all the creatures in the multiverse you choose the one duty-bound to place a knife in your spinal column 'ere you meet.~
== HAERD25J IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN ~The dramatic tension is marvelous.~
END
IF ~~ GOTO Yoshimo11a
IF ~InParty("Anomen") !Dead("Anomen")~ EXTERN ANOME25J yoshimo

APPEND ANOME25J
IF ~~ yoshimo
SAY ~You would bring back the one who betrayed you into the hands of the very man you struggled against? <CHARNAME>, I refuse to allow this cur back into our midst!~
++ ~Don't be so quick to judge, Anomen. Yoshimo had no choice but to continue down the path of deception on pain of death. I need his help and must take a chance.~ + Ano1
++ ~Shut up, Anomen. This is my decision to make.~ + Ano2
+ ~G("AnomenRomanceActive",2)~ + ~Trust me, love. I would not put us in potential jeopardy without good reason.~ + Ano3
++ ~Hmm, perhaps you're right. He sold us out once, and there's no guarantee he won't do it again.~ + quiteright
END

IF ~~ quiteright
SAY ~Quite right.~
IF ~~ EXTERN PPGUY02 Yoshimo11a
END

IF ~~ Ano1
SAY ~Hmmph. If you are so intent to forgive treachery and forget deceit, then I cannot sway you. However, know that I will keep a sharp eye on this one.~
= ~I will not hesitate to strike should he prove to be as false in death as he was in life.~
IF ~~ EXTERN PPGUY02 Yoshimo11a
END

IF ~~ Ano2
SAY ~Do not be so quick to dismiss my counsel. Why, had you listened to me, Yoshimo would never have been a threat!~
IF ~~ EXTERN PPGUY02 Yoshimo11a
END

IF ~~ Ano3
SAY ~I cannot help but be protective of that which I treasure most. Tread cautiously, <CHARNAME>, for I would hate to lose you over a matter that could have been avoided.~
IF ~~ EXTERN PPGUY02 Yoshimo11a
END
END

APPEND PPGUY02
IF ~~ Yoshimo11a
SAY ~Will you call forth Yoshimo?~
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1177.1235]) Wait(1) CreateCreature("D0T#Yosh",[1177.1235],4)~ GOTO Yoshimo2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1177.1235]) Wait(1) CreateCreature("D0T#Yosh",[1177.1235],4)~ GOTO Yoshimo2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1177.1235]) Wait(1) CreateCreature("D0T#Yosh",[1177.1235],4)~ GOTO Yoshimo2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
END


CHAIN PPGUY02 Gorion1
~The pool begins to stir.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~Wow! A chance to see the codger one more time. I've thought so much about this ever since I found out about being like you.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~It's strange, though. Now that it could really happen... I don't know what I could possibly say.~
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok") Alignment("Sarevok",CHAOTIC_GOOD)~ THEN ~I do not look forward to this particular reunion with any pleasure. But perhaps it was Gorion who gave you your... uncommon insight and flexibility.~
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok") !Alignment("Sarevok",CHAOTIC_GOOD)~ THEN ~A bold choice, <CHARNAME>. Let us see if the old fool is as open-minded as you. If not, this may be a very brief reunion. For him.~
== PPGUY02 ~Will you call forth Gorion?~
END
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1218.1292]) Wait(1) CreateCreature("D0T#Gori",[1218.1292],6)~ GOTO Gorion2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1218.1292]) Wait(1) CreateCreature("D0T#Gori",[1218.1292],6)~ GOTO Gorion2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseGorion","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1218.1292]) Wait(1) CreateCreature("D0T#Gori",[1218.1292],6)~ GOTO Gorion2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2


CHAIN PPGUY02 Tiax1
~The pool begins to stir.~
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN ~Tiax? At least the little moron shouldn’t prove to hard to goad into battle, and provide a distraction for the blades of our foes. Better than that witch. (Yes, and his bumbling antics will doubtless provide some amusement.)~
== KELDO25J IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN ~I understand that this gnome serves Cyric, who stands in opposition of Torm the True and all goodly folk. Still the foe we face is deadly, so I shall trust in your judgment and allow this--temporary--alliance.~
END
IF ~~ GOTO Tiax11a
IF ~InParty("Viconia") !Dead("Viconia")~ EXTERN VICON25J tiaxtalk

APPEND VICON25J
IF ~~ tiaxtalk
SAY ~And so you would choose to invite this iblith, the servant of the Mad God, to aid you and risk drawing the attention of Cyric?~
= ~I would take care, <CHARNAME>, lest after this battle you find yourself in confrontation with that fell power. You recently drew blades against him in your pocket plane, or had you already forgotten?~
++ ~I have no fear of Cyric; he cannot do any more to me than he has tried already.~ + Vic2
++ ~Tiax is a tool to serve me--as are you. Remember that, and know your place.~ + Vic3
+ ~G("ViconiaRomanceActive",2)~ + ~Do not worry, my love; I know what I am doing.~ + Vic4
++ ~You are right. I can certainly do better, and safer, than Tiax.~ + Vic6
++ ~There is wisdom in your words. It would be safer not to summon anyone and incur no further debts.~ + Vic5
END

IF ~~ Vic2
SAY ~You always were a fool, abbil, yet you somehow manage to prevail.~
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic3
SAY ~No, <CHARNAME>, *you* are the tool. One of many through which Shar works her plans. Still... I suppose Tiax, too, might suffice as an additional tool on our side during this time.~
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic4
SAY ~I suppose our need is great... I will trust your decision, and we shall have to deal with the consequences later.~
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic5
SAY ~A wise move. If we prevail here there are many who might seek to take advantage of our weakened state afterwards; it would be prudent not to alert them now in case we succeed here.~
IF ~~ EXTERN PPGUY02 Tiax11a
END

IF ~~ Vic6
SAY ~You would do best to trust in yourself and in me; more power you cannot possibly need.~
IF ~~ EXTERN PPGUY02 Tiax11a
END
END

APPEND PPGUY02
IF ~~ Tiax11a
SAY ~Will you call forth Tiax?~
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1362.1290]) Wait(1) CreateCreature("D0T#Tiax",[1362.1290],10)~ GOTO Tiax2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1362.1290]) Wait(1) CreateCreature("D0T#Tiax",[1362.1290],10)~ GOTO Tiax2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseTiax","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1362.1290]) Wait(1) CreateCreature("D0T#Tiax",[1362.1290],10)~ GOTO Tiax2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
END


CHAIN PPGUY02 Dynaheir1
~The pool begins to stir.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~Maybe bringing Dynaheir back wouldn't be such a good idea. The last thing she ever felt was... was the pain. She's safe from the pain now... and the knives.~
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN ~I have no objection to the witch Dynaheir being brought back to life. (With a second death to follow soon after... Careful, careful, I must not succumb to cliched laughter.)~
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc")~ THEN ~You... you can bring back Dynaheir? NO! <CHARNAME>, you cannot! How will Minsc face her after failing his duty?!~
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc") OR(2) !InParty("Aerie") !Global("MinscWitch","GLOBAL",1)~ THEN ~But Boo says that this is Minsc's second chance to protect her! And right you are, Boo! HOLD FORTH, EVIL, MINSC AND DYNAHEIR ARE ONCE AGAIN TOGETHER! That is, if you do mean to bring Dynaheir back, right, <CHARNAME>?~
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc") InParty("Aerie") Global("MinscWitch","GLOBAL",1)~ THEN ~But Boo says that this is Minsc's second chance to protect her, and Aerie too! And right you are, Boo! HOLD FORTH, EVIL, TODAY YOU MEET WITH TWO WITCHES FOR THE PRICE OF ONE RANGER! That is, if you do mean to bring Dynaheir back, right, <CHARNAME>?~
== PPGUY02 ~Will you call forth Dynaheir?~
END
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1402.1238]) Wait(1) CreateCreature("D0T#Dyna",[1402.1238],12)~ GOTO Dynaheir2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1402.1238]) Wait(1) CreateCreature("D0T#Dyna",[1402.1238],12)~ GOTO Dynaheir2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1402.1238]) Wait(1) CreateCreature("D0T#Dyna",[1402.1238],12)~ GOTO Dynaheir2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2


CHAIN PPGUY02 Khalid1
~The pool begins to stir.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~Khalid? Oh, <CHARNAME>, I don't have a good feeling about this at all...~
END
IF ~~ EXTERN PPGUY02 Khalid11a
IF ~InParty("Jaheira") !Dead("Jaheira") G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J jkromance
IF ~InParty("Jaheira") !Dead("Jaheira") !G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J jknon

APPEND PPGUY02
IF ~~ Khalid11a
SAY ~Will you call forth Khalid?~
IF ~Global("T#SourceState","LOCALS",1)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1367.1181]) Wait(1) CreateCreature("D0T#Khal",[1367.1181],14)~ GOTO Khalid2a
IF ~Global("T#SourceState","LOCALS",2)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1367.1181]) Wait(1) CreateCreature("D0T#Khal",[1367.1181],14)~ GOTO Khalid2b
IF ~Global("T#SourceState","LOCALS",3)~ THEN REPLY ~Yes.~ DO ~SetGlobal("T#RaiseKhalid","GLOBAL",1) CreateVisualEffect("SPPORTAL",[1367.1181]) Wait(1) CreateCreature("D0T#Khal",[1367.1181],14)~ GOTO Khalid2c
IF ~~ THEN REPLY ~No.~ GOTO Raise2
END
END

APPEND JAHEI25J
IF ~~ jknon
SAY ~What do you think you are doing? You will not use Khalid as your pawn in this! He has earned his rest and you will not disturb it!~
++ ~Silence! This is bigger than you or Khalid or even me. For once, don't question me!~ + abom
++ ~You yourself can restore the dead, Jaheira. This is little different. I am merely asking for his service one last time.~ + abom
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~But you two can be together again. I believe I can restore him fully.~ + restore
++ ~I need friends I can trust, and all the help I can get. Besides, he would want to protect you.~ + protect
END

IF ~~ abom
SAY ~This is not a natural restoration! You mean to call up some twisted abomination!~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~Even if I can bring him back, so you two can have your life together again?~ + restore
++ ~Trust me.~ + trust
++ ~All right, all right. Forget I brought it up.~ EXTERN PPGUY02 Khalid11a
END

IF ~~ trust
SAY ~You will do as you choose, I am sure. But if you toy with his spirit, I swear, you will pay for it!~
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ protect
SAY ~Yes, he would... he always did. But that does not make it right to ask.~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~Even if I can bring him back, so you two can have your life together again?~ + restore
++ ~Trust me.~ + trust
++ ~All right, all right. Forget I brought it up.~ EXTERN PPGUY02 Khalid11a
END

IF ~~ restore
SAY ~You could do this? You would do this? His body was... destroyed, and it seems so long ago now.~
= ~I... I do not know that he would know me as he did.~
++ ~You saw what happened to Sarevok. He was flesh and blood and he certainly knew us. Trust me, this will work.~ + trust
++ ~We will never know unless we try.~ + trust
++ ~All right, all right. Forget I brought it up.~ EXTERN PPGUY02 Khalid11a
END

IF ~~ jkromance
SAY ~Are... are you mad?!? Why would you do such a thing?~
= ~I beg of you, <CHARNAME>, let Khalid rest. I cannot--that is, we should not make him face us, as we are now. He deserves his peace.~
++ ~Believe me, Jaheira, if I felt we could win without his help, I would choose another. But we need help and Khalid was a loyal friend.~ + loyal
++ ~You yourself can restore the dead, Jaheira. This is little different. I am merely asking for his service one last time.~ + service
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~But you two can be together again. I believe I can restore him fully.~ + restorerom
++ ~I don't know that I can protect you alone, Jaheira. And I can think of no better second to help me keep you safe.~ + protectrom
END

IF ~~ loyal
SAY ~He was loyal, yes, but he has given all he had and passed beyond. To summon up a spectre of what he was would be a desecration of what he was, and what he meant to us.~
++ ~I know why you are torn, Jaheira. I feel it as well. But Khalid's ghost is always with us whether we face him or not. Best to face him and ask his help and understanding.~ + ghost
++ ~I need his aid, and he can make up his own mind.~ + ghost
++ ~All right, you win, Jaheira. I will leave him be.~ EXTERN PPGUY02 Khalid11a
END

IF ~~ ghost
SAY ~I suppose that is the truth. Very well, <CHARNAME>. We will face him... together.~
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ service
SAY ~This is no mere favor or errand. You plan to disturb his very soul. This is... this is very ill-considered, <CHARNAME>, and places us all in a very awkward position.~
++ ~I know why you are torn, Jaheira. I feel it as well. But Khalid's ghost is always with us whether we face him or not. Best to face him and ask his help and understanding.~ + ghost
++ ~I need his aid, and he can make up his own mind.~ + ghost
++ ~All right, you win, Jaheira. I will leave him be.~ EXTERN PPGUY02 Khalid11a
END

IF ~~ protectrom
SAY ~Yes, he would... he always did. But that does not make it right to ask.~
= ~Do not ask me to choose between our safety and the sanctity of his rest, <CHARNAME>. You will not like my response.~
++ ~I know why you are torn, Jaheira. I feel it as well. But Khalid's ghost is always with us whether we face him or not. Best to face him and ask his help and understanding.~ + ghost
++ ~I need his aid, and he can make up his own mind.~ + ghost
++ ~All right, you win, Jaheira. I will leave him be.~ EXTERN PPGUY02 Khalid11a
END

IF ~~ restorerom
SAY ~I... I do not believe I heard you correctly. You wish for Khalid and me to be together once more?~
++ ~My destiny does not lie in Calimshan or Tethyr or Amn or the Sword Coast, but beyond. You cannot be part of that. But I do not want you to be alone.~ + alone
++ ~I do. I feel like a pretender. It is best that you two be reunited.~ + pretender
++ ~I love you, Jaheira, but it would not be right to go on... loving you. Not when I have the power to restore Khalid.~ + power
++ ~I thought you would be pleased to hear that.~ + pleased
END

IF ~~ alone
SAY ~I had hoped you would not take such a path. I did not wish to face such a loss a second time, but now you offer me this... this impossible trade.~
= ~Do as you will. I can face my husband once more.~
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ pretender
SAY ~After so much has passed between us? Our lives have taken the course they must, we have moved on, and we--~
IF ~~ GOTO isee
END

IF ~~ isee
SAY ~--but I see that your mind is made up in this. Very well, <CHARNAME>. We will face Khalid, and then we shall see what we shall see.~
IF ~~ EXTERN PPGUY02 Khalid11a
END

IF ~~ power
SAY ~<CHARNAME>, we--I owe Khalid more than I could ever explain. But that does not require that we sacrifice what we have discovered.~
= ~We have respected his memory and his life! Our lives have taken the course they must, we have moved on, and we--~
IF ~~ GOTO isee
END

IF ~~ pleased
SAY ~It is not as simple as that! Do you think me a child, so easily distracted from the ache of the past and the pain of the present?~
= ~I... I am sorry. But you place me in an impossible position.~
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
SAY ~You have not forgotten your vow, have you, my child? You promised to bring me back to life, your mother! Grant me a true respite from the Abyss!~
+ ~Global("T#AliaPromised","GLOBAL",1)~ + ~I made no such promise. Go back to your pit, mother. Your use to me is at an end.~ + liar
+ ~!Global("T#AliaPromised","GLOBAL",1)~ + ~I made no such promise. Go back to your pit, mother. Your use to me is at an end.~ + meanie
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~Very well. Solar, if you please, grant Alianna life restored.~ + awesome
+ ~!Global("T#AliaPromised","GLOBAL",1)~ + ~I have no power to spare you.~ + meanie
END

IF ~~ meanie
SAY ~What? Not a thought for resurrecting your mother?! You would not exist without my devotion. I was slain to preserve your life; I have suffered infernal agony in the pits so that you might stand here and deny me? Ungrateful child!~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Al02")~ EXIT
END
END

CHAIN D0T#ALIA awesome
~You have not failed me, my precious spawn of Bhaal. How I shall revel in returning to the Realms, for whatever time I have left! Thank you, my child.~
== FINSOL01 ~This process will take but a moment. Prepare yourself.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Al01")~ EXIT

CHAIN D0T#ALIA liar
~Liar!~
== FINSOL01 ~Unfortunately, godchild, your words in this place are binding. Your agreement, once made, cannot be rescinded by your decision alone. Prepare yourself.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Al01")~ EXIT

CHAIN FINSOL01 raiseyosh
~You have made a commitment to one of your companions, <CHARNAME>, and now that commitment must be carried out.~
== D0T#YOSH ~You have honored me with the chance to serve as I should have.~
= ~It has been some time since I have known a good, honest fight. No pretenses. No deceptions. No ambiguity. Very refreshing.~
= ~It is only fitting that you restore me. My life became yours to take. Now it is yours to return.~
END
++ ~Actually, I changed my mind. I would rather not bring Yoshimo back.~ EXTERN FINSOL01 yesyoshimo
++ ~Gladly. Welcome back, my friend.~ EXTERN FINSOL01 rezyoshimo
++ ~This does not make us friends, traitor. You still owe me.~ EXTERN FINSOL01 rezyoshimo

APPEND FINSOL01
IF ~~ yesyoshimo
SAY ~Unfortunately, godchild, your words in this place are binding. Your agreement, once made, cannot be rescinded by your decision alone. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Yo01")~ EXIT
END

IF ~~ rezyoshimo
SAY ~This process will take but a moment. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Yo01")~ EXIT
END
END


APPEND D0T#XZAR
IF ~~ raisexzar
SAY ~Wait, wait, wait! The Bhaalspawn and I had a deal and now it is time to collect! Let's be quick about this, I have so much to do, oh good golly yes I do!~
+ ~Global("T#XzarLich","GLOBAL",1)~ + ~Xzar's desire is to become a lich in a place of his choosing within the lands of Faerun. Let it be so.~ EXTERN FINSOL01 xzar28
+ ~Global("T#XzarLich","GLOBAL",1)~ + ~I know not what fit of madness convinced me to promise this. Please turn Xzar... into a powerful lich. I promised.~ EXTERN FINSOL01 xzar28
++ ~A renewal of life is what he least desires but should have in hopes that he might, somehow, find healing of the mind. That is my choice for him.~ + block29
++ ~He means nothing to me.  Return him to the place where death had taken him.~ + nofair
END
END

CHAIN FINSOL01 xzar28
~That cannot be, Child. Life and the ending of Life in Death are within your scope. Undeath is not.~
== D0T#XZAR ~Damnation! I should have known! I would have known, had not my hopes overridden my common sense!~
= ~Curse all hair-splitting, double-dealing gods everywhere!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz02")~ EXIT

CHAIN D0T#XZAR block29
~My mind is perfectly all right, damn you! And it will be completely dedicated to your undoing, once I get over this LIFE foolishness of yours!~
== FINSOL01 ~This process will take but a moment. Prepare yourself.~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz01")~ EXIT

APPEND FINSOL01
IF ~~ gottaxzar
SAY ~This process will take but a moment. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz01")~ EXIT
END
END


CHAIN D0T#XZAR nofair
~Pfeh! You are ready for godhood, all right! Letting a fellow down like that.~
= ~Still, I have gained something, through no doing of yours I am certain. Perhaps now I can deal sensibly with those large, knobbly things which guard those forbidden places in my old abode.~
= ~I demand to be given my gift! I demand to be made a great and mighty lich!~
= ~THIS VERY INSTANT!~
END
IF ~~ EXTERN FINSOL01 sorrylich
IF ~Global("T#XzarPromised","GLOBAL",1) !Global("T#XzarLich","GLOBAL",1)~ EXTERN FINSOL01 xzarlife

CHAIN FINSOL01 sorrylich
~Your demand is meaningless. Life and the ending of Life in Death are within the Child's scope. Undeath is not.~
== D0T#XZAR ~Damnation! I should have known! I would have known, had not my hopes overridden my common sense!~
= ~Curse all hair-splitting, double-dealing gods everywhere!~
END
IF ~Global("T#XzarLich","GLOBAL",1)~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz02")~ EXIT

CHAIN FINSOL01 xzarlife
~Your demand is meaningless. Life and the ending of Life in Death are within the Child's scope. Undeath is not.~
= ~However, the words of the Bhaalspawn are binding in this place. As <PRO_HESHE> promised you new life and possesses the power to grant it, that is what you shall receive.~
== D0T#XZAR ~Damnation! I should have known! I would have known, had not my hopes overridden my common sense!~
= ~Curse all hair-splitting, double-dealing gods everywhere!~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Xz01")~
EXIT


CHAIN FINSOL01 raisekhal
~You have made a commitment to one of your companions, <CHARNAME>, and now that commitment must be carried out.~
== D0T#KHAL ~Y-y-you mean bringing me back?~
END
IF ~!InParty("Jaheira")~ EXTERN D0T#KHAL nojaheira
IF ~InParty("Jaheira") !G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J nonrom
IF ~InParty("Jaheira") G("JaheiraRomanceActive",2)~ EXTERN JAHEI25J inrom

CHAIN JAHEI25J nonrom
~Of course it means bringing you back! Must I explain everything to you?~
== D0T#KHAL ~N-now, Jaheira, there is n-no need to have s-s-such a temper. Th-this should be a joyous day!~
== JAHEI25J ~It is, my love, forgive me. I am just so overcome, I... I do not know what to say!~
== D0T#KHAL ~Then d-don't say anything, my love.~
END
++ ~On second thought, I don't want to waste any of this essence on the likes of Khalid. The deal is off.~ EXTERN FINSOL01 yesyoudidkhal
++ ~I am glad to see that nothing has changed between you two. Solar, if you would do the honors...~ EXTERN FINSOL01 okaykhal
++ ~I love happy endings.~ EXTERN FINSOL01 okaykhal

CHAIN JAHEI25J inrom
~Of course it means bringing you back! Must I explain everything to you?~
= ~Forgive me, Khalid. I... I simply do not know how to feel right now. I had thought you gone forever, and to have you back...~
= ~I thought this decision would be easy, one way or another, but it is not. Damn you both, it is not!~
END
++ ~What do you mean? I give you freely back to Khalid. You two rightfully belong together.~ + givefreely
++ ~You are right, this is a bad idea. I will make it easier. The deal is off, Khalid! Go back to where you came from!~ + dealoffrom
++ ~Jaheira, I did not want to hurt you. I thought this would make you happiest.~ + happiest
++ ~You could always just choose me and be done with it. Khalid can find his own way.~ + jaheirathinks

APPEND JAHEI25J
IF ~~ givefreely
SAY ~I am not a chip on the table to be pushed hither and yon, <CHARNAME>. This... this matter is not as simple as that.~
IF ~~ GOTO jaheirathinks
END

IF ~~ happiest
SAY ~I... I know it should, <CHARNAME>. But sometimes the wisest choices are not the easiest. And sometimes the most obvious choices cause us the greatest pain.~
IF ~~ GOTO jaheirathinks
END

IF ~~ jaheirathinks
SAY ~Neither of you can understand. This is not a matter that can be settled by tally, and Nature has given me but one heart!~
= ~But my heart must be served, and--~
IF ~~ EXTERN D0T#KHAL main-khalidleaves
END

END

CHAIN JAHEI25J dealoffrom
~WHAT?!? How dare you toy with Khalid's very soul in this cavalier manner!~
== FINSOL01 ~Unfortunately, godchild, your words in this place are binding. Your agreement, once made, cannot be rescinded by your decision alone. Prepare--~
== D0T#KHAL ~E-excuse me, everyone.~
END D0T#KHAL main-khalidleaves

CHAIN D0T#KHAL main-khalidleaves
~--Y-you know that I would never i-i-interrupt you without good cause, Jaheira. B-but I have something important to say.~
= ~I would have to b-b-be a blind man not to see how you two care for one another. How y-you fought for each other like lions. And h-how you love one another.~
== JAHEI25J ~We do, Khalid, but I--~
== D0T#KHAL ~P-please, Jaheira. J-just this once.~
= ~I never meant to leave your side. B-but it happened, and to p-p-pretend it did not will not change anything.~
= ~I know wh-what hurts you most of all, Jaheira, because I listened to e-e-every word you have ever said to me.~
= ~If I came back, I would be a break in the b-b-balance. The balance of n-nature, and of your l-l-lives.~
= ~I cannot hurt you l-like that, Jaheira. And I won't. I do not want to c-c-come back.~
== JAHEI25J ~Oh... Khalid... you fool. How can you not know that some things are greater than even the need for balance?~
== D0T#KHAL ~I do know th-that, Jaheira. We had such a thing, a-and now you and <CHARNAME> do. A-and that means I should not interfere.~
= ~Be good, Jaheira. B-b-be good... to each other.~
== JAHEI25J ~We... we will.~
= ~Khalid, I still love you.~
== D0T#KHAL ~I know. And I love you.~
DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Kh02")~ EXIT

APPEND D0T#KHAL
IF ~~ nojaheira
SAY ~I... I admit, I am m-m-more afraid to come back than I thought I would be. I... I've n-n-never been without Jaheira for long.~
= ~But I can find her, with enough time, and enough l-luck, I'm sure. I h-h-hope.~
++ ~Maybe this isn't such a good idea, then. Forget I said anything.~ EXTERN FINSOL01 yesyoudidkhal
++ ~You will, Khalid. And things will be back to normal between you. It is the least I can do.~ EXTERN FINSOL01 okaykhal
++ ~That won't be my problem. Best of luck to you and all that. Just stay out of my way.~ EXTERN FINSOL01 okaykhal
END
END


APPEND D0T#TIAX
IF ~~ raiseme
SAY ~Tiax has helped you yet again, <CHARNAME>, and now he waits expectantly for you to perform your half of the bargain. And he waits with much glee, for he knows his hour has come.~
+ ~Global("T#TiaxPromised","GLOBAL",1)~ + ~I recall no such promise.~ EXTERN FINSOL01 yesyoudidtiax
+ ~Global("T#TiaxDeceived","GLOBAL",1)~ + ~I recall no such promise.~ + youbastard
++ ~And so I did. Let it be done.~ + okayfine
++ ~I was hoping you would forget. But, a deal is a deal.~ + okayfine
END

IF ~~ youbastard
SAY ~You... you would lie to a servant of the Prince of Lies? You are more akin to Tiax than you would admit, <CHARNAME>.~
= ~But Tiax will not forget this slight, and will find a way to conquer even death to return and exact vengeance. And then, Tiax *will* rule all...~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Ti02")~ EXIT
END

END




CHAIN D0T#TIAX okayfine
~Yes! Tiax... Tiax can feel his limbs moving, his blood flowing again already! Glorious day, when Tiax returns from the world of the dead to rule over the cowering populace from on high!~
= ~Ahahahahaha! Cyric the All-Knowing be blessed for this occurrence! And... watch your back, All-Knowing One, for Tiax may never be stopped once he starts ruling!~
== FINSOL01 ~This process will take but a moment. Prepare yourself.~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Ti01")~
EXIT

APPEND D0T#Dyna
IF ~~ raiseme
SAY ~Though I would not push it upon thee, remember, <CHARNAME>, that thou hast promised to return my life!~
+ ~Global("T#DynaPromised","GLOBAL",1)~ + ~I recall no such promise.~ EXTERN FINSOL01 yesyoudiddyna
+ ~Global("T#DynaDeceived","GLOBAL",1)~ + ~I recall no such promise.~ + youbastard
++ ~And so I did. Let it be done.~ + okayfine
++ ~I was hoping you would forget. But, a deal is a deal.~ + okayfine
END
END

CHAIN D0T#Dyna youbastard
~Thou hast betrayed me?! After my service to thee? Twas a mistake to aid thee--and those living on this plane will suffer as a result of my mistake.~
== MINSC25J IF ~InParty("Minsc")~ THEN ~Ooooh, Minsc and Boo do not quite understand what has happened here, but we are very sure it positively reeks with evil!~
== D0T#Dyna ~Thou might ascend to Bhaal's power now, <CHARNAME>, but thou will meet a bitter end if justice prevails.~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Dy02")~ EXIT

CHAIN D0T#Dyna okayfine
~I thank thee, <CHARNAME>. Thou hast proven thy good judgement.~
== D0T#Dyna IF ~InParty("Minsc")~ THEN ~I... have survived death and now this battle. As such I can make my own way hence. Minsc, I release thee from thy service. In my eyes, thou hast completed thy dajemma.~
== MINSC25J IF ~InParty("Minsc")~ THEN ~We... we understand, Dynaheir. But if you ever need our aid, just whistle and Minsc and Boo will be on the scene in no time at all!~
== D0T#Dyna ~I said before that I would guide thy decisions, <CHARNAME>, yet it appears that thou does not my help every step of the way.~
== FINSOL01 ~This process will take but a moment. Prepare yourself.~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Dy01")~ EXIT

APPEND FINSOL01
IF ~~ yesyoudiddyna
SAY ~Unfortunately, godchild, your words in this place are binding. Your agreement, once made, cannot be rescinded by your decision alone. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Dy01")~ EXIT
END

IF ~~ yesyoudidtiax
SAY ~Unfortunately, godchild, your words in this place are binding. Your agreement, once made, cannot be rescinded by your decision alone. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Ti01")~ EXIT
END

IF ~~ yesyoudidkhal
SAY ~Unfortunately, godchild, your words in this place are binding. Your agreement, once made, cannot be rescinded by your decision alone. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Kh01")~ EXIT
END

IF ~~ okaykhal
SAY ~This process will take but a moment. Prepare yourself.~
IF ~~ DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("D0T#Kh01")~ EXIT
END

END


