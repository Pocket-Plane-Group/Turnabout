// ADVICE INTERJECTS


I_C_T FINSOL01 27 T#TiaxAscendAdvice
== D0T#TIAX IF ~Global("T#RaiseTiax","GLOBAL",2) !Dead("D0T#Tiax") !Global("T#TiaxDeceived","GLOBAL",1) OR(2) Alignment(Player1,MASK_EVIL) Alignment(Player1,CHAOTIC_NEUTRAL)~ THEN @0
== D0T#TIAX IF ~Global("T#RaiseTiax","GLOBAL",2) !Dead("D0T#Tiax") !Global("T#TiaxDeceived","GLOBAL",1) OR(2) Alignment(Player1,MASK_EVIL) Alignment(Player1,CHAOTIC_NEUTRAL)~ THEN @1
END

I_C_T FINSOL01 27 T#TiaxAscendAdvice
== D0T#TIAX IF ~Global("T#RaiseTiax","GLOBAL",2) !Dead("D0T#Tiax") !Global("T#TiaxDeceived","GLOBAL",1) !Alignment(Player1,MASK_EVIL) !Alignment(Player1,CHAOTIC_NEUTRAL)~ THEN @2
== D0T#TIAX IF ~Global("T#RaiseTiax","GLOBAL",2) !Dead("D0T#Tiax") !Global("T#TiaxDeceived","GLOBAL",1) !Alignment(Player1,MASK_EVIL) !Alignment(Player1,CHAOTIC_NEUTRAL)~ THEN @3
END

