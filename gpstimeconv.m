%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%gpstimeconv.m
%Takes in GPS time by week and second and converts to GPS day and time
%Will take in vectors of weeks/seconds or single value
%Written by Brendan Crowell, University of Washington, crowellb@uw.edu
%github, crowellbw
%Last modified November 21, 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [YEAR, MONTH, DAY, HOUR, MIN, SEC] = gpstimeconv(week,second)

for i = 1:length(week)
    gpstime = (week(i)).*604800+second(i);
    time = gpstime/60/60/24 + datenum('06-Jan-1980 00:00:00');
    [yr,mo,dy,hr,minu,sec] = datevec(time);
    YEAR(i,1) = yr;
    MONTH(i,1) = mo;
    DAY(i,1) = dy;
    HOUR(i,1) = hr;
    MIN(i,1) = minu;
    SEC(i,1) = sec;
end

return

