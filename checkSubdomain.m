%plots subdomain to be identified
%kan automatiseras
for j = 1:3
    subd = j;
    figure;
    hold on
    title(['subdomain ' num2str(subd)]);
    axis([0 1 0 0.6]);
    for i = 1:length(t);
        if t(4,i) == subd
            scatter(p(1,t(1:3,i)),p(2,t(1:3,i)));
        end
    end
end