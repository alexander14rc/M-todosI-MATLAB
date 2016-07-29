clear all 
clc
fprintf('metodo de newton rapshon 2 \n');
fx=input('Ingrese la funcion: ','s');
syms x
deri=diff(fx,x);
f=inline(fx);
df=inline(deri);
x0=input('Ingrese el valor inicial: ');
Eps=input('Ingrese el criterio de convergencia: ');
Eps1=input('Ingrese el citerio de exactitud: ');
iter=input('Ingrese la cantidad de iteraciones: ');
I=1;
while I<iter
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    if abs(x-x0)<Eps
       fprintf('\n La raiz por el criterio de la convergencia es: %2.7f \n',x);
       break
    elseif abs(f(x))<Eps1
        fprintf('\n La raiz por el criterio de la exactitud es: %2.7f \n',x);
        break
    end
    I=I+1;
    x0=x;
end
if I>iter
    fprintf('\n La raiz no converge \n')
    break 
end
fprintf('\n El numero de iteraciones es: %2.7f\n',I );
fprintf('\n El valor  de Ea es: %2.7f \n', Ea)

       