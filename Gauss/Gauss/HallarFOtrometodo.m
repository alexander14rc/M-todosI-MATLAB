% copiar y pegar al programa PrincipalGauss para hallar F
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
    