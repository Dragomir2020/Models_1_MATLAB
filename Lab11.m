clear; clc;
%Input
R1 = input('Resistor 1 value: ');
R2 = input('Resistor 2 value: ');
SV = input('Source Voltage: ');
T1 = input('Tolerance 1 percentage: ');
T2 = input('Tolerance 2 percentage: ');
AVT1 = input('Acceptable voltage tolerance resistor 1 percentage: ');
AVT2 = input('Acceptable voltage tolerance resistor 2 percentage: ');

%Analysis
%Resistor Ranges
T1decimal = T1/100;
T2decimal = T2/100;
R1Min = R1 - (R1*T1decimal);
R1Max = R1 + (R1*T1decimal);
R2Min = R2 - (R2*T2decimal);
R2Max = R2 + (R2*T2decimal);
%Acceptable Resistor Voltages
V1 = (R1/(R1+R2))*SV;
V2 = (R2/(R1+R2))*SV;
AVT1decimal = AVT1/100;
AVT2decimal = AVT2/100;
ARV1Min = V1 - AVT1decimal*V1;
ARV1Max = V1 + AVT1decimal*V1;
ARV2Min = V2 - AVT2decimal*V2;
ARV2Max = V2 + AVT2decimal*V2;

Voltages = zeros(500);
row = 0;
for R1Test = linspace(R1Min,R1Max,500)
    row = row + 1;
    col = 0;
    for R2Test = linspace(R2Min,R2Max,500)
        col = col + 1;
        V1Test = (R1Test/(R1Test+R2Test))*SV;
        V2Test = (R2Test/(R1Test+R2Test))*SV;
        if V1Test >= ARV1Min && V1Test <= ARV1Max && V2Test >= ARV2Min && V2Test <= ARV2Max
            %Voltage is in range
            Voltages(row,col) = 255;
        else
           Voltages(row,col) = 0; 
            %Voltage is out of range
        end
    end 
end
imshow(uint8(Voltages));
xlabel('Resistor 2');
ylabel('Resistor 1');
%%
%Monte Carlo Analysis
clear; clc;
%Input
R1 = input('Resistor 1 value: ');
R2 = input('Resistor 2 value: ');
SV = input('Source Voltage: ');
T1 = input('Tolerance 1 percentage: ');
T2 = input('Tolerance 2 percentage: ');
AVT1 = input('Acceptable voltage tolerance resistor 1 percentage: ');
AVT2 = input('Acceptable voltage tolerance resistor 2 percentage: ');

%Analysis
%Resistor Ranges
T1decimal = T1/100;
T2decimal = T2/100;
%Acceptable Resistor Voltages
V1 = (R1/(R1+R2))*SV;
V2 = (R2/(R1+R2))*SV;
AVT1decimal = AVT1/100;
AVT2decimal = AVT2/100;
ARV1Min = V1 - AVT1decimal*V1;
ARV1Max = V1 + AVT1decimal*V1;
ARV2Min = V2 - AVT2decimal*V2;
ARV2Max = V2 + AVT2decimal*V2;

InRange = 0;
OutOfRange = 0;
ResistanceV = zeros(2,10000);
for k = 1:10000
resistor_value1 = R1 + ((T1decimal*R1)/2)*randn(1);
resistor_value2 = R2 + ((T2decimal*R2)/2)*randn(1);
ResV1 = (resistor_value1/(resistor_value1+resistor_value2))*SV;
ResV2 = (resistor_value2/(resistor_value1+resistor_value2))*SV;
ResistanceV(1,k)= ResV1;
ResistanceV(2,k)= ResV2;

        if  ResistanceV(1,k) >= ARV1Min && ResistanceV(1,k) <= ARV1Max && ResistanceV(2,k) >= ARV2Min && ResistanceV(2,k) <= ARV2Max
            %Voltage is in range
            InRange = InRange + 1;
        else
           OutOfRange = OutOfRange + 1;
            %Voltage is out of range
        end

end
figure(1); hist(ResistanceV(1,:),100);
xlabel('\bfVoltages','FontSize',12);
ylabel('\bfNumber of Occurences','FontSize',12);
figure(2); hist(ResistanceV(2,:),100);
xlabel('\bfVoltages','FontSize',12);
ylabel('\bfNumber of Occurences','FontSize',12);
ProbabilityBad = (OutOfRange/10000)*100;
fprintf('Probability of Bad Circuit: %0.2f%%\n',ProbabilityBad);


