clear;clc;close;
tic
f=@(x,y) 1;
a=0;b=2;c=0;d=1;

x=linspace(a,b,100); 
y=linspace(c,d,50);
[X,Y]=meshgrid(x,y);

n=numel(x); m=numel(y); 
hx=x(2)-x(1);hy=y(2)-y(1);

stencil = @(i) [i i-m i+m i-1 i+1];
boundary = @(i) X(i)==a || X(i)==b || Y(i)==c || Y(i)==d;
coef=[2/hx^2+2/hy^2 -1/hx^2 -1/hx^2 -1/hy^2 -1/hy^2];

N=numel(X); nz=5*(n-2)*(m-2)+2*n+2*m-4;
ir=zeros(1,nz); ic=ir; v=ir;  
b=zeros(N,1); pos=1;
for i=1:N
    if(~boundary(i))
        next=pos:pos+4;
        ir(next) = i;
        ic(next) = stencil(i);
        v(next) = coef;
        b(i)=f(X(i),Y(i));
        pos=pos+5;
    else
        ir(pos) = i;
        ic(pos) = i;
        v(pos) = 1;
        pos = pos+1;
    end
end
toc
tic
A=sparse(ir,ic,v,N,N,nz);
U=A\b;
toc
if N<10000
    surf(X,Y,reshape(U,size(X)));
end
N


