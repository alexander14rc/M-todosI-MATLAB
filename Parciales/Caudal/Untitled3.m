fprintf('=================================');
fprintf('\n   METODO DE NEWTON RAPSHON  \n');
fprintf('=================================\n');
syms x ;
format long
fun=input('ingrese la funcion f(x): ');
fprintf('\n');
derivada=diff(sym(fun)); %derivada simbolica de f
x0=input('ingrese un valor inicial: ');
Eps=input('ingrese el criterio de convergencia(error fijado): ');
Eps1=input('ingrese el criterio de exactitud: ');
imax=input('ingrese el numero maximo de iteraciones: ');
I=1;
f=inline(fun);
df=inline(derivada);
fprintf (' \n  I          x              f(x)                Ea \n ')
while I<imax
    
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    fprintf (' \n %2.0f \t%2.8f\t %2.17f\t %2.12f \n',I,x,f(x),Ea)
    if abs(x-x0)<Eps
        fprintf('\n la raiz es: %6.8f\n',x)
        fprintf('\n el  criterio es por convergencia \n')
        break
    elseif abs(f(x))<Eps1
        fprintf('\n la raiz es: %6.8f\n',x)
        fprintf('\n el  criterio es por exactitud \n')
        break
    end
    
    I=I+1;
    x0=x;
end

if I>=imax
    fprintf('\n el metodo no converge a una raiz \n')
    break
end
fprintf('\n el numero de iteraciones es:%2.0f \n',I)
fprintf('\n el Ea es:%2.8f \n',Ea)