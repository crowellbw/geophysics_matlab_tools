%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%leapyear.m
%Computes if the given year is a leap year
%returns 1 for true, 0 for false
%Will take in vectors of years or single value
%Written by Brendan Crowell, University of Washington, crowellb@uw.edu
%github, crowellbw
%Last modified November 21, 2017
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [f] = leapyear(year)

for i = 1:length(year)
    f(i,1) = 0;
    
    if (mod(year(i),4) == 0 && mod(year(i),100) ~= 0)
        f(i,1) = 1;
    end
    
    if (mod(year(i),400) == 0)
        f(i,1) = 1;
    end
end
