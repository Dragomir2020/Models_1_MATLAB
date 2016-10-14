clear; clc;

load('HW7.mat','x','y');
z = zeros(1,length(x));
CountX = 0;
CountY = 0;
for k = 1:length(x)
    
    if x(k) > y(k)
        z(k) = x(k);
        CountX = CountX + 1;
    else
        z(k) = y(k);
        CountY = CountY + 1;
    end
    
end
fprintf('Entries in x > y: %i\nEntries in y > x: %i\n',CountX, CountY);

Location = zeros(1,length(x));

for k = 1:length(x)
    if x(k) == y(k)
        Location(k) = x(k);
    end
    
end
disp(Location);
%%
clear; clc;

Time = xlsread('Height.xlsx','B1:GJ1');
Height = xlsread('Height.xlsx','B4:GJ8');

plot(Time,Height(1,:),'b:');
hold on;
plot(Time,Height(2,:),'g:');
hold on;
plot(Time,Height(3,:),'r:');
hold on;
plot(Time,Height(4,:),'k:');
hold on;
plot(Time,Height(5,:),'m:');
hold on;

title( '\bfHeight VS Time','FontSize',14);
xlabel('\bfTime(sec)','FontSize',14);
ylabel('\bfHeight(Meters)','FontSize',12);
legend('25 degrees','35 degrees','45 degrees','55 degrees','65 degrees');




