clear; clc;
%Create Variables By Promting User to Enter Them
Name = input('Enter Your Name: ', 's'); %Stores Name in variable
Age = input('Enter Your Age: '); %Stores Age in variable
City = input('Enter Your City: ', 's'); %Stores City in variable
State = input('Enter Your State: ', 's'); %Stores State in variable
Zipcode = input('Enter Your Zipcode: '); %Stores Zipcode in variable

fprintf('Hello %s \n Age = %i \n City = %s \n State = %s \n Zipcode = %i', Name, Age, City, State, Zipcode);

Re_enter = menu('Is This Infomation Correct? ', 'Yes', 'No');

switch Re_enter
    case 2
        Name = input('Enter Your Name: ', 's'); %Stores Name in variable
        Age = input('Enter Your Age: '); %Stores Age in variable
        City = input('Enter Your City: ', 's'); %Stores City in variable
        State = input('Enter Your State: ', 's'); %Stores State in variable
        Zipcode = input('Enter Your Zipcode: '); %Stores Zipcode in variable
    otherwise
        disp('Have a Wonderful Day!');
end
%%
clear;clc;
%(input statements)
Period = input('Enter Value of Period. ');
%Determine Frequency
f = 1/Period;
%Displa frequency to user
fprintf('The frequency of the square wave function is %2.2f Hz \n',f);
%Prompt User for the duty cycle and number of cycles.
tau = input('Enter Duty Cycle. ');
N = input('Enter number of desired cycles. ');
%Calculate t values from 0 to the number of desired cycles
t = 0:Period/100:N*Period-Period/100;
AppliedVoltage = 2.5*square(2*pi*f*t,tau)+2.5 ;

plot(t,AppliedVoltage,'b:');
ylim([-1 6]);
fprintf('Average Amplitude = %0.1f V\n',mean(AppliedVoltage));

xlabel('\bfTime (sec)','FontSize',12);
ylabel('\bfVoltage (V)','FontSize',12);
title('\bfSquare Wave Voltage');

%%
clear;clc;
%Promts User to pick the three color values
FirstColor = menu('What is the first color? ','Black','Brown','Red','Orange','Yellow','Green','Blue','Violet','Gray','White');
SecondColor = menu('What is the second color? ','Black','Brown','Red','Orange','Yellow','Green','Blue','Violet','Gray','White');
ThirdColor = menu('What is the third color? ','Black','Brown','Red','Orange','Yellow','Green','Blue','Violet','Gray','White');
FourthColor = menu('What is the fourth color? ','Gold','Silver','None');
%Subtracts 1 from each value to get the actual value of the color
FirstColor = FirstColor - 1;
SecondColor = SecondColor - 1;
ThirdColor = ThirdColor - 1;
%Calculates the nominal value using the first three colors
NominalValue = (FirstColor*10 + SecondColor)*10^ThirdColor;
%Calculate the range of the circuit from the possible error
switch FourthColor
    case 1
        Varience = NominalValue*0.05;
    case 2
        Varience = NominalValue*0.1;
    case 3
        Varience = NominalValue*0.2;
end
%Calculate the upper and lower bounds of the resitors range
LowerBound = NominalValue - Varience;
UpperBound = NominalValue + Varience;

%Display the final results
fprintf('The Nominal Value of the Resistor is %1.1f Ohms\n',NominalValue);
        
fprintf('The Range of the Resistor is [%1.1f,%1.1f] Ohms',LowerBound,UpperBound);    
        
       

