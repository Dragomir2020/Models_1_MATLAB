 
clear; clc;
%Create Variables By Promting User to Enter Them

Name = input('Enter Your Name: ', 's'); %Stores Name in variable
Age = input('Enter Your Age: '); %Stores Age in variable
City = input('Enter Your City: ', 's'); %Stores City in variable
State = input('Enter Your State: ', 's'); %Stores State in variable
Zipcode = input('Enter Your Zipcode: '); %Stores Zipcode in variable

fprintf('Hello %s \n Age = %i \n City = %s \n State = %s \n Zipcode = %i', Name, Age, City, State, Zipcode);

Re_enter = menu('Is This Information Correct? ', 'Yes', 'No');

while Re_enter == 2

   New_Info = menu('What information did you enter wrong?','Name','Age','City','State','Zipcode');
        
        switch New_Info
            case 1
              Name = input('\nEnter Your Name: ', 's'); %Stores Name in variable   
            case 2
              Age = input('\nEnter Your Age: '); %Stores Age in variable   
            case 3
              City = input('\nEnter Your City: ', 's'); %Stores City in variable  
            case 4
              State = input('\nEnter Your State: ', 's'); %Stores State in variable 
            case 5
              Zipcode = input('\nEnter Your Zipcode: '); %Stores Zipcode in variable  
        end
        fprintf('Hello %s \n Age = %i \n City = %s \n State = %s \n Zipcode = %i', Name, Age, City, State, Zipcode);       
    
   Re_enter = menu('Is This Information Correct? ', 'Yes', 'No');    
end

fprintf('\nThank you %s, have a wonderful day!',Name);
%%

clear;
Year = 2010:2015;
Users(:,1) = [36.2; 26.2; 20.1; 14.3; 10.2; 7.8];
Users(:,2) = [46.3; 42.8; 37.2; 30.2; 26.9; 23.4];
Users(:,3) = [10.8; 23.8; 35.3; 48.4; 55.7; 61.9];
Users(:,4) = [3.7; 4.0; 4.3; 4.2; 3.9; 3.8];
%plot(Year, Users, ':o');
bar(Year, Users);
xlabel('\bfYear','FontSize', 14);
ylabel('\bfPercent','FontSize',14);
legend('Explorer','Fire','Chrome','Safari');

%% Problem 3
Angle = input('Enter the angle in radians(0,2pi):  ');
Estimate = 0;
Estimate_old = 1;
term = 0;
Actual = sin(Angle);
Count = 0;
%Analysis
while abs(Estimate - Estimate_old) > 0.00001
    term = (-1)^(Count)*Angle^(Count*2+1)/factorial(Count*2+1);
    Estimate_old = Estimate;
    Estimate = Estimate + term;
    Count = Count + 1;
end
%Outputs
fprintf('Estimate: %0.6f \nActual: %0.6f\nNumber of Terms: %i\n',Estimate, Actual, Count); 
%%
%Problem 4
clear; clc;
rng('shuffle'); %Important to shuffle or first random number will always be the same
Total = input('How much would you like to buy in: ');
Play = 1;
while Total > 0 && Play == 1
fprintf('Total: $%0.2f\n',Total);
    
Wager = input('How much would you like to wager(US dollars): ');
    while Wager > Total || Wager < 0
    fprintf('Balance : $%0.2f\n',Total);
    disp('Enter bet which does not exceed your balance!');
    Wager = input('How much would you like to wager(US dollars); ');
    end
Bet = menu('The sum of the dice will be?','Over 7','Equal to 7','Under 7');

Dice1 = randi([1 6],1); Dice2 = randi([1 6],1); 
Sum = Dice1 + Dice2;
fprintf('Dice 1 = %i\nDice 2 = %i\nSum = %i',Dice1,Dice2,Sum);
%calculates whether the bet matches the sum of the two dice
if Bet == 1
   if Sum > 7
       Payout = Wager;
       Total = Total + Payout;
       fprintf('\nCongratulations you have won.\nPayout: $%i\n',Payout);
   else
       fprintf('\nSorry %i is not greater than 7. You have lost.\n',Sum);
       Total = Total - Wager;
   end
elseif Bet == 2
     if Sum == 7
         Payout = Wager * 4;
         Total = Total + Payout;
         fprintf('\nCongratulations you have won.\nPayout: $%i\n',Payout);
     else
         fprintf('\nSorry %i is not equal to 7. You have lost.\n',Sum);
         Total = Total - Wager;
     end
else
    if Sum < 7
       Payout = Wager;
       Total = Total + Payout;
       fprintf('\nCongratulations you have won.\nPayout: $%i\n',Payout);
    else
        fprintf('\nSorry %i is not less than 7. You have lost.\n',Sum);
        Total = Total - Wager;
    end
end
fprintf('Balance: $%0.2f\n',Total);
Play = menu('Would you like to continue playing?','Yes','No');
end

fprintf('Final balance: $%0.2f\n',Total);



