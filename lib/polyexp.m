function p = polyexp(n)
    p=ones(1,n+1);
    for i=1:n
        p(end-i)=p(end-i+1)/i;
    end
end

