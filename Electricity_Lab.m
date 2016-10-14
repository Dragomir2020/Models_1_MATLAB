clear; clc;
t = 0:10:110;
Capacitor_Charging = [0 0.438 0.760 0.949 1.080 1.180 1.248 1.290 1.320 1.349 1.364 1.376];
Capacitor_Discharging = [1.376 0.905 0.657 0.451 0.374 0.206 0.153 0.102 0.0726 0.0514 0.0362 0.0265];

plot(t,Capacitor_Charging,'r:','LineWidth',2);hold on;
plot(t,Capacitor_Discharging,'b:','LineWidth',2);
Coeff_Discharging = polyfit(t,Capacitor_Discharging,3);
y_fit_discharging = polyval(Coeff_Discharging,t);
plot(t,y_fit_discharging);
Coeff_Charging = polyfit(t,Capacitor_Charging,3);
y_fit_charging = polyval(Coeff_Charging,t);
plot(t,y_fit_charging);

xlabel('\bfTime (sec)','FontSize',12);
ylabel('\bfCapacitor Voltage','FontSize',12);
title('\bfVoltage of a Capacitor','FontSize',14);
legend('Capacitor Charging','Capacitor Discharging');