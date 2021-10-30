BEGIN D0T#ALIA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Alianna1
SAY @0
+ ~Gender(Player1, FEMALE)~ + @1 + AskMommaNicelyGirl
+ ~Gender(Player1, MALE)~ + @1 + AskMommaNicelyBoy
++ @2 + DoesMyMommaLuvMe
++ @3 + TellMommaTheTruth
++ @4 + BabysKindaBitter
++ @5 + BabysMisleading
END

IF ~~ THEN BEGIN AskMommaNicelyGirl
SAY @6
= @7
++ @8 + UhNo
++ @9 + TellMommaTheTruth
++ @10 + BabysMisleading
++ @11 + ByeMommy
END

IF ~~ THEN BEGIN AskMommaNicelyBoy
SAY @12
= @13
++ @14 + UhNo
++ @9 + TellMommaTheTruth
++ @10 + BabysMisleading
++ @15 + ByeMommy
END

IF ~~ THEN BEGIN UhNo
SAY @16
IF ~~ THEN GOTO ByeMommy
END

IF ~~ THEN BEGIN ByeMommy
SAY @17
IF ~Difficulty(EASIEST)~ THEN DO ~ApplySpellRES("d0t#dam1",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~ApplySpellRES("d0t#dam2",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~ApplySpellRES("d0t#dam3",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~ApplySpellRES("d0t#dam4",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~ApplySpellRES("d0t#dam5",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN DoesMyMommaLuvMe
SAY @18
=
@19
+ ~Gender(Player1, FEMALE)~ + @1 + AskMommaNicelyGirl
+ ~Gender(Player1, MALE)~ + @1 + AskMommaNicelyBoy
++ @20 + TellMommaTheTruth
++ @4 + BabysKindaBitter
++ @21 + BabysMisleading
END

IF ~~ THEN BEGIN TellMommaTheTruth
SAY @22
=
@23
++ @24 + YesButDeathSucks
++ @25 + WhyBabykins
++ @26 + DadsDeadLetsKickAss
END

IF ~~ THEN BEGIN WhyBabykins
SAY @27
=
@28
=
@29
IF ~~ THEN GOTO ByeMommy
END

IF ~~ THEN BEGIN DadsDeadLetsKickAss
SAY @30
IF ~~ THEN GOTO YesButDeathSucks
END

IF ~~ THEN BEGIN YesButDeathSucks
SAY @31
=
@32
= @33
=
@34
++ @35 DO ~SetGlobal("T#AliaMaybe","GLOBAL",1)~ + MommysSatisfied
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @36 DO ~SetGlobal("T#AliaPromised","GLOBAL",1)~ + MommyPleased
++ @37 + MommyLamb
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @38 DO ~SetGlobal("PGLiedToAlianna2", "GLOBAL", 1)~ + MommyResigned
+ ~Global("D0T#AnybodyPromised","GLOBAL",1)~ + @38 + MommyResigned
END

IF ~~ THEN BEGIN MommysSatisfied
SAY @39
IF ~~ THEN GOTO MommyHunters
END

IF ~~ THEN BEGIN MommyPleased
SAY @40
IF ~~ THEN GOTO MommyHunters
END

IF ~~ THEN BEGIN MommyHunters
SAY @41
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN MommyLamb
SAY @42
= @43
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN MommyResigned
SAY @44
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN BabysKindaBitter
SAY @45
++ @46 + DeathSucks
++ @47 + WhoAreYouFighting
++ @48 + TellMommaTheTruth
++ @49 + ByeMommy
++ @50 + BabysMisleading
END

IF ~~ THEN BEGIN DeathSucks
SAY @51
=
@52
=
@53
++ @35  DO ~SetGlobal("T#AliaMaybe","GLOBAL",1)~ + MommysSatisfied
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @36 DO ~SetGlobal("T#AliaPromised","GLOBAL",1)~ + MommyPleased
++ @37 + MommyLamb
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @38 DO ~SetGlobal("PGLiedToAlianna2", "GLOBAL", 1)~ + MommyResigned
+ ~Global("D0T#AnybodyPromised","GLOBAL",1)~ + @38 + MommyResigned
END

IF ~~ THEN BEGIN WhoAreYouFighting
SAY @54
++ @55 DO ~SetGlobal("PGLiedToAlianna1", "GLOBAL", 1)~ + YesImASucker
++ @56 + ByeMommy
++ @57 + YesBabykins
END

IF ~~ THEN BEGIN YesImASucker
SAY @58
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN YesBabykins
SAY @59
=
@60
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN BabysMisleading
SAY @61
++ @62 DO ~SetGlobal("PGLiedToAlianna1", "GLOBAL", 1)~ + YesImASucker
++ @63 + YesBabykins
END


I_C_T FINMEL01 8 PGMommyGloating
== D0T#ALIA  IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING)~ THEN
@64
END

I_C_T FINSOL01 7 PGMommyBossesImoen
== D0T#ALIA  IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING)~ THEN
@65
END


/*
SAY ~Alianna will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Alianna2
IF ~~ THEN REPLY ~No.~ GOTO Alianna3
IF ~~ THEN REPLY ~Enemy.~ GOTO Alianna4
IF ~~ THEN REPLY ~Damage.~ GOTO Alianna5
END

IF ~~ THEN BEGIN Alianna2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseAlianna","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Alianna3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Alianna4
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~ApplySpellRES("d0t#dif5",Myself)
Enemy()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~ApplySpellRES("d0t#dif4",Myself)
Enemy()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~ApplySpellRES("d0t#dif3",Myself)
Enemy()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~ApplySpellRES("d0t#dif2",Myself)
Enemy()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~ApplySpellRES("d0t#dif1",Myself)
Enemy()~ EXIT
END

IF ~~ THEN BEGIN Alianna5
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~ApplySpellRES("d0t#dam1",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~ApplySpellRES("d0t#dam2",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~ApplySpellRES("d0t#dam3",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~ApplySpellRES("d0t#dam4",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~ApplySpellRES("d0t#dam5",Player1)
Wait(1)
ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END
*/
