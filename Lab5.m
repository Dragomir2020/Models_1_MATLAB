clear;clc;
%Promt user for mass in kg
%inputs
mass = input('Please Enter the Mass in Kilograms (kg): ');
conversion = menu('Convert mass to ','lbm','slugs');
switch conversion
    case 1
    mass2 = 2.2046226218488*mass; 
    units = 'lbm';
    case 2
    mass2 = (mass*0.0685217659); %converts mass to slugs 
    units = 'slugs';
end
fprintf('The mass is %0.3f %s.\n',mass2,units);
%%
%Ph of a solution
clear; clc;
PH = input('PH of the solution: ');
%Check PH to see if it is in range
if (PH <= 0) ~= (PH >= 14)
    error('Your PH is not in the proper range. ');
   
end

%is the ph acidic neutral or basic
if PH >7 && PH <= 14
    Solution = 'Basic';
    
elseif PH >= 0 && PH< 7
    Solution = 'Acidic';
    
else
    Solution = 'Neutral';
    
end

fprintf('Your solution is %s.\n',Solution);
%%
%Condition of a presserized water reactor
%%Prompt user to enter the pressure and temperature
clear; clc;
Temperature = input('Enter Temperature of the Reactor (degreesC): ');
Pressure = input('Enter Pressure of the Reactor (atm): ');

%Check the temp and pressure against predetermined values
if Temperature > 355 || Pressure > 0.100
    state = 'Melt Down';
elseif Temperature > 345 || Pressure > 0.095 
    state = 'Very Severe';
elseif Temperature > 335 || Pressure > 0.090
    state = 'Severe';
elseif Temperature > 325 || Pressure > 0.085
    state = 'Moderate';
elseif Temperature <= 325 || Pressure <= 0.085
    state = 'Normal';
else
    error('An Error Has Occured. Please See Technichian.');
    
end
%Print the values entered
fprintf('The Temperature Entered is %0.3f degrees Celcius.\n',Temperature);
fprintf('The Pressure Entered is %0.3f atm. \n',Pressure);

%Print the state of the reactor
fprintf('The Nuclear Reactor is categorized as %s.\n',state);





