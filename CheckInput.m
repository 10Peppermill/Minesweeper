function [V] = CheckInput(Vin, Vmax)
% Lab 3 Lesson
% 2019-09-26
% CheckInput
%    This function checks the users guess to make sure it falls within the
%    gameboards dimensions. If it does not the function setss it to the
%    maximum value for the board set by the user.

if Vin > Vmax% Checks to see if the user guess is greater than max possible
    V = Vmax;% the output will equal the max possible guess
else
    V = Vin;% the output will equal the users initial guess
end
end