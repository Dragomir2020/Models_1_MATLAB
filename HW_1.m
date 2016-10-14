clear; clc;
t1 = -1:0.4:1.4;
t2 = linspace(0,12,9);
%%
clear;clc;
t = -4:0.5:6;
y = t.^4 - 3.5*t.^3 - 7.5*t.^2 + 17*t + 20;
plot(t,y,'ro:');
%%
clear;clc;
t = 0:0.5:10;
C = exp(-0.4*t);
plot(t,C,'bo:');hold on;

xlabel('\bfTime (sec)','FontSize',12);
ylabel('\bfConcentration (M)','FontSize',12);
title('\bfHydrogen Peroxide Decomposition','FontSize',14);
%%
clear;clc;
t = 0:0.0001:0.02;
y = sin(2*pi*(250)*t);
plot(t,y,'go:');

xlabel('\bfTime (sec)','FontSize',12);
%%
%Dampening Motion(
clear;clc;
t = 0:0.1:3;
p =  exp(-2*t).*(cos(2*pi*(10)*t));
v = ((-2*exp(-2*t)).*(cos(2*pi*(10)*t)))-((20*pi*exp(-2*t)).*(sin(2*pi*(10)*t)));
subplot(2,1,1);
plot(t,p,'bo:');hold on;
xlabel('\bfTime (sec)','FontSize',12);
ylabel('\bfPosition (cm)','FontSize',12);
title('\bfBehavior of Mass Connected to a Spring','FontSize',14);
subplot(2,1,2);
plot(t,v,'ro:');hold on;
xlabel('\bfTime (sec)','FontSize',12);
ylabel('\bfVelocity (cm/s)','FontSize',12);
