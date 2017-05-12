%%måste ändras! saknas ett element på 12
e3 = find(e(5,:)==3);
number = max(e(5,:)) + 1;
for j = 1:2
    for i = e3
        xkoord = p(1,e(1,i));
        if xkoord > 0 && xkoord < 0.2
            e(5,i) = number; %#ok<SAGROW>
        end
    end
end
clear e3 number