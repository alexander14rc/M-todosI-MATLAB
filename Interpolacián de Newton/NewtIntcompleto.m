clear all
clc
disp('========================================')
disp('         INTERPOLACION DE NEWTON        ')
disp('========================================')
x=input('ingresar los valores del vector x:');%[1 4 6 5]
y=input('ingresar los valores del vector y(x):');%[0 1.386294 1.791759 1.609438]
xo=input('ingresar el valor xo para interpolar :');
n=length(x)-1;
fdd=zeros(n,n);
for i=1:n+1
    fdd(i,1)=y(i);
end
for j=2:n+1
    for i=1:(n+2)-j
        fdd(i,j)=(fdd(i+1,j-1)-fdd(i,j-1))/(x(i+j-1)-x(i));
    end
end
xt=1;
yint(1)=fdd(1,1);% es el bo
Ea(1)=0;
%lo siguiente es para evaluar el xo en la funcion
for k=2:n+1
    xt=xt*(xo-x(k-1));
    yint2=yint(k-1)+fdd(1,k)*xt;%acumula sumas para finalmente calcular F(x0)
    Ea(k-1)=yint2-yint(k-1);
    yint(k)=yint2;
end
%lo siguiente es para hallar el error de truncamiento
v=1;
for  k=1:n+1
    v=v*(xo-x(k));
    if k==n
        Rn=fdd(i,j)*v;%Rn=bn*(x-x0)*(x-x1)*.....*(x-xn)
    end
end
%para mostrar el polinomio
p=fdd(1,1);
syms x0
t=1;
for j=2:n+1
    t=t*(x0-x(j-1));
    p=p+fdd(1,j)*t;
    
end
p=inline(p);
fprintf('\nla interpolacion para f(%1.0f)es :%5.6f\n',xo,yint2);
fprintf('Error de truncamiento Rn:%5.6f\n',abs(Rn));
fprintf('\nla funcion es :\n');
disp(p)