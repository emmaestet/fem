%%
figure;
axis([0 1 0 0.6]);
hold on
for i = 1:length(e);
    %if e(7,i) == subd || e(6,i) == subd; %0:3
    if e(5,i) == bound; %1:11
    punkter = e(1:2,i);
    plot(p(1,punkter),p(2,punkter));
    pause(0.1);
    end
end
hold off
clear punkter;