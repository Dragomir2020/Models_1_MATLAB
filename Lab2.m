% Lab 2: Plotting and Graphical Solutions
% Dillon Dragomir
clc; clear;

%Newton's Law
a = [5 10 12 15 25];
F = [2500 5000 6000 7500 12500];
plot(a,F,'--s');
xlabel('Acceleration (m/s^2)');
ylabel('Force(N)');
title('Newton''s Second Law of Motion');
%%
%Calories Burned While Biking
V = 3:0.5:20;
W = 125;
Rate_125 = 60*W*10.^((V/25)-1.85);
W = 175;
Rate_175 = 60*W*10.^((V/25)-1.85); 
plot(V,Rate_125,'--s',V,Rate_175,'--s');
legend('125(lbs)','175(lbs)')
xlabel('Velocity');
ylabel('Calories Burned');
title('Calories Burned While Biking');


%% 

%Stopping Sight Distance
clc;
clear;
f1 = 0.69; %Typical for a dry road and decent tires
f2 = 0.4; %Typical for a wet road and decent tires
G = 0.02;
tr = 2.0;
V_mph = 10:2.5:75;
V = V_mph*1.60934;
S_Dry = ((0.278*V).^2)/(19.6*(f1-G))+(0.278*V)*tr;
S_Wet = ((0.278*V).^2)/(19.6*(f2-G))+(0.278*V)*tr;
S_Dry_ft = S_Dry*3.28084;
S_Wet_ft = S_Wet*3.28084;
plot(V_mph,S_Dry_ft,'--s',V_mph,S_Wet_ft,'--s');hold on;
xlabel('\bfVelocity(mph)','FontSize',14); 
ylabel('\bfStopping Sight Distance(ft)','FontSize',14); 
legend('Dry','Wet');
title('Stopping Sight Distance Comparative to Road Conditions','FontSize',16);

