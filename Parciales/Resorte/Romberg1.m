function [ I, M, ea] = Romberg1( a,b,imax,es,f)
%[ I, M, ea] = Romberg1( 0,0.4,20,0.001,'Resorte')
format long
M=zeros(10,10);
n=1;
M(1,1)=trapezoide(f,a,b,n);
iter=0;
ea=1;
while (imax>iter)&&(ea>es) 
    iter=iter+1;
    n=2^(iter);
    M(iter+1,1)=trapezoide(f,a,b,n);
    for i = 2:iter+1
        j=2+iter-i;
        M(j,i)=((4^(i-1))*M(j+1,i-1)-M(j,i-1))/(4^(i-1)-1);
    end
            ea = abs(((M(1,iter+1)-M(1,iter))/(M(1,iter+1))*100));
end
I=M(1,iter+1);
end

