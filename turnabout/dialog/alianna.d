BEGIN D0T#ALIA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Alianna1
SAY ~This place... the Throne of Bhaal. Has the time come? My Lord of Murder, resurrected at last!~ [PGALIA13]
+ ~Gender(Player1, FEMALE)~ + ~I need your help. I need you to fight for my life. Will you? Please?~ + AskMommaNicelyGirl
+ ~Gender(Player1, MALE)~ + ~I need your help. I need you to fight for my life. Will you? Please?~ + AskMommaNicelyBoy
++ ~No greeting? Don't you recognize me? I am <CHARNAME>.~ + DoesMyMommaLuvMe
++ ~No, Mother, I brought you here, not Bhaal. Know this: my father is dust. He can no longer be resurrected, only replaced.~ + TellMommaTheTruth
++ ~I don't have a lot of time, Mother. I brought you out of the Abyss, out of death. I have that power. I need you to fight for me. You WILL fight for me. You owe me that much.~ + BabysKindaBitter
++ ~Opposition has risen against Bhaal's resurrection! You must act, Mother. You must fight with me to defeat my father's betrayer, else Bhaal will not return!~ + BabysMisleading
END

IF ~~ THEN BEGIN AskMommaNicelyGirl
SAY ~Fight for your life? You are an infant no more, <CHARNAME>. I would not spare you for your mewling then.~
= ~And now? My daughter fully grown should be able to fight for her own life. Where is you father's fire? You have not denied it, have you?~
++ ~Have you no compassion? Will you not simply help me because I am your daughter?~ + UhNo
++ ~I am a Bhaalspawn. I could hardly ignore the essence within me. Listen, Mother, for I have little time. My father is dust. He can no longer be resurrected, only replaced.~ + TellMommaTheTruth
++ ~You waste time! Opposition has risen against Bhaal's resurrection! You must act, Mother. You must fight with me to defeat my father's betrayer, else Bhaal will not return!~ + BabysMisleading
++ ~You would lecture me? I should have known better than to bring you here. You belong to the Abyss.~ + ByeMommy
END

IF ~~ THEN BEGIN AskMommaNicelyBoy
SAY ~Fight for your life? You are an infant no more, <CHARNAME>. I would not spare you for your mewling then. And now?~
= ~My son fully grown should be able to fight for his own life. Where is you father's fire? You have not denied it, have you?~
++ ~Have you no compassion? Will you not simply help me because I am your son?~ + UhNo
++ ~I am a Bhaalspawn. I could hardly ignore the essence within me. Listen, Mother, for I have little time. My father is dust. He can no longer be resurrected, only replaced.~ + TellMommaTheTruth
++ ~You waste time! Opposition has risen against Bhaal's resurrection! You must act, Mother. You must fight with me to defeat my father's betrayer, else Bhaal will not return!~ + BabysMisleading
++ ~You would lecture me? I should have known better than to bring you here. You belong to the Abyss!~ + ByeMommy
END

IF ~~ THEN BEGIN UhNo
SAY ~Murder has no compassion. You are not your father's child to beg for such.~
IF ~~ THEN GOTO ByeMommy
END

IF ~~ THEN BEGIN ByeMommy
SAY ~So be it. Cut the cord, and send me back to hell!~
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
SAY ~<CHARNAME>, my child. Of course I know you. Did the solars not pull me from the torments of the Abyss so that I might speak of your past? No respite, no rest. I did not think I would see you again.~
=
~But why are we reunited here? Does my Lord Bhaal require some service? Name it!~
+ ~Gender(Player1, FEMALE)~ + ~I need your help. I need you to fight for my life. Will you? Please?~ + AskMommaNicelyGirl
+ ~Gender(Player1, MALE)~ + ~I need your help. I need you to fight for my life. Will you? Please?~ + AskMommaNicelyBoy
++ ~I brought you here, not Bhaal. My father is dust. He can no longer be resurrected, only replaced.~ + TellMommaTheTruth
++ ~I don't have a lot of time, Mother. I brought you out of the Abyss, out of death. I have that power. I need you to fight for me. You WILL fight for me. You owe me that much.~ + BabysKindaBitter
++ ~You must act, Mother. Opposition has risen against Bhaal's resurrection! You must fight with me to defeat my father's betrayer, else Bhaal will not return!~ + BabysMisleading
END

IF ~~ THEN BEGIN TellMommaTheTruth
SAY ~My Lord is no more? No! It cannot be over. I did not raise my knife against you for the act to be meaningless. I did not die so that my god would moulder adrift in a void! My sacrifice...?! My suffering...?!~
=
~Who has done this? Who has stolen your father's triumph over death? We will make them suffer, my child. In the name of Bhaal, they shall be obliterated!~
++ ~It was Amelyssan the Blackhearted. She would take Bhaal's essence for her own and seize the Throne of Blood. She seems to have the ability to summon her dead allies, as do I. That is how I called you here. We are all that stands between her and victory. Will you fight for me, Mother?~ + YesButDeathSucks
++ ~I was born in the name of Bhaal. You would have sacrificed me in the name of Bhaal. You were slain, acting in the name of Bhaal. Isn't it about time you found some other motivation, Mother? Fight for me. Fight to prevent the Throne from unleashing another immortal psychopath on the land!~ + WhyBabykins
++ ~Your suffering is but one tear in an ocean. I cannot recall the last person I met who had not suffered in some part because of Bhaal's legacy! Let us end it here. Bhaal is dead. Let us bury him with our victory.~ + DadsDeadLetsKickAss
END

IF ~~ THEN BEGIN WhyBabykins
SAY ~Why would I want to do that? No, I see. Your miserable morality is coming into focus. You... you have delusions of righteousness!~
=
~Hate feeds the world, my child. Without violence, without death, mortals could not comprehend that they are lucky to see each sunrise. You would squander the meaning of existence on fear: fear of murder's return, fear of a malevolent priestess...~
=
~You are not your father's child to wish for such. I want no part of this.~
IF ~~ THEN GOTO ByeMommy
END

IF ~~ THEN BEGIN DadsDeadLetsKickAss
SAY ~Yes. We shall bury him with a victory. We, the pallbearers, will turn the suffering to those who have brought us to this wake.~
IF ~~ THEN GOTO YesButDeathSucks
END

IF ~~ THEN BEGIN YesButDeathSucks
SAY ~Yes, but before we draw blood, I must ask a question.~
=
~You awoke me from death, <CHARNAME>, but I am not alive. When this deed is done, and Amelyssan's carcass lies at our feet, you will taste the sweet succor of conquest, and you will have your life.~
= ~I will have only an endless sufferance as I am cast once more into the pits of the Abyss. Godless. Without purpose. Without Bhaal.~
=
~I do not want to go back. Not like that. You, my child. You are nearly the divine power that your father was. You have brought me this far, reviving my form and voice, but do you have the power to grant me true rebirth? If you do, release me from the Hells!~
++ ~And come full circle? I do not know, Mother. I shall have to answer such questions once we have survived the battle ahead.~ DO ~SetGlobal("T#AliaMaybe","GLOBAL",1)~ + MommysSatisfied
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I promise that I will spare you that fate, Mother. I will bring you back to life.~ DO ~SetGlobal("T#AliaPromised","GLOBAL",1)~ + MommyPleased
++ ~Why should I give you such a blessing? You are only my "mother" in a vile corruption of the word. I was never more than a tool to you, a lamb to lead to slaughter.~ + MommyLamb
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I cannot resurrect you, Mother. It is not within my power.~ DO ~SetGlobal("PGLiedToAlianna2", "GLOBAL", 1)~ + MommyResigned
+ ~Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I cannot resurrect you, Mother. It is not within my power.~ + MommyResigned
END

IF ~~ THEN BEGIN MommysSatisfied
SAY ~Then I will be satisfied to wait, for survive we will. Have no doubt, my deadly child. No doubt whatsoever, my precious spawn of Bhaal.~
IF ~~ THEN GOTO MommyHunters
END

IF ~~ THEN BEGIN MommyPleased
SAY ~You honor me, my child, as I will honor you with the blood of all who would oppose your destiny and the will of Bhaal!~
IF ~~ THEN GOTO MommyHunters
END

IF ~~ THEN BEGIN MommyHunters
SAY ~We are not lambs for the slaughter, you and I. We are the hunters--the cold toll of the grave, the hands stained with blood, the screams of the broken--these are our weapons. Come, our prey beckons!~
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
SAY ~Much as you need a lamb for the slaughter now? I see your calculation, <CHARNAME>. Your hatred of me, your fury... the hunter is strong within you!~
= ~Yes! You are your father's deadly child! For that, I will not punish you for your disrespect. Come, our prey beckons!~
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
SAY ~I had hoped for more, but no matter. What is life but a brief delusion between nothingness and decay? Death shall be my gift to you. Death to all who would oppose my child's destiny and the will of Bhaal!~
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
SAY ~I owe you? That depends.~
++ ~That depends?! I summoned you from death, and you have to think about it?!~ + DeathSucks
++ ~Depends on what?~ + WhoAreYouFighting
++ ~You would have taken my life! Damn right you owe me! And for what? Bhaal is dust. He can no longer be resurrected, only replaced.~ + TellMommaTheTruth
++ ~I knew it. I should not have chosen you. You belong to the Abyss!~ + ByeMommy
++ ~Depends? You must act, Mother! Opposition has risen against Bhaal's resurrection. You must fight with me to defeat my father's betrayer!~ + BabysMisleading
END

IF ~~ THEN BEGIN DeathSucks
SAY ~You awoke me from death, <CHARNAME>. I feel a craving I never would have imagined--to be more than a corpse, more than a tale murmured in a dream. You awoke me from death, my child, but I am not alive.~
=
~I will not be alive. When this deed is done, and your foes' carcasses lie at our feet, you will taste the sweet succor of conquest, and you will have your life. I will have only an endless sufferance as I am cast once more into the pits of the Abyss.~
=
~You are nearly the divine power that your father was, poised here to battle for your existence. You have brought me this far, reviving my form and voice, but do you have the power to grant me true rebirth? If you do, release me from the Hells! Release me!~
++ ~And come full circle? I do not know, Mother. I shall have to answer such questions once we have survived the battle ahead.~  DO ~SetGlobal("T#AliaMaybe","GLOBAL",1)~ + MommysSatisfied
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I promise that I will spare you that fate, Mother. I will bring you back to life.~ DO ~SetGlobal("T#AliaPromised","GLOBAL",1)~ + MommyPleased
++ ~Why should I give you such a blessing? You are only my "mother" in a vile corruption of the word. I was never more than a tool to you, a lamb to lead to slaughter.~ + MommyLamb
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I cannot resurrect you, Mother. It is not within my power.~ DO ~SetGlobal("PGLiedToAlianna2", "GLOBAL", 1)~ + MommyResigned
+ ~Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I cannot resurrect you, Mother. It is not within my power.~ + MommyResigned
END

IF ~~ THEN BEGIN WhoAreYouFighting
SAY ~Who are you fighting? I know where we are, and I will not oppose the will of Bhaal, not for you. You should know this by now, my child.~
++ ~I battle Amelyssan the Blackhearted. She would take Bhaal's essence for her own and seize the Throne of Blood. We are all that stands between her and ascension. Is that good enough for you, Mother? Will you fight for me? Will you fight for Bhaal?~ DO ~SetGlobal("PGLiedToAlianna1", "GLOBAL", 1)~ + YesImASucker
++ ~I know that I should have never chosen to bring you here. I will not justify myself to you. Begone! You belong to the Abyss!~ + ByeMommy
++ ~I battle Amelyssan the Blackhearted. She has betrayed Bhaal. She would steal all his essence to become a god in his stead. You must understand that Melissan is the only one who knows the secrets of Bhaal's resurrection. My father is lost to the dust. He will never return, and we are all that stands between Melissan and her victory. Will you fight for me, Mother? Just me?~ + YesBabykins
END

IF ~~ THEN BEGIN YesImASucker
SAY ~There is no deed so dank and dark that I would not gladly swim the mire to serve my Lord of Murder. For Bhaal, I shall wield my rancor incarnate against all who would dare deny his blood its destiny!~
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
SAY ~Bhaal... is lost? NO! No...~
=
~Yes, my child. For you, I will fight. For you, I shall wield my rancor incarnate against all who would dare deny our blood its destiny!~
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
SAY ~No! Who would dare?! Who would dare try to steal your father's triumph over death? We will make them suffer, my child. In the name of Bhaal, they shall be obliterated!~
++ ~It was Amelyssan the Blackhearted. She would take Bhaal's essence for her own and seize the Throne of Blood. We are all that stands between her and ascension. Will you fight for me, Mother? Will you fight for Bhaal?~ DO ~SetGlobal("PGLiedToAlianna1", "GLOBAL", 1)~ + YesImASucker
++ ~Amelyssan the Blackhearted is the traitor. She would take Bhaal's essence for her own and seize the Throne of Blood, but as she is the only one who knows the secrets of Bhaal's resurrection, you must understand that my father is lost to the dust. We are all that stands between Melissan and victory. Will you still fight for me, Mother? Just me?~ + YesBabykins
END


I_C_T FINMEL01 8 PGMommyGloating
== D0T#ALIA  IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING)~ THEN
~You will die first, fool. Forever to be known as Amelyssan the Heretic, Amelyssan the Defeated! By my child's hand you sputter and fall, as you should.~ [PGALIA15]
END

I_C_T FINSOL01 7 PGMommyBossesImoen
== D0T#ALIA  IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING)~ THEN
~You will release the essence, Imoen. You will entrust it to my child. It was always meant for a destiny greater than yours.~ [PGALIA16]
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
