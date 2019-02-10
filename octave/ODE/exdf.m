ccc

n=21;m=41;la=-1;
du=@(t,u) la*u;
th=linspace(-1,1,n);
uh=linspace(-1,1,m);
u=@(C,t) C.*exp(la*t);
[Th,Uh]=meshgrid(th,uh);
hold on
axis([-1 1 -1 1]);
U=u(Uh,Th);
plot(th,U,'LineWidth',2);
DirectionField(th,uh,du);




