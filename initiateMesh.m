load('e.mat'); %skarvar http://se.mathworks.com/help/pde/ug/mesh-data.html
load('p.mat'); %koordinater f�r noder
load('t.mat'); %index p� noder om tillh�r element, sista raden vilken subdom�n
transformMeshToCalfem;