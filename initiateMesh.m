load('e.mat'); %skarvar http://se.mathworks.com/help/pde/ug/mesh-data.html
load('p.mat'); %koordinater för noder
load('t.mat'); %index på noder om tillhör element, sista raden vilken subdomän
transformMeshToCalfem;