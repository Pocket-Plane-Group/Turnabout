BEGIN D0T#XZAR

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Xzar1
SAY ~Eh? <CHARNAME>? What are you doing here?~
= ~Cursed? Banished? A little sight-seeing? Dead, like me?~
= ~No. Not dead. Not from what I recall of the terms of your heritage.~
++ ~I am not "there", wherever you were. I have summoned you to me.~ + block14
++ ~Look about you, necromancer. You are at a fount of the power of a god.~ + block15
++ ~No, not dead. And neither are you now; by the power of my summons.~ + block16
+ ~OR(2) !Dead("Lyros") !GlobalGT("LyrosJob","GLOBAL",1)~ + ~I am merely curious how you came to die. You were hale and well, terrorizing Athkatla when last I saw you.~ + block17
END

IF ~~ block14
SAY ~Wherever I happen to be *is* "here" as far as I am concerned.~
= ~Is there anything else? Do you wish someone killed? You usually do.~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I am fighting for the godly power of my dead father. Aid me now and I shall be generous in return when the power is mine.~ + block18
++ ~I have slain all my brothers and sisters who would claim the power of our father. Now, only yon twice-false priestess stands between me and my inheritance. I command your assistance for this battle.~ + block19
++ ~No, I thought we might reminisce about the good old days. Killing kobolds in the Nashkel mines and all. Of COURSE I need someone killed! That bitch basking in the fountain!~ + block20
++ ~That is not how I remember it... but in this case, yes, I ask your protection and aid against Amelyssan, who would kill me and take the Throne of Bhaal.~ + block19
END

IF ~~ block15
SAY ~Yes, yes. Very pretty. Awfully noisy though. Now, is there anything else? Do you wish someone killed? You usually do.~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I am fighting for the godly power of my dead father. Aid me now and I shall be generous in return when the power is mine.~ + block18
++ ~I have slain all my brothers and sisters who would claim the power of our father. Now, only yon twice-false priestess stands between me and my inheritance. I command your assistance for this battle.~ + block19
++ ~No, I thought we might reminisce about the good old days. Killing kobolds in the Nashkel mines and all. Of COURSE I need someone killed! That bitch basking in the fountain!~ + block20
++ ~That is not how I remember it... but in this case, yes, I ask your protection and aid against Amelyssan, who would kill me and take the Throne of Bhaal.~ + block19
END

IF ~~ block16
SAY ~Hmm. So I am. I mean, I am not.~
= ~A definite retrograde step upon the ladder of being but I shall forgive you the impertinence. Temporarily.~
= ~Now, is there anything else? Do you wish someone killed? You usually do.~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I am fighting for the godly power of my dead father. Aid me now and I shall be generous in return when the power is mine.~ + block18
++ ~I have slain all my brothers and sisters who would claim the power of our father. Now, only yon twice-false priestess stands between me and my inheritance. I command your assistance for this battle.~ + block19
++ ~No, I thought we might reminisce about the good old days. Killing kobolds in the Nashkel mines and all. Of COURSE I need someone killed! That bitch basking in the fountain!~ + block20
++ ~That is not how I remember it... but in this case, yes, I ask your protection and aid against Amelyssan, who would kill me and take the Throne of Bhaal.~ + block19
END

IF ~~ block17
SAY ~I was bitten by a harpersnake in the market place. Whilst shopping for endive and tomatoes, if you must know.~
= ~Now, is there anything else? Do you wish someone killed? You usually do.~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I am fighting for the godly power of my dead father. Aid me now and I shall be generous in return when the power is mine.~ + block18
++ ~I have slain all my brothers and sisters who would claim the power of our father. Now, only yon twice-false priestess stands between me and my inheritance. I command your assistance for this battle.~ + block19
++ ~No, I thought we might reminisce about the good old days. Killing kobolds in the Nashkel mines and all. Of COURSE I need someone killed! That bitch basking in the fountain!~ + block20
++ ~That is not how I remember it... but in this case, yes, I ask your protection and aid against Amelyssan, who would kill me and take the Throne of Bhaal.~ + block19
END

IF ~~ block18
SAY ~Using the power of a dead god of death? Upon one who is dead already? Really, <CHARNAME>, you must do better than that!~
IF ~~ GOTO block21
END

IF ~~ block19
SAY ~And if I refuse, what will you do? Kill me? That threat holds no terrors for the already late-and-lamented, I assure you.~
IF ~~ GOTO block21
END

IF ~~ block20
SAY ~And you, naturally, can see no way around her and so must travel straight over her corpse. Why is it that only those matters which should change are exactly the ones that never do?~
IF ~~ GOTO block21
END

IF ~~ block21
SAY ~No, no, no. Let us take stock here. The salubrious clime to which you beckoned me has had a most beneficial effect upon my thaumaturgical ability. I can feel the power creeping over me. Like lice.~
= ~I am ready then for the ultimate progression. In return for my invaluable services, I shall require of you that you raise my person to the august status of a lich.~
= ~And I would appreciate a return to Faerun while you are about it but won't insist upon that detail. No doubt I will manage that well enough on my own.~
++ ~What!?! Unleash you as a lich upon my homeland? I would never agree to anything so foul!~ + block22
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~A lich? Why, when I could restore you to life?~ + block23
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~(shrug) If that is your desire. I have slain liches enough before now.~ + block24
++ ~Perhaps we can work out some other arrangement. I haven't the power to promise that.~ + block22
END

IF ~~ block22
SAY ~Hmph! Then I don't want to play with you any more. Goodbye, you selfish infant.~
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
SAY ~You truly understand nothing, do you? Life begets only death and death is nothing.~
= ~Beyond both, partaking of both upon a higher plane, is Undeath. The great and final goal of all that is born! Of all that dies!~
= ~AND IT SHALL BE MINE!!!~
++ ~I command. You shall obey. I promise you nothing.~ + block22
++ ~Very well. If that is your desire, I shall grant it.~ DO ~SetGlobal("T#XzarPromised","GLOBAL",1) SetGlobal("T#XzarLich","GLOBAL",1)~ + block25
++ ~I do not know that Undeath lies within my power. But I shall bring you back and make the attempt if you are true.~ DO ~SetGlobal("T#XzarPromised","GLOBAL",1)~ + block26
++ ~I will give you new life. However you choose to pervert it is up to you.~ DO ~SetGlobal("T#XzarPromised","GLOBAL",1)~ + block26
END

IF ~~ block24
SAY ~Well, I'm not going to be picking fights with *you*, am I? You'll be a god and I won't. Not for a long while anyway...~
= ~Never mind that. What do you say?~
++ ~Never! I will not make so foul a bargain!~ + block22
++ ~But why a lich when I could grant you life?~ + block23
END

IF ~~ block25
SAY ~You will?!? You promise?!? I'll make you proud, I will!~
= ~And mummy!!! Won't she be surprised when I catch up with HER again!~
= ~Oh, goodie, goodie, goodie!~
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
SAY ~Hmmm. That is not entirely encouraging. Your good-faith efforts have a way of turning disastrous for your friends.~
= ~Still, I've had no better offer in eternity, so I suppose I should take up yours.~
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
