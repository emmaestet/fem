% initiateMesh;
% numericalData;

K = zeros(ndof);
for elm = 1:nelm
   D = eye(2)*kdata(t(4,elm));  %calculates D-matrix using kdata and t-numbering
   Ke = flw2te(ex(elm,:),ey(elm,:),1,D);  %calculate Ke-matrix
   K = assem(edof(elm,:),K,Ke);
end