clear;clc;
%Input: Raw Data from Excel File
Time = xlsread('Lecture3Excel.xlsx','A2:A52');
Distance = xlsread('Lecture3Excel.xlsx','B2:B52');
Height = xlsread('Lecture3Excel.xlsx','C2:C52');



%Analysis: Curve Fitting (Treadline)
Coeff_distance = polyfit(Time,Distance,1);
y_fit_distance = polyval(Coeff_distance,Time);

Coeff_height = polyfit(Time,Height,2);
y_fit_height = polyval(Coeff_height,0:0.1:8);



%Output: Plots With Treadline

figure(1); clf;
plot(Time,Distance,'ro'); 
hold on;
plot(Time,y_fit_distance,'k-','LineWidth',3);
hold on;
xlabel('\bfTime (sec)','FontSize',14);
ylabel('\bfDistance (m)','FontSize',14);
legend('Data','Curve Fit');

figure(2); clf;
plot(Time,Height,'ro'); 
hold on;
plot(Time,y_fit_height,'k-','LineWidth',3);
hold on;
xlabel('\bfTime (sec)','FontSize',14);
ylabel('\bfHeight (m)','FontSize',14);
