clear all
clc
disp('======================================')
disp('         METODO GAUSS LEGENDRE        ')
disp('======================================')
syms x
syms dx
syms Xd
syms dXd
p=input('ingrese la funcion:','s');%(400*x^5 - 900*x^4 + 675*x^3 - 200*x^2 + 25*x + 1/5) (9.8*68.1/12.5)*(1-exp(-12.5*x/68.1))
a=input('ingrese el limite inferiror:');
b=input('ingrese el limite superior:');
n=input('ingrese el numero de puntos:');
p=p*dx;
p=inline(p);
x=(b+a)/2 +(b-a)*Xd/2;
dx=((b-a)/2)*dXd;
F=p(dx,x);
F=inline(F);
c=0;
xi=0;
I=0;
for i=1:n
    fprintf('\npara i=%1.0f \n',i)
    c(i)=input('ingrese el factor de ponderacion:');
    xi(i)=input('ingrese el argumento de la funcion:');
    I=I+c(i)*F(xi(i),1);
end
fprintf('\n La integral por gauss legendre sera : %2.4f \n',I)
