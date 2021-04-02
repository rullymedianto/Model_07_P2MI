function [acen1 acen2 acen3 acen4 acen5 acen6 acen7 acen8] = vector_acenter1(sim1)

AB = sim1(1,:); % Number waypoint
AC = sim1(4,:); % Ketinggian
AF = sim1(27,:); % Route number

AAen1 = AB>1 & AC == meter(24500) & (AF == 2 | AF == 3 | AF == 12) ; % Lower North (LN)
AAen2 = AB>1 & AC == meter(24500) & (AF == 4 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Lower Center (LC)
AAen3 = AB>1 & AC == meter(24500) & (AF == 1 | AF == 9 | AF == 10 | AF == 15); % Lower East (LE)
AAen4 = AB>1 & AC == meter(15000) & (AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 11 | AF == 12) ; % Terminal West (TW)
AAen5 = AB>1 & AC == meter(15000) & (AF == 1 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Terminal East (TE)
AAen6 = AB>1 & AC == meter(15000) & (AF == 9 | AF == 10 | AF == 15); % Terminal South (TS)
AAen7 = AB>1 & AC == meter(6000) & (AF == 1 | AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 7 | AF == 11 | AF == 12 | AF == 13); % Arrival North (AN)
AAen8 = AB>1 & AC == meter(7000) & (AF == 7 | AF == 8 | AF == 9 | AF == 10 | AF == 13 | AF == 14 | AF == 15); % Arrival East (AE)

acen1 = sum(AAen1>0);
acen2 = sum(AAen2>0);
acen3 = sum(AAen3>0);
acen4 = sum(AAen4>0);
acen5 = sum(AAen5>0);
acen6 = sum(AAen6>0);
acen7 = sum(AAen7>0);
acen8 = sum(AAen8>0);