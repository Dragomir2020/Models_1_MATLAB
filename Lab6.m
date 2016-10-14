clear;clc;
%inputs
rng('shuffle');
Dice_Rolls = input('How many times would you like to roll the dice: ');
%Creates a vector of zeros to store dice rolls in
Count = zeros([1,6]);
%Analysis
for x = (1:1:Dice_Rolls)
    
    Dice_Numbers(x) = randi([1 6],1);
    
if Dice_Numbers(x) == 1
    Count(1) = Count(1) + 1;
elseif Dice_Numbers(x) == 2
    Count(2) = Count(2) +1;
elseif Dice_Numbers(x) == 3
    Count(3) = Count(3) + 1;
elseif Dice_Numbers(x) == 4
    Count(4) = Count(4) + 1;
elseif Dice_Numbers(x) == 5
    Count(5) = Count(5) + 1;
else 
    Count(6) = Count(6) + 1;   
end
end
Prob = (Count/Dice_Rolls) * 100;


%Outputs
fprintf('\nProbability 1: %0.2f%%\nProbability 2: %0.2f%%\nProbability 3: %0.2f%%\nProbability 4: %0.2f%%\nProbability 5: %0.2f%%\nProbability 6: %0.2f%%\n', Prob(1),Prob(2),Prob(3),Prob(4),Prob(5),Prob(6));

%%
clear;clc;
%inputs
rng('shuffle');
Dice_Rolls = input('How many times would you like to roll the dice: ');
%Creates a vector of zeros to store dice rolls in
Count = zeros([1,11]);
%Analysis
for x = (1:1:Dice_Rolls)
    
    Dice_Numbers = randi([1 6],[1 2]);
    Sum = Dice_Numbers(1) + Dice_Numbers(2); 
if Sum == (2)
    Count(1) = Count(1) + 1;
elseif Sum == (3)
    Count(2) = Count(2) + 1;
elseif Sum == (4)
    Count(3) = Count(3) + 1;
elseif Sum == (5)
    Count(4) = Count(4) + 1;
elseif Sum == (6)
    Count(5) = Count(5) + 1;
elseif Sum == (7)
    Count(6) = Count(6) + 1;
elseif Sum == (8)
    Count(7) = Count(7) + 1;
elseif Sum == (9)
    Count(8) = Count(8) + 1;
elseif Sum == (10)
    Count(9) = Count(9) + 1;
elseif Sum == (11)
    Count(10) = Count(10) + 1;
else 
    Count(11) = Count(11) + 1;   
end
end

Prob = (Count/Dice_Rolls) * 100;


%Outputs
fprintf('\nProbability 2: %0.2f%%\nProbability 3: %0.2f%%\nProbability 4: %0.2f%%\nProbability 5: %0.2f%%\nProbability 6: %0.2f%%\nProbability 7: %0.2f%%\nProbability 8: %0.2f%%\nProbability 9: %0.2f%%\nProbability 10: %0.2f%%\nProbability 11: %0.2f%%\nProbability 12: %0.2f%%\n', Prob(1),Prob(2),Prob(3),Prob(4),Prob(5),Prob(6),Prob(7),Prob(8),Prob(9),Prob(10),Prob(11));
%%
%Alternate Method for problem C
clear;clc;
%inputs
rng('shuffle');
Dice_Rolls = input('How many times would you like to roll the dice: ');
%Creates a vector of zeros to store dice rolls in
Count = zeros([1,11]);
%Analysis
for x = (1:1:Dice_Rolls)
    
    Dice_Numbers = randi([1 6],[1 2]);
    Sum = Dice_Numbers(1) + Dice_Numbers(2); 
    Count(Sum-1) = Count(Sum-1)+1;
end

Prob = (Count/Dice_Rolls) * 100;


%Outputs
fprintf('\nProbability 2: %0.2f%%\nProbability 3: %0.2f%%\nProbability 4: %0.2f%%\nProbability 5: %0.2f%%\nProbability 6: %0.2f%%\nProbability 7: %0.2f%%\nProbability 8: %0.2f%%\nProbability 9: %0.2f%%\nProbability 10: %0.2f%%\nProbability 11: %0.2f%%\nProbability 12: %0.2f%%\n', Prob(1),Prob(2),Prob(3),Prob(4),Prob(5),Prob(6),Prob(7),Prob(8),Prob(9),Prob(10),Prob(11));
%%
clear;clc;
%inputs
rng('shuffle');
Dice_Rolls = input('How many times would you like to roll the dice: ');
%Creates a vector of zeros to store dice rolls in
Count = zeros([1,4]);
%Analysis
for x = (1:1:Dice_Rolls)
    
    Dice_Numbers = randi([1 6],[1 5]);
    Dice_Numbers = sort(Dice_Numbers);
  if Dice_Numbers(1) == Dice_Numbers(5)
      Type = 'Five of a kind';
      Count(1) = Count(1) +1;
  elseif Dice_Numbers(1) == Dice_Numbers(4) || Dice_Numbers(2)  == Dice_Numbers(5)
      Type = 'Four of a kind';
      Count(2) = Count(2) + 2;
  elseif Dice_Numbers(1) == Dice_Numbers(3) || Dice_Numbers(2) == Dice_Numbers(4) || Dice_Numbers(3) == Dice_Numbers(5)
      Type = 'Three of a kind';
      Count(3) = Count(3) + 1;
  elseif  Dice_Numbers(1) == Dice_Numbers(2) || Dice_Numbers(2) == Dice_Numbers(3) || Dice_Numbers(3) == Dice_Numbers(4) || Dice_Numbers(4) == Dice_Numbers(5)
      Type = 'Two of a kind';
      Count(4) = Count(4) + 1;
  else
      Type = 'No matching dice';
  end
 
end

Prob = (Count/Dice_Rolls)*100;

fprintf('Probability of 5 of a kind: %0.2f%%\nProbability of 4 of a kind: %0.2f%%\nProbability of 3 of a kind: %0.2f%%\nProbability of 2 of a kind: %0.2f%%\n',Prob(1),Prob(2),Prob(3),Prob(4));



