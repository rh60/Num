%obligatory
clear;clc;close;

t=linspace(0,1,11);
x=linspace(1,exp(1),11);
DirectionField(t,x,@dx);

hold on
t=linspace(0,1);
plot(t,exp(t),'linewidth',2);
