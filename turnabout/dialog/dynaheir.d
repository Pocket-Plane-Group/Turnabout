BEGIN D0T#DYNA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Dynaheir1
SAY @0
= @1
++ @2 + dyna2
++ @3 + dyna3
++ @4 + dyna2
END

IF ~~ dyna2
SAY @5
++ @6 + dyna9
++ @7 + dyna10
END

IF ~~ dyna3
SAY @8
++ @9 + dyna4
++ @10 + dyna8
++ @11 + dyna9
END

IF ~~ dyna4
SAY @12
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

IF ~~ dyna5
SAY @13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @14 + dyna7
++ @15 + dyna6
END

IF ~~ dyna6
SAY @16
= @17
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ dyna7
SAY @18
= @19
++ @20 + dyna6
++ @21 + dyna13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @22 + dyna6
++ @23 + dyna13
END

IF ~~ dyna8
SAY @24
++ @25 + dyna10
++ @26 + dyna10
++ @27 + dyna10
END

IF ~~ dyna9
SAY @28
++ @29 + dyna8
++ @30 + dyna8
IF ~InParty("Sarevok") !Dead("Sarevok")~ GOTO dyna12
END

IF ~~ dyna10
SAY @31
= @32
++ @33 + dyna11
++ @34 + dyna11
++ @35 + dyna11
++ @36 + dyna13
END

IF ~~ dyna11
SAY @37
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @38 + dyna5
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @39 + dyna5
++ @40 + dyna11a
++ @41 + dyna6
END

IF ~~ dyna11a
SAY @42
= @43
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ dyna12
SAY @44
++ @45 + dyna8
+ ~Global("SarevokOath","GLOBAL",1)~ + @46 + dyna8
++ @47 + dyna11a
END

IF ~~ dyna13
SAY @48
++ @49 + dyna14
++ @50 + dyna14
++ @51 + dyna11a
END

IF ~~ dyna14
SAY @52
+ ~ReputationGT(Player1,16)~ + @53 + dyna15
+ ~OR(2) CheckStatGT(Player1,17,CHR) ReputationGT(Player1,16)~ + @54 DO ~SetGlobal("T#DynaDeceived","GLOBAL",1)~ + dyna16
+ ~!CheckStatGT(Player1,17,CHR) !ReputationGT(Player1,16)~ + @54 + dyna17
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @55 DO ~SetGlobal("T#DynaPromised","GLOBAL",1)~ + dyna16
+ ~Global("D0T#AnybodyPromised","GLOBAL",1) ReputationGT(Player1,13)~ + @56 + dyna14a
+ ~Global("D0T#AnybodyPromised","GLOBAL",1) ReputationLT(Player1,14)~ + @56 + dyna14b
END

IF ~~ dyna14a
SAY @57
= @43
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END


IF ~~ dyna14b
SAY @58
= @59
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END


IF ~~ dyna15
SAY @60
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ dyna17
SAY @61
++ @62 + dyna18
++ @63 DO ~SetGlobal("T#DynaPromised","GLOBAL",1)~ + dyna16
++ @64 + dyna17a
END

IF ~~ dyna17a
SAY @65
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ dyna18
SAY @66
= @59
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

CHAIN D0T#DYNA dyna16
@67
== D0T#DYNA IF ~InParty("Minsc") !InParty("Edwin")~ THEN @68
== D0T#DYNA IF ~InParty("Minsc") !InParty("Edwin")~ THEN @69
== D0T#DYNA IF ~!InParty("Minsc") InParty("Edwin")~ THEN @70
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc")~ THEN @71
== D0T#DYNA IF ~InParty("Minsc") InParty("Edwin")~ THEN @72
EXTERN D0T#DYNA dyna11a






/*

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Dynaheir1
SAY ~Dynaheir will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Dynaheir2
IF ~~ THEN REPLY ~No.~ GOTO Dynaheir3
IF ~~ THEN REPLY ~Enemy.~ GOTO Dynaheir4
IF ~~ THEN REPLY ~Damage.~ GOTO Dynaheir5
END

IF ~~ THEN BEGIN Dynaheir2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseDynaheir","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Dynaheir3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Dynaheir4
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

IF ~~ THEN BEGIN Dynaheir5
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


