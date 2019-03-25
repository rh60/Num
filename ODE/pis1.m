clear;clc;close;
addpath ../../chebfun
L = chebop(0,5);
L.op = @(t,y) diff(y,2) - 2*t*y^2 + t;
L.lbc = 0;
L.rbc = 1;
y=L\0;

plot(y);
dy=diff(y);

figure

y0=[0 dy(0)]

f=@(t,y) [ y(2); 2*t*y(1)^2-t];
opt=odeset('RelTol',1E-10,'AbsTol',1E-12);
[t,y] = ode45(f,[0 5],y0,opt);

plot(t,y(:,1));