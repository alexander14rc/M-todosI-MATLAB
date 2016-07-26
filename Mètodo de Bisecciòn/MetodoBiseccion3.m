clear all
close all
clc 
disp('********************************')
disp('      metodo de biseccion       ')
disp('********************************')
fprintf('\n')
fx=input(' Ingrese la funcion: ','s');
f=inline(fx);
xl=input(' Ingrese el limite inferior: ');
xu=input(' Ingrese el linite superior: ');
while f(xl)*f(xu)>0
    xl=input(' Ingrese el nuevo limite inferior: ');
    xu=input(' Ingrese el nuevo linite superior: ');
end
es=input(' Ingrese el error relatvo porcentual deseado (error fijado): ');
imax=input(' Ingrese el maximo numero de iteraciones: ' );
iter=1;
ea=1;
xr=0;
while (imax>iter)&&(ea>es)
    xrold=xr;
    xr=(xl+xu)/2;
    ea=abs(((xr-xrold)/xr)*100);
    if f(xl)*f(xr)<0
        xu=xr;
    elseif f(xl)*f(xr)>0
        xl=xr;
    else
        ea=0;
    end
    iter=iter+1;
end
if imax<iter
    fprintf('\n La raiz no converge \n')
    break
end
fprintf('\n La raiz es: %2.5f \n',xr)
fprintf('\n El numnero de iteraciones es: %i \n',iter)
fprintf('\n El error aproximado porcentual (ea) es: %2.5f  \n',ea)
    
    
