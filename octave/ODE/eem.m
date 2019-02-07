function [t,u] = eem(f,ts,ic,n)
  if nargin==3
    n=11;
  end
  t=linspace(ts(1),ts(2),n)';
  u=t;
  u(1)=ic(2);
  for i=1:length(u)-1
    h=t(i+1)-t(i);
    u(i+1)=u(i)+h*f(t(i),u(i));    
  end
end
