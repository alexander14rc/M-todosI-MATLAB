clear all
close all
clc
disp('********************************')
disp('*        Newton-Raphso         *')
disp('********************************')
fx=input('Ingrese la funciòn: ','s');
syms x
d=diff(fx,x);
f=inline(fx);
df=inline(d);
x0=input('Ingrese el valor inicial: ');
Eps=input('Ingrese el criterio de convergencia: ');
Eps1=input('Ingrese el criterio de exactitud: ');
imax=input('Ingrese el numero de iteraciones: ');
I=1;
while I<imax
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    if abs(x-x0)<Eps
        disp('********************************')
        disp('           SOLUCION             ')
        disp('********************************')
        fprintf('\n El valor de x por el criterio de convergencia es: %2.5f\n',x)
        break
    elseif abs(f(x))<Eps1
        disp('********************************')
        disp('           SOLUCION             ')
        disp('********************************')
        fprintf('\n El valor de x por el criterio de exactitud es: %2.5f \n',x)
        break
    end
    I=I+1;
    x0=x;
end
if I>imax
    fprintf('\n El valor no convege \n')
    break
end
fprintf(' El nùmero de iteraciones: %i \n',I)
fprintf(' El valor de Ea es: %2.5f \n',Ea)