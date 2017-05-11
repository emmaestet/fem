% maxa = max(a);
% mina = min(a);
% hold on
% for i = 1:ndof
% %fill(p(1,nodes),p(2,nodes),[a(i)*100/maxa 0 0]);
% scatter3(p(1,i),p(2,i),a(i)*100);
% end
% hold off

figure;
hold on;
meantemps = zeros(nelm,1);
for i = 1:nelm
    nodes = t(1:3,i);
    meantemps(i) = mean(a(nodes));
    fill(p(1,nodes),p(2,nodes),meantemps(i));
end
clear meantemps nodes
% hold off
% %meantemps = meantemps/max(meantemps);
% figure;
% hold on
% for i = 1:nelm
%     nodes = t(1:3,i);
%     fill(p(1,nodes),p(2,nodes),meantemps(i));
% end
%     
% hold off
% 
% figure;
% ed = extract(edof,a);
% for i = 1:nelm)
% fill(ex',ey',ed');
