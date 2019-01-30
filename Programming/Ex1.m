%obligatory
clear;clc;close;

x=linspace(0,pi);
plot(x,[sin(x);cos(x)]);
T=@(x) [x
        x-x.^3/6
        x-x.^3/6+x.^5/120];
P=@(x) [polyval([1,0],x);
        polyval([-1/6,0,1,0],x);
        polyval([1/120,0,-1/6,0,1,0],x)];
            
figure;
y=T(x);
plot(x,y); 
axis([0,pi,-1.2,1.2]);

figure;
y=P(x);
plot(x,y); 
axis([0,pi,-1.2,1.2]);
