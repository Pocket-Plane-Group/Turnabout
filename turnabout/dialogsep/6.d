// ADVICE INTERJECTS

// have you really lived your life yet? You are deciding between an unknown variable and an unknowable enigma.

EXTEND_BOTTOM FINSOL01 27
IF ~Global("T#RaiseGorion","GLOBAL",2) !Dead("D0T#Gori") Global("PGGorionAscAdvice", "GLOBAL", 0)~ THEN DO ~SetGlobal("PGGorionAscAdvice", "GLOBAL", 1)~ EXTERN D0T#GORI advice
END

APPEND D0T#GORI
IF ~~ advice
SAY ~One moment, my child. Before you make any rash decisions, I ask you to objectively evaluate the choice being put before you.~
= ~I see in your eyes that you are weary--weary of this fight, perhaps weary of the life of conflict you have led since we first set foot outside Candlekeep's strong walls.~
= ~Your life has been far from ideal. We did what we could for you, but we could not protect you from the strife that was to come. But you have not known life, not as most people live it.~
= ~Now, this celestial being offers you a chance to become something unimaginable. Not even in my days did I encounter such an opportunity. I cannot tell you what you may face in that life.~
= ~You are being asked to choose between an unknown variable and an unknowable enigma. I ask you to consider--have you really led your life yet? Do you understand what you are being offered, and what you may leave behind?~
++ ~I have friends and loved ones here, yes. But they are nothing compared to the power on offer.~ + power
++ ~You summarize my problem well, Father. Whether I choose mortality or an existence beyond, it will be a journey to uncharted territory for me. Nothing I have experienced prepares me for this choice.~ + nothing
++ ~I have seen enough of life, and death. There must be something better in the planes beyond, and I intend to experience it.~ + experience
++ ~I know that I have a lot to offer the mortal world. I am not afraid of the heartache, the struggle, and the inevitable loss it brings.~ + notafraid
++ ~You worry too much. I love life. There is not an enticement in the multiverse that could give me a reason to abandon it.~ + lovelife
++ ~Save your breath. I know what I will do, and my thoughts are my own.~ + main2
END

IF ~~ power
SAY ~The power, the power... think of more than simply yourself! Power has a way of changing even the most well-intentioned.~
= ~Perhaps it has changed you already.~
IF ~~ GOTO main2
END

IF ~~ nothing
SAY ~If ever a <PRO_MANWOMAN> had to make this choice, I would entrust it to you. For your unusual life has given you an insight greater than even a man as old as me might bring to it.~
= ~Do not fear the decision. Do not let the possibilities control you, and push you to do anything you might regret.~
IF ~~ GOTO main2
END

IF ~~ experience
SAY ~And it would be the ultimate experience. But for good or for ill? We cannot say.~
IF ~~ GOTO main2
END

IF ~~ notafraid
SAY ~And what of the joys, the triumphs, the rewards? Rewards can be as simple as seeing a smile on your child's face. And they are all waiting for you in life.~
IF ~~ GOTO main2
END

IF ~~ lovelife
SAY ~Good, good. And that will serve you well, if that is the path you choose.~
IF ~~ GOTO main2
END

IF ~~ main2
SAY ~Only you know your own heart, <CHARNAME>. Only you know the temptations you would face in any walk of life, on any plane. You have always had the power to make your own decisions.~
= ~That is your strength, and why you stand here still when so many of your kin have fallen. It is your strength of will.~
= ~It may sound trite coming from this old man, but you must do what your heart dictates. No regrets, <CHARNAME>. Lead a life of no regrets, and I will be content.~
COPY_TRANS FINSOL01 27
END

END
