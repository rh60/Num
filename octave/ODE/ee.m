furt;
f=@(t,u) u;
y=@(t) exp(t);

t=linspace(0,1);
u=y(t);
plot(t,u,'LineWidth',2);
hold on

[t,u]=eem(f,[0,1],[0,1]);
plot(t',u','-o');

[t,u]=ode45(f,[0,1],1);
plot(t,u,'-*');

legend('exact','ee','ode45');
