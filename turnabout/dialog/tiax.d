BEGIN D0T#TIAX

IF ~NumTimesTalkedTo(0)~ THEN BEGIN Tiax0
SAY ~Where--you?!?~
IF ~~ GOTO TiaxOther1
IF ~OR(4)
Alignment(Player1,LAWFUL_EVIL)
Alignment(Player1,NEUTRAL_EVIL)
Alignment(Player1,CHAOTIC_EVIL)
Alignment(Player1,CHAOTIC_NEUTRAL)~ GOTO TiaxEvil1
IF ~Alignment(Player1,LAWFUL_GOOD)~ GOTO TiaxLG1
END

IF ~~ Evildire
SAY ~Forget Cyric? Tiax shall rain death upon you for your blasphemy!~
= ~But first... tell Tiax about this dire enemy. Maybe they deserve Tiax's wrath first!~
++ ~It is Amelyssan, high priestess of Bhaal, who seeks to rise to power and destroy us all. Only with your strength can I prevail and bestow upon you the great power you deserve.~ + Evil18
++ ~Amelyssan will soon kill me in order to ascend to godhood if I do not receive your aid. Can you help me?~ + Evilhelp
++ ~Absolutely, she does. Amelyssan wishes to take Bhaal's throne, threaten Cyric, and of course kill us all. You can help me stop her!~ + Evil9
END

IF ~~ Evilhelp
SAY ~Help? Cyric helps those who help themselves, and Tiax is no different!~
= ~Tiax had best be going, before somebody gets the wrong idea about us.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ Evil3
SAY ~Yes, the time for the coming of Tiax is nigh! But...how can I seize my power? Who stands in the way of Tiax?~
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~You must help me to defeat the foul priestess, Amelyssan. She hoards the power you deserve for herself, and each day performs rituals debasing the name of Cyric.~ + Evil9
++ ~Amelyssan, High Priestess of Bhaal, is our foe. Help me to kill her and then I shall give you the power you deserve.~ + Evil18
++ ~Probably your own mania, gnome.~ + Evil5
END

IF ~~ Evil4
SAY ~But all serve Cyric, for His is the One True Way!~
++ ~Now you serve me, and only me.~ + Evil7
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~Yes, and you must aid me in doing the bidding of Cyric.~ + Evil2
++ ~I have gained enough power since last we met to make my own mind about that. But that is not important. What is important is that you aid me in my fight against Amelyssan.~ + Evil5
END

IF ~~ Evil5
SAY ~What? No! Tiax will destroy you all, and take the power for himself! Now all will tremble as Tiax truly becomes invincible!~
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
SAY ~Yes, of course! Cyric would be most displeased at this turn of events, which is why He has sent His most trusted and competent of followers to stop such an event!~
= ~But... what of when our foe is destroyed? What of the divine spark then?~
++ ~I intend to take it for myself.~ + Evil10
++ ~It is not something that interests me. I have no desire for it.~ + Evil11
END

IF ~~ Evil9
SAY ~This Amelyssan must be punished! Truly, Tiax will aid you in this!~
IF ~~ GOTO Evil15
END

IF ~~ Evil10
SAY ~Normally Tiax’s chest-hair would bristle at such a thought... But Tiax knows you, <CHARNAME>, and he knows you are of suitable temperament to become a servant to Cyric. So he will most graciously not smite you for these unhealthy ambitions.~
= ~But still... what is there you can offer Tiax for his aid? Without it, it is manifest all your efforts will be in vain.~
++ ~After my ascension, you will be looked on favorably by two gods. Is that not enough?~ + Evil12
++ ~I have the power to restore you to life, and would agree to promise to do this in exchange for your aid.~ DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I have the power to restore you to life, and will do so in exchange for your aid.~ DO ~SetGlobal("T#TiaxPromised","GLOBAL",1)~ + Evil13
END

IF ~~ Evil11
SAY ~This is for the best, for there can only be One True Way, and that is the path of Cyric. But what, then, can you offer Tiax for his help?~
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~There is little I can offer you, for I am but a mortal. But surely Cyric himself would look favourably on you, and shower you with rewards such that I can only dream of?~ + Evil12
++ ~I have the power to restore you to life, and would agree to promise to do this in exchange for your aid.~ DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I have the power to restore you to life, and will do so in exchange for your aid.~ DO ~SetGlobal("T#TiaxPromised","GLOBAL",1)~ + Evil13
++ ~My eternal gratitude. You would also have the satisfaction that you did the right thing by offering your help.~ + Evilhelp
END

IF ~~ Evil12
SAY ~When you put it that way... Tiax will serve.~
IF ~~ GOTO Evil15
END

IF ~~ Evil13
SAY ~Tiax finds this a very interesting proposition... With his life returned to him, think of all he could accomplish anew in the name of Cyric!~
= ~Very well, Tiax will aid you for this payment. Oh, Tiax can barely contain himself with the anticipation!~
IF ~~ GOTO Evil15
END

IF ~~ Evil15
SAY ~Soon our foes will know the price of crossing Tiax. Direct us, <CHARNAME>, that we may smite them faster!~
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
SAY ~You offer power? What can you offer Tiax?~
++ ~I have the power to restore you to life, and would agree to promise to do this in exchange for your aid.~ DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I have the power to restore you to life, and will do so in exchange for your aid.~ DO ~SetGlobal("T#TiaxPromised","GLOBAL",1)~ + Evil13
++ ~The power of satisfaction. Of knowing that you had finally done the right thing and offered help when it was needed, with no strings attached.~ + Evilhelp
END

IF ~~ Other3
SAY ~But... Tiax is in a benevolent mood, so he will hear your pitiful excuses for your crimes against him.~
++ ~I tried my best to save you, Tiax. It was not my intention that you should come to harm.~ + Other4
++ ~If you suffered, it was because of your own incompetence. I did you no wrong.~ + Other5
++ ~Your memories delude you, gnome.~ + Other6
END

IF ~~ Other4
SAY ~Hmmm... Tiax is not sure if he believes your excuses, but he will let that pass for know as he tries to fathom the reason he currently finds himself in this place.~
++ ~It is I who called you here, Tiax, because I am in need of your help.~ + Other7
++ ~I had summoned you to ask for your aid, but considering your attitude it seems I was unwise. Farwell, Tiax.~ + Other8
END

IF ~~ Other6
SAY ~Delude? Tiax’s memories *delude* him, you say? Tiax is the only island of sanity, the only one privileged to know the One True Way of Cyric and you say his version of events is imperfect?~
= ~Tiax does not desire to continue this conversation, <CHARNAME>! Tiax thinks he shall seek reparations in blood!~
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
SAY ~Of course you require the aid of Tiax, for he is the last great hero of modern times! And although helping every wretched creature that would come crawling and begging to his knees is far below his stature, Tiax does note your penitence so he will hear your request.~
++ ~I need you to help me defeat Amelyssan, High Priestess of Bhaal. She is a powerful foe indeed, and I judged with your skills you could be a valuable ally at my side.~ + Other9
++ ~Actually, considering your attitude it seems I was unwise to summon you here. Farwell, Tiax.~ + Other8
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~You must aid me in doing the bidding of Cyric!~ + Evil2
END

IF ~~ Other8
SAY ~Tiax would not pass water on you if you found yourself aflame. He shall depart now and leave you to wallow in your own inferiority.~
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT
END

IF ~~ Other9
SAY ~Again the blood you carry comes to haunt you. Very well. Tiax will consider your proposition, but what do you have to offer him?~
= ~What does Tiax care for your fate, when he could return to the Supreme Throne of Cyric to torture infidels until Dendar the Night Serpent emerges to swallow the world?~
+ ~!Global("D0T#AnybodyPromised","GLOBAL",1)~ + ~I have the power to restore you to life, and will do so if you help me now.~ + Other10
++ ~I have the power to restore you to life, and would agree to promise to do this in exchange for your aid.~ DO ~SetGlobal("T#TiaxDeceived","GLOBAL",1)~ + Evil13
++ ~There is nothing I can offer you except my gratitude.~ + Other11
END

IF ~~ Other10
SAY ~Life anew! It would grant Tiax the power to roam the lands of the Sword Coast again, and smite his enemies face to face once more.~
= ~Yes, for how could anyone ignore the signs? Tiax’s triumphant return from death, heralding his imminent ascent to power! Oh, Tiax can barely contain himself with the anticipation!~
IF ~~ GOTO Evil15
END

IF ~~ Other11
SAY ~Gratitude? Ha! Did you not listen to Tiax? He has no need for gratitude!~
IF ~~ GOTO Other8
END

CHAIN D0T#TIAX Other5
~On the contrary, <CHARNAME>, twice now you have abandoned Tiax to seek your fortune without him! Since he is so eminently capable an individual, Tiax would even go so far as to suggest you have been plotting against him!~
= ~Yes, Tiax sees this clearly now! You are arrogant, to try to plan some third betrayal here and now--for Tiax will not even give you the opportunity.~
== CERND25J IF ~InParty("Cernd") !Dead("Cernd")~ THEN ~The paranoia within this one runs rampant, like a roiling thunderstorm over the land. Likely he never knew peace of any sort during his life. A sad tale, no doubt.~
== D0T#TIAX ~You must think yourself so intelligent, <CHARNAME>, but Tiax thinks so little of you he would not even pass water on you if you found yourself aflame! He shall depart now and leave you to wallow in your own inferiority.~
END
IF ~~ THEN DO ~ReallyForceSpell(Myself,FLASHY_DEATH_YEAH)~ EXIT

CHAIN D0T#TIAX TiaxOther1
~Why is Tiax faced with you, <CHARNAME>?~
== D0T#TIAX IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN ~And Sarevok! Tiax recalls slaying you while <CHARNAME> and the others stood by enspelled by fear.~
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN ~We are here as comrades to each other and seek your aid, gnome. Stay your blade and your mouth and listen to <CHARNAME>.~
== D0T#TIAX IF ~OR(2) !InParty("Sarevok") Dead("Sarevok")~ THEN ~Tiax recalls slaying your enemy Sarevok while you and the others stood by enspelled by fear.~
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN ~Yes, exactly how I remember it. (Mad in life, mad in death I see.)~
== D0T#TIAX ~Then <CHARNAME> leaves Tiax and the One True Way! Abandons Tiax cruelly and Tiax is pronounced insane and locked away. Tiax is not insane! Tiax is a visionary!~
== HAERD25J IF ~InParty("HaerDalis") !Dead("HaerDalis")~ THEN ~The distinction between the two is blurred, and labels often change depending on he who would assign them.~
== D0T#TIAX ~Time passes, and then <CHARNAME> appears. Tiax judges now is the time to plan his escape. But he is slain in valiant battle against some mageling while <CHARNAME> sneaks away in cowardice, lending no aid!~
= ~And now Tiax is brought here, to this strange realm beyond death. Could it be that <CHARNAME> has finally perished, too?~
= ~Is this Tiax’s reward finally granted him by Cyric? Tiax’s foes together so he might smite them eternally?~
END D0T#TIAX Other3

CHAIN D0T#TIAX TiaxEvil1
~I see our paths have crossed again, <CHARNAME>. Praise Cyric the Wise for this most fortuitous occurrence! But... why has He sent me forth from his realm of the dead to this place?~
== D0T#Tiax IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN ~But here is our old foe! Have you too perished, <CHARNAME>?~
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN ~We are both very much alive, and allies in our quest.~
END
++ ~Cyric the All-Knowing has sent you here to help me, Tiax.~ + Evil2
++ ~It is time for you to achieve your destiny, Tiax. Cyric has sent me to help you in this task. Now you shall rule over all!~ + Evil3
++ ~I have called you here and it is *me* you will serve.~ + Evil4
++ ~I just thought you might like to watch as I, not you, attain supreme power. Now begone, spirit!~ + Evil5
++ ~I called you because I need your help on an urgent errand of mercy. My very essence is threatened by an evil priestess of Bhaal. Can you assist me?~ + Evilhelp

CHAIN D0T#TIAX Evil2
~Is that so? And why, then, did He not tell me of this?~
== KELDO25J IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN ~Careful, <CHARNAME>. This one's mind is filled with lies.~
END
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~Who can fathom the mysteries of his divine wisdom? Not us mere mortals.~ + Evil6
++ ~Perhaps he, uh, forgot.~ + Evil7
++ ~Let us leave Cyric aside for a moment, Tiax. I need your help against a dire enemy.~ + Evildire
+ ~OR(3)
CheckStatGT(Player1,15,INT)
CheckStatGT(Player1,15,WIS)
CheckStatGT(Player1,15,CHR)~ + ~You are doubtless the greatest of his servants, wise Tiax. Even I can see that! He probably feels he does not need to spell out his every desire to you.~ + Evil6
++ ~I don’t know the mind of your stupid god, Tiax.~ + Evil7

CHAIN D0T#TIAX Evil6
~Yes, this is true... the mortal mind pales in comparison to that of Cyric, of which Tiax is blessed to share in the most minute portion.~
== EDWIN25J IF ~InParty("Edwin") !Dead("Edwin")~ THEN ~"Minute" is, for once, the correct term.~
== D0T#TIAX ~What task would you have the might of Tiax on your side to accomplish, <CHARNAME>?~
END
++ ~We must defeat Amelysaan, High Priestess of Bhaal, to stop her ascending to godhood.~ + Evil8
++ ~The infidel Amelysaan would seize the divine power of my soul--and all other Bhaalspawn--and assume the mantle of divinity.~ + Evil8

CHAIN D0T#TIAX Evil7
~Infidel! Blasphemer! There is but one true way, and that is the way of the Black Sun!~
== SAREV25J IF ~InParty("Sarevok") !Dead("Sarevok")~ THEN ~I can hardly believe that with allies like this, you were once able to defeat me.~
== D0T#TIAX ~Now Tiax sees why Cyric sent him here; Tiax will end you. Goodbye, <CHARNAME>.~
= ~Graaaah!~
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
~You again, <CHARNAME>? Why has Cyric sent me here?~
= ~Ah, Tiax sees now. Tiax knows all! Tiax is denier of lies, paragon of virtue!~
== AERIE25J IF ~InParty("Aerie") !Dead("Aerie")~ THEN ~I... I don’t think this was such a good idea, <CHARNAME>.~
== D0T#TIAX ~You shall not torment me any further!~
END
++ ~You are not here because of Cyric; I have called you.~ + LGblock2
++ ~Wait, Tiax, I require your aid.~ + LGblock2
++ ~Yes, Cyric has sent you to do my bidding!~ + LGblock2

CHAIN D0T#TIAX LGblock2
~No. Tiax will hear no more truths from your mouth!~
== KELDO25J IF ~InParty("Keldorn") !Dead("Keldorn")~ THEN ~By Torm, I knew no good would come of asking a Cyricist for aid.~
== D0T#TIAX ~Tiax will cut your honest lips and sincere eyes from your face and leave them to rot here in the name of the Prince of Lies! Graah!~
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
