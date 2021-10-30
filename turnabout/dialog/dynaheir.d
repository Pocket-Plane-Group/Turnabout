BEGIN D0T#DYNA

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Dynaheir1
SAY ~Thy called?~
= ~<CHARNAME>?! What magic is this that hast summoned me to this living plane once again?~
++ ~I will not go into particulars, Dynaheir. Suffice it to say that I need your help in the battle to come.~ + dyna2
++ ~I'll have no fool questions from you! "Thou" will fight under my leadership lest I kick your sorry buttocks back into the deathplane!~ + dyna3
++ ~It is good to see you, Dynaheir, but I must ask a favor. I need your services in the battle to come.~ + dyna2
END

IF ~~ dyna2
SAY ~A battle? Thy hast drawn me from death to aid thee in a battle? My guess is that thou considers thine own need greater than my peace in death.~
++ ~Call it payback, Dynaheir. I rescued you from the gnoll stronghold and you must now help me fight my foe.~ + dyna9
++ ~You won't have much peace in death if Amelyssan wins, Dynaheir. She wishes to take Bhaal's power and become a goddess--the new Lord of Murder!~ + dyna10
END

IF ~~ dyna3
SAY ~Thy words are rank and foul. Thou hast surely turned to rot in my absence. I see no reason to aid thee.~
++ ~I have no use for a rebellious weakling. Die once again, Dynaheir!~ + dyna4
++ ~Ever the judge you were, Dynaheir, though never a wise one. You consider me rotten? Look to my enemy and you will see who is rank and foul.~ + dyna8
++ ~Do you have no sense of loyalty? I risked my life for you once at the gnoll stronghold when I knew nothing of you. Justice dictates that you must aid me in return.~ + dyna9
END

IF ~~ dyna4
SAY ~'Tis almost a pleasure to return to death. What has happened to thee, <CHARNAME>, that thou hast become so despicable? Nay--I do not care. Leave me in peace, and take this for thy insolence!~
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
SAY ~What art thou saying?~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I hold the strings to your existence, and your second chance at life. If you join me in battle I will resurrect you.~ + dyna7
++ ~You would not be here now except for me. Even now I can choose to banish you back to the deathplane if you don't do exactly what I tell you.~ + dyna6
END

IF ~~ dyna6
SAY ~That thou would barter so carelessly with my very life proves that thou is evil to the core. Power hast spoilt thee, <CHARNAME>, more than I can say.~
= ~'Tis not thee that controls my death--it is my choice. Leave me to my peace.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ dyna7
SAY ~Resurrect me? Thou... thou has grown powerful indeed if thou can cheat death. Thy offer...~
= ~Nay, tis unthinkable! Thou hast clearly become darker in thy purpose, if thy appearance is to be judged.~
++ ~True enough. And if you are as smart as you claim to be, you will listen to my orders, because whether you live or die is up to me.~ + dyna6
++ ~I do not deny that I am no longer the <CHARNAME> you once knew. You always claimed to be wiser than the rest of us mortals and half-gods, Dynaheir. Use your wisdom in your choice.~ + dyna13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~It was a necessity, Dynaheir, if I was to survive. You too can survive this if you aid me. If you do not, I will give you no second chance at life.~ + dyna6
++ ~It was a necessity, Dynaheir, if I was to survive. You too can survive this if you aid me. If you do not, I fear I may be lost.~ + dyna13
END

IF ~~ dyna8
SAY ~And who is thy enemy? Thou made many enemies in our travels along the Sword Coast, some of whom I would not have classed so.~
++ ~Her name is Amelyssan and she has betrayed her own god. She seeks to ascend to the Throne of Bhaal and together we will not let her!~ + dyna10
++ ~Her name is Amelyssan, a former priestess of Bhaal. She has waged war on all Bhaalspawn and only I stand between her and the Throne of Bhaal.~ + dyna10
++ ~Amelyssan has used me ill in her lust for power. Her lies and deceit led me to slay my Bhaalspawn brethren... and now only I stand between her and the Throne of Bhaal.~ + dyna10
END

IF ~~ dyna9
SAY ~Thou measures thy favors most oddly, <CHARNAME>. Hast thou forgotten my aid in the fight against thy brother Sarevok?~
++ ~Aid most appreciated. Yet even Sarevok at his worst could not be compared with the evil of our enemy.~ + dyna8
++ ~I would never forget your aid, for it was crucial to my victory. My hope was that you would repeat your efforts against this new foe.~ + dyna8
IF ~InParty("Sarevok") !Dead("Sarevok")~ GOTO dyna12
END

IF ~~ dyna10
SAY ~So your foe is Amelyssan? It would seem I must choose to fight for one of two evils, <CHARNAME>, for thou too will ascend to Bhaal's power if thy path has continued as it did when I fought by your side in Baldur's Gate.~
= ~Who is to say that Amelyssan would not use her power more wisely than thee?~
++ ~Just look at her, woman! The mad, glittering eyes, the crazed stance, the way her hands claw for power!~ + dyna11
++ ~I have no wish to ascend to Bhaal's throne. You should know this after our travels together. My only wish is to vanquish this threat and nothing more.~ + dyna11
++ ~Do you not trust me? You know me, Dynaheir. You do not know Amelyssan. It should be clear who would use their powers for good.~ + dyna11
++ ~I cannot help what path fate has thrown at me. I only know that I must fight whatever forces seek to resurrect Bhaal or a semblance of his power. This I cannot do alone.~ + dyna13
END

IF ~~ dyna11
SAY ~Then thou dost not know how much thee has changed too since last we saw each other. Thou seems more... soiled since.~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~If that is how you see it, so be it. Choose between two evils, but choose well. Only one of us will grant you life after the battle.~ + dyna5
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~Think carefully about what you say. Choose not to aid me now and you will be gone forever. Choose to aid me and you might live once again.~ + dyna5
++ ~Perhaps I have lacked your good influence. Join with me, now, and ensure that I stay on the proper path.~ + dyna11a
++ ~You don't have a choice, witch! It's either be banished by my hand now or try to win my approval in battle!~ + dyna6
END

IF ~~ dyna11a
SAY ~Thy trust in me is pleasing. In truth, my debt to thee is far greater than mine service in this battle can repay.~
= ~Thus I lay what remains of mine life to your cause! Thou will find me a true ally, if not a worthy one.~
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
SAY ~Aid misspent, for thou hast restored him afore me! I cannot fathom thy thinking.~
++ ~Sarevok has changed for the better. Yet even at his worst he cannot be compared with the evil of our enemy.~ + dyna8
+ ~Global("SarevokOath","GLOBAL",1)~ + ~Sarevok has sworn an oath of loyalty to me. He is here to fight with us against this new foe.~ + dyna8
++ ~I need unusual allies in unusual times. But I covet your guidance and wisdom in this dark hour most of all.~ + dyna11a
END

IF ~~ dyna13
SAY ~When I first clapped eyes on thee I knew thou had grown in power by a magnitude I could not fathom. I expected thy arrogance had grown to match it, yet it is not so. Perhaps thou are not as great a threat as Amelyssan poses.~
++ ~Then you will aid me?~ + dyna14
++ ~A wise choice to support the wiser... you have chosen to support me, right?~ + dyna14
++ ~I knew you would support me, Dynaheir. In life, your good judgment was outdone only by your beauty.~ + dyna11a
END

IF ~~ dyna14
SAY ~Not so quickly. I would have thy promise that thou will resurrect me. While my trust in thee is greater than in Amelyssan, thou needs a watchful eye to guide thee in thy decisions in the aftermath.~
+ ~ReputationGT(Player1,16)~ + ~I will make no promise to you Dynaheir. In your wisdom, you would see this as truth and my honesty alone should be enough peace for you.~ + dyna15
+ ~OR(2) CheckStatGT(Player1,17,CHR) ReputationGT(Player1,16)~ + ~Certainly I will promise to resurrect you should we win this battle.~ DO ~SetGlobal("T#DynaDeceived","GLOBAL",1)~ + dyna16
+ ~!CheckStatGT(Player1,17,CHR) !ReputationGT(Player1,16)~ + ~Certainly I will promise to resurrect you should we win this battle.~ + dyna17
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I promise to resurrect you should we win this battle.~ DO ~SetGlobal("T#DynaPromised","GLOBAL",1)~ + dyna16
+ ~Global("D0T#AnybodyPromised","GLOBAL",1) ReputationGT(Player1,13)~ + ~I cannot give you what you ask, it has already been promised to another. Nonetheless, I need your help.~ + dyna14a
+ ~Global("D0T#AnybodyPromised","GLOBAL",1) ReputationLT(Player1,14)~ + ~I cannot give you what you ask, it has already been promised to another. Nonetheless, I need your help.~ + dyna14b
END

IF ~~ dyna14a
SAY ~Thee strikes a hard bargain with nothing to give. Yet for friendship's sake, I cannot deny thee.~
= ~Thus I lay what remains of mine life to your cause! Thou will find me a true ally, if not a worthy one.~
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
SAY ~Thee hast not shown thyself to be worthy of such a boon.~
= ~Our acquaintance ends here, and my hope is that it end forever!~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END


IF ~~ dyna15
SAY ~I know not why, but thy words please me more than a promise could. I will aid thee.~
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
SAY ~Thou "will" promise? Come, <CHARNAME>, thou cannot fool me so easily! Thou must promise honestly or make no promise at all.~
++ ~I am tired of haggling with you, witch! Your demands are too great and the thought of you staying around to guide me is more than I can bear! Wag your tongue in the deathplane where I cannot hear you!~ + dyna18
++ ~Very well. I promise that I will resurrect you should we win this battle.~ DO ~SetGlobal("T#DynaPromised","GLOBAL",1)~ + dyna16
++ ~I am sorry, Dynaheir, but you ask too much. I had hoped our happy times together, accented by your great wisdom, might be sufficient to earn your favor.~ + dyna17a
END

IF ~~ dyna17a
SAY ~Perhaps thy might have bent mine ear with such talk afore thy attempt at deception. Thee cannot be trusted, and I shall take my leave now.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ dyna18
SAY ~To think thou nearly had my loyalty! It concerns me not whether Amelyssan wins or you do--in either case, the Throne of Bhaal will doom Faerun once again.~
= ~Our acquaintance ends here, and my hope is that it end forever!~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

CHAIN D0T#DYNA dyna16
~Then I hold thee to that promise. Thou will find me a loyal companion, as I hope too find thee loyal to thy promise.~
== D0T#DYNA IF ~InParty("Minsc") !InParty("Edwin")~ THEN ~What... Minsc too? I am happy to see thee hale, Minsc. 'Tis surely a good omen if thou art in <CHARNAME>'s party.~
== D0T#DYNA IF ~InParty("Minsc") !InParty("Edwin")~ THEN ~Oh. I see thou still possesses thy rodent.~
== D0T#DYNA IF ~!InParty("Minsc") InParty("Edwin")~ THEN ~The Red Wizard is in thy party? Though I suppose his company is no more foul than some I have met in the deathplane... I will tolerate his presence for now.~
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc")~ THEN ~Minsc and Boo are happy to see you Dynaheir! And protect you! Yes, protect! Much protection, so much so that you forget what has happened before!~
== D0T#DYNA IF ~InParty("Minsc") InParty("Edwin")~ THEN ~I see too that the Red Wizard still fouls us with his presence. I cannot fathom thy reasoning, <CHARNAME>, though I will bow to it for now.~
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


