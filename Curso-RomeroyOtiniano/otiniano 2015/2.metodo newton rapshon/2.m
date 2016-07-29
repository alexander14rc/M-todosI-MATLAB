
clear all
clc
f=input('Ingrese Funcion:','s');
f=inline(f);
xl=input('Ingrese limite inferiror:');
xu=input('Ingrese limite superior:');
imax=input('Ingrese la iteracion maxima:');
es=input('Ingrese el error fijado:');
iter=1;
ea=1;
xr=0;
if (f(xl)*f(xu)<0)
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

fprintf('\n La raiz sera : %2.4f \n',xr)
fprintf('\n el errror aproxiamdo es: %2.7f \n',ea)
fprintf('\n elnumero de iteraciones es: %2.7f \n',iter)

else
fprintf(' El metodo no converge ')

end

