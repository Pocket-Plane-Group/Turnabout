BEGIN D0T#XZAR

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Xzar1
SAY @0
= @1
= @2
++ @3 + block14
++ @4 + block15
++ @5 + block16
+ ~OR(2) !Dead("Lyros") !GlobalGT("LyrosJob","GLOBAL",1)~ + @6 + block17
END

IF ~~ block14
SAY @7
= @8
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @9 + block18
++ @10 + block19
++ @11 + block20
++ @12 + block19
END

IF ~~ block15
SAY @13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @9 + block18
++ @10 + block19
++ @11 + block20
++ @12 + block19
END

IF ~~ block16
SAY @14
= @15
= @16
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @9 + block18
++ @10 + block19
++ @11 + block20
++ @12 + block19
END

IF ~~ block17
SAY @17
= @16
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @9 + block18
++ @10 + block19
++ @11 + block20
++ @12 + block19
END

IF ~~ block18
SAY @18
IF ~~ GOTO block21
END

IF ~~ block19
SAY @19
IF ~~ GOTO block21
END

IF ~~ block20
SAY @20
IF ~~ GOTO block21
END

IF ~~ block21
SAY @21
= @22
= @23
++ @24 + block22
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @25 + block23
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + @26 + block24
++ @27 + block22
END

IF ~~ block22
SAY @28
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

IF ~~ block23
SAY @29
= @30
= @31
++ @32 + block22
++ @33 DO ~SetGlobal("T#XzarPromised","GLOBAL",1) SetGlobal("T#XzarLich","GLOBAL",1)~ + block25
++ @34 DO ~SetGlobal("T#XzarPromised","GLOBAL",1)~ + block26
++ @35 DO ~SetGlobal("T#XzarPromised","GLOBAL",1)~ + block26
END

IF ~~ block24
SAY @36
= @37
++ @38 + block22
++ @39 + block23
END

IF ~~ block25
SAY @40
= @41
= @42
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ block26
SAY @43
= @44
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END


/*
SAY ~Xzar will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Xzar2
IF ~~ THEN REPLY ~No.~ GOTO Xzar3
IF ~~ THEN REPLY ~Enemy.~ GOTO Xzar4
IF ~~ THEN REPLY ~Damage.~ GOTO Xzar5
END

IF ~~ THEN BEGIN Xzar2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseXzar","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Xzar3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Xzar4
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

IF ~~ THEN BEGIN Xzar5
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
