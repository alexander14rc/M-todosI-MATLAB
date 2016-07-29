function[I]=RombergTrapm(a,b,imax,es,f)
M=zeros(10,10);
n=1;
M(1,1)=Trapm( a,b,n,f );
iter=0;
ea=1;
while (imax>iter)&&(ea>es)
    iter=iter+1;
    n=2^(iter);
    M(iter+1,1)=Trapm( a,b,n,f );
    for i = 2:iter+1
        j=2+iter-i;
        M(j,i)=((4^(i-1))*M(j+1,i-1)-M(j,i-1))/(4^(i-1)-1);
    end
    ea = abs(((M(1,iter+1)-M(1,iter))/(M(1,iter+1))*100));
end
I=M(1,iter+1);
%fprintf('\n %2.7f \n',I);
end

