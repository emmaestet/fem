load('e.mat'); %kanter http://se.mathworks.com/help/pde/ug/mesh-data.html
load('p.mat'); %koordinater f�r noder
load('t.mat'); %index p� noder som tillh�r element, sista raden vilken subdom�n
create12;
transformMeshToCalfem;