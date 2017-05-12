K = zeros(ndof);
f = zeros(ndof,1);
bc = [0 0];
for elm = 1:nelm
   D = eye(2)*kdata(t(4,elm))/1000;  %calculates D-matrix using kdata and t-numbering
   Ke = flw2te(ex(elm,:),ey(elm,:),1,D);  %calculate Ke-matrix
   makeBoundaries;
   [K,f] = assem(edof(elm,:),K,Ke,f,fe);
end
clear node1loc node2loc nodes fevalue boundlength oldboundary boundary p1 p2 p1coords p2coords boundaries
clear D Ke fe
checkSymmetry(K);

bc = bc(2:end,:);
a = solveq(K,f);%,bc);
plotSolution;

