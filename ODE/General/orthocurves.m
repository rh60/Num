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