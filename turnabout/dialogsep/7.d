EXTEND_BOTTOM FINSOL01 27
IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") Global("PGLiedToAlianna1", "GLOBAL", 1) Global("PGAliannaAscAdvice", "GLOBAL", 0)~ THEN DO ~SetGlobal("PGAliannaAscAdvice", "GLOBAL", 1)~ EXTERN D0T#ALIA MommyBuysClue
IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !Global("PGLiedToAlianna1", "GLOBAL", 1) Global("PGAliannaAscAdvice", "GLOBAL", 0)~ THEN DO ~SetGlobal("PGAliannaAscAdvice", "GLOBAL", 1)~ EXTERN D0T#ALIA MommysAscensionAdvice
END


APPEND D0T#ALIA

IF ~~ THEN BEGIN MommyBuysClue
SAY @0
=
@1
++ @2 + CheekyMonkey
++ @3 + MommyTakesTheNewsWell
++ @4 + MommySurprisesHerself
++ @5 + OhYeahPrissPants
++ @6 + MommyTakesTheNewsWell
END

IF ~~ THEN BEGIN CheekyMonkey
SAY @7
= @8
IF ~~ THEN GOTO BhaalIsDeadSegue
END

IF ~~ THEN BEGIN MommySurprisesHerself
SAY @9
= @10
IF ~~ THEN GOTO BhaalIsDeadSegue
END

IF ~~ THEN BEGIN OhYeahPrissPants
SAY @11
=
@12
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN BhaalIsDeadSegue
SAY @13
=
@14
= @15
IF ~~ THEN GOTO MommysAscensionAdvice
END

IF ~~ THEN BEGIN MommyTakesTheNewsWell
SAY @16
++ @17 + MommysAscensionAdvice
++ @18 + MommysAscensionAdvice
++ @19 + ThatsPrettyCold
++ @20 + AnotherKindOfRevenge
END

IF ~~ THEN BEGIN ThatsPrettyCold
SAY @21
IF ~~ THEN GOTO MommysAscensionAdvice
END

IF ~~ THEN BEGIN AnotherKindOfRevenge
SAY @22
IF ~~ THEN GOTO MommysAscensionAdvice
END

IF ~~ THEN BEGIN MommysAscensionAdvice
SAY @23
++ @24 + MommyMurder
++ @25 + MommyHappy
+ ~!Global("D0T#RezzedAlia","GLOBAL",1)~ + @26 + MommyShush
+ ~Global("D0T#RezzedAlia","GLOBAL",1)~ +  @26 + MommyShush2
++ @27 + MommyMortal
+ ~!Global("D0T#RezzedAlia","GLOBAL",1)~ +  @28 + MommyBecomes
+ ~Global("D0T#RezzedAlia","GLOBAL",1)~ +  @28 + MommyBecomes2
END

IF ~~ THEN BEGIN MommyMurder
SAY @29
= @30
=
@31
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyHappy
SAY @32
= @33
=
@34
= @35
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyShush
SAY @36
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyShush2
SAY @37
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyMortal
SAY @38
= @39
=
@40
= @41
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyBecomes
SAY @42
IF ~~ THEN GOTO GodhoodIsWhereItsAt
END

IF ~~ THEN BEGIN MommyBecomes2
SAY @43
IF ~~ THEN GOTO GodhoodIsWhereItsAt
END

IF ~~ THEN BEGIN GodhoodIsWhereItsAt
SAY @44
COPY_TRANS FINSOL01 27
END

END

I_C_T FINSOL01 29  PGMommysEvilGirl
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING) Gender(Player1, FEMALE)~ THEN
@45
END


I_C_T FINSOL01 30  PGMommysNeutralGirl
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING) Gender(Player1, FEMALE)~ THEN
@46
END

I_C_T FINSOL01 31  PGMommysGoodGirl
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING) Gender(Player1, FEMALE)~ THEN
@47
END


I_C_T FINSOL01 32  PGMommysMortal
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING)~ THEN
@48
END

