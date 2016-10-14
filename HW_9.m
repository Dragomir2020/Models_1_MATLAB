 clear; clc;
% V = [2 -10 0 4 -2 7 -1 3 -6 9];
% Location = find(V<7&V>=2);
% V(Location) = 500;
% disp(V);



M = [3 6 1 -2;3 0 -2 -4;8 -3 5 4; -2 -3 -2 5];
B = M; n = find(B==-2); B(n) = 0







%Max = max(M(:,2:3),[],1);
%%
clear; clc;
load HW9
Total = sum(Grades(:,1) >= 90 & Grades(:,2) >= 90 & Grades(:,3) >= 90 & Grades(:,4) >= 90);
disp(Total);


