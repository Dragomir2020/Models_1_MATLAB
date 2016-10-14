clear; clc;
%Inputs
Cube_Root_Number = input('CubeRoot ');
Estimate =  input('Initial Estimate: ');
Count = 0;
Actual = Cube_Root_Number^(1/3);
Error = abs(Number - Estimate^3);
%Analysis

while abs(Error) > 0.000001 
    Count = Count + 1;
    Estimate = 1/3*(2*Estimate + (Cube_Root_Number/Estimate^2));
    
    Error = abs(Cube_Root_Number - Estimate^3);
end

%Outputs
fprintf('\nEstimate: %0.3f\nActual: %0.3f\nCount: %i\n', Estimate, Actual, Count);

%%
clear; clc;
%Inputs
x = input('ln ');
Estimate = 0;
Count = 0;
Difference = 1;
Actual = log(x);
while x<=0 || x>2
    fprintf('Not a valid x-value\n'); 
    x = input('Enter value between 0<x<=2: ');   
end
n = 0;       
%Analysis
while abs(Difference) > 0.000001
    Count = Count+1;
    EstimatePre = Estimate;
    term = ((-1)^(n))*((x-1)^(1+n)/(1+n));
    Estimate = Estimate + term;
    n = n+1;
    Difference = abs(EstimatePre - Estimate);
end

%Outputs
fprintf('\nEstimate: %0.6f\nActual: %0.6f\nCount: %i\n',Estimate, Actual, Count);

