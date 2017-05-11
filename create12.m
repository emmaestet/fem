e3 = find(e(5,:)==3);

for j = 1:2
    for i = e3
        xkoord = p(1,e(1,i));
        if xkoord > 0 && xkoord < 0.2
            e(5,i) = 12; %#ok<SAGROW>
        end
    end
end
clear e3