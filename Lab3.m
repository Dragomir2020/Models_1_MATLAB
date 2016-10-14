%Total Electricity
clear;clc;
%Input: Raw Data from Excel File
USyear = xlsread('UNdata_TotalElectricity(1).xlsx','C24:C45');
USquantity = xlsread('UNdata_TotalElectricity(1).xlsx','E24:E45');
USyear0 = USyear - 1991;

%Analysis: Curve Fitting (Treadline)
Coeff_USquantity = polyfit(USyear0,USquantity,1);
y_fit_quantity = polyval(Coeff_USquantity,USyear0);

%Output: Plots With Treadline
subplot(2,1,1);
plot(USyear0,USquantity,'r*');
hold on;
plot(USyear0,y_fit_quantity,'k-','LineWidth',3);
hold on;
title( '\bfUS Electricity Production','FontSize',14);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bf(kWh in millions)','FontSize',12);
legend('Data','Curve Fit');
%Analysis (Calc Residual)
residual = USquantity - y_fit_quantity;
%Plot residual bar graph
subplot(2,1,2);
bar(residual);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bfResidual','FontSize',14);
%%

%Wind Production

clear;clc;
%Input: Raw Data from Excel File
USyear = xlsread('USdata_WindProduction(1).xlsx','C2:C23');
USquantity = xlsread('USdata_WindProduction(1).xlsx','E2:E23');
USyear0 = USyear - 1991;

%Analysis: Curve Fitting (Treadline)
Coeff_USquantity = polyfit(USyear0,USquantity,3);
y_fit_quantity = polyval(Coeff_USquantity,USyear0);

%Output: Plots With Treadline
subplot(2,1,1);
plot(USyear0,USquantity,'r*');
hold on;
plot(USyear0,y_fit_quantity,'k-','LineWidth',3);
hold on;
title( '\bfUS Wind Production','FontSize',14);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bf(kWh in millions)','FontSize',12);
legend('Data','Curve Fit');
%Analysis (Calc Residual)
residual = USquantity - y_fit_quantity;
%Plot residual bar graph
subplot(2,1,2);
bar(residual);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bfResidual','FontSize',14);

%%

%Solar Vs Wind Electricity

clear;clc;
%Input: Raw Data from Excel File
USyear = xlsread('USdata_WindProduction(1).xlsx','C2:C23');
USquantity_wind = xlsread('USdata_WindProduction(1).xlsx','E2:E23');
USquantity_solar = xlsread('USdata_SolarProduction(1).xlsx','E2:E23');
USyear0 = USyear - 1991;

%Analysis: Curve Fitting (Treadline)
Coeff_USquantity_wind = polyfit(USyear0,USquantity_wind,3);
y_fit_wind = polyval(Coeff_USquantity_wind,USyear0);

Coeff_USquantity_solar = polyfit(USyear0,USquantity_solar,3);
y_fit_solar = polyval(Coeff_USquantity_solar,USyear0);
%Output: Plots With Treadline
subplot(2,1,1);
plot(USyear0,USquantity_wind,'bo');
hold on;
plot(USyear0,y_fit_wind,'b-','LineWidth',3);
hold on;
title( '\bfUS Wind Production','FontSize',14);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bf(kWh in millions)','FontSize',12);
legend('Data','Curve Fit');
plot(USyear0,USquantity_solar,'gs');
hold on;
plot(USyear0,y_fit_solar,'g-','LineWidth',3);
hold on;
title( '\bfUS Renewable Energy Production','FontSize',14);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bf(kWh in millions)','FontSize',12);
legend('Wind','Curve Fit','Solar','Curve Fit');

%Analysis (Calc Residual)
Residuals_wind = USquantity_wind - y_fit_wind;
Residuals_solar = USquantity_solar - y_fit_solar;

%Plot residual bar graph
subplot(2,1,2);
bar(USyear0,[Residuals_wind Residuals_solar]);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bfResidual','FontSize',14);
legend('Wind','Solar');

%%
%Total Electricity China and US
clear;clc;
%Input: Raw Data from Excel File
USyear = xlsread('UNdata_TotalElectricity(1).xlsx','C24:C45');
USquantity = xlsread('UNdata_TotalElectricity(1).xlsx','E24:E45');
Chinaquantity = xlsread('UNdata_TotalElectricity(1).xlsx','E2:E23');
USyear0 = USyear - 1991; 

%Analysis: Curve Fitting (Treadline)
Coeff_USquantity = polyfit(USyear0,USquantity,3);
y_fit_quantityUS = polyval(Coeff_USquantity,USyear0);

Coeff_Chinaquantity = polyfit(USyear0,Chinaquantity,3);
y_fit_quantityChina = polyval(Coeff_Chinaquantity,USyear0);
%Output: Plots With Treadline

plot(USyear0,USquantity,'bo');
hold on;
plot(USyear0,y_fit_quantityUS,'b-','LineWidth',3);
hold on;
plot(USyear0,Chinaquantity,'go');
hold on;
plot(USyear0,y_fit_quantityChina,'g-','LineWidth',3);
hold on;
title( '\bfElectricity Production','FontSize',14);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bf(kWh in millions)','FontSize',12);
legend('US','Curve Fit','China','Curve Fit');

%%
%Energy Production Per Capita (China vs US)
clear;clc;
%Input: Raw Data from Excel File
USpop = xlsread('PopulationData(1).xlsx','D24:D45');
Chinapop = xlsread('PopulationData(1).xlsx','D2:D23');
USyear = xlsread('UNdata_TotalElectricity(1).xlsx','C24:C45');
USquantity = xlsread('UNdata_TotalElectricity(1).xlsx','E24:E45');
Chinaquantity = xlsread('UNdata_TotalElectricity(1).xlsx','E2:E23');
USyear0 = USyear - 1991; 

%Analysis Electricity Per Capita
USpercapita = USquantity./USpop;
Chinapercapita = Chinaquantity./Chinapop;

%Analysis: Curve Fitting (Treadline)
Coeff_USpercapita = polyfit(USyear0,USpercapita,3);
y_fit_quantityUS = polyval(Coeff_USpercapita,USyear0);

Coeff_Chinapercapita = polyfit(USyear0,Chinapercapita,3);
y_fit_quantityChina = polyval(Coeff_Chinapercapita,USyear0);
%Output: Plots With Treadline

plot(USyear0,USpercapita,'bo');
hold on;
plot(USyear0,y_fit_quantityUS,'b-','LineWidth',3);
hold on;
plot(USyear0,Chinapercapita,'go');
hold on;
plot(USyear0,y_fit_quantityChina,'g-','LineWidth',3);
hold on;
title( '\bfElectricity Production','FontSize',14);
xlabel('\bfYear (from 1991)','FontSize',14);
ylabel('\bfkW Per Capita','FontSize',12);
legend('US','Curve Fit','China','Curve Fit');

