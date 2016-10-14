%%Mow the yard

clear; clc;
A = ones(20,10);
imagesc(A);
axis equal;
axis tight;

for row = 1:size(A,1)
   
    for col = 1:size(A,2)
        if rem(row,2) == 1
            A(row,col) = 0;
        elseif rem(row,2) == 0
             A(row,11-col) = 0;
        end
    imagesc(A);
    axis equal;
    axis tight;
    pause(0.1);
    end
end

%%
%PACMAN
clear; clc;
A = ones(20,10);
imagesc(A);
axis equal;
axis tight;


   
 for  = 1:6
        x = 1;
        plot(x,y,'ko','MarkerFaceColor','r');hold on;
        axis ([0 7 0 7]);
        % axis equal;
        pause(0.1);
        
         = 1;
        plot(x,y,'ko','MarkerFaceColor','r');hold on;
        axis ([0 7 0 7]);
        % axis equal;
        pause(0.1); 

    end



