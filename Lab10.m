clear; clc;

%Encrypt Message
Message = input('Enter message to be encrypted: \n','s');
Key = input('Enter encryption key: \n');
ASCII_Message = double(Message);

for k = 1:length(ASCII_Message)
    if ASCII_Message(k) >= 65 && ASCII_Message(k) <= 90
        if ASCII_Message(k) + Key > 90
            WrapAround = (ASCII_Message(k) + Key) - 90;
            ASCII_Message(k) = 64 + WrapAround;
        elseif ASCII_Message(k) + Key <= 90
            ASCII_Message(k) = ASCII_Message(k) + Key;
        end
    elseif ASCII_Message(k) >= 97 && ASCII_Message(k) <= 122
        if ASCII_Message(k) + Key > 122
            WrapAround = (ASCII_Message(k) + Key) - 122;
            ASCII_Message(k) = 96 + WrapAround;
        elseif ASCII_Message(k) + Key <= 122
            ASCII_Message(k) = ASCII_Message(k) + Key;
        end
    else
        %Do nothing ie(Punctuation)
    end
end
fprintf('\nEncrypted Message: %s\n',ASCII_Message);

%%
%Decrypt Message
clear; clc;

Message = input('Enter message to be decrypted: \n','s');
Key = input('Enter encryption key: \n');
ASCII_Message = double(Message);

for k = 1:length(ASCII_Message)
    if ASCII_Message(k) >= 65 && ASCII_Message(k) <= 90
        if ASCII_Message(k) - Key < 65
            WrapAround = 65 - (ASCII_Message(k) - Key);
            ASCII_Message(k) = 91 - WrapAround;
        elseif ASCII_Message(k) - Key >= 65
            ASCII_Message(k) = ASCII_Message(k) - Key;
        end
    elseif ASCII_Message(k) >= 97 && ASCII_Message(k) <= 122
        if ASCII_Message(k) - Key < 97
            WrapAround = 97 - (ASCII_Message(k) - Key);
            ASCII_Message(k) = 123 - WrapAround;
        elseif ASCII_Message(k) - Key >= 97
            ASCII_Message(k) = ASCII_Message(k) - Key;
        end
    else
        %Do nothing ie(Punctuation)
    end
end

fprintf('\nMessage: \n%s\n',ASCII_Message);


%%
%Decrypt Message
clear; clc;
count = 0;
Message = input('Enter message to be decrypted: \n','s');
%Key = input('Enter encryption key: \n');
ASCII_Message = double(Message);
User_Input = 2;

for Key = 1:25
    count = count + 1;
    for k = 1:length(ASCII_Message)
        if ASCII_Message(k) >= 65 && ASCII_Message(k) <= 90
            if ASCII_Message(k) - Key < 65
                WrapAround = 65 - (ASCII_Message(k) - Key);
                ASCII_Message(k) = 91 - WrapAround;
            elseif ASCII_Message(k) - Key >= 65
                ASCII_Message(k) = ASCII_Message(k) - Key;
            end
        elseif ASCII_Message(k) >= 97 && ASCII_Message(k) <= 122
            if ASCII_Message(k) - Key < 97
                WrapAround = 97 - (ASCII_Message(k) - Key);
                ASCII_Message(k) = 123 - WrapAround;
            elseif ASCII_Message(k) - Key >= 97
                ASCII_Message(k) = ASCII_Message(k) - Key;
            end
        else
            %Do nothing ie(Punctuation)
        end
    end
    fprintf('\nMessage: \n%s\n',ASCII_Message);
    disp(count);
end


