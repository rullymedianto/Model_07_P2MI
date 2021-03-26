function [coor1 coor2 coor3 coor4 coor5 coor6 coor7 coor8] = vector_coordination1(sim1)

AB = sim1(1,:); % Number waypoint
AC = sim1(4,:); % Ketinggian
AF = sim1(27,:); % Route number

AA1 = AB>1 & AC == meter(24500) & (AF == 2 | AF == 3 | AF == 12) ; % Lower North (LN)
AA2 = AB>1 & AC == meter(24500) & (AF == 4 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Lower Center (LC)
AA3 = AB>1 & AC == meter(24500) & (AF == 1 | AF == 9 | AF == 10 | AF == 15); % Lower East (LE)
AA4 = AB>1 & AC == meter(15000) & (AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 11 | AF == 12) ; % Terminal West (TW)
AA5 = AB>1 & AC == meter(15000) & (AF == 1 | AF == 7 | AF == 8 | AF == 13 | AF == 14); % Terminal East (TE)
AA6 = AB>1 & AC == meter(15000) & (AF == 9 | AF == 10 | AF == 15); % Terminal South (TS)
AA7 = AB>1 & AC == meter(6000) & (AF == 1 | AF == 2 | AF == 3 | AF == 4 | AF == 5 | AF == 6 | AF == 7 | AF == 11 | AF == 12 | AF == 13); % Arrival North (AN)
AA8 = AB>1 & AC == meter(7000) & (AF == 7 | AF == 8 | AF == 9 | AF == 10 | AF == 13 | AF == 14 | AF == 15); % Arrival East (AE)

coor1 = sum(AA1>0);
coor2 = sum(AA2>0);
coor3 = sum(AA3>0);
coor4 = sum(AA4>0);
coor5 = sum(AA5>0);
coor6 = sum(AA6>0);
coor7 = sum(AA7>0);
coor8 = sum(AA8>0);