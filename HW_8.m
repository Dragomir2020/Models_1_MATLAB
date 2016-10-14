clear; clc;
M = [-1  2  5; 6  2  -4; 7  0  5];
[nrows, ncols] = size(M);
S = zeros(1,nrows);
for row = 1:nrows
    S(row) = M(row,1);
    for col = 2:ncols
        if M(row,col) < S(row)
            S(row) = M(row,col);
        end
    end
end

%%

M = [3  1  5;  4  -4  5; 2  -3  -5;  0  1  -1];
[nrows, ncols] = size(M);
Add = zeros(1,ncols);
Total = 0;
for col = 1:ncols
    for row = 1:nrows
        Add(col) = Add(col) + M(row,col);
    end
    Total = Total + Add(col);
end
%%
load HW8;
C = zeros(4,6);
CountA = 0;
CountB = 0;
CountSame = 0;
for row = 1:4
    for col = 1:6
        if A(row,col) > B(row,col)
            C(row,col) = A(row,col);
            CountA = CountA + 1;
        elseif B(row,col) > C(row,col)
            C(row,col) = B(row,col); 
            CountB = CountB + 1;
        else
            C(row,col) = B(row,col);
            CountSame = CountSame + 1;
        end  
    end    
end
fprintf('C = \n');
disp(C);
fprintf('A Greater: %i\nB Greater: %i\nSame: %i\n', CountA,CountB,CountSame);

%%

% Rock Paper Scissors Lizard Spock
Play = 1;
Win = 0;
Lose = 0;
Tie = 0;
rng('shuffle');
Picks = {'Rock','Paper','Scissors','Lizard','Spock'};
A = [3 2 1 1 2;1 3 2 2 1;2 1 3 1 2;2 1 2 3 1;1 2 1 2 3];
while Play == 1
    Choice = menu('Choose One',' Rock','Paper','Scissors','Lizard','Spock');
    Computer = randi(5);
    if A(Choice,Computer) == 1
        Win = Win + 1;
        Outcome = 'Win';
    elseif A(Choice,Computer) == 2
        Lose = Lose + 1;
        Outcome = 'Lose';
    else
        Tie = Tie + 1;
        Outcome = 'Tie';
    end
    fprintf('\nChoice: %s\nComputer: %s\nOutcome: %s\n',Picks{Choice},Picks{Computer},Outcome);
    Play = menu('Do you want to continue playing?','Yes','No');
end
fprintf('\nTotal Won: %i\nTotal Lost: %i\nTotal Tie: %i\n',Win,Lose,Tie);
