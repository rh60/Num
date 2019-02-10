ccc

n=21;m=41;
du=@(t,u) u;
th=linspace(0,1,n);
uh=linspace(-1,1,m);
u=@(C,t) C.*exp(t);
[Th,Uh]=meshgrid(th,uh);
DirectionField(th,uh,du);
hold on
axis([0 1 -1 1]);
U=u(Uh,Th);
plot(th,U);



