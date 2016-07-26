clear all 
close all 
clc
disp (' METODO DE BISECCION ');
fx=input('Ingrese la funcion: ','s');
f=inline(fx);
xl=input('Ingrese el limite inferior: ');
xu=input('Ingrese el limite superior: ');
while f(xl)*f(xu)>0
    xl=input('Ingrese el nuevo limite inferior: ');
xu=input('Ingrese el nuevo limite superior: ');
end
es=input('Ingrese el error relativo porcentual o error fijado: ');
imax=input('Ingrese el numero de iteraciones: ');
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
if iter>imax
    fprintf('\n La raiz no converge \n');
    break
end
fprintf('\n El valor de la raiz es: %2.5f \n',xr);
fprintf('\n El numero de iteraciones es: %i \n',iter);
fprintf('\n El valor del error aproximado porcentul es: %2.5f \n', ea)


