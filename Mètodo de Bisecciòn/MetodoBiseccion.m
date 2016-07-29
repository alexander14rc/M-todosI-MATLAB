clear all
close all
clc
fprintf('\n M�todo de bisecci�n \n');
fx=input('Ingrese la funci�n: ','s');
f=inline(fx);
xl=input('Ingrese el l�mite inferior: ');
xu=input('Ingrese el l�mite superior: ');
while f(xl)*f(xu)>0
    a=input('Ingrese el nuevo valor de a: ');
    b=input('Ingrese el nuevo valor de b: ');
end
es=input('Ingresar el error: ');
imax = input('Ingrese el m�ximo n�mero de iteraciones: ');
iter=1;
ea=1;
xr=0;
while (iter<imax)&&(ea>es)
    xrold=xr;
    xr=(xl+xu)/2;
    if xr~=0
        ea=abs((xr-xrold)/xr)*100;
    end
    if f(xl)*f(xr) < 0
        xu=xr;
    elseif f(xl)*f(xr)>0
        xl=xr;
    else
        ea=0;
    end
    iter=iter+1;
end
if iter>imax
    fprintf('\n La ra�z no converge \n')
end
fprintf('\n El valor de x es: %2.7f \n',xr)
fprintf('\n El n�mero de iteraciones es: %i \n',iter)
fprintf('\n El error es: %2.7f \n',ea)


