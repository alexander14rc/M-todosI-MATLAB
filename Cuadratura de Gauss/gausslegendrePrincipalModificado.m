clear all
disp('         METODO GAUSS LEGENDRE        ')
fprintf('\n')
p=input('ingrese la funcion:','s');%(400*x^5 - 900*x^4 + 675*x^3 - 200*x^2 + 25*x + 1/5) (9.81*68.1/12.5)*(1-exp(-12.5*x/68.1))
% 1/(exp(1.432/(213*x))-1)
a=input('Limite inferiror:');
b=input('Limite superior:');
n=input('Número de puntos:');
syms x
Iv = vpa(int(1/(x^5*(exp(1.432/(213*x))-1)),3*10^-4,14*10^-4));
%1/(x^5*(exp(1.432/(213*x))-1)); 
Iv = double(Iv);
syms dx
syms Xd
syms dXd
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
fprintf('\n I = %2.7f \n',I)
fprintf('\n Iv = %2.7f \n',Iv)
fprintf('\n et = %2.7f \n',et)
E=2.39*10^-11*(I);
fprintf('\n E(213) =%3.5f\n',E)