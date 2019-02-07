furt;
f=@(t,u) u;
[t,u]=eem(f,[0,1],[0,1]);
hold on
plot(t',u','-o');
[t,u]=ode45(f,[0,1],1);
plot(t,u,'-*');

