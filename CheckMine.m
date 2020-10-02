function [Bomb] = CheckMine (R, C, GF)
% Lab 3 Lesson
% 2019-09-26
% CheckMine
%    This function checks the users guess to see if the location they
%    guessed is the same as the location of the bomb on the game board.

% IF bomb location on game-field matches the row and column input
if GF(R,C) == 1% checks if the the user inputs are the bomb location on the gameboard
    Bomb = 1;% output is true
else
    Bomb = 0;% output is false
end
end