function [I,,Iv,et]= gausslegM( p,a,b,n )
syms x
syms dx
syms Xd
syms dXd
Iv=vpa(int(f,a,b));
p=p*dx;
p=inline(p);
x=(b+a)/2 +(b-a)*Xd/2;
dx=((b-a)/2)*dXd;
F=p(dx,x);
F=inline(F);
I=0;
A = xlsread('Libro1.xlsx ');
m = ((n-1)*n)/2 ;
l = ((n)*(n+1))/2 - 1;
for i= m:l
    c(i)= A(i,1);
    xi(i)= A(i,2);
    I=I+c(i)*F(xi(i),1);
end
p=floor(I*10^6);
p=p*(10^-6);
et=abs((Iv-p)/Iv)*100;
end
