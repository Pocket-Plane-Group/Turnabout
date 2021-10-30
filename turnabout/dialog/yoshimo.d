EXTEND_BOTTOM SLILMAT 11
IF ~~ THEN DO ~SetGlobal("PGYoshimoDirtyHeart","GLOBAL",0)~ GOTO 12
END

BEGIN D0T#YOSH

IF ~NumTimesTalkedTo(0)
!PartyHasItem("MISCBU")
Global("PGYoshimoDirtyHeart","GLOBAL",0)
!Global("ButtPluggingCumBubble","GLOBAL",1)~ // Don't look at me. That's Bioware's variable, not mine!
THEN BEGIN Yoshimo1
SAY ~What is this?~
= ~Awake and yet not alive; aware and yet not anguished? It seems as though I have found restoration at your hands, <CHARNAME>.~
= ~What is this unusual place? It is even less idyllic than the scene of our last ill-fated encounter.~
++ ~This is the Throne of Bhaal. In just a few moments Amelyssan, the high priestess of Bhaal, will attempt to kill me. I intend to see to it that she fails.~ + shefails
++ ~It is the place that may free us both. Me, from harm, and you, from guilt.~ + freeus
++ ~Please, don't romanticize. This hellish plane is where the last of my kind have been brought to die so that a fiend just as dangerous as Irenicus can ascend to godhood.~ + godhood
END

IF ~~ shefails
SAY ~You need the confidence of Yoshimo to tell you that she can be stopped? I owe you much for giving me that credit, and more.~
IF ~~ GOTO main2
END

IF ~~ freeus
SAY ~In such an unlikely place? I should not doubt you. It is in moments of greatest comfort when we are most likely to lower our guard and make mistakes. In such obviously hostile surroundings, what can go wrong?~
IF ~~ GOTO main2
END

IF ~~ godhood
SAY ~These people seem quite drawn to you, <CHARNAME>. It is regrettable. I can only imagine how many others there have been, or will be hence. I do not envy you.~
= ~And even so, you have found time to consider the fate of fallen Yoshimo!~
IF ~~ GOTO main2
END

IF ~~ main2
SAY ~I must thank you for bringing my spirit peace. Yet now you have summoned me to this place between living and dying and we must face one another once more.~
= ~What boon can that bring, if matters between us have been settled and my heart is at rest?~
++ ~I know I have disturbed you, Yoshimo, but I need your help.~ + CallYoshi1
++ ~You are neither completely dead, nor completely settled, Yoshimo. You owe me for what's been done.~ + CallYoshi2
++ ~I have called you to give you a chance to redeem yourself for what happened. The gods may have forgiven you for your crimes, but this is your chance to forgive yourself.~ + CallYoshi3
++ ~You owe me, bastard. I have a battle to fight, and I have need of another blade at my side. Stand with me now, and I will consider your debt paid.~ + CallYoshi4
END

IF ~~ CallYoshi1
SAY ~It seems even death and dishonor cannot dissuade you from seeking out my services!~
= ~Now that I may speak plainly to you without fear, hear my counsel well. Why would you seek my company?~
= ~I was a traitor in your midst. Even if I am an asset on the field of battle, why should you choose to forgive my transgressions?~
+ ~Global("D0T#AnybodyPromised","GLOBAL",0)~ + ~Because I am a very understanding person. Join me now, fight for me, and I will not only forgive you but grant you new life.~ + main3
++ ~You were geased, you had no choice in the matter. If you had been able to choose who you fought for at Spellhold, I believe you would have chosen to remain at my side. Join me once more, Yoshimo. I still call you friend.~ +YoshiTalk1
++ ~I am giving you the chance to redeem yourself, Yoshimo. There is a battle ahead, and I need all the good hands I can get. Yours were some of the best. Help me, and be completely free from your past.~ + YoshiTalk2
++ ~We cannot change the past. The fact of the matter is, though, that you are one of the best swordsmen I know. I am willing to overlook what happened, because I need you now. Come with me.~ + YoshiTalk3
++ ~Who said anything about forgiveness? You owe me, Yoshimo, plain and simple. Now you are going to fight with me. Ready your sword.~ + YoshiTalk4
 END

IF ~~ CallYoshi2
SAY ~Indeed. Though my debt of honor has been paid to the gods, it seems I still have not made peace with you. What is it that you would have me do?~
+ ~Global("D0T#AnybodyPromised","GLOBAL",0)~ + ~Join me now, fight for me, and I will not only forgive you but grant you new life.~ + main3
++ ~I need you. Fight with me, as the comrades we once were. I want things to be as they should have been.~ + YoshiFight1
++ ~There's a battle coming, and I need all the help I can get. Take up your sword today, and consider your debt to me paid.~ + YoshiFight2
++ ~We might never have peace, dog of Kara-Tur, but we will be even. Fight for me. Let us be done, for good.~ + YoshiFight3
END

IF ~~ CallYoshi3
SAY ~And what monumental task do you have for me, <CHARNAME>, to regain face after so low a crime?~
+ ~Global("D0T#AnybodyPromised","GLOBAL",0)~ + ~Join me now, fight for me, and I will not only forgive you but grant you new life.~ + main3
++ ~I need you. Fight with me, as the comrades we once were. I want things to be as they should have been.~ + YoshiFight1
++ ~Battle is coming, and I need all the help I can get. Take up your sword for me now, and consider your debt to me paid.~ + YoshiFight2
++ ~I can forgive you for the crimes you have committed against me. Fight this battle, and it's over. You will be free.~ + YoshiFight4
++ ~You're right. Perhaps there is nothing you can do to make up for your mistakes. Regardless, I need you. Ready yourself for battle.~ + YoshiTalk5
END

IF ~~ CallYoshi4
SAY ~...Hai.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ YoshiTalk1
SAY ~Oh, but I was indeed the one who struck hands in a pact to betray! It was my sole mission under Irenicus' employ to befriend you and lead you to your undoing.~
= ~No excuses. I could have chosen death rather than lift my sword against you.~
= ~I could have died with what honor remained to me, but I was a coward and I did not. I thank you, <CHARNAME>, for cleansing me, but I cannot retake the place I falsely held at your side.~
= ~You are wrong to call me friend. Please, leave me be.~
++ ~Don't say that! You can't tell me if I can forgive you or not. I need your strength in this upcoming battle, and I am not letting you wallow in shame for the rest of eternity.~ + YoshiHonor1
++ ~Damn it, Yoshimo, what happened, happened. Get over it. Get out your sword and let's get moving already.~ + YoshiHonor2
++ ~Fine. You betrayed me once at Spellhold, and now you betray me again by refusing to help me. Where is your honor now?~ + YoshiHonor3
++ ~If that is what you want, then leave. Good-bye, Yoshimo.~ + asitmust
END

IF ~~ asitmust
SAY ~As it must be. Farewell.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ YoshiTalk2
SAY ~Some acts lead to deeper dishonor than can be dismissed by the wave of one <PRO_MANWOMAN>, no matter how potent or persistent.~
= ~But I cannot refuse the chance to aid you in your hour of need--not when I know that my skills are doubtless what will turn the tide in your favor!~
= ~My sword is yours, <CHARNAME>. I'm right behind you.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ YoshiTalk3
SAY ~I will go with you, then.~
= ~If this is your hour of need, then my sword will prove more valuable to you than words we could exchange over the past. Lead on.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~YoshiTalk4
SAY ~...Hai.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ YoshiTalk5
SAY ~Ahhh, persistent until the very end. Had I doubted my senses before, I am now sure this is truly you, <CHARNAME>. If you are sure, then I could not be less so.~
= ~So be it. Lead the way. My sword is yours!~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ YoshiFight1
SAY ~As they should have been? Then you would never have met the great Yoshimo, and all this would have been denied us!~
= ~I cannot fight as your comrade. A man without honor cannot be equal or friend to the one he betrayed. You could not fail to treat me with  deserved suspicion any more than I could restore my own honor.~
= ~ I am not fit to join with you.~
++ ~Yoshimo, this is ridiculous. We can argue about your honor later, but right now I need your sword.~ + YoshiSilly1
++ ~All right then. If you won't fight for the sake of friendship, fight with me to settle your debt of honor.~ + YoshiSilly2
++ ~Yoshimo, you not only owe this to yourself, but you owe this to me. Fall in line, and prepare for battle.~ + YoshiSilly3
++ ~You're right. If this is what you think of my offer of renewed friendship, then you aren't fit to travel with me. Good bye.~ + asitmust
END

IF ~~ YoshiFight2
SAY ~A man's heart is not changed by doing the same thing that he has done his whole life.~
= ~No, I cannot redeem myself by the sword, but I can be of service once more. I am not sure how or why, but I am able.~
= ~And it is the least I can do for one who once called me friend.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~YoshiFight3
SAY ~Dog? Hai. Your words ring true. Painful, but true.~
= ~So you would have the sword of a dog at your side? I do not know whether to be emboldened or disdainful.~
= ~Still, there is no honor in refusing aid to one who has gone to such lengths to seek it.~
= ~Lead on, <CHARNAME>. This dog will fight for you.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~YoshiFight4
SAY ~I do not think my honor can so easily be reclaimed, but I covet your forgiveness. So be it. I will fight with you, and when it is over, perhaps I will know true rest.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ YoshiHonor1
SAY ~I say what I know, <CHARNAME>, and words will not save me. I covet your forgiveness, and I am glad to have it, but that is not why I will fight for you.~
= ~I fight because I owe it to you. No more discussion. Let us go.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~YoshiHonor2
SAY ~You understand nothing if you seek to dismiss the past with a simple wave of your hand. There is no "getting over" what came between us.~
= ~You may force Yoshimo to listen to your words, but you cannot make me accept them. I am haunted for eternity and leave you before further damage is done. Gods take you where they will!~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ YoshiHonor3
SAY ~You... speak painful words.~
= ~But you are right. Honor is at stake and it shall not be forgotten again.~
= ~Speak no more. I will fight for you.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ YoshiSilly1
SAY ~Go away, please. You cannot dismiss my dishonor with words. I will say no more.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~YoshiSilly2
SAY ~Can a man erase the past, doing what he has always done? I think it is not so easy.~
= ~However, I will fight, because I can still be of service to you. Take me with you. My sword is yours.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~YoshiSilly3
SAY~...Hai. Lead the way.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END


IF ~~ main3
SAY ~For what purpose? I am a dead man. That will not change if blood flows through my veins once more.~
= ~Returning to the land of the living only serves to compound my shame.~
++ ~That may actually be reason enough for me to do it.~ + reasonenough
++ ~Listen to me, dog of Kara-Tur. You made one mistake. Accept my generosity, fight for me, and make your life count for something again.~ DO ~SetGlobal("T#YoshPromised","GLOBAL",1)~ + YoshiFight3
++ ~Yoshimo, you not only owe this to yourself, but you owe this to me. Fall in line, and prepare for battle and restoration.~ DO ~SetGlobal("T#YoshPromised","GLOBAL",1)~ + YoshiSilly3
++ ~Don't say that! I need your strength in this upcoming battle, and I am not letting you wallow in shame for the rest of eternity. You will have the second chance you denied existed.~ DO ~SetGlobal("T#YoshPromised","GLOBAL",1)~ + YoshiHonor1
++ ~Please, Yoshimo. Don't make me beg.~ + beg
END

IF ~~ beg
SAY ~I will not make you beg. And I will accept nothing but the task you put before me.~
= ~No second chances for traitors. Only a chance to die once more on the proper side of your blade.~
= ~Speak no more. I will fight for you.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END


IF ~~ reasonenough
SAY ~You may force Yoshimo to listen to your words, but you cannot make me accept further punishment. I am haunted for eternity and leave you before further damage is done. Gods take you where they will!~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END


IF ~NumTimesTalkedTo(0)
Global("ButtPluggingCumBubble","GLOBAL",1)~ canthavehim
/* Okay, look, people. That variable wasn't my idea. It was BioWare's way of
indicating that Yoshimo didn't go to Spellhold but died anyway when you visit
the Coronet in Chapter 6. So don't send me any e-mail about how I'm corrupting
your grandmother with my variables. It's not my fault! */
SAY ~You must be desperate indeed to call a failed traitor to your side. Yoshimo has nothing for you. I died in exquisite anguish and I persist in eternal torment.~
= ~There is only... pain.~
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

IF ~NumTimesTalkedTo(0)~ yoshuncleansed
SAY ~Ahhh... my desperate friend, growing more desperate by the hour to call a fiend such as Yoshimo from beyond the grave.~
= ~Whatever it is you seek, I cannot grant it. I know nothing but the end of my life and how I came to it.~
= ~No second chances. No second chances. No second chances. No--~
++ ~Yoshimo, listen to me. This is the Throne of Bhaal. In just a few moments Amelyssan, the high priestess of Bhaal, will attempt to kill me. I intend to see to it that she fails.~ + nonfails
++ ~I intend to set your spirit free, Yoshimo. I want to give you a second chance to serve me now as I know you wanted to at Spellhold...~ + spiritfree
++ ~Concentrate! I need your blade drawn and sharp for the deadliest battle we have ever faced. Will you stand with me, old friend?~ + oldfriend
++ ~Yoshimo! Yoshimo, it is me, <CHARNAME>! Give me a sign that you understand me!~ + giveme
END

IF ~~ spiritfree
SAY ~There is no freedom, <CHARNAME>. Only pain.~
IF ~~ GOTO main2non
END

IF ~~ oldfriend
SAY ~I cannot stand, <CHARNAME>. I cannot stand anything.~
IF ~~ GOTO main2non
END

IF ~~ giveme
SAY ~I cannot give you anything now except... pain.~
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

IF ~~ nonfails
SAY ~How you are not dead even now, I do not know. But if even Yoshimo cannot topple you, perhaps you are invincible.~
IF ~~ GOTO main2non
END

IF ~~ main2non
SAY ~I burn, <CHARNAME>. I burn and expire a thousand times over. There is nothing left of me. Ilmater did not wash away my crimes.~
= ~No second chances. No second chances. No...~
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



/*
SAY ~Yoshimo will join you?~
IF ~~ THEN REPLY ~Yes.~ GOTO Yoshimo2
IF ~~ THEN REPLY ~No.~ GOTO Yoshimo3
IF ~~ THEN REPLY ~Enemy.~ GOTO Yoshimo4
IF ~~ THEN REPLY ~Damage.~ GOTO Yoshimo5
END

IF ~~ THEN BEGIN Yoshimo2
SAY ~Okay.~
IF ~Difficulty(EASIEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif1",Myself)
Ally()~ EXIT
IF ~Difficulty(EASY)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif2",Myself)
Ally()~ EXIT
IF ~Difficulty(NORMAL)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif3",Myself)
Ally()~ EXIT
IF ~Difficulty(HARD)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif4",Myself)
Ally()~ EXIT
IF ~Difficulty(HARDEST)~ THEN DO ~SetGlobal("T#RaiseYoshimo","GLOBAL",2)
ApplySpellRES("d0t#dif5",Myself)
Ally()~ EXIT
END

IF ~~ THEN BEGIN Yoshimo3
SAY ~Okay.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ THEN BEGIN Yoshimo4
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

IF ~~ THEN BEGIN Yoshimo5
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
