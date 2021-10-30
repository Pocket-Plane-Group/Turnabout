EXTEND_BOTTOM FINSOL01 27
IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") Global("PGLiedToAlianna1", "GLOBAL", 1) Global("PGAliannaAscAdvice", "GLOBAL", 0)~ THEN DO ~SetGlobal("PGAliannaAscAdvice", "GLOBAL", 1)~ EXTERN D0T#ALIA MommyBuysClue
IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !Global("PGLiedToAlianna1", "GLOBAL", 1) Global("PGAliannaAscAdvice", "GLOBAL", 0)~ THEN DO ~SetGlobal("PGAliannaAscAdvice", "GLOBAL", 1)~ EXTERN D0T#ALIA MommysAscensionAdvice
END


APPEND D0T#ALIA

IF ~~ THEN BEGIN MommyBuysClue
SAY ~Your destiny. Yours.~ [PGALIA17]
=
~One betrayal after another. You led me to believe Bhaal's resurrection was still at hand. You gave me hope!~ [PGALIA18]
++ ~You would not have helped me if you did not believe the fight was in my father's name. The poison of your faith rots at your soul, just like the essence of Bhaal taints mine. Perhaps now we can both escape his shadow.~ + CheekyMonkey
++ ~A Deathstalker spouting sentiments of hope? You disappoint me, Mother.~ + MommyTakesTheNewsWell
++ ~A Deathstalker spouting sentiments of hope? You surprise me, Mother.~ + MommySurprisesHerself
++ ~Your own madness led you astray. What woman in her right mind would plot to slay her own child? Yes, I lied. I used you like the puppet you are. Your sickness repulses me, and I am finished soiling myself with your presence.~ + OhYeahPrissPants
++ ~One lie, where it would hurt you the most. I'd say my revenge was hard earned. After all, you did try to kill me. You didn't think I would forget that, did you? Now... smile for me, Mother. I could have done much worse to repay you for your maternal devotion.~ + MommyTakesTheNewsWell
END

IF ~~ THEN BEGIN CheekyMonkey
SAY ~You would not exist were it not for your father's taint manifested in me, nurtured through my womb. I should shout at you with my last breath, you thankless grub.~
= ~I should rage at your disdain for the sacrifices that brought me to this turmoil between life and death, meaning and nothingness!~
IF ~~ THEN GOTO BhaalIsDeadSegue
END

IF ~~ THEN BEGIN MommySurprisesHerself
SAY ~I surprise myself. Blood stains my hands from the recent battle. Before you were born, I relished the pleasure of the slaughter.~
= ~Nothing made me feel more alive than the taking of another life. The rush, the intensity of it--my heart would sing for days.~
IF ~~ THEN GOTO BhaalIsDeadSegue
END

IF ~~ THEN BEGIN OhYeahPrissPants
SAY ~No, you are not finished. Not quite yet. The malice that runs through you may be Bhaal's legacy, but I gave you my portion as well. Your hatred of me will not dissipate with the solar's intervention. It will not be purged with your father's essence.~
=
~Cast me into the demon pits once more, but, no, you will never escape me. Not with death, not with eternity. This, I know, for even in the tomb you haunted me. You are the murder I pay for over and over, but the only one I failed to commit.~
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN BhaalIsDeadSegue
SAY ~But... Bhaal is dust, and my joy is dead with him. We are unlikely orphans, you and I. I never imagined my Lord of Murder would suffer defeat. I never dreamed my prayers would become meaningless babble.~
=
~And you, destined to be viciously carved from your flesh and blood, our violence was never far away from your life, was it? A haunting of your heritage.~
= ~You, my sweet child, you are all I have left to believe in. I wonder...? Could you feel this emptiness, this abandonment?~
IF ~~ THEN GOTO MommysAscensionAdvice
END

IF ~~ THEN BEGIN MommyTakesTheNewsWell
SAY ~Yes, I should have known better. Your father's spirit runs strong in you. I could spit venom, I could rage at your audacity, but... Bhaal is dust. You, my child, you are all I have left to believe in.~
++ ~It's about damn time.~ + MommysAscensionAdvice
++ ~Too little, too late. Your faith is destructive. I do not want it.~ + MommysAscensionAdvice
++ ~I am glad you are taking the news so well. I would have disliked having to kill you.~ + ThatsPrettyCold
++ ~No. You weren't supposed to forgive me! I wanted your fury. I wanted you to hate me, as I hate the miserable role you've played in my existence. I don't want your faith! Give me your malice! Your bloodlust!~ + AnotherKindOfRevenge
END

IF ~~ THEN BEGIN ThatsPrettyCold
SAY ~But you would have killed me all the same, without hesitation, had I unleashed my fury. Yes, I understand. You have developed into a deadly, charming <PRO_GIRLBOY>, haven't you?~
IF ~~ THEN GOTO MommysAscensionAdvice
END

IF ~~ THEN BEGIN AnotherKindOfRevenge
SAY ~You ask for more of the same fuel that I used to show my devotion to your father. Is that what you truly want?~
IF ~~ THEN GOTO MommysAscensionAdvice
END

IF ~~ THEN BEGIN MommysAscensionAdvice
SAY ~To look at you now, it is hard to remember holding you in my arms as a babe. You were so fragile, a temporary blessing. My child, a Bhaalspawn. The Bhaalspawn. Now you have grown into a legend. You could become eternal, omnipotent. I could not have wished for more than your glory.~ [PGALIA19]
++ ~Thanks, Mother. Did you come up with this sentiment before or after you attempted to murder me?~ + MommyMurder
++ ~What about my happiness? That is the only thing I want to achieve.~ + MommyHappy
+ ~!Global("D0T#RezzedAlia","GLOBAL",1)~ + ~Silence! Your chatter means nothing to me.~ + MommyShush
+ ~Global("D0T#RezzedAlia","GLOBAL",1)~ +  ~Silence! Your chatter means nothing to me.~ + MommyShush2
++ ~What if I gave up the essence? Could you see me as a mortal?~ + MommyMortal
+ ~!Global("D0T#RezzedAlia","GLOBAL",1)~ +  ~Naturally, you want me to keep the essence. You would become the mother of a god.~ + MommyBecomes
+ ~Global("D0T#RezzedAlia","GLOBAL",1)~ +  ~Naturally, you want me to keep the essence. You would become the mother of a god.~ + MommyBecomes2
END

IF ~~ THEN BEGIN MommyMurder
SAY ~Destroying you was meant to be a testament to the glory of Bhaal. I believed you were the greatest gift I could place on your father's altar.~
= ~I had to forsake your life to create a god anew. You are faced with the same decision, my sweet sacrifice. To assume the throne of your father, you must end your mortal path.~
=
~My heart aches for you to accept the essence. You are the rightful heir to every particle of your father's power. Embrace it, and I will worship you with all the faith that now falls on fallow ground.~
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyHappy
SAY ~I understand lust and fury. Calculation and obsession are my trade. Happiness... it is an infant waiting to be destroyed. Even if you discover joy, you will not be allowed to keep it for more than a moment.~
= ~Choose might instead, my child. My heart aches for you to accept Bhaal's essence.~
=
~You are the rightful heir to every fragment of your father's power. You could take pleasure as you see fit under that mantle.~
= ~There are wars to wage and enemies to vanquish. Shake the towers of Mount Celestia with your will alone. Embrace your legacy, and I will worship you with all the faith that now falls on fallow ground.~
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyShush
SAY ~I am a dead woman who worships a dead god. A ghost should hiss in quiet, impotent, fury. So be it.~
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyShush2
SAY ~Yet you gave me a second chance at life. Your temper is mercurial, much like your father's. I shall endeavor to mind mine.~
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyMortal
SAY ~My heart aches for you to accept the essence. You are the rightful heir to every fragment of your father's power. Why wouldn't you embrace it?~
= ~Why would you forsake sovereignty over the planes for such a hollow prize as mortal life? You would not be invincible, Bhaal is testimony to that, but you would at least have some protection, some authority, to defend yourself as the years progress.~
=
~You and I were not born of a breed that wizens into old age, my child, left to pass into the gray beyond peacefully while dreaming.~
= ~One day, a clever murderer will come along, slightly faster, slightly stronger, and they will end your fantasy of mortality in a torrent of blood and torment. Don't be a fool! Live as a god!~
COPY_TRANS FINSOL01 27
END

IF ~~ THEN BEGIN MommyBecomes
SAY ~I am a dead woman who worships a dead god. I become only what divine power wills me to become. Your father's might is your birthright, my child. Embrace your legacy, and I will worship you with all the faith that now falls on fallow ground.~
IF ~~ THEN GOTO GodhoodIsWhereItsAt
END

IF ~~ THEN BEGIN MommyBecomes2
SAY ~You resurrected me, bringing me true life anew. I can already boast that I am mother to a godlike power, but Bhaal's might is your birthright. Embrace your legacy, my child. It is but the final step in your path to divinity.~
IF ~~ THEN GOTO GodhoodIsWhereItsAt
END

IF ~~ THEN BEGIN GodhoodIsWhereItsAt
SAY ~You can take pleasure as you see fit under the mantle of godhood. There are wars to wage and enemies to vanquish. You could shake the towers of Mount Celestia through your will alone. Think of it!~
COPY_TRANS FINSOL01 27
END

END

I_C_T FINSOL01 29  PGMommysEvilGirl
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING) Gender(Player1, FEMALE)~ THEN
~My daughter, following in the footsteps of her father. Let the heavens whimper! The child of Bhaal will feed on your tears!~
END


I_C_T FINSOL01 30  PGMommysNeutralGirl
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING) Gender(Player1, FEMALE)~ THEN
~Words cannot express my pride that you have accepted your destiny. The heavens should be wary of your wrath, my daughter. My goddess. The hells should bow down before thee, as I do.~
END

I_C_T FINSOL01 31  PGMommysGoodGirl
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING) Gender(Player1, FEMALE)~ THEN
~I am relieved that you accepted your father's legacy. I admit, your goals confuse me. At moments, I wondered if you would reject your rightful rank among the gods. Regardless, I bow before you, my immaculate daughter.~
END


I_C_T FINSOL01 32  PGMommysMortal
== D0T#Alia IF ~Global("T#RaiseAlianna","GLOBAL",2) !Dead("D0T#Alia") !StateCheck("D0T#Alia", STATE_SLEEPING)~ THEN
~No! How long before time trades your mortal glory for a grave? You have squandered your father's legacy, and you will suffer for the folly. Beware, my child. Death comes too soon, and the vermin begin their feast before your limbs cease twitching.~
END

