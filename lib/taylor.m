function y = taylor(A,t,y0,deg)
    p=polyexp(deg);
    n=size(A,1);
    nt=numel(t);
    y=zeros(nt,n);
    y(1,:)=y0;
    for i=1:nt-1
        tau=t(i+1)-t(i);
        y(i+1,:)=y(i,:)*polyvalm(p,A*tau)';
    end
end

