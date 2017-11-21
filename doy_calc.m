%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%doy_calc.m
%Computes the day of the year (0 to 365 or 365 depending on leap year)
%Will take in vectors of years/months/days or single value
%Written by Brendan Crowell, University of Washington, crowellb@uw.edu
%github, crowellbw
%Last modified November 21, 2017
%Requires leapyear.m, also available on my github
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [DOY] = doy_calc(year,month,day)


for j = 1:length(year)
    [ly]=leapyear(year(j));
    
    if (ly == 1)
        dom = [31;29;31;30;31;30;31;31;30;31;30;31];
    else
        dom = [31;28;31;30;31;30;31;31;30;31;30;31];
    end
    
    doy = 0;
    for i = 1:month(j)
        if (i == month(j))
            doy = doy + day(j);
        else
            doy = doy + dom(i);
        end
    end
    DOY(j,1) = doy-1;
end

return