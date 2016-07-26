f=input('Ingrese la funcion: ','s');
a=input('a:');
b=input('b:');
imax=input('Ingrese las iteraciones maximas: ');
es=input('Ingrese el error:');
M=zeros(10,10);
n=2;
M(1,1)=Simp13m( a,b,n,f);
M
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
M
I=M(1,iter+1);
fprintf('\n I = %2.6f \n',I)
fprintf('\n ea = %2.6f \n',ea)