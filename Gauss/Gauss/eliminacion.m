function [a,b,er,f] = eliminacion(a,s,n,b,tol,er)
u = 1;
for k = 1:n-1
    [a,b,s] = pivote(a,b,s,n,k);
    if abs(a(k,k)/s(k))<tol % Mejorar la explicacion en esta parte
        er = -1;
        break
    end
    for i = k+1:n
        f(u) = a(i,k)/a(k,k);
        for j = k:n %j=k+1:
            a(i,j) = a(i,j) - f(u)*a(k,j);
        end
        b(i) = b(i) - f(u)*b(k);
        u = u + 1;
    end
end
if abs(a(k,k)/s(k))<tol
    er = -1;
end
end

    