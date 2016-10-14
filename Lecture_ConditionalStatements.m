clear; clc; clf;

%input
Choice = menu('How do you want to input data? ','Excel','Vector','Manual');

%option 1
if Choice == 1% (Option 1 from input raw data from file)
    FileString = input('What is the file name? ','s');% s means string
    time = xlsread('ProjectileData.xlsx','A2:A52');
    distance = xlsread('ProjectileData.xlsx','B2:B52');
    
   
%option 2
elseif Choice == 2
    time = 0:1:10;
    distance = [0 2 4 6 8 10 12 14 16 18 20];
elseif Choice == 3 %Allows user to input own data
    time = input('Input time values in units of seconds?');
    distance = input('Input time values in units of meters?');
end
%analysis

distance_mean = mean(distance);
%output

%disp('Average Distance in meters = '); disp('distance_mean');
fprintf('Average Distance in meters = %o.2f\n',distance_mean)
figure(1); clf;
plot(time,distance,'--s');hold on;
xlabel('\bfTime(sec)','FontSize',14); 
ylabel('\bfdistance(m)','FontSize',14); 

%%

clear; clc;
GradePoints = 105; %input('What is your grade point? ')

if GradePoints > 100 || GradePoints < 0
    error('Invalid Input');
   
end

if GradePoints >=90 && GradePoints <= 100
    Grade = 'A';
    
elseif GradePoints >= 80 && GradePoints<= 90
    
else
    Grade = 'F';
    
end

fprintf('Your grade is %s\n',Grade);









