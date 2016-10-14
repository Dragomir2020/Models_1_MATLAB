clear; clc;
%Enter inputs
BasePay = input('Enter your base pay: ');
Hours = input('Enter your hours per week: ');
Dependants = input('How many dependants do you have: ');
%Calculate Gross Pay
if Hours <= 40 && Hours >= 0
    GrossPay = BasePay * Hours;
    

elseif Hours >=40
    GrossPay = (BasePay*40)+((Hours-40)*(BasePay*1.5));
        
else
        disp('You have entered an negative number of hours');
end
%Determine Tax
fprintf('Gross Pay: $%0.2f\n',GrossPay);
SocialSecurityTax = (GrossPay*0.06);
fprintf('Social Security Tax: $%0.2f\n',SocialSecurityTax);
FederalIncomeTax = (GrossPay*0.14);
fprintf('Federal Income Tax: $%0.2f\n',FederalIncomeTax);
StateIncomeTax = (GrossPay*0.05);
fprintf('State Income Tax: $%0.2f\n',StateIncomeTax);
UnionDues = 10;
fprintf('Union Dues: $%0.2f\n',UnionDues);
%Determine Dependants
if Dependants <= 2 && Dependants >= 0
    Healthcare = 0;
elseif Dependants >= 3
    Healthcare = 35;
else
    disp('You have entered a negative number');
end
fprintf('Healthcare: $%0.2f\n',Healthcare);
NetPay = (GrossPay - SocialSecurityTax - FederalIncomeTax - StateIncomeTax - UnionDues - Healthcare);
%Displays net pay after all deductions
fprintf('Netpay: $%0.2f\n',NetPay);

