function [a,b,x,f] = gauss(a,b,tol)
%[a,b,x,f]=gauss([3 -0.1 -0.2;0.1 7 -0.3;0.3 -0.2 10],[7.85 -19.3 71.4],0.0001)
n = length(b);
er = 0;
A = zeros(n);
s = A(1,:);
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
end

