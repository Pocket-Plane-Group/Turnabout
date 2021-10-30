BEGIN D0T#GORI

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Gorion1
SAY ~Well, well. It is good to see you, my <PRO_GIRLBOY>.~
++ ~Hello, Gorion. I have been waiting a long time to see you again.~ + waiting
++ ~Let us dispense with the pleasantries and stop pretending we ever liked one another. I need your help, and I need it quickly.~ + everliked
+ ~InParty("Sarevok")~ + ~That is all? That is all you have to say to me?~ + isall
+ ~!InParty("Sarevok")~ + ~That is all? That is all you have to say to me?~ + isall2
++ ~Father, I... oh, Father, I need your help more than I ever have before!~ + needhelp
END

IF ~~ everliked
SAY ~(sigh) You were always impossible to please. Whatever I could provide, it was never enough. Whatever you wanted, there would always be something more.~
= ~My help, you say? Very well. Dig into your teachings, and summarize the situation for me plainly.~
++ ~I require your aid. The savage high priestess of Bhaal plans to destroy me and take the celestial place he intended to return to. That includes killing me.~ + canthave
++ ~Oh no. Not before we have this out. Why did you never tell me the truth of who I was, and what that would mean to me and everyone I could ever care for?~ + telling
++ ~I am the strongest Bhaalspawn who yet lives. We are at the Throne of Bhaal where Amelyssan plans to kill us all as part of her mad scheme to become a goddess. You can help me stop her.~ + stopher
END

IF ~~ stopher
SAY ~Succinct and to the point.~
IF ~~ GOTO main2
END

IF ~~ canthave
SAY ~We certainly cannot have that, then.~
IF ~~ GOTO main2
END

IF ~~ waiting
SAY ~Time, yes... time. There never was enough time. So tell me, <CHARNAME>. What shall we do with whatever time we are granted in this place?~
++ ~Time certainly was a problem, you goat. Twenty years and you never found the time to tell me the truth!~ + telling
++ ~I want to tell you everything... everything that has happened since we rushed out of Candlekeep what feels like a lifetime ago. But I can't do that now. All I can say is that my life is in danger and I need your help!~ + needhelp
++ ~I require your aid. The savage high priestess of Bhaal plans to destroy me and take the celestial place he intended to return to. That includes killing me.~ + canthave
END


IF ~~ donothelp
SAY ~And so Bhaal's legacy has endured as long as he had hoped... and endangered you for as long as I had feared.~
IF ~~ GOTO main2
END

IF ~~ known
SAY ~And if you had, what would that have changed? Would you have made the same mistakes Sarevok made, he who knew more of his upbringing than you but lacked the wisdom to temper his panic?~
= ~Would you have killed yourself out of despair, as some of the other Children did? Or confided in the wrong people and been killed out of prejudice or fear?~
= ~I raised you to be strong enough, smart enough, and flexible enough to survive. And you did!~
++ ~No thanks to you.~ + nothanks
++ ~You are right. Forgive me, Father. I have been under a lot of pressure lately, to say the least.~ + needhelp
++ ~Enough debate. I did not call you to praise you or condemn you, but simply because I need your help. You are my last chance.~ + lastchance
END

IF ~~ lastchance
SAY ~I appreciate your honesty, if not your tone.~
= ~Tell me, then, what you feel I must be part of for your own good.~
++ ~I require your aid. The savage high priestess of Bhaal plans to destroy me and take the celestial place he intended to return to. That includes killing me.~ + canthave
++ ~This was a mistake. Go back to where you came from.~ + goback
END


IF ~~ goback
SAY ~Only with a heavy heart, <CHARNAME>. Only with a heavy heart.~
= ~Farewell, my child. I wish this could have been different.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ needhelp
SAY ~Calm yourself, now. Be at peace. You have faced many challenges without my aid. If you say you need me, then I believe you. Tell me more, if you feel it necessary.~
= ~Or just hold my hand as you did once as a <PRO_GIRLBOY> if it will make you feel better--ah, forgive me, but that may not be as effective here as once it was, in my condition.~
++ ~Please... I am at the end of my rope and the end of my strength. Amelyssan means to destroy me and ascend to Bhaal's place. She must be stopped!~ + main2
++ ~I am better, thank you, Father. But I am still in grave danger and need your aid and counsel. Amelyssan and her minions will destroy me to serve her diabolical ends, unless I have your aid.~ + main2
++ ~First, explain to me why you never told me the truth about who and what I am!~ + telling
END

IF ~~ isall2
SAY ~I had thought that after so many brushes with shadows, whispers, and false insinuations of me, you might be happy to do the talking for a change.~
++ ~You know about that? The visions, the false spectres?~ + visions
++ ~I would. You never gave me a chance to talk to you, knowing the truth of who I was.~ + truth
++ ~But that isn't how you like things, is it? You kept me in the dark, and in danger, until the very end. Always telling, never listening.~ + telling
++ ~I never did have a chance to thank you properly for what you did for me... for a spawn of Bhaal. I wish there were time to tell you everything I have learned and done since I lost you.~ + lostyou
END

IF ~~ isall
SAY ~I could say something about your apparent choice in friends, but this old man knows that in strange circumstances, in strange places, anybody can be a welcome bedfellow.~
= ~Besides, I had thought that after so many brushes with shadows, whispers, and false insinuations of myself, you might be happy to do the talking for a change.~
++ ~You know about that? The visions, the false spectres?~ + visions
++ ~I would. You never gave me a chance to talk to you, knowing the truth of who I was.~ + truth
++ ~But that isn't how you like things, is it? You kept me in the dark, and in danger, until the very end. Always telling, never listening.~ + telling
++ ~I never did have a chance to thank you properly for what you did for me... for a spawn of Bhaal. I wish there were time to tell you everything I have learned and done since I lost you.~ + lostyou
END

IF ~~ lostyou
SAY ~No thanks are necessary, my child. Watching you grow, guiding you, was thanks enough. But how I wish we had time for everything we lost.~
= ~I had such plans for us, <CHARNAME>, when we could face one another as equals and you knew of your secret past. But it was not to be. And with my body long gone, it is never to be.~
= ~I take some comfort knowing that at long last you face the real me, or what is left of me. Not some false shadow--oh yes, I know of them.~
IF ~~ GOTO visions
END


IF ~~ visions
SAY ~I see them as echoes, I feel them in... well, what passes for my bones. Rather like someone walking over my grave, which it may well be.~
= ~So tell me what you must, <CHARNAME>. I am listening.~
++ ~I require your aid. The savage high priestess of Bhaal plans to destroy me and take the celestial place he intended to return to. That includes killing me.~ + canthave
++ ~Please... I am at the end of my rope and the end of my strength. Amelyssan means to destroy me and ascend to Bhaal's place. She must be stopped!~ + main2
++ ~First, explain to me why you never told me the truth about who and what I am!~ + telling
END

IF ~~ truth
SAY ~The troubles came upon us so fast, there simply was not the time.~
= ~I had such plans for us, <CHARNAME>, when we could face one another as equals and you knew of your secret past. But it was not to be. And with my body long gone, it is never to be.~
= ~I take some comfort knowing that at long last you face the real me, or what is left of me. Not some false shadow--oh yes, I know of them.~
IF ~~ GOTO visions
END

IF ~~ fightfor
SAY ~You show such fire. Perhaps you are more your father's child than my own. I had hoped it would not be so.~
IF ~~ GOTO main2
END

IF ~~ main2
SAY ~The fight will certainly be fearsome indeed if you would disturb an old man's final rest, and rekindle such memories. I can help you, yes. I could never deny you when it really mattered, you know that.~
= ~Tell me but one thing, <CHARNAME>. If you live, what will you do with the rest of your life?~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I intend to use my powers to revive you, Father. To bring you back to the world of the living so you can have back what Sarevok cut short.~ + resurrect
++ ~I intend to take the place Amelyssan thinks is prepared for her. I will fulfill my ultimate destiny as a higher being.~ + higher
++ ~None of your business, really. You aren't even my real father. Especially not as a spectre called forth by my will.~ + mywill
++ ~I plan to live my life the way you always taught me to. With decency, respect, and a good head on my shoulders.~ + goodhead
++ ~I still have a number of debts to settle. And I will settle them with extreme prejudice.~ + debts
++ ~I will survive, of course. Isn't that the most important thing?~ + survive
END

IF ~~ higher
SAY ~It seems like only yesterday you were insisting you were old enough to read the books on my highest shelf. Now, you tell me you are mature enough to take on such a mantle of power.~
= ~Forgive me if I take a moment to consider this, <CHARNAME>. It is not something a father considers every day.~
IF ~~ GOTO decide
END

IF ~~ resurrect
SAY ~Oh, no, no, no, my child. I do not doubt your words or your intent, but I had my chance at life. And I made the most of it. Returning to it... lacks appeal.~
++ ~But think of all the good works you could do! Think of what you could still accomplish!~ + stillaccomplish
++ ~If those are your wishes, I accept your decision.~ + decide
++ ~You are a fool to reject my gift.~ + fool
END

IF ~~ stillaccomplish
SAY ~Is that not what children are for? To accomplish what we could not during our alloted span, to carry on in our name?~
= ~You have been given a unique opportunity, <CHARNAME>. To choose which of your fathers you would model your life after. I have given you all the guidance I can, and it is up to you to live your life now according to that choice.~
IF ~~ GOTO decide
END

IF ~~ fool
SAY ~Perhaps I was once, but not in this.~
IF ~~ GOTO decide
END

IF ~~ mywill
SAY ~You were always just a touch greedy, <CHARNAME>. They remarked on it from time to time at Candlekeep, you know.~
= ~Of course, I defended you. But now, I see the truth. It's hard for a parent to accept such things, you know.~
IF ~~ GOTO decide
END

IF ~~ goodhead
SAY ~That wouldn't be rehearsed for your old man, would it? Ahhh, never mind. It does not matter much at this point.~
= ~I wanted to hear it, and if you were insightful enough to know that, so much the better.~
IF ~~ GOTO decide
END

IF ~~ debts
SAY ~Ah, my child. Was that all we taught you? Life is far too valuable to be spent bound up in anger and retribution. That path leads somewhere very dark, indeed.~
IF ~~ GOTO decide
END

IF ~~ survive
SAY ~It is, but it is not the only thing for you, <CHARNAME>.~
IF ~~ GOTO decide
END


IF ~~ decide
SAY ~But yes. I will help you.~
IF ~ReputationGT(Player1,16)~ THEN GOTO highrep
IF ~ReputationGT(Player1,10) ReputationLT(Player1,17)~ THEN GOTO midrep
IF ~ReputationLT(Player1,11)~ THEN GOTO lowrep
END

IF ~~ endstate
SAY ~So lead on, <CHARNAME>. I am proud to stand by you in this dark hour, one last time.~
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
~You have given me good reason to be proud of you under the worst of circumstances.~
= ~I wonder if my death was not the best thing for you--to force you to learn without the encumbrance and prejudice of a parent, to find out what life's potentials really are.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~Don't talk like that!~
== JAHEI25J IF ~InParty("Jaheira") !Dead("Jaheira")~ THEN ~Indeed. Just as you predicted, <PRO_HESHE> grew and learned, quite quickly. And a fortunate thing, too.~
== D0T#GORI ~And I am proud that you appear to have the understanding of what it means to act in the right cause, not simply to react. A good <PRO_MANWOMAN> will always be preyed upon by the evil, looking to exploit a weakness, to corrupt, to take.~
= ~But I believe you can meet those challenges again, and be successful with wit and will, not simply instinct and brutality. That would be a fine, fine legacy for an old man such as me.~
END D0T#GORI endstate

CHAIN D0T#GORI midrep
~For you, <CHARNAME>, and for what I am sure you can still become. You have done well, and I will always be proud of you.~
= ~But you must be ever-vigilant. You have grown so quickly in a time of great chaos and constant threat.~
= ~Soon, very soon, you will have to start acting more and reacting less. Your enemies will be harder to see. And that is when we will truly learn what kind of <PRO_MANWOMAN> you have become.~
== MINSC25J IF ~InParty("Minsc") !Dead("Minsc")~ THEN ~Do not worry, strange spirit man! Minsc and Boo have been helping <CHARNAME> see and boot the invisible enemies of goodness for some time now!~
== D0T#GORI ~I am hopeful for you, my child. But I have been wrong before. I should hope not to be wrong again.~
END D0T#GORI endstate

CHAIN D0T#GORI lowrep
~Not for you, <CHARNAME>. But for the <PRO_GIRLBOY> I thought you could become... and still might, if you set your mind and heart straight. It's never too late, not until you are dead. And even then, one never knows.~
== VICON25J IF ~InParty("Viconia") !Dead("Viconia")~ THEN ~Is this the sort of prattle surfacers teach their young? It is a wonder you have lasted this long.~
== D0T#GORI ~A good <PRO_MANWOMAN> is always preyed upon by evil men looking to corrupt <PRO_HIMHER>, to take things away, to harm. Those enemies can be defeated with wit and will.~
= ~The black-hearted, however, is <PRO_HISHER> own worst enemy. And one which will never go away. Think on that, my child, in whatever time you have left.~
END D0T#GORI endstate



CHAIN D0T#GORI telling
~What would you have had me tell you? Tell a small child of <PRO_HISHER> bloody birth and a future destined for more murder and chaos? I did what I felt was best for you, <CHARNAME>.~
== D0T#GORI IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~And you and Imoen both have survived where so many others of your siblings have died.~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~He has a point, <CHARNAME>... but I still think we could have had a little more warning.~
== D0T#GORI IF ~OR(2) !InParty("Imoen2") Dead("Imoen2")~ THEN ~And you have survived where so many others of your siblings have died.~
== D0T#GORI ~That, alone, is satisfaction enough for me that I raised you properly and well.~
END
++ ~Not for me! I demand more from you! I demand that you fight for me here and now!~ + fightfor
++ ~You did. But everything we fought for, and that you died for, could come to an abrupt end without your powers at my side. Amelyssan the high priestess of Bhaal will surely kill me to take my essence if you do not help.~ + donothelp
++ ~I was mature enough! Smart enough! Old enough! I should have known!~ + known

CHAIN D0T#GORI nothanks
~I am not so far removed from being a parent that I cannot ignore that remark. My patience for you is nearly boundless, but I suspect your time is not.~
= ~So, why did you call me? Was it to have one last fight about your bedtime being earlier than Imoen's?~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~Ha!~
== IMOEN25J IF ~InParty("Imoen2") !Dead("Imoen2")~ THEN ~Oh, um, sorry. Don't mind me.~
== D0T#GORI ~Or is there something more urgent on your mind?~
END
++ ~I require your aid. The savage high priestess of Bhaal plans to destroy me and take the celestial place he intended to return to. That includes killing me.~ + canthave
++ ~You know, I don't know why. This was a mistake. Go back to where you came from.~ + goback



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
