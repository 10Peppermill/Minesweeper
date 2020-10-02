%% Title Block
% Lab 3 Lesson
% 2019-09-26
% Minefield
%   This program starts a game Minefield where the user specifes the
%   gameboard size to play on. A game board is generated with those 
%   dimensions that contains a hidden mine. The user must enter array 
%   cordinate locations in order to find where the mine is located
clear
clc

%%
GameLogo% calls the GameLogo.m function to display the welcome logo
% Ask user for the max rows and columns for the game-board;
x = input('Enter the rows of the game-board:');
y = input('Enter the columns of the game-board:');
fprintf('\n')
% GET game-board FROM MFGenerator WITH max rows and max columns;
game_Board = MFGenerator(x,y);
% Generate a simple UI for board visualization with the equal dimensions
blank_Board = repmat({'#'},x,y);
disp(blank_Board)% display the board
guess_Counter = 0;% create an array to keep track of guesses/ initiate loop
% WHILE Bomb not found
while guess_Counter ==0||CheckMine(row,col,game_Board) == 0 % GET bomb status FROM CheckMIne WITH row, column, and game-board;
    %     Ask user to guess a row and a column value;
    row = input('guess the row location of the bomb on gameboard:');
    col = input('guess the column location of the bomb on gameboard:');
    %     GET row value FROM CheckInput WITH row guess and max rows;
    row = CheckInput(row,x);
    %     GET column value FROM CheckInput WITH column guess and max columns;
    col = CheckInput(col,y);
    guess_Counter = guess_Counter+1;% increase guess_Counter greater than 0
    if CheckMine(row,col,game_Board) == 1% IF bomb status IS true
        fprintf('The bomb was found at %i,%i\n\n',row,col);% Bomb found
        blank_Board = repmat({'O'},x,y);% Overwrite board to reveal all miss markers
        blank_Board(x,y) = {'X'};% Overwrite mine location with bomb marker
        disp(blank_Board)% display the updated game board
        Boom% call the function Boom to display the game over message
    else% ElSE
        fprintf('The bomb is not at %i,%i\n\n',row,col);% Bomb not found
        blank_Board(row,col) = {'O'};% Overwrite guess location with miss marker 
        disp(blank_Board)% display the updated game board
    end% ENDIF
end% ENDWHILE
