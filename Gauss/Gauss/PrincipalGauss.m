%function [a,b,x,f]=gauss(a,b,tol)
%[a,b,x,f]=gauss([3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10],[7.85 -19.3 71.4],0.0001)
fprintf('\n        PRINCIPAL GAUSS       \n')
a = input('Ingrese la matriz de coeficiientes A=');
b = input('Ingrese la matriz de los terminos independientes B=');
tol = input('Ingrese la toleracia tol=');
n = length(b);
er = 0;
A = zeros(n);
s = A(1,:);
fprintf('\n La matriz aumentada [ A B ] :\n')
c = b';
fprintf('\n');
M = [a c];
disp(M)
for i = 1:n
    s(i) = abs(a(i,1));
    for j = 2:n
        if abs(a(i,j))>s(i)
            s(i) = abs(a(i,j));
        end
    end
end
[a,b,er,f] = eliminacion(a,s,n,b,tol,er);
if er ~= -1
    [x] = sustitucion(a,n,b);
end

fprintf('\n soluciones :\n')
for i = 1:n
    fprintf('\n x(%i) = %2.7f \n',i,x(i))
end
F=eye(n);
k=1;
for i = 2:n
    for j = 1:i-1
        F(i,j) = f(k);
        k = k+1;
    end
end
fprintf('\n La matriz F es:\n')
fprintf('\n')
disp(F)
    

