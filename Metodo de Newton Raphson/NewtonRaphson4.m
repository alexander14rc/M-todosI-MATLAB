clear all
close all
clc
fprintf('\n\n')
disp('  METODO DE NEWTON RAPHSON  ')
fx=input('Ingrese la funcion: ','s');
syms x
d=diff(fx,x);
f=inline(fx);
df=inline(d);
x0=input('Ingrese el valor inicial: ');
Eps=input('Ingrese el error por criterio de convergencia: ');
Eps1=input('Ingrese el error por criterio de exactitud: ');
imax=input('Ingrese el numero de iteraciones: ');
iter=1;
while iter<imax
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    if abs(x-x0)<Eps
        fprintf('\n La raiz por convergencia es: %2.5f \n',x)
        break
    elseif abs(f(x))<Eps1
        fprintf('\n La raiz por exactitud es: %2.5f \n',x)
        break
    end
    x0=x;
    iter=iter+1;
end
if iter>=imax
    fprintf('\n la raiz no converge \n');
    break
end
fprintf('\n El valor de Ea: %2.7f \n',Ea);
fprintf('\n El numero de iteraciones: %i \n', iter);


