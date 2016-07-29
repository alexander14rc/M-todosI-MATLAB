function [R I] = rombergPaul(f,a,b,imax,es)
%[R I]=rombergPaul('0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5',0,0.8,2,0.0001)
I=zeros(10,10);
n=2;
I(1,1)=simpson3(f,a,b,n);
z=1;
ea=100;
while ~ ((z>=imax)||(ea<=es))
    z=z+1;
    n=2^z;
    I(z+1,1)=simpson3(f,a,b,n);
    for k=2:z+1
        j=2+z-k;
        I(j,k)=(4^(k-1)*I(j+1,k-1)-I(j,k-1))./(4^(k-1)-1);
    end
    ea=100*abs(I(1,z+1)-I(2,z))/(I(1,z+1));
 
end
R=I(1,k);
end