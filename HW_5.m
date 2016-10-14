%Problem 1
clear; clc;

x = 1;
y = 1;
for k = 1:4
    Sum = x + y;
    x = y;
    y = Sum;
end
%%
t = [ 0  -2  4  7  2 ];
count = 0;
for k = 1:length(t)
    if t(k) < 4
        count = count + 1;
	   location(count) = k;	
    end
end









%%
clear;clc;
%Inputs
Angle = input('sin ');
NO_Terms = input('Enter number of terms to be used in Taylor series: ');
Estimate = 0;
term = 0;
Actual = sin(Angle);
%Analysis
for n = 1:NO_Terms
    if rem(n,2) == 1
      term = Angle^(2*n-1)/factorial(2*n-1);
    elseif rem(n,2) == 0 
      term = -Angle^(2*n-1)/factorial(2*n-1);
    end
    %Different method to alternate signs
    %term = (-1)^(n-1)*Angle^(2*n-1)/factorial(2*n-1);
    Estimate = Estimate + term;
end
Error = abs(Actual - Estimate);
%Outputs
fprintf('Estimate = %0.6f\n',Estimate);
fprintf('Actual = %0.6f\n',Actual);
fprintf('Error = %0.6f\n',Error);
%%
%While loop method 
clear;clc;
%Inputs
Angle = input('sin ');
Estimate = 0;
Estimate_old = 1;
term = 0;
n = 1;
%Analysis
while abs(Estimate - Estimate_old) < 0.0001
    term = (-1)^(n-1)*Angle^(2*n-1)/factorial(2*n-1);
    Estimate_old = Estimate;
    Estimate = Estimate + term;
end

%Outputs
fprintf(' = %0.4f\n',Estimate);


%%
clear; clc;
%Inputs
x = [1  -2  3  5  4  2];
NO_Terms = numel(x)-1;


%Analysis
for n = 1:NO_Terms

    if x(n) > x(n+1)
    xnum = x(n);    
    x(n) = x(n+1);
    x(n+1) = xnum;
    else
        
    end
    
end


%Outputs
disp(x); 
