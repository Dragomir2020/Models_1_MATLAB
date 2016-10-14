clear; clc;
t = [-1 3 8 7 2];

if t(1) > 0
    charge = 'positive';
elseif t(1) < 0
    charge = 'negative';
else
    charge = 0;
end
fprintf('t(1) is %s. \n',charge);

 if t(2) <= 10 && t(2) >=6
     between = 'Yes';
     word = 'is';
 else
     between = 'No';
     word = 'is not';
 end
 fprintf('%s, the value %s between 6 and 10. \n',between,word);
 
 if t(2) > t(4)
     size = 'greater than';
 elseif t(2) < t(4)
     size = 'less than';
 else
     size = 'equal to';
 end
 fprintf('t(2) = %i and t(4) = %i so t(2) is %s t(4). \n',t(2),t(4),size);
%% 
 
clear; clc;
%Create Variables By Promting User to Enter Them
Name = input('Enter Your Name: ', 's'); %Stores Name in variable
Age = input('Enter Your Age: '); %Stores Age in variable
City = input('Enter Your City: ', 's'); %Stores City in variable
State = input('Enter Your State: ', 's'); %Stores State in variable
Zipcode = input('Enter Your Zipcode: '); %Stores Zipcode in variable

fprintf('Hello %s \n Age = %i \n City = %s \n State = %s \n Zipcode = %i', Name, Age, City, State, Zipcode);

Re_enter = menu('Is This Information Correct? ', 'Yes', 'No');

switch Re_enter
    case 2
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
    otherwise
        fprintf('\nThank you %s, have a wonderful day!',Name);
end 
 
%%
       
clear;clc;        
%Promt user for values of resistors and ask if the circuit is is series or parallel        
Circuit = menu('Is the circuit in series or parallel? ', 'Series', 'Parallel');
R1 = input('Enter resistance of first resister(Ohms): '); 
R2 = input('Enter resistance of second resister(Ohms): ');
AppliedV = input('Enter the applied voltage to the ciruit(V): ');        
if Circuit == 1 %Find values for a circuit in series
Total_Resistance = R1 + R2;  
Current_Through1 = AppliedV/Total_Resistance;
Current_Through2 = AppliedV/Total_Resistance;
Voltage_Across1 = Current_Through1 * R1;
Voltage_Across2 = Current_Through2 * R2;
else  %Find values for circuit in parallel
Total_Resistance = (R1 * R2)/(R1 + R2); 
Current_Through1 = AppliedV/R1;
Current_Through2 = AppliedV/R2;
Voltage_Across1 = AppliedV;
Voltage_Across2 = AppliedV;
end

fprintf('\nTotal resistance is: %0.4f Ohms\nCurrent through resistor one: %0.4f Amps\nCurrent through resistor two: %0.4f Amps\nVoltage across resistor one: %0.4f V\nVoltage across resistor two: %0.4f V\n',Total_Resistance ,Current_Through1 ,Current_Through2, Voltage_Across1, Voltage_Across2);

%%
%Problem 4
clear; clc;
Total = input('How much would you would like to buy in: ');

while Total > 0
fprintf('Total: $%i\n',Total);
    
Wager = input('How much would you like to wager(US dollars): ');
Bet = menu('The sum of the dice will be?','Over 7','Equal to 7','Under 7');
rng('shuffle'); %Important to shuffle or first random number will always be the same
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
end