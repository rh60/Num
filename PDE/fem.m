clear; clc; close;

g=Rectg(0,0,2,1);
[p,e,t]=initmesh(g,'hmax',0.5);
pdeplot(p,e,t);

function r = Rectg(xmin,ymin,xmax,ymax)
r=[2 xmin xmax ymin ymin 1 0;
2 xmax xmax ymin ymax 1 0;
2 xmax xmin ymax ymax 1 0;
2 xmin xmin ymax ymin 1 0]';
end