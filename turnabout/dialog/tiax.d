BEGIN D0T#TIAX

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Tiax0
SAY @0
IF ~~ GOTO TiaxOther1
IF ~OR(4)
Alignment(Player1,LAWFUL_EVIL)
Alignment(Player1,NEUTRAL_EVIL)
Alignment(Player1,CHAOTIC_EVIL)
Alignment(Player1,CHAOTIC_NEUTRAL)~ GOTO TiaxEvil1
IF ~Alignment(Player1,LAWFUL_GOOD)~ GOTO TiaxLG1
END

IF ~~ Evildire
SAY @1
= @2
++ @3 + Evil18
++ @4 + Evilhelp
++ @5 + Evil9
END

IF ~~ Evilhelp
SAY @6
= @7
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ Evil3
SAY @8
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + @9 + Evil9
++ @10 + Evil18
++ @11 + Evil5
END

IF ~~ Evil4
SAY @12
++ @13 + Evil7
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + @14 + Evil2
++ @15 + Evil5
END

IF ~~ Evil5
SAY @16
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

IF ~~ Evil8
SAY @17
= @18
++ @19 + Evil10
++ @20 + Evil11
END

IF ~~ Evil9
SAY @21
IF ~~ GOTO Evil15
END

IF ~~ Evil10
SAY @22
= @23
++ @24 + Evil12
++ @25 DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @26 DO ~SetGlobal("T#TiaxPromised","GLOBAL",1)~ + Evil13
END

IF ~~ Evil11
SAY @27
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + @28 + Evil12
++ @25 DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @26 DO ~SetGlobal("T#TiaxPromised","GLOBAL",1)~ + Evil13
++ @29 + Evilhelp
END

IF ~~ Evil12
SAY @30
IF ~~ GOTO Evil15
END

IF ~~ Evil13
SAY @31
= @32
IF ~~ GOTO Evil15
END

IF ~~ Evil15
SAY @33
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ Evil18
SAY @34
++ @25 DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @26 DO ~SetGlobal("T#TiaxPromised","GLOBAL",1)~ + Evil13
++ @35 + Evilhelp
END

IF ~~ Other3
SAY @36
++ @37 + Other4
++ @38 + Other5
++ @39 + Other6
END

IF ~~ Other4
SAY @40
++ @41 + Other7
++ @42 + Other8
END

IF ~~ Other6
SAY @43
= @44
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

IF ~~ Other7
SAY @45
++ @46 + Other9
++ @47 + Other8
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + @48 + Evil2
END

IF ~~ Other8
SAY @49
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ Other9
SAY @50
= @51
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @52 + Other10
++ @25 DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
++ @53 + Other11
END

IF ~~ Other10
SAY @54
= @55
IF ~~ GOTO Evil15
END

IF ~~ Other11
SAY @56
IF ~~ GOTO Other8
END

CHAIN D0T#TIAX Other5
@57
= @58
== CERND25J IF ~InParty("Cernd") !Dead("Cernd")~ THEN @59
== D0T#TIAX @60
END
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT

CHAIN D0T#TIAX TiaxOther1
@61
== D0T#TIAX IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN @62
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN @63
== D0T#TIAX IF ~OR(2) !InParty("Sarevok") Dead("Sarevok")~ THEN @64
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN @65
== D0T#TIAX @66
== HAERD25J IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN @67
== D0T#TIAX @68
= @69
= @70
END D0T#TIAX Other3

CHAIN D0T#TIAX TiaxEvil1
@71
== D0T#Tiax IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN @72
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN @73
END
++ @74 + Evil2
++ @75 + Evil3
++ @76 + Evil4
++ @77 + Evil5
++ @78 + Evilhelp

CHAIN D0T#TIAX Evil2
@79
== KELDO25J IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN @80
END
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + @81 + Evil6
++ @82 + Evil7
++ @83 + Evildire
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + @84 + Evil6
++ @85 + Evil7

CHAIN D0T#TIAX Evil6
@86
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN @87
== D0T#TIAX @88
END
++ @89 + Evil8
++ @90 + Evil8

CHAIN D0T#TIAX Evil7
@91
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN @92
== D0T#TIAX @93
= @94
END
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



CHAIN D0T#TIAX TiaxLG1
@95
= @96
== AERIE25J IF ~InParty("Aerie") !Dead("Aerie")~ THEN @97
== D0T#TIAX @98
END
++ @99 + LGblock2
++ @100 + LGblock2
++ @101 + LGblock2

CHAIN D0T#TIAX LGblock2
@102
== KELDO25J IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN @103
== D0T#TIAX @104
END
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







/*

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Tiax1
SAY ~Tiax will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Tiax2
IF ~~ THEN REPLY ~No.~ GOTO Tiax3
IF ~~ THEN REPLY ~Enemy.~ GOTO Tiax4
IF ~~ THEN REPLY ~Damage.~ GOTO Tiax5
END

IF ~~ THEN BEGIN Tiax2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseTiax","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Tiax3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Tiax4
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

IF ~~ THEN BEGIN Tiax5
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
