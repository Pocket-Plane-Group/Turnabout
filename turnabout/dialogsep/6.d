// ADVICE INTERJECTS

// have you really lived your life yet? You are deciding between an unknown variable and an unknowable enigma.

EXTEND_BOTTOM FINSOL01 27
IF ~Global("T#RaiseGorion","GLOBAL",2) !Dead("D0T#Gori") Global("PGGorionAscAdvice", "GLOBAL", 0)~ THEN DO ~SetGlobal("PGGorionAscAdvice", "GLOBAL", 1)~ EXTERN D0T#GORI advice
END

APPEND D0T#GORI
IF ~~ advice
SAY @0
= @1
= @2
= @3
= @4
++ @5 + power
++ @6 + nothing
++ @7 + experience
++ @8 + notafraid
++ @9 + lovelife
++ @10 + main2
END

IF ~~ power
SAY @11
= @12
IF ~~ GOTO main2
END

IF ~~ nothing
SAY @13
= @14
IF ~~ GOTO main2
END

IF ~~ experience
SAY @15
IF ~~ GOTO main2
END

IF ~~ notafraid
SAY @16
IF ~~ GOTO main2
END

IF ~~ lovelife
SAY @17
IF ~~ GOTO main2
END

IF ~~ main2
SAY @18
= @19
= @20
COPY_TRANS FINSOL01 27
END

END
