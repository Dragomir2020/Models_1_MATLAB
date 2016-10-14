%World Population
clear;clc;
%Input: Raw Data from Excel File
year = xlsread('HW2_WorldPopulation.xlsx','A2:A52');
WorldPop = xlsread('HW2_WorldPopulation.xlsx','B2:B52');
year0 = year - 1950;

%Analysis: Curve Fitting (Treadline)
%Change the last number in the polyfit command to change order of polynomial
%curve fit
Coeff_WorldPop = polyfit(year0,WorldPop,5);
y_fit_quantity = polyval(Coeff_WorldPop,year0);

%Output: Plots With Treadline
plot(year0,WorldPop,'bo');
hold on;
plot(year0,y_fit_quantity,'g-','LineWidth',3);
hold on;
title( '\bfWorld Population','FontSize',14);
xlabel('\bfYear (from 1950)','FontSize',14);
ylabel('\bfPeople(millions)','FontSize',12);
legend('World Population','Curve Fit');
format short;
Estimated = polyval(Coeff_WorldPop,63);
Actual = 7089;

Error = abs((Estimated - Actual)/Actual)*100;

%%
%Curve Fitting- Tragectory of Projectile

clear;clc;
%Input: Raw Data from Excel File
time = xlsread('ProjectileData.xlsx','A2:A22');
range = xlsread('ProjectileData.xlsx','B2:B22');
height = xlsread('ProjectileData.xlsx','C2:C22');

%Analysis: Curve Fitting (Treadline)
Coeff_Height = polyfit(time,height,2);
y_fit_Height = polyval(Coeff_Height,time);

%Output: Plots With Treadline

plot(time,height,'bo');
hold on;
plot(time,y_fit_Height,'b-','LineWidth',3);
hold on;

title( '\bfHeight of Projectile','FontSize',14);
xlabel('\bfTime (sec)','FontSize',14);
ylabel('\bfHeight (m)','FontSize',12);
Actual = -4.9;
Estimated = -4.8842;
Error = abs((Estimated - Actual)/ Actual)*100

