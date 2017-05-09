subdomainNumbering;

Etemp = [105 105 50];
vtemp = [0.118 0.136 0.36];
ktemp = [0.29 1.059 66.8];
ptemp = [1850 1850 7265];
ctemp = [950 950 210];
atemp = [1.2e-5 2e-5 1.2e-5];
pcbtemp = 2;
soldertemp = 3;
smdtemp = 1;

Edata = zeros(1,3);
Edata(pcb) = Etemp(pcbtemp);
Edata(solder) = Etemp(soldertemp);
Edata(smd) = Etemp(smdtemp);

vdata = zeros(1,3);
vdata(pcb) = vtemp(pcbtemp);
vdata(solder) = vtemp(soldertemp);
vdata(smd) = vtemp(smdtemp);

kdata = zeros(1,3);
kdata(pcb) = ktemp(pcbtemp);
kdata(solder) = ktemp(soldertemp);
kdata(smd) = ktemp(smdtemp);

pdata = zeros(1,3);
pdata(pcb) = ptemp(pcbtemp);
pdata(solder) = ptemp(soldertemp);
pdata(smd) = ptemp(smdtemp);

cdata = zeros(1,3);
cdata(pcb) = ctemp(pcbtemp);
cdata(solder) = ctemp(soldertemp);
cdata(smd) = ctemp(smdtemp);

adata = zeros(1,3);
adata(pcb) = atemp(pcbtemp);
adata(solder) = atemp(soldertemp);
adata(smd) = atemp(smdtemp);

clear Etemp vtemp ktemp ptemp ctemp atemp pcbtemp soldertemp smdtemp;

T0data = 30;
acdata = 40;
qeldata = 9e3;
Tinfdata = 20;