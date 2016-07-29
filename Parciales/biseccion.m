clear all 
close all
clc 
disp('METODO DE LA BISECCION')
f=input('Ingrese la funcion');%,'s');
f=inline(f);
xl=input('Ingrese el limite inferior');
xu=input('Ingrese el limite superior');
while (f(xl)*f(xu)>0)
    fprintf('\n')
    xl=input('Ingrese nuevamente limite inferior:');
    xu=input('Ingrese nuevamente limite superior:');
    fprintf('\n')
end
imax=input('Ingrese la iteracion maxima:');
es=input('Ingrese el error fijado:');
iter=1;
ea=1;
xr=0;
while(iter<=imax)&&(ea>es)
    xrold=xr;
    xr=(xl+xu)/2;
    iter=iter+1;
    if xr~=0
        ea=abs(((xr-xrold)/xr)*100);
    end
    R=f(xl)*f(xr);
    if R<0
        xu=xr;
    elseif R>0
        xl=xr;
    else
        ea=0;
    end
end
if iter > imax
    fprintf('\n el metodo no converge a una raiz \n')
    break
end
fprintf('\n la raiz sera : %2.4f \n',xr)
fprintf('\n el error aproximado es: %2.7f \n',ea)
fprintf('\n el numero de iteraciones es: %2.7f \n',iter)

