BEGIN D0T#GORI

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Gorion1
SAY @0
++ @1 + waiting
++ @2 + everliked
+ ~InParty("Sarevok")~ + @3 + isall
+ ~!InParty("Sarevok")~ + @3 + isall2
++ @4 + needhelp
END

IF ~~ everliked
SAY @5
= @6
++ @7 + canthave
++ @8 + telling
++ @9 + stopher
END

IF ~~ stopher
SAY @10
IF ~~ GOTO main2
END

IF ~~ canthave
SAY @11
IF ~~ GOTO main2
END

IF ~~ waiting
SAY @12
++ @13 + telling
++ @14 + needhelp
++ @7 + canthave
END


IF ~~ donothelp
SAY @15
IF ~~ GOTO main2
END

IF ~~ known
SAY @16
= @17
= @18
++ @19 + nothanks
++ @20 + needhelp
++ @21 + lastchance
END

IF ~~ lastchance
SAY @22
= @23
++ @7 + canthave
++ @24 + goback
END


IF ~~ goback
SAY @25
= @26
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ needhelp
SAY @27
= @28
++ @29 + main2
++ @30 + main2
++ @31 + telling
END

IF ~~ isall2
SAY @32
++ @33 + visions
++ @34 + truth
++ @35 + telling
++ @36 + lostyou
END

IF ~~ isall
SAY @37
= @38
++ @33 + visions
++ @34 + truth
++ @35 + telling
++ @36 + lostyou
END

IF ~~ lostyou
SAY @39
= @40
= @41
IF ~~ GOTO visions
END


IF ~~ visions
SAY @42
= @43
++ @7 + canthave
++ @29 + main2
++ @31 + telling
END

IF ~~ truth
SAY @44
= @40
= @41
IF ~~ GOTO visions
END

IF ~~ fightfor
SAY @45
IF ~~ GOTO main2
END

IF ~~ main2
SAY @46
= @47
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @48 + resurrect
++ @49 + higher
++ @50 + mywill
++ @51 + goodhead
++ @52 + debts
++ @53 + survive
END

IF ~~ higher
SAY @54
= @55
IF ~~ GOTO decide
END

IF ~~ resurrect
SAY @56
++ @57 + stillaccomplish
++ @58 + decide
++ @59 + fool
END

IF ~~ stillaccomplish
SAY @60
= @61
IF ~~ GOTO decide
END

IF ~~ fool
SAY @62
IF ~~ GOTO decide
END

IF ~~ mywill
SAY @63
= @64
IF ~~ GOTO decide
END

IF ~~ goodhead
SAY @65
= @66
IF ~~ GOTO decide
END

IF ~~ debts
SAY @67
IF ~~ GOTO decide
END

IF ~~ survive
SAY @68
IF ~~ GOTO decide
END


IF ~~ decide
SAY @69
IF ~ReputationGT(Player1,16)~ THEN GOTO highrep
IF ~ReputationGT(Player1,10) ReputationLT(Player1,17)~ THEN GOTO midrep
IF ~ReputationLT(Player1,11)~ THEN GOTO lowrep
END

IF ~~ endstate
SAY @70
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

CHAIN D0T#GORI highrep
@71
= @72
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @73
== JAHEI25J IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN @74
== D0T#GORI @75
= @76
END D0T#GORI endstate

CHAIN D0T#GORI midrep
@77
= @78
= @79
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc")~ THEN @80
== D0T#GORI @81
END D0T#GORI endstate

CHAIN D0T#GORI lowrep
@82
== VICON25J IF ~InParty("Viconia") !Dead("Viconia")~ THEN @83
== D0T#GORI @84
= @85
END D0T#GORI endstate



CHAIN D0T#GORI telling
@86
== D0T#GORI IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @87
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @88
== D0T#GORI IF ~OR(2) !InParty("Imoen2") Dead("Imoen2")~ THEN @89
== D0T#GORI @90
END
++ @91 + fightfor
++ @92 + donothelp
++ @93 + known

CHAIN D0T#GORI nothanks
@94
= @95
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @96
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN @97
== D0T#GORI @98
END
++ @7 + canthave
++ @99 + goback



/*
SAY ~Gorion will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Gorion2
IF ~~ THEN REPLY ~No.~ GOTO Gorion3
IF ~~ THEN REPLY ~Enemy.~ GOTO Gorion4
IF ~~ THEN REPLY ~Damage.~ GOTO Gorion5
END

IF ~~ THEN BEGIN Gorion2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseGorion","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Gorion3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Gorion4
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

IF ~~ THEN BEGIN Gorion5
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
