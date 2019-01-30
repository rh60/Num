%obligatory
clear;clc;close;

x=linspace(0,pi);
plot(x,[sin(x);cos(x)]);
T=@(x) [x
        x-x.^3/6
        x-x.^3/6+x.^5/120];
figure;
plot(x,[sin(x);T(x)]); 
axis([0,pi,-1.2,1.2]);