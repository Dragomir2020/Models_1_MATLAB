clear; clc;
%Input
Message = input('Enter a message to be encoded: ','s');
%Message Analysis
Message = double(Message);
Bin_Message = dec2bin(Message, 8);
Bin_Message = Bin_Message';
Bin_Message = Bin_Message(:);
Bin_Message = Bin_Message';
%Input Cat
Cat = imread('Cat','png');
CodedPic = (Cat);
[R,C] = size(CodedPic);
ImgLength = R*C;
CheckLength = length(Bin_Message);
if ImgLength >= CheckLength
    %Message Fits
else
    error('Message is too long.');
   
end

n=1;

for row = 1:R
    for col = 1:C
        if CheckLength < n
            break
        elseif  strcmp(Bin_Message(n),'1')
            if CodedPic(row,col) == 255
                CodedPic(row,col) = 254;
            else 
                CodedPic(row,col) = CodedPic(row,col) + 1; 
            end
        end
        n = n + 1;  
    end  
end
figure(1);
imshow(Cat)
title('Original');
figure(2);
imshow(CodedPic)
title('Coded');
imwrite(CodedPic,'CodedCat.png');

%%
clear; clc; close all;

%Input
Pic = imread('Cat','png');
CodedPic = imread('CodedCat','png');
%Message Analysis
PicArr = double(Pic);
CodedPicArr = double(CodedPic);
Difference = abs(PicArr-CodedPicArr);

n=1;
%Length = length(find(Difference == 1));
[R,C] = size(Difference);
for row = 1:R
    for col = 1:C   
        if Difference(row,col) == 1
           bin_message(n) = '1';
           n = n + 1;
        else
            bin_message(n) = '0';
            n = n + 1;
       end
    end  
end
binLength = length(bin_message);

for k = 1:binLength/8  
message(k) = char(bin2dec(bin_message(((k-1)*8+1):(k*8))));

end
fprintf('Message: %s\n',message);

%%
clear; clc; close all;

%Input
Pic = imread('Image1','png');
CodedPic = imread('Image2','png');
%Message Analysis
PicArr = double(Pic);
CodedPicArr = double(CodedPic);
Difference = abs(PicArr-CodedPicArr);

n=1;
%Length = length(find(Difference == 1));
[R,C] = size(Difference);
for row = 1:R
    for col = 1:C   
        if Difference(row,col) == 1
           bin_message(n) = '1';
           n = n + 1;
        else
            bin_message(n) = '0';
            n = n + 1;
       end
    end  
end
binLength = length(bin_message);

for k = 1:binLength/8  
message(k) = char(bin2dec(bin_message(((k-1)*8+1):(k*8))));

end
fprintf('Message: %s\n',message);