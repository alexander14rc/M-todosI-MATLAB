x=input('vector x:');%[1 4 6 5 3 1.5 2.5 3.5]
y=input('vector y:');%[0 1.3862944 1.7917595 1.6094379 1.0986123 0.4054641 0.9162907 1.2527630]
x0=input('x0:');
n=length(x);
B=zeros(n);
A(:,1)=y;
for j=2:n
    for i=1:(n+1)-j
        A(i,j)=((A(i+1,j-1)-A(i,j-1))/(x(j+i-1)-x(i)));
    end 
end
yint=B(1,:);
Ea=B(1,:);
xt=1;
Ea(1)=0;
yint(1)=A(1,1);
for k=2:n
    xt=xt*(x0-x(k-1));
    yint2=yint(k-1)+A(1,k)*xt;
    Ea(k)=yint2-yint(k-1);
    yint(k)=yint2;
end
% fprintf('\n Grado    F(%2.2f)   Error \n',x0)...
...for p=1:n
...fprintf('\n  %i       %2.6f     %2.7f    \n',p-1,yint(p),Ea(p))
...end
fprintf('\n  f(%2.2f) = %5.6f \n',x0,yint2)
fprintf('\n el Ea: %3.6f \n',Ea(n))
t=1;
for w=2:n
    t=t*(x0-x(w-1));
    if w==n
        Rn=A(i,j)*t;
    end
end
poly=A(1,1);
v=1;
syms x0
for p=2:n
    v=v*(x0-x(p-1));
    poly=poly+A(1,p)*v;
end
polinomio=inline(poly);
fprintf('\n El error de truncamiento Rn: %2.7f \n', abs(Rn))
fprintf('\n La funciòn es: \n')
disp(polinomio)

    