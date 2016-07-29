%metodo de newton rapshon
clear all
clc
disp('==================================')
disp('      Metodo de newton rapshon    ')
disp('==================================')
fprintf('\n')
fx=input('ingrese la funcion: ','s');
syms x
derivada=diff(fx,x);
f=inline(fx);
df=inline(derivada);
x0=input('ingrese el valor inicial: ');
iter=input('ingrese el numero de iteraciones: ');
EPS=input('Ingrese el criterio de convergenvia:');
EPS1=input('Ingrese el criterio de exactitud :');
I=1;
while I<iter
    x=x0-f(x0)/df(x0);
    Ea=abs(x-x0);
    if abs(x-x0)<EPS
        fprintf('\n Por el criterio de la convergencia: \n')
        fprintf('\n El valor de la raiz es: %2.7f \n',x);
        break
    elseif abs(f(x))<EPS1
        fprintf('\n Por el criterio de la exactitud: \n')
        fprintf('\n El valor de la raiz es: %2.7f \n',x);
        break
    end
    if I>=iter
        fprintf('\n La raiz no converge \n');
    end
    I=I+1;
    x0=x;
end
fprintf('\n El nuemero de iteraciones es %i \n',I);
fprintf('\n El Ea es : %2.7f \n',Ea);
       
    
        
        