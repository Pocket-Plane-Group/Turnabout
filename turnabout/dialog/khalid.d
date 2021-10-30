BEGIN D0T#KHAL

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Khalid1
SAY ~Wha--who--what am I doing here?!?~
IF ~~ GOTO notstart
IF ~InParty("Jaheira") !G("JaheiraRomanceActive",2)~ GOTO nonstart
IF ~InParty("Jaheira") G("JaheiraRomanceActive",2)~ GOTO romstart
END

IF ~~ notstart
SAY ~<CHARNAME>, is that you? M-m-my, it seems like it has been s-so long.~
= ~Y-you are looking well. But... what is this place? And why am I h-here?~
++ ~Hello again, Khalid. This is the Throne of Bhaal, and I need your help to defeat a vicious, evil foe.~ + wheresjaheira
++ ~You are here because I wish you here. You will fight at my side once more against a deadly enemy, because I say so.~ + wheresjaheira
++ ~I wanted to apologize for not being able to do more to help you. Irenicus killed you to get at Imoen and me. I wish it had not involved you.~ + hadnotbeen
END

IF ~~ hadnotbeen
SAY ~Y-y-you could not have helped it, <CHARNAME>. There is nothing to be done now. A-and I protected Jaheira so that she might live.~
= ~Where is Jaheira? Why is she not w-w-with you?~
++ ~I really have no idea. Does it matter?~ + matter
+ ~InParty("Jaheira") Dead("Jaheira")~ + ~She fell in recent fighting. We may be able to restore her later.~ + later
+ ~!InParty("Jaheira") Dead("Jaheira")~ + ~She fell in fighting, some time ago. I am sorry, Khalid.~ + dead
+ ~!Dead("Jaheira")~ + ~She is safe, back in the real world we knew.~ + safe
END

IF ~~ wheresjaheira
SAY ~Th-that is very interesting, <CHARNAME>, but where is Jaheira? Why is she not w-w-with you?~
++ ~I really have no idea. Does it matter?~ + matter
+ ~InParty("Jaheira") Dead("Jaheira")~ + ~She fell in recent fighting. We may be able to restore her later.~ + later
+ ~!InParty("Jaheira") Dead("Jaheira")~ + ~She fell in fighting, some time ago. I am sorry, Khalid.~ + dead
+ ~!Dead("Jaheira")~ + ~She is safe, back in the real world we knew.~ + safe
END

IF ~~ dead
SAY ~Jaheira! Oh n-no, Jaheira...~
= ~What... wh-what am I to do?~
++ ~I am surprised you think it matters. The woman was a harpy.~ + matter
++ ~Listen up, and listen good, because I am about to tell you.~ + just
++ ~You can join me for one last fight, and win a great battle in her name.~ + just
END

IF ~~ safe
SAY ~Oh, that's g-g-good, <CHARNAME>. I worry about her, y-you know.~
++ ~I am surprised you think it matters. The woman is a harpy.~ + matter
++ ~Listen up, and listen good, because I am about to tell you something very important.~ + just
++ ~You can join me for one last fight, and win a great battle in her name.~ + just
END


IF ~~ later
SAY ~Jaheira! Oh n-no, Jaheira... something must be done! We must save her!~
++ ~We can, but not if I am killed here. Will you join me and help me fight?~ + just
++ ~That depends. What is it worth to you?~ + worth
END

IF ~~ worth
SAY ~Worth? W-why, it is worth anything at all. A-anything.~
IF ~~ GOTO just
END

IF ~~ matter
SAY ~I... <CHARNAME>, I am a-a-ashamed to see that you turned out to have such little r-regard for others. Of course it matters! It matters very much to me.~
= ~B-b-but if you do not care for her, then I cannot not care for this situation y-you find yourself in. I would wish you luck, but I d-do not think I would mean it. Goodbye.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ just
SAY ~J-just explain to me again what we must do, and it... it shall be as though we were never parted!~
++ ~Amelyssan means to destroy me and take the Throne of Bhaal for her own. I mean to stop her and ascend to it in her place.~ + herplace
++ ~Amelyssan, a rogue priestess of Bhaal, has arranged the deaths of thousands and means to finish the job here and now. Help me defeat her and I can depart.~ + leavethis
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I mean to end Amelyssan's reign of terror, and then use the powers I will gain to grant you new life.~ + grant
END

IF ~~ herplace
SAY ~A-a-ascend? To the level of the gods? I-if you think that is wise. T-there is so much of what you have done that I do not know, after all.~
IF ~~ GOTO lead
END

IF ~~ leavethis
SAY ~The s-s-sooner the better, I should say. I d-do not like the looks of this place at all. It is not safe for you.~
IF ~~ GOTO lead
END

IF ~~ lead
SAY ~Lead the way, <CHARNAME>, a-and I will do my best to serve you again, for as long as I can!~
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
SAY ~Y-you could do such a thing? I had never had cause to hope...~
IF ~~  DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ GOTO wonderful
IF ~Dead("Jaheira") !InParty("Jaheira")~ GOTO jahdead
END

IF ~~ wonderful
SAY ~And i-if Jaheira... if s-she would still know me... things could be so wonderful!~
= ~Oh, thank you, thank you! I shall always look for a way to repay you!~
IF ~~ GOTO lead
END

IF ~~ jahdead
SAY ~But w-w-with Jaheira gone, what would there be for me in a n-new life?~
++ ~Anything you wish it to be! You could travel, adventure, paint, sing... anything at all!~ + anything
++ ~Are you kidding? The woman held you back, kept you down! You could finally live life to the fullest now!~ + never
++ ~There could be another, Khalid. Me, for example.~ + me
END

IF ~~ anything
SAY ~I could do a-anything, except be with my w-w-wife again.~
= ~Your offer is g-g-generous, but I must decline.~
IF ~~ GOTO lead
END

IF ~~ me
SAY ~Oh... oh, no, I could never th-think of such a thing, <CHARNAME>. Your offer is g-g-generous, but I must decline.~
IF ~~ GOTO lead
END

IF ~~ never
SAY ~I-I cannot believe you would s-s-say such a thing! I l-love Jaheira and she loved me! I will not listen to this, a-a-and I will not reward you for being so rude!~
= ~I am v-very, very disappointed!~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ togetheragainrom
SAY ~T-together again? With Jaheira? B-b-but <CHARNAME>, I thought that she... that you...~
++ ~You see--~ EXTERN JAHEI25J enough
++ ~I love--~ EXTERN JAHEI25J enough
++ ~You two--~ EXTERN JAHEI25J enough
END

IF ~~ onelastrom
SAY ~Yes. Y-yes, I most definitely will side with you. I-I made a promise, and if you have earned Jaheira's continued aid, th-then that is more than enough for me.~
IF ~~ GOTO leadrom
END

IF ~~ onelastnon
SAY ~Yes. Y-yes, I most definitely will side with you. I-I made a promise, and if you have earned Jaheira's continued aid, th-then that is more than enough for me.~
IF ~~ GOTO leadnon
END

IF ~~ leadnon
SAY ~L-lead on, <CHARNAME>, and then we will... w-well, we will just have to do our best!~
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
~Wha--who--what am I doing here?!?~
= ~<CHARNAME>, is that you? M-m-my, it seems like it has been--~
= ~--J-Jaheira!~
== JAHEI25J ~Khal... Khalid. Yes, it is us. It... it is good to speak to you once more. To see you.~
== D0T#KHAL ~Oh, Jaheira love, I c-c-could never have dreamed that such a day would come! B-but how? Where are we? What is t-this place?~
== JAHEI25J ~You must listen carefully, my Khalid. There is little time to repeat ourselves. So little time...~
== D0T#KHAL ~<CHARNAME>? What is h-happening here? H-how have you called me?~
END
++ ~Hello again, Khalid. This is the Throne of Bhaal, and I need your help to defeat a vicious, evil foe.~ + defeatnon
++ ~You are here because I wish you here. You will fight at my side once more against a deadly enemy, because I say so.~ EXTERN JAHEI25J jaheira-meannon
++ ~I wanted to apologize for not being able to do more to help you. Irenicus killed you to get at Imoen and me. I wish it had not involved you.~ + hadnotbeennon
++ ~I control much of Bhaal's essence now. It puts us all in danger, but it gives me the power to bring back old friends, even if just for a short while.~ + shortwhilenon

CHAIN D0T#KHAL defeatnon
~Oh n-no! The t-t-terrible circumstance of your birth plagues you still?~
== JAHEI25J ~It has cost us all dearly, Khalid. We lost you, my love, and have lost other friends and companions as well. There is so much I would say to you... but <CHARNAME>'s circumstances allow us very little time for private thoughts.~
END D0T#KHAL main2non

CHAIN JAHEI25J jaheira-meannon
~<CHARNAME>! You *will* treat Khalid with the respect he has earned!~
== D0T#KHAL ~I...I do not know th-that I ever hoped to hear you say that, J-Jaheira.~
== JAHEI25J ~There are many things I should have said, Khalid. But <CHARNAME> is right to be brief, if rather boorish.~
END D0T#KHAL main2non

CHAIN D0T#KHAL hadnotbeennon
~Y-y-you could not have helped it, <CHARNAME>. There is nothing to be done now. A-and I protected Jaheira so that she might have a chance to live.~
== JAHEI25J ~You did. You were very brave, Khalid my love. And there is so much I wish to say... but very little time.~
END D0T#KHAL main2non

CHAIN D0T#KHAL shortwhilenon
~W-well, I am flattered that you thought of me, <CHARNAME>. A-and I am very happy to see you both again. Especially y-y-you, Jaheira.~
==  JAHEI25J ~And I am very relieved to see you, Khalid. I never thought there would be another time. There is so much... but we have so few moments to spare.~
END D0T#KHAL main2non

CHAIN D0T#KHAL main2non
~Th-then tell me quickly what we must do. I will listen eagerly, and h-h-help in any way I can.~
== JAHEI25J ~Khalid... your spirit is well? You have not suffered?~
== D0T#KHAL ~N-no. I do not think so, Jaheira. It... it is not s-s-something I can explain. But I have not suffered.~
== JAHEI25J ~Good. Good. I only ever wanted you to be at peace. Please know this. When I saw what Irenicus had... had left of you, I...~
= ~...I could do nothing, Khalid.~
== D0T#KHAL ~Oh, Jaheira, please don't c-c-cry.~
= ~Th-there will be plenty of time to discuss th-this later, my love. Right now, <CHARNAME> n-needs our help. Is that not right, <CHARNAME>?~
END
++ ~Yes. I hate to disturb your rest, but without your help Jaheira and I may die. Will you join with me, one last time?~ + onelastnon
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I need you to join the fight against Amelyssan and her minions, but I also wish to reward you with new life, assuming we survive. You and Jaheira can be together again.~ DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ + togetheragainnon
++ ~Enough mushy talk. Fiends and traitors await destruction, and I need Khalid's blade once more!~ EXTERN JAHEI25J jah-mushynon
++ ~This will be a dangerous battle. Are you sure you are up to this?~ + uptothisnon

CHAIN D0T#KHAL togetheragainnon
~T-together again? With Jaheira? Th-that is more than I could have ever hoped!~
= ~B-but, Jaheira... d-do you want this? D-do you still know me as Khalid?~
== JAHEI25J ~I... I think I do. I have seen many strange things since we were parted. Things which have made me understand Nature's course in a new way.~
= ~If <CHARNAME> says <PRO_HESHE> can restore you to the man I knew, I will trust <PRO_HIMHER> in this. But this is not a decision I should make for you, Khalid. You must decide.~
== D0T#KHAL ~I... yes! A th-thousand times yes, Jaheira, <CHARNAME>, y-yes!~
END D0T#KHAL leadnon

CHAIN JAHEI25J jah-mushynon
~<CHARNAME>! You would deny us these moments, after so long?~
== D0T#KHAL ~I-I do believe he is r-r-right, my dear.~
END D0T#KHAL leadnon

CHAIN D0T#KHAL uptothisnon
~Y-you have never had good reason to believe I g-g-gave you anything less than I possibly c-could in the past, <CHARNAME>. I w-will not fail you now.~
== JAHEI25J ~My good and dear Khalid. You would never admit when you were overmatched. It was... it is... one of the most endearing things about you.~
== D0T#KHAL ~C-careful, my love. I d-do not know if I have t-time to blush.~
END D0T#KHAL leadnon


CHAIN D0T#KHAL romstart
~<CHARNAME>, is that you? M-m-my, it seems like it has been--~
= ~--J-Jaheira!~
== JAHEI25J ~Khal... Khalid. Yes, it is us. It... it is good to speak to you once more. To see you.~
== D0T#KHAL ~Oh, Jaheira love, I c-c-could never have dreamed that such a day would come! B-but how? Where are we? What is t-this place?~
== JAHEI25J ~You must listen carefully, my Khalid. There is little time to repeat ourselves. So little time...~
== D0T#KHAL ~<CHARNAME>? What is h-happening here? H-how have you called me?~
END
++ ~Hello again, Khalid. This is the Throne of Bhaal, and I need your help to defeat a vicious, evil foe.~ + defeatrom
++ ~You are here because I wish you here. You will fight at my side once more against a deadly enemy, because I say so.~ EXTERN JAHEI25J jaheira-mean
++ ~I wanted to apologize for not being able to do more to help you. Irenicus killed you to get at Imoen and me. I wish it had not involved you.~ + hadnotbeenrom
++ ~I control much of Bhaal's essence now. It puts us all in danger, but it gives me the power to bring back old friends, even if just for a short while.~ + shortwhile

CHAIN D0T#KHAL shortwhile
~W-well, I am flattered that you thought of me, <CHARNAME>. A-and I am very happy to see you both again. Especially y-y-you, Jaheira.~
== JAHEI25J ~And I am very relieved to see you, Khalid, and know that it is you. There is so much... but we have so little time.~
END D0T#KHAL main2

CHAIN D0T#KHAL defeatrom
~Oh n-no! The t-t-terrible circumstance of your birth plagues you still?~
== JAHEI25J ~It has cost us all dearly, Khalid. We lost you, and have lost other friends and companions as well. There is so much I would say to you... but very little time.~
END D0T#KHAL main2

CHAIN JAHEI25J jaheira-mean
~<CHARNAME>! Treat Khalid with the respect he has earned!~
== D0T#KHAL ~I...I do not know th-that I ever hoped to hear you say that, J-Jaheira.~
== JAHEI25J ~There are many things I should have said, Khalid. But <CHARNAME> is right to be brief, if not so to be curt.~
END D0T#KHAL main2

CHAIN D0T#KHAL hadnotbeenrom
~Y-y-you could not have helped it, <CHARNAME>. There is nothing to be done now. A-and I protected Jaheira so that she might have a chance to live.~
== JAHEI25J ~You did. You were very brave, Khalid. And there is so much I wish to say... but very little time.~
END D0T#KHAL main2

CHAIN D0T#KHAL main2
~Th-then tell me quickly what we must do. I will listen eagerly, and h-h-help in any way I can.~
== JAHEI25J ~Khalid, you should know that since you have been gone, <CHARNAME> and I have... become closer. I thought you might know and understand, I... I saw it in a vision.~
== D0T#KHAL ~I... I... I think so, Jaheira. In s-s-something like a dream, I knew.~
== JAHEI25J ~Good. Good. I only ever wanted you to be at peace. Please know this.~
= ~When I saw what Irenicus had... had left of you, I...~
= ~...I could do nothing, Khalid.~
== D0T#KHAL ~Oh, Jaheira, please don't c-c-cry.~
= ~Th-there will be plenty of time to discuss th-this later, my love. Right now, <CHARNAME> n-needs our help. Is that not right, <CHARNAME>?~
END
++ ~Yes. I hate to disturb your rest, but without your help Jaheira and I may die. Will you join with me, one last time?~ + onelastrom
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I need you to join the fight against Amelyssan and her minions, but I also wish to reward you with new life, assuming we survive. You and Jaheira can be together again.~ DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ + togetheragainrom
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~Fight with me, help me destroy Amelyssan, and I will bring you back to life. You can do as you wish then.~ DO ~SetGlobal("T#KhalPromised","GLOBAL",1)~ + togetheragainrom
++ ~Enough mushy talk. Fiends and traitors await destruction, and I need Khalid's blade once more!~ EXTERN JAHEI25J jah-mushyrom
++ ~This will be a dangerous battle. Are you sure you are up to this?~ + uptothisrom

CHAIN JAHEI25J enough
~Enough! We do not have time to argue, you both know this.~
= ~Khalid, I... we will discuss this, but now is not the time. Let us do what we must do first.~
== D0T#KHAL ~O-of course, my dear. You a-always know best.~
END D0T#KHAL leadrom

CHAIN D0T#KHAL leadrom
~We will... w-well, we will just have to do our best!~
== JAHEI25J ~And then we will have much to discuss, the... three of us.~
== D0T#KHAL ~L-lead on, <CHARNAME>!~
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
~<CHARNAME>!~
== D0T#KHAL ~I-I do believe he is r-r-right, my dear.~
END D0T#KHAL leadrom

CHAIN D0T#KHAL uptothisrom
~Y-you have never had good reason to believe I g-g-gave you anything less than I possibly c-could in the past, <CHARNAME>. I w-will not fail you now.~
== JAHEI25J ~My good and dear Khalid. You would never admit when you were overmatched. It was... it is... one of the most endearing things about you.~
== D0T#KHAL ~C-careful, my love. I d-do not know if I have t-time to blush.~
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
