%%y2'=-1/y1',y1(x)=y2(x)=y(x)
% y=a*x^2, a=y*x^(-2)
% y'=-1/(2*a*x)=-1/2*x/y
syms a y(x)
eqn = diff(y,x) == -x/(2*y);
y=dsolve(eqn);
y(1)^2

%%
%obligatory
clear;clc;close;

x = linspace(-1,1);
hold on
for a=-10:1:10
    y = @(x) a*x.^2;
    plot(x,y(x),'k')
end;
axis([-1, 1, -1, 1]);
axis equal
[X,Y] = meshgrid(x,x);
Z = Y.^2+0.5*X.^2;
contour(X,Y,Z)