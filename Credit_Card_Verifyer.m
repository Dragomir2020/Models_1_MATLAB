clear; clc;
CCN = input('Please enter your 16 digit credit card number with spaces: ','s');
Add_Every_Other = 0;
for x = 2:2:16
    Add_Every_Other = CCN(x)+ Add_Every_Other;
end