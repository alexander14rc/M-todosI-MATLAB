clc
clear all
close all
syms x
f=input('Ingrese Funcion:');
f=inline(f);
xl=input('Ingrese limite inferiror:');
xu=input('Ingrese limite superior:');
imax=input('Ingrese la iteracion maxima:');
Xt=input('ingrese el valor verdadero: ');
es=input('Ingrese el error fijado:');
iter=1;
ea=1;
xr=0;
while (iter<=imax)&&(ea>es)
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
et=Xt-xr;

fprintf('\n La raiz sera : %2.4f \n',xr)
fprintf('\n el errror aproxiamdo es: %2.7f \n',ea)
fprintf('el error verdadero es: %2.7f\n',abs(et))
fprintf('\n elnumero de iteraciones es: %2.7f \n',iter)
