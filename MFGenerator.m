function [ Minefield ] = MFGenerator(N,M)
% Minefield generator
% This function accepts 2 values: N, M
% N is the number of rows
% M is the number of columns
% This generates an N x M array with one listed as a bomb

TempMF = zeros(N,M);    % Create NxM array of Zeros
X = randi(M);       % Pick a random Column
Y = randi(N);       % Pick a random Row

TempMF(Y,X)=1;  % Set that space to be the bomb, ie = 1

Minefield=TempMF;
end
