e3 = find(e(5,:)==3); %h�mtar alla r�nder som nu kallas 3
number = max(e(5,:)) + 1;  %best�mmer vilket index nya randen ska f�

for i = e3
    xkoord = p(1,e(1:2,i)); %nodernas x-koordinater
    if xkoord(1) >= 0 && xkoord(2) >= 0 && ...
            xkoord(1) <= 0.2 && xkoord(2) <= 0.2
        e(5,i) = number; %#ok<SAGROW>
    end
end

clear e3 number