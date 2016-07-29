clear all
close all
clc
disp('*******************************');
disp('     Metodo newton-raphson     ');
disp('*******************************');
fprintf('\n')
fx=input('Ingrese la funcion: ','s');
syms x
dx=diff(fx,x);
f=inline(fx);
df=inline(dx);
x0=input('Ingrese el valor inicial: ');
Eps=input('Ingrese el error por criterio de convergencia: ');
Eps1=input('Ingrese el error por aproximacion: ');
imax=input('Ingrese el numero de iteraciones: ');
iter=1;
while iter<imax
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
if abs(x-x0)<Eps
    fprintf('\n El valor de la raiz es: %2.5f \n',x);
    break
elseif abs(f(x))<Eps1
        fprintf('\n El valor de la raiz es: %2.5f \n',x);
    break
end
x0=x;
iter=iter+1;
end
if imax<iter
       fprintf('\n El valor de la raiz no converge \n');
    break 
end
fprintf('\n El numero de iteraciones es: %2.5f \n', iter)
fprintf('\n El valor de Ea es: %2.5f \n',Ea)