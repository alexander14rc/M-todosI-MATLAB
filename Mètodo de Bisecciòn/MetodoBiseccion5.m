% método de bisección
clear all
close all
clc
disp(' Método de la bisección  ')
fx=input('Ingrese la función: ','s');
syms x
d=diff(fx,x);
f=inline(fx);
df=inline(d);
xl=input('Ingrese el limite inferior: ');
xu=input('Ingrese el limite superior: ');
if f(xl)*f(xu)<0
    fprintf('\n cumple f(%2.3f)*f(%2.3f)<0 \n',xl,xu)
else
    fprintf('\n  f(%2.3f)*f(%2.3f)>0 \n',xl,xu')
    break
end
es=input('Ingrese el error fijado: ');
imax=input('Ingrese el maximo numero de iteraciones: ');
iter=1;
ea=1;
xr=0;
while (iter<imax)&&(ea>es)
    xrold=xr;
    xr=(xl+xu)/2;
    if xr~=0
        ea=abs(((xr-xrold)/xr)*100);
    end
    if f(xl)*f(xr)<0
        xu=xr;
    elseif f(xl)*f(xr)>0
        xl=xr;
    else
        ea=0;
    end
    iter=iter+1;
end
if iter>=imax
    fprintf('El valor de la raiz diverge ')
    break
end
fprintf('\n El valor de la raiz es: %2.7f \n',xr)
fprintf('\n El numero de iteraciones es: %i \n',iter)
fprintf('\n El error aproximado porcentual es: %2.7f \n',ea)

