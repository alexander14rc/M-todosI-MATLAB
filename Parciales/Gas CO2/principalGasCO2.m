f=input('ingrese la funcion: ');
es=input('ingrese el error fijado:');
imax=input('ingrese el numero maximo de iteraciones:');
xl=input('Ingresar valor inferior xl= ');
xu=input('Ingresar Valor superior xu= ');
derivada=diff(sym(f));
df=inline(derivada);
f=inline(f);
iter=1;
ea=1;
xr=0;
fprintf('\n iterando por metodo de biseccion \n')
fprintf('\n  iter       vi       f(vi)            df(vi)              Ea  \n')
while (iter<=imax)&&(ea>es)
    xrold=xr;
    xr=(xl+xu)/2;
    
    if xr~=0
        ea=abs(((xr-xrold)/xr)*100);
        Ea=abs(xr-xrold);
    end
    fprintf('\n %2.0f \t %5.6f \t %5.6f \t %5.6f \t%5.6f \n ',iter,xr,f(xr),df(xr),Ea)
    iter=iter+1;
    R=f(xl)*f(xr);
    
    if R<0
        xu=xr;
    elseif R>0
        xl=xr;
    else
        ea=0;
        
    end
    if iter==10
       break
    end
end
fprintf('\n ahora iterando por metodo de newton raphson \n')
x0=xl;
Eps=es;
iter=1;
syms x ;
format short
fprintf('\n  iter       vi         f(vi)          df(vi)            Ea  \n')
while iter<imax
    
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    fprintf (' \n %2.0f \t%2.6f\t %2.6f\t %2.6f\t %2.6f \n',iter,x,f(x),df(x),Ea)
    if abs(x-x0)<Eps
        fprintf('\n la raiz es: %6.8f\n',x)
        
        break
        
    end
    
    iter=iter+1;
    x0=x;
    
    
end
if iter>=imax
    fprintf('\n el metodo no converge a una raiz \n')
    break
end
