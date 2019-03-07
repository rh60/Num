addpath ../../lib
ccc

rng(fsi.seed);

A=[0 1;-1 0];
t=linspace(0,pi/2,11);
y0=[0 1];
y=taylor(A,t,y0,4);


