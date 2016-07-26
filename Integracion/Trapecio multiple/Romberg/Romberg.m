
function [ I, ea] = Romberg( a,b,imax,es,f)
%[I, ea] = Romberg( 3*10^-4,14*10^-4,50,0.0001,fkz('x'))
M=zeros(10,10);
n=2;
M(1,1)=Simp13m( a,b,n,f );
iter=0;
ea=1;
while (imax>iter)&&(ea>es)
    iter=iter+1;
    n=2^(iter+1);
    M(iter+1,1)=Simp13m( a,b,n,f );
    for i = 2:iter+1
        j=2+iter-i;
        M(j,i)=((4^(i-1))*M(j+1,i-1)-M(j,i-1))/(4^(i-1)-1);
    end
    ea = abs(((M(1,iter+1)-M(1,iter))/(M(1,iter+1))*100));
end
I=M(1,iter+1);
end

