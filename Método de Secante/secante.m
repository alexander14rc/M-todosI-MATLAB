clear all 
close all 
clc
fx=input('Ingrese la funcion: ','s');
syms x
f=inline(fx);
x0=input('Ingrese x0: ');
x1=input('Ingrese x1: ');
Eps=input('Ingrese el creiterio de convergencia: ');
Eps1=input('Ingrese el criterio de exactitud: ');
imax=input('Ingrese el maximo numero de iteraciones: ');
I=1;
while I<imax
    x=x1-(f(x1)*(x1-x0))/(f(x1)-f(x0));
    Ea=abs(x-x1);
    if abs(x-x1)<Eps
        fprintf('\n la raiz x es: %2.7f \n',x)
        break
    elseif abs(f(x))<Eps1
        fprintf('\n la raiz x es: %2.7f \n',x)
        break
    end
    x0=x1;
    x1=x;
    I=I+I;
end
if I>imax
    fprintf('\n La raiz no converge\n')
    break
end
fprintf('\n El error Ea: %2.7f \n',Ea)
fprintf('\n El numero de iteraciones I: %i \n',I)
