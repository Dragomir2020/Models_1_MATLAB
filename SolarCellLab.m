clear;clc
Voltage = [0.0559 0.1166 0.235 0.513 1.722 1.918];
Watts = [3.024 6.32 12.667 27.6 61.85 36.83];
plot(Voltage,Watts,'bo','LineWidth',2);

title( '\bfSolar Panel Lab','FontSize',14);
xlabel('\bfVoltage (Volts)','FontSize',14);
ylabel('\bfPower (Watts)','FontSize',12);
legend('Data');