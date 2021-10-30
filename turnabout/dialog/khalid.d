BEGIN D0T#KHAL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Khalid1
SAY @0
IF ~~ GOTO notstart
IF ~InParty("Jaheira") !G("JaheiraRomanceActive",2)~ GOTO nonstart
IF ~InParty("Jaheira") G("JaheiraRomanceActive",2)~ GOTO romstart
END

IF ~~ notstart
SAY @1
= @2
++ @3 + wheresjaheira
++ @4 + wheresjaheira
++ @5 + hadnotbeen
END

IF ~~ hadnotbeen
SAY @6
= @7
++ @8 + matter
+ ~InParty("Jaheira") Dead("Jaheira")~ + @9 + later
+ ~!InParty("Jaheira") Dead("Jaheira")~ + @10 + dead
+ ~!Dead("Jaheira")~ + @11 + safe
END

IF ~~ wheresjaheira
SAY @12
++ @8 + matter
+ ~InParty("Jaheira") Dead("Jaheira")~ + @9 + later
+ ~!InParty("Jaheira") Dead("Jaheira")~ + @10 + dead
+ ~!Dead("Jaheira")~ + @11 + safe
END

IF ~~ dead
SAY @13
= @14
++ @15 + matter
++ @16 + just
++ @17 + just
END

IF ~~ safe
SAY @18
++ @19 + matter
++ @20 + just
++ @17 + just
END


IF ~~ later
SAY @21
++ @22 + just
++ @23 + worth
END

IF ~~ worth
SAY @24
IF ~~ GOTO just
END

IF ~~ matter
SAY @25
= @26
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ just
SAY @27
++ @28 + herplace
++ @29 + leavethis
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @30 + grant
END

IF ~~ herplace
SAY @31
IF ~~ GOTO lead
END

IF ~~ leavethis
SAY @32
IF ~~ GOTO lead
END

IF ~~ lead
SAY @33
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ grant
SAY @34
IF ~~  DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ GOTO wonderful
IF ~Dead("Jaheira") !InParty("Jaheira")~ GOTO jahdead
END

IF ~~ wonderful
SAY @35
= @36
IF ~~ GOTO lead
END

IF ~~ jahdead
SAY @37
++ @38 + anything
++ @39 + never
++ @40 + me
END

IF ~~ anything
SAY @41
= @42
IF ~~ GOTO lead
END

IF ~~ me
SAY @43
IF ~~ GOTO lead
END

IF ~~ never
SAY @44
= @45
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ togetheragainrom
SAY @46
++ @47 EXTERN JAHEI25J enough
++ @48 EXTERN JAHEI25J enough
++ @49 EXTERN JAHEI25J enough
END

IF ~~ onelastrom
SAY @50
IF ~~ GOTO leadrom
END

IF ~~ onelastnon
SAY @50
IF ~~ GOTO leadnon
END

IF ~~ leadnon
SAY @51
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END


CHAIN D0T#KHAL nonstart
@0
= @52
= @53
== JAHEI25J @54
== D0T#KHAL @55
== JAHEI25J @56
== D0T#KHAL @57
END
++ @3 + defeatnon
++ @4 EXTERN JAHEI25J jaheira-meannon
++ @5 + hadnotbeennon
++ @58 + shortwhilenon

CHAIN D0T#KHAL defeatnon
@59
== JAHEI25J @60
END D0T#KHAL main2non

CHAIN JAHEI25J jaheira-meannon
@61
== D0T#KHAL @62
== JAHEI25J @63
END D0T#KHAL main2non

CHAIN D0T#KHAL hadnotbeennon
@64
== JAHEI25J @65
END D0T#KHAL main2non

CHAIN D0T#KHAL shortwhilenon
@66
==  JAHEI25J @67
END D0T#KHAL main2non

CHAIN D0T#KHAL main2non
@68
== JAHEI25J @69
== D0T#KHAL @70
== JAHEI25J @71
= @72
== D0T#KHAL @73
= @74
END
++ @75 + onelastnon
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @76 DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ + togetheragainnon
++ @77 EXTERN JAHEI25J jah-mushynon
++ @78 + uptothisnon

CHAIN D0T#KHAL togetheragainnon
@79
= @80
== JAHEI25J @81
= @82
== D0T#KHAL @83
END D0T#KHAL leadnon

CHAIN JAHEI25J jah-mushynon
@84
== D0T#KHAL @85
END D0T#KHAL leadnon

CHAIN D0T#KHAL uptothisnon
@86
== JAHEI25J @87
== D0T#KHAL @88
END D0T#KHAL leadnon


CHAIN D0T#KHAL romstart
@52
= @53
== JAHEI25J @54
== D0T#KHAL @55
== JAHEI25J @56
== D0T#KHAL @57
END
++ @3 + defeatrom
++ @4 EXTERN JAHEI25J jaheira-mean
++ @5 + hadnotbeenrom
++ @58 + shortwhile

CHAIN D0T#KHAL shortwhile
@66
== JAHEI25J @89
END D0T#KHAL main2

CHAIN D0T#KHAL defeatrom
@59
== JAHEI25J @90
END D0T#KHAL main2

CHAIN JAHEI25J jaheira-mean
@91
== D0T#KHAL @62
== JAHEI25J @92
END D0T#KHAL main2

CHAIN D0T#KHAL hadnotbeenrom
@64
== JAHEI25J @93
END D0T#KHAL main2

CHAIN D0T#KHAL main2
@68
== JAHEI25J @94
== D0T#KHAL @95
== JAHEI25J @96
= @97
= @72
== D0T#KHAL @73
= @74
END
++ @75 + onelastrom
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @76 DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ + togetheragainrom
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @98 DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ + togetheragainrom
++ @77 EXTERN JAHEI25J jah-mushyrom
++ @78 + uptothisrom

CHAIN JAHEI25J enough
@99
= @100
== D0T#KHAL @101
END D0T#KHAL leadrom

CHAIN D0T#KHAL leadrom
@102
== JAHEI25J @103
== D0T#KHAL @104
END
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT

CHAIN JAHEI25J jah-mushyrom
@105
== D0T#KHAL @85
END D0T#KHAL leadrom

CHAIN D0T#KHAL uptothisrom
@86
== JAHEI25J @87
== D0T#KHAL @88
END D0T#KHAL leadrom







/*IF ~NumTimesTalkedTo(0)~ THEN BEGIN Khalid1
SAY ~Khalid will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Khalid2
IF ~~ THEN REPLY ~No.~ GOTO Khalid3
IF ~~ THEN REPLY ~Enemy.~ GOTO Khalid4
IF ~~ THEN REPLY ~Damage.~ GOTO Khalid5
END

IF ~~ THEN BEGIN Khalid2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseKhalid","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Khalid3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Khalid4
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

IF ~~ THEN BEGIN Khalid5
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
