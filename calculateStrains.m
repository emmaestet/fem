
for i = 1:elm

deltaT = a(t(1:3,elm)) - ones(3,1)*T0data;
epsilon0 = acdata * deltaT * [1 1 1 0 0 0]';

D = hooke(2,Edata(t(4,elm)),vdata(t(4,elm))); %plainstrain

fe = plantf(ex(elm,:),ey(elm,:),[2 1],sigma);
Ke = plante(ex(elm,:),ey(elm,:),1,D);

end